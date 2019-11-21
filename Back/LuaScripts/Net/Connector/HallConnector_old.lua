--[[
-- added by wsh @ 2017-01-09
-- 大厅网络连接器
--]]

local HallConnector = BaseClass("HallConnector")
local SendMsgDefine = require "Net.Config.SendMsgDefine"
local NetUtil = require "Net.Util.NetUtil"
local DEFAULT_SREVER_ID = 27
--[[
	构造方法
]]
local function __init(self, netManager)
	self.name = nil
	self.netManager = netManager
	self.hallSocket = nil
	--self.globalSeq = 1 --消息序号从第一个开始  TODO 放到net层
	self.routerId = 0
	self.routerType = 0
	self.serverId = DEFAULT_SREVER_ID -- 设置服务器id
	--self.sendQueue = {} --发送消息队列 TODO 放到net层
	self.netSecretKey = NetUtil.DEFAULT_NET_SECRETKEY
	self.host_ip = nil -- string
	self.host_port = 0 -- int
	self.heartBeatTimes = -1 -- -1代表不需要心跳 正数代表间隔多久发送心跳
	self.lastSendHeartBeatTime = -1
	self.on_rec_package = nil
	self.on_connect = nil
	self:__initHallSocket()
	self.__connectState = NetUtil.HALL_CONNECT_ST.INIT -- 内部连接状态
end

local function SetName(self, name)
	self.name = name
end

--[[
	设置网络的基本参数
]]
local function SetNetParam(self,routerId,routerType,netSecretKey,host_ip,host_port,heartBeatTimes)
	self:SetRouterId(routerId)
	self:SetRouterType(routerType)
	self.host_ip = host_ip
	self.host_port = host_port
	self.heartBeatTimes = heartBeatTimes
	self:SetNetSecretKey(netSecretKey)
	self.hallSocket:SetHostPort(self.host_ip, self.host_port)
	self.__connectState = NetUtil.HALL_CONNECT_ST.PARAM_OK -- 内部连接状态
end


--设置接收事件
local function SetReceivePkgHandle(self, on_packager, ...)
	self.on_rec_package = Bind(self, on_packager,...)
end

--设置网络事件
local function SetConnectHandle(self, on_connect, ...)
	self.on_connect = Bind(self, on_connect,...)
end


--[[
    重置所有内部变量
]]
local function __resetVar(self)
	self:__resetConnectingVar()
	self.on_rec_package = nil
	self.on_connect = nil
end

--重置连接变量
local function __resetConnectingVar(self)
	--清理屏蔽列表 TODO bugfix 不能在这里清理
	--self.netManager:__SetGlobalSeq(1)
	self.routerId = 0
	self.routerType = 0
	self.serverId = DEFAULT_SREVER_ID
	--清理屏蔽列表 TODO bugfix 不能在这里清理
	--self:__TriggerOnConnect(nil,NetUtil.CONNECT_RESET_MES_MASK,nil)
	--self.netManager:__ClearSendQueue()

	self.__connectState = NetUtil.HALL_CONNECT_ST.INIT
	self.netSecretKey = NetUtil.DEFAULT_NET_SECRETKEY
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
	self:__resetVar()
	self.hallSocket = nil
	self.netManager = nil
	self.name = nil
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
	self.netSecretKey = keys
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

--设置服务器id
local function SetServerId(self,serverId)
	self.serverId = serverId
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
	if self.__connectState == NetUtil.HALL_CONNECT_ST.INIT  then
		return false
	elseif self.__connectState == NetUtil.HALL_CONNECT_ST.PARAM_OK  then
		return false
	elseif self.__connectState == NetUtil.HALL_CONNECT_ST.LINKING  then
		return false
	elseif self.__connectState == NetUtil.HALL_CONNECT_ST.LOST  then
		return false
	else -- ok logicok
		return true
	end
end


local function __initHallSocket(self)
	if IsNull(self.hallSocket) then
		self.hallSocket = CS.Networks.HjTcpNetwork()
		self.hallSocket.ReceivePkgHandle = Bind(self, self.OnReceivePackage)
		self.hallSocket.OnConnect =  Bind(self,self.OnConnectSocketEvent)
	end
end

--[[
  连接网络
]]
local function Connect(self)
	self.__connectState = NetUtil.HALL_CONNECT_ST.LINKING
	self.hallSocket:Connect()
	return self.hallSocket
end


--[[
	连接事件处理
]]
--local function OnConnectSocketEvent(...)
local function OnConnectSocketEvent(self,socket,result,msg)
	if result == NetUtil.CONNECT_EVENT_SEVER_NOT_OPEN  then --
		self.__connectState = NetUtil.HALL_CONNECT_ST.LOST
	elseif result == NetUtil.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER then
		self.__connectState = NetUtil.HALL_CONNECT_ST.LOST
	elseif result == NetUtil.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE then
		self.__connectState = NetUtil.HALL_CONNECT_ST.LOST
	elseif result == NetUtil.CONNECT_RETRY_SEND_MANY_TIMES then

	elseif result == NetUtil.CONNECT_EVENT_CONECT_OK then -- 主动连接成功
		if self.heartBeatTimes >= 0 then -- 需要心跳
			self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
		end
		self.__connectState = NetUtil.HALL_CONNECT_ST.OK
	elseif result == NetUtil.CONNECT_EVENT_CLOSE_OK then -- 主动关闭了链接
		self.__connectState = NetUtil.HALL_CONNECT_ST.PARAM_OK
	else -- 其他情况
		self.__connectState = NetUtil.HALL_CONNECT_ST.LOST
	end

	self:__TriggerOnConnect(socket, result, msg)
end

--[[
    触发某种事件
]]
local function __TriggerOnConnect(self,...)
	if not self.on_connect then
		return
	end
	self.on_connect(...)
end

--[[
  重新发送相关消息
]]
local function __ReSendMessage(self,v)
	--msg_id, msg_proto, request_seq,router_id,router_type,pushIndex,token,serverId
	local send_msg  = SendMsgDefine.New(v.msg_id, v.msg_obj, v.index,v.routerId,self.routerType,
			self.netManager.pushIndex, self.netManager.token,self.serverId)
	Logger.LogErrorVars("Connector __ReSendMessage : ",v.msg_id," msg_obj, : ",v)
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
local function SendMessage(self, msg_id, msg_obj, callbackFunc, params, show_mask,resendMode,failReply)
	failReply = failReply == nil and false or failReply
	resendMode = resendMode == nil and true or resendMode
	show_mask = show_mask == nil and true or show_mask



	local currentGlobalSeq = self.netManager:__GetGlobalSeq()
	local sendCacheData = self.netManager:__GetSendQueueMsgByIndex(currentGlobalSeq)


	if sendCacheData ~= nil then
		Logger.LogError("find repeat key globalSeq : "..self.globalSeq)
	end

	local nextGlobalSeq = currentGlobalSeq + 1
	local sendSeqIndex
	if table.count(self.netManager:__GetSendQueue()) == 0 then -- 最大值 无丢失
		sendSeqIndex = -currentGlobalSeq
	else
		sendSeqIndex = currentGlobalSeq
	end
	--假如连接成功或者是重连协议
	if self.__connectState == NetUtil.HALL_CONNECT_ST.LOGIC_OK or
			msg_id == MsgIDDefine.PBUSER_RECONNECT_REQUEST or
			msg_id == MsgIDDefine.PBUSER_LOGIN_REQUEST  or
			msg_id == MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then

		sendCacheData = {index = sendSeqIndex,sendTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond(),
						 routerId = self.routerId,msg_id = msg_id,
						 msg_obj = msg_obj,resendMode = resendMode , failReply = failReply , params = params,serverId = self.serverId,
						 show_mask = show_mask,callbackFunc = callbackFunc } -- 序号是1
		self.netManager:__SetSendQueueMsgByIndex(currentGlobalSeq,sendCacheData)

		if resendMode then -- 需要重发
			sendCacheData.retryTimes = Config.NET_TIME_OUT_RETRY_SEND_COUNT
		else -- 不需要重发
			sendCacheData.retryTimes = -1
		end
		--Logger.LogErrorVars("Connector SendMessage : ",msg_id," sendCacheData, : ",sendCacheData)
		local send_msg = nil
		send_msg = SendMsgDefine.New(msg_id, msg_obj, sendSeqIndex ,self.routerId,self.routerType, self.netManager.pushIndex, self.netManager.token,self.serverId)
		local msg_bytes = NetUtil.SerializeMessage(send_msg)
		self.hallSocket:SendMessage(msg_bytes)
		self.netManager:__SetGlobalSeq(nextGlobalSeq)
		self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
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

	if receive_msg.MsgID >= NetUtil.INDICATION_MIN_ID and receive_msg.MsgID < NetUtil.INDICATION_MAX_ID then
		receive_msg.MsgType = NetUtil.MSG_TYPE_INDICATION
	else
		receive_msg.MsgType = NetUtil.MSG_TYPE_REQUEST
	end
	self:__TransmitNetData(receive_msg)
end

--[[
	根据数据源转发网络消息
]]
local function __TransmitNetData(self, receive_msg)
	local absGlobalSeq = math.abs(receive_msg.RequestSeq)
	local sendData =  self.netManager:__GetSendQueueMsgByIndex(absGlobalSeq)
	--UID 没有
	local callbackFunc = nil
	if sendData == nil then
	else
		receive_msg.Params = sendData.params
		callbackFunc = sendData.callbackFunc
	end
	self.netManager:__SetSendQueueMsgByIndex(absGlobalSeq,nil)
	if not self.on_rec_package then
		return
	end
	self.on_rec_package(receive_msg.MsgID,receive_msg,sendData,callbackFunc)
end


local function OnReceivePackage(self, receive_bytes)
	local receive_msg = NetUtil.DeserializeMessage(receive_bytes)
	self:__TransmitNetData(receive_msg)
end

--[[
  	发送心跳协议
]]
local function __SendHeartBeat(self)
	Logger.LogVars( self.name," __SendHeartBeat")
	local msg_bytes = ""
	self.hallSocket:SendMessage(msg_bytes)
end


local function Update(self)
	if not IsNull(self.hallSocket) then
		self.hallSocket:UpdateNetwork()
	end
	if self.__connectState == NetUtil.HALL_CONNECT_ST.OK or self.__connectState == NetUtil.HALL_CONNECT_ST.LOGIC_OK  then
		self:__UpdateSendQueue()
	end

	if self.__connectState == NetUtil.HALL_CONNECT_ST.OK or self.__connectState == NetUtil.HALL_CONNECT_ST.LOGIC_OK  then
		self:__UpdateHeartBeat()
	end
end

--[[
    重发每一条协议的机制
]]
local function __UpdateHeartBeat(self)
	--Logger.LogVars("__UpdateHeartBeat  self.heartBeatTimes : ",self.heartBeatTimes)
	if self.heartBeatTimes < 0 then -- 需要心跳
		return
	end
	--Logger.LogVars("__UpdateHeartBeat  GetSimulationUnitySecond : ",TimeSyncManager:GetInstance():GetSimulationUnitySecond(),
	--		"   lastSendHeartBeatTime : ",self.lastSendHeartBeatTime," between val : ",TimeSyncManager:GetInstance():GetSimulationUnitySecond()  - self.lastSendHeartBeatTime)
	if TimeSyncManager:GetInstance():GetSimulationUnitySecond()  - self.lastSendHeartBeatTime > self.heartBeatTimes then
		self:__SendHeartBeat()
		self.lastSendHeartBeatTime = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
	end
end

--[[
    重发每一条协议的机制
]]
local function __UpdateSendQueue(self)
	local currentSimulationUnitySecond = TimeSyncManager:GetInstance():GetSimulationUnitySecond()
	local keys = table.keys(self.netManager:__GetSendQueue())
	for i, key in ipairs(keys) do
		local v = self.netManager:__GetSendQueueMsgByIndex(key)
		if v ~= nil then
			if v.retryTimes == -1 then -- 不需要重试
				-- 正常的重试次数
				if currentSimulationUnitySecond - v.sendTime  - Config.NET_RESEND_TIME_UNITY_SECONDS >= 0 then -- 不够时间
					if v.failReply then
						-- 错误给个回复
						self:__Fail2ReplyData(v)
					else
						self.netManager:__SetSendQueueMsgByIndex(key,nil)
					end
				end
			else
				-- 正常的重试次数
				if currentSimulationUnitySecond - v.sendTime  - Config.NET_RESEND_TIME_UNITY_SECONDS >= 0 then -- 不够时间
					v.sendTime = currentSimulationUnitySecond
					if v.retryTimes == 0 then --可以丢弃
						Logger.Log("__UpdateSendQueue 没有重试次数了 ")
						self:__TriggerOnConnect(nil,NetUtil.CONNECT_RETRY_SEND_MANY_TIMES,"too many times!", v)
						v.retryTimes = Config.NET_TIME_OUT_RETRY_SEND_COUNT
					else
						v.retryTimes = v.retryTimes - 1 -- 重试次数减少
						Logger.Log("__UpdateSendQueue 重发 v.retryTimes ： "..v.retryTimes .." v.msgId : "..v.msg_id)
						if self.__connectState == NetUtil.HALL_CONNECT_ST.LOGIC_OK or
								v.msg_id == MsgIDDefine.PBUSER_RECONNECT_REQUEST or
								v.msg_id == MsgIDDefine.PBUSER_LOGIN_REQUEST  or
								v.msg_id == MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then
							self:__ReSendMessage(v)
						end
					end
				end
			end
		end
	end
end

HallConnector.__init = __init
HallConnector.__initHallSocket = __initHallSocket

HallConnector.__socketClose = __socketClose
HallConnector.__delete = __delete


HallConnector.__UpdateSendQueue = __UpdateSendQueue
HallConnector.__resetVar = __resetVar
HallConnector.__ReSendMessage = __ReSendMessage
HallConnector.__SendHeartBeat = __SendHeartBeat
HallConnector.__UpdateHeartBeat = __UpdateHeartBeat
HallConnector.__TriggerOnConnect = __TriggerOnConnect
HallConnector.__Fail2ReplyData = __Fail2ReplyData
HallConnector.__TransmitNetData = __TransmitNetData
HallConnector.__resetConnectingVar = __resetConnectingVar


HallConnector.OnConnectSocketEvent = OnConnectSocketEvent
HallConnector.OnReceivePackage = OnReceivePackage

-- public func
HallConnector.Connect = Connect
HallConnector.SendMessage = SendMessage
HallConnector.Release = Release
HallConnector.Update = Update
HallConnector.SetRouterId = SetRouterId
HallConnector.SetRouterType = SetRouterType
HallConnector.SetNetSecretKey = SetNetSecretKey

HallConnector.SocketDispose = SocketDispose


--HallConnector.GetRouterId = GetRouterId
--HallConnector.GetRouterType = GetRouterType
--HallConnector.GetNetSecretKey = GetNetSecretKey
HallConnector.IsConnect = IsConnect
HallConnector.SetReceivePkgHandle = SetReceivePkgHandle
HallConnector.SetConnectHandle = SetConnectHandle

HallConnector.SetNetParam = SetNetParam
HallConnector.SetServerId = SetServerId

HallConnector.GetConnectState = GetConnectState
HallConnector.SetConnectState = SetConnectState

HallConnector.LogoutHasEvent = LogoutHasEvent
HallConnector.LogoutNoneEvent = LogoutNoneEvent
HallConnector.SetName = SetName

------------------

return HallConnector
