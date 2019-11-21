--[[
-- added by wsh @ 2017-01-09
-- 大厅网络连接器
--]]

local HallConnector = BaseClass("HallConnector")
local SendMsgDefine = require "Net.Config.SendMsgDefine"
local NetUtil = require "Net.Util.NetUtil"
local DEFAULT_NET_SECRETKEY =       {--加密解密所用的默认KEY
	2023708229, -158607964,
	-2120859654, 1167043672
}

local CONNECT_EVENT_CONECT_OK = 1 -- 网络事件连接成功
local CONNECT_EVENT_CLOSE_OK = 2 -- 网络事件断开连接成功
local CONNECT_EVENT_SEVER_NOT_OPEN = -4 -- 服务器未开启
local CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER = -5 -- 前端没有网络导致链接不上
local CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE = -11 -- 服务器关机了 或者心跳断开连接
local CONNECT_RETRY_SEND_MANY_TIMES = -20 -- 重试次数过多导致服务器连接断开
local NET_TIME_OUT_RETRY_SEND_COUNT = 2

--[[
大厅网络连接器的状态
]]
local HALL_CONNECT_ST = {
	INIT = -1,
	PARAM_OK = 0,
	LINKING = 1,
	OK = 2,
	LOGIC_OK = 3,
	LOST = 4,
	--RE_LINKING = 4,
}
--[[
	构造方法
]]

local function InitHallSocket(self)
	if IsNull(self.hallSocket) then
		self.hallSocket = CS.Networks.HjTcpNetwork()
		self.hallSocket.ReceivePkgHandle = Bind(self, self.OnReceivePackage)
		self.hallSocket.OnConnect =  Bind(self,self.OnConnectSocketEvent)
	end
end

local function __init(self)
	self.hallSocket = nil
	self.pushIndex = 0
	self.globalSeq = 1 --消息序号从第一个开始
	self.routerId = 0
	self.routerType = 0
	self.sendQueue = {} --发送消息队列 TODO 放到net层
	self.netSecretKey = DEFAULT_NET_SECRETKEY
	self.host_ip = nil -- string
	self.host_port = 0 -- int
	self.heartBeatTimes = -1 -- -1代表不需要心跳 正数代表间隔多久发送心跳
	self.lastSendHeartBeatTime = -1
	self.on_rec_package = nil
	self.token = 0
	self:InitHallSocket()
	self.__connectState = HALL_CONNECT_ST.INIT -- 内部连接状态
end


--[[
	设置网络的基本参数
]]
local function SetNetParam(self,routerId,routerType,host_ip,host_port,heartBeatTimes,token)
	self:SetRouterId(routerId)
	self:SetRouterType(routerType)
	self.host_ip = host_ip
	self.host_port = host_port
	self.token = token
	self.heartBeatTimes = heartBeatTimes
	self.hallSocket:SetHostPort(self.host_ip, self.host_port)
	self.__connectState = HALL_CONNECT_ST.PARAM_OK -- 内部连接状态
	self:SetNetSecretKey()
end


--设置接收事件
local function SetReceivePkgHandle(self, on_packager)
	self.on_rec_package = on_packager
end


--重置连接变量
local function __resetConnectingVar(self)
	self.routerId = 0
	self.routerType = 0
	self.pushIndex = 0
	self.token = 0
	self.sendQueue = {}
	self.__connectState = HALL_CONNECT_ST.INIT
	self.netSecretKey = DEFAULT_NET_SECRETKEY
	self.host_ip = nil
	self.host_port = 0

	self.heartBeatTimes = -1
	self.lastSendHeartBeatTime = -1
end

--[[
	关闭连接 有事件
]]
local function __socketClose(self)
	if not IsNull(self.hallSocket) then
		self.hallSocket:Close()
	end
end

--[[
  销毁连接对象 清除连接对象和发送消息队列的缓存 无事件
]]
local function SocketDispose(self)
	if not IsNull(self.hallSocket) then
		self.hallSocket:Dispose()
	end
end

--[[
	释放连接资源 全部扔掉
]]
local function Release(self)
	self:SocketDispose()
	self:__resetConnectingVar()
	self.on_rec_package = nil
	self.hallSocket = nil
end
--[[
	强制登出操作 无事件
]]
local function LogoutNoneEvent(self)
	self:SocketDispose()
	self:__resetConnectingVar()
end

--[[
	登出操作 有事件
]]
local function LogoutHasEvent(self)
	self:__socketClose()
	self:__resetConnectingVar()
end

--[[
	析构函数
]]
local function __delete(self)
	self:Release()
end


--设置秘钥
local function SetNetSecretKey(self,keys)
	if keys == nil then
		self.netSecretKey = DEFAULT_NET_SECRETKEY
	else
		self.netSecretKey = keys
	end
	self.hallSocket:SetNetSecretKey(self.netSecretKey)
end


--设置路由类型
local function SetRouterType(self,routerType)
	self.routerType = routerType
end


--设置路由
local function SetRouterId(self,routerId)
	self.routerId = routerId
end


--[[
 	获取网络链接状态
]]
local function GetConnectState(self)
	return self.__connectState
end

--[[
 	设置网络链接状态
]]
local function SetConnectState(self,state)
	self.__connectState = state
end

--获取是否正在连接
local function IsConnect(self)
	if self.__connectState == HALL_CONNECT_ST.INIT  then
		return false
	elseif self.__connectState == HALL_CONNECT_ST.PARAM_OK  then
		return false
	elseif self.__connectState == HALL_CONNECT_ST.LINKING  then
		return false
	elseif self.__connectState == HALL_CONNECT_ST.LOST  then
		return false
	else -- ok logicok
		return true
	end
end




--[[
  连接网络
]]
local function Connect(self)
	self.__connectState = HALL_CONNECT_ST.LINKING
	self.hallSocket:Connect()
	return self.hallSocket
end


--[[
	连接事件处理
]]
--local function OnConnectSocketEvent(...)
local function OnConnectSocketEvent(self,socket,result,msg)
	if result == CONNECT_EVENT_SEVER_NOT_OPEN  then --
		self.__connectState = HALL_CONNECT_ST.LOST
	elseif result == CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER then
		self.__connectState = HALL_CONNECT_ST.LOST
	elseif result == CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE then
		self.__connectState = HALL_CONNECT_ST.LOST
	elseif result == CONNECT_RETRY_SEND_MANY_TIMES then

	elseif result == CONNECT_EVENT_CONECT_OK then -- 主动连接成功
		if self.heartBeatTimes >= 0 then -- 需要心跳
			self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
		end
		self.__connectState = HALL_CONNECT_ST.OK
	elseif result == CONNECT_EVENT_CLOSE_OK then -- 主动关闭了链接
		self.__connectState = HALL_CONNECT_ST.PARAM_OK
	else -- 其他情况
		self.__connectState = HALL_CONNECT_ST.LOST
	end
end


--[[
  重新发送相关消息
]]
local function ReSendMessage(self,v)
	--msg_id, msg_proto, request_seq,router_id,router_type,pushIndex,token,serverId
	Logger.Log("__UpdateSendQueue 重发 v.retryTimes ： "..v.retryTimes .." v.msgId : "..v.msg_id)
	local send_msg  = SendMsgDefine.New(v.msg_id, v.msg_obj, v.index,v.routerId,self.routerType,
			self.pushIndex, self.token)
	local msg_bytes = NetUtil.SerializeMessage(send_msg)
	self.hallSocket:SendMessage(msg_bytes)
	self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
end

--[[
    发送相关协议
	msg_id 消息号
	msg_obj 消息对象
	callbackFunc 回调函数
	params 增加自定义参数
	show_mask 是否有蒙版 true 有
	resendMode 重发模式 假如没有发送成功是否需要重发 重发三次后如果还没收到则断开连接
	failReply 接收失败后是否有回调
]]
local function SendMessage(self, msg_id, msg_obj, callbackFunc, params, show_mask,resendMode)
	resendMode = resendMode == nil and true or resendMode
	show_mask = show_mask == nil and true or show_mask
	local currentGlobalSeq = self.globalSeq
	local sendSeqIndex
	if table.count(self.sendQueue) == 0 then -- 最大值 无丢失
		sendSeqIndex = -currentGlobalSeq
	else
		sendSeqIndex = currentGlobalSeq
	end
	local sendCacheData = {index = sendSeqIndex,sendTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond(),
							  routerId = self.routerId,msg_id = msg_id,
							  msg_obj = msg_obj,resendMode = resendMode,params = params,
							  show_mask = show_mask,callbackFunc = callbackFunc } -- 序号是1
	if resendMode then -- 需要重发
		sendCacheData.retryTimes = NET_TIME_OUT_RETRY_SEND_COUNT
	else -- 不需要重发
		sendCacheData.retryTimes = -1
	end
	self.sendQueue[currentGlobalSeq] = sendCacheData
	local send_msg = SendMsgDefine.New(msg_id, msg_obj, sendSeqIndex ,self.routerId,self.routerType,
			self.pushIndex, self.token)
	local msg_bytes = NetUtil.SerializeMessage(send_msg)
	self.hallSocket:SendMessage(msg_bytes)
	self.globalSeq = currentGlobalSeq + 1
	self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
end

--[[
	根据数据源转发网络消息
]]
local function TransmitNetData(self, receive_msg)
	local absGlobalSeq = math.abs(receive_msg.RequestSeq)
	local sendData =  self.sendQueue[absGlobalSeq]
	self.sendQueue[absGlobalSeq] = nil
	--UID 没有
	if sendData ~= nil then
		receive_msg.Params = sendData.params
		local callbackFunc = sendData.callbackFunc
		if callbackFunc ~= nil then
			callbackFunc(receive_msg)
		end
	end
	if self.on_rec_package then
		self.on_rec_package(receive_msg.MsgID)
	end
end

--[[
   超时回复消息逻辑
]]
local function __Fail2ReplyData(self, failReplySendData)
	local receive_msg = {}
	receive_msg.RequestSeq = failReplySendData.index
	receive_msg.MsgID = failReplySendData.msg_id
	receive_msg.OpCode = -1 -- 超时响应
	--if receive_msg.MsgID >= NetUtil.INDICATION_MIN_ID and receive_msg.MsgID < NetUtil.INDICATION_MAX_ID then
	--	receive_msg.MsgType = NetUtil.MSG_TYPE_INDICATION
	--else
	--	receive_msg.MsgType = NetUtil.MSG_TYPE_REQUEST
	--end
	self:TransmitNetData(receive_msg)
end




local function OnReceivePackage(self, receive_bytes)
	local receive_msg = NetUtil.DeserializeMessage(receive_bytes)
	self:TransmitNetData(receive_msg)
end

--[[
    重发每一条协议的机制
]]
local function __UpdateHeartBeat(self)
	if self.heartBeatTimes < 0 then -- 需要心跳
		return
	end
	if TimeSyncManager:GetInstance():GetSimulationUnitySecond()  - self.lastSendHeartBeatTime > self.heartBeatTimes then
		local msg_bytes = ""
		self.hallSocket:SendMessage(msg_bytes)
		self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
	end
end

local function TriggerOnConnect(self,socket,result,msg)

end

--[[
    重发每一条协议的机制
]]
local function __UpdateSendQueue(self)
	local currentSimulationUnitySecond = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
	for i, v in pairs(self.sendQueue) do
		if v ~= nil then
			if v.retryTimes == -1 then -- 不需要重试
				-- 正常的重试次数
				if currentSimulationUnitySecond - v.sendTime  - Config.NET_RESEND_TIME_UNITY_SECONDS >= 0 then -- 不够时间
					-- 错误给个回复
					__Fail2ReplyData(self,v)
				end
			else
				-- 正常的重试次数
				if currentSimulationUnitySecond - v.sendTime  - Config.NET_RESEND_TIME_UNITY_SECONDS >= 0 then -- 不够时间
					v.sendTime = currentSimulationUnitySecond
					if v.retryTimes == 0 then --可以丢弃
						Logger.Log("__UpdateSendQueue 没有重试次数了 ")
						self:TriggerOnConnect(nil,CONNECT_RETRY_SEND_MANY_TIMES,"too many times!", v)
						v.retryTimes = NET_TIME_OUT_RETRY_SEND_COUNT
					else
						v.retryTimes = v.retryTimes - 1 -- 重试次数减少
						self:ReSendMessage(v)
					end
				end
			end
		end
	end
end

local function Update(self)
	if not IsNull(self.hallSocket) then
		self.hallSocket:UpdateNetwork()
	end
	if self.__connectState == HALL_CONNECT_ST.OK or self.__connectState == HALL_CONNECT_ST.LOGIC_OK  then
		__UpdateSendQueue(self)
	end

	if self.__connectState == HALL_CONNECT_ST.OK or self.__connectState == HALL_CONNECT_ST.LOGIC_OK  then
		__UpdateHeartBeat(self)
	end
end





HallConnector.__init = __init
HallConnector.__socketClose = __socketClose
HallConnector.__delete = __delete
HallConnector.TransmitNetData = TransmitNetData
HallConnector.__resetConnectingVar = __resetConnectingVar
HallConnector.InitHallSocket = InitHallSocket
HallConnector.ReSendMessage = ReSendMessage
HallConnector.OnConnectSocketEvent = OnConnectSocketEvent
HallConnector.OnReceivePackage = OnReceivePackage
HallConnector.TriggerOnConnect = TriggerOnConnect
-- public func
HallConnector.Connect = Connect
HallConnector.SendMessage = SendMessage
HallConnector.Release = Release
HallConnector.Update = Update
HallConnector.SetRouterId = SetRouterId
HallConnector.SetRouterType = SetRouterType
HallConnector.SetNetSecretKey = SetNetSecretKey
HallConnector.SocketDispose = SocketDispose
HallConnector.IsConnect = IsConnect
HallConnector.SetReceivePkgHandle = SetReceivePkgHandle
HallConnector.SetNetParam = SetNetParam
HallConnector.GetConnectState = GetConnectState
HallConnector.SetConnectState = SetConnectState
HallConnector.LogoutHasEvent = LogoutHasEvent
HallConnector.LogoutNoneEvent = LogoutNoneEvent


HallConnector.CONNECT_EVENT_CONECT_OK = CONNECT_EVENT_CONECT_OK
HallConnector.CONNECT_EVENT_CLOSE_OK = CONNECT_EVENT_CLOSE_OK
HallConnector.CONNECT_EVENT_SEVER_NOT_OPEN = CONNECT_EVENT_SEVER_NOT_OPEN
HallConnector.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER = CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER
HallConnector.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE = CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE
HallConnector.CONNECT_RETRY_SEND_MANY_TIMES = CONNECT_RETRY_SEND_MANY_TIMES
HallConnector.HALL_CONNECT_ST = HALL_CONNECT_ST
------------------

return HallConnector
