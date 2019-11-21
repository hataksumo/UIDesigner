--[[
-- added by dyg @ 2018-10-29
-- 网络全局管理器
--
--]]

local NetManager = BaseClass("NetManager", Singleton)
local Messenger = require "Framework.Common.Messenger"
local HallConnector = require "Net.Connector.HallConnector"
local NetUtil = require "Net.Util.NetUtil"
local ON_NET_CONNECT = "ON_NET_CONNECT"

local function __init(self)
    -- 成员变量
    -- 消息中心
    self.net_message_center = nil --协议监听中心
    self.net_event_center = nil --网络事件监听中心

    self.pushIndex = 0 --推送的索引
    self.token = 0 --用于验证routerId合法性
    self.globalSeq = 1 --消息序号从第一个开始 TODO 放到net层
    self.sendQueue = {} --发送消息队列 TODO 放到net层

    -- 队列的消息
    self.queneMessage = {}
    self.queneSend = false
    self.queneMsgId = -1
    self.save_send_msg = {}
    -- 队列的消息
    self:__initNet()
end

local function __initNet(self)
    if IsNull(self.localHallConnector )then
        self.localHallConnector =  HallConnector.New(self)
        self.localHallConnector:SetReceivePkgHandle(self.OnReceivePackage,self)
        self.localHallConnector:SetConnectHandle(self.OnConnectSocket,self)
        self.localHallConnector:SetName("游戏服")
    end

    ---- TODO 这里代码可能有问题
    if IsNull(self.localNationConnector )then
        self.localNationConnector =  HallConnector.New(self)
        self.localNationConnector:SetReceivePkgHandle(self.OnReceivePackage,self)
        self.localNationConnector:SetConnectHandle(self.OnConnectSocket,self)
        self.localNationConnector:SetName("国战服")
    end
end

--[[
    重置连接准备下次连接
]]
local function __resetConnecting(self)
    if not IsNull(self.localHallConnector) then
        self.localHallConnector:Release()
    end

    if not IsNull(self.localNationConnector) then
        self.localNationConnector:Release()
    end

end

--[[
    重置所有内部变量
]]
local function __resetVal(self)
    PushManager:GetInstance():UnRegister()
    if self.net_message_center then
        self.net_message_center:Cleanup()
    end
    self.net_message_center = nil

    self.pushIndex = 0 --推送的索引
    self.token = 0 --用于验证routerId合法性
    --self.globalSeq = 1 --消息序号从第一个开始
    --self.sendQueue = {} --发送消息队列

    self.save_send_msg = {}
    self.queneMessage = {}
    self.queneSend = false
    self.queneMsgId = -1
end

--[[
    析构函数
]]
local function __delete(self)
    self:Release()
end



--[[
	释放连接资源 (真正清空)
]]
local function Release(self)
    self:__resetConnecting()
    self:__resetVal()
    self:ClearNetConnectEvent()
    self.localHallConnector = nil
    self.localNationConnector = nil
    self.net_event_center = nil
end

local function __initNetMessage(self)
    if self.net_message_center == nil then
        self.net_message_center = Messenger.New()
    end
end

local function __initNetEvent(self)
    if self.net_event_center == nil then
        self.net_event_center = Messenger.New()
    end
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
local function SendMessageFull(self, msg_id, msg_obj, callbackFunc, params, show_mask, resendMode,failReply)

    if not self:IsHallConnect() then -- 被断开连接了
        -- 连接已经断开了  登陆不用处理
        if 	msg_id ~= MsgIDDefine.PBUSER_RECONNECT_REQUEST and
                msg_id ~= MsgIDDefine.PBUSER_LOGIN_REQUEST and
            msg_id ~= MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then
            Logger.Log("重发队列   "..msg_id)
            self.save_send_msg[msg_id] = {msg_obj = msg_obj,callbackFunc = callbackFunc,params = params,show_mask = show_mask,resendMode = resendMode,failReply = failReply}
        end
        local connectorType = NetUtil.CONNECTOR_TYPE.HALL
        self:BroadcastEvent(ON_NET_CONNECT, self,connectorType, NetUtil.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER)
        return
    end

    if self:SendQueueContainsMsg_id(msg_id) then
        Logger.LogError("协议重复发送:"..msg_id)
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100050))
        return
    end

    show_mask = show_mask == nil and true or show_mask

    if show_mask then --是否显示蒙版
        UIMask:GetInstance():ShowMask(msg_id)
    end

    if msg_id >= NetUtil.MSG_ID_NATION_MIN  and  msg_id < NetUtil.MSG_ID_NATION_MAX then
        self.localNationConnector:SendMessage(msg_id, msg_obj, callbackFunc, params, show_mask, resendMode,failReply,false)
    else
        self.localHallConnector:SendMessage(msg_id, msg_obj, callbackFunc, params, show_mask, resendMode,failReply,false)
    end
end

--重发处理
local function ReConnectHandle(self)
    for i, v in pairs(self.save_send_msg) do
        self:SendMessageFull(self,i,v.msg_obj, v.callbackFunc, v.params, v.show_mask, v.resendMode,v.failReply)
    end
    self.save_send_msg = {}
end

--[[
	发送相关协议
	msg_id 消息号
	msg_obj 消息对象
	callbackFunc 回调函数
	params 增加自定义参数
	show_mask 是否有蒙版 true 有
	need_resend 假如没有发送成功是否需要重发 重发三次后如果还没收到则断开连接
]]
local function SendMessage(self, msg_id, msg_obj, callbackFunc, params, show_mask, need_resend)
    self:SendMessageFull(msg_id, msg_obj, callbackFunc, params, show_mask, need_resend,false)
end


local function SendQueneMessage(self)
    if self.queneSend == false and table.count(self.queneMessage) > 0 then
        local data =  table.remove(self.queneMessage,1)
        self.queneSend = true
        self.queneMsgId = data.msg_id + 1
        SendMessage(self,data.msg_id,data.msg_obj,data.func)
    end
end

--local function OnReceivePackage(...)
local function OnReceivePackage(connector,self,msg_id,msg_obj,sendData, callbackFunc)
    --Logger.Log("NetManager OnReceivePackage :"..table.dump({...},nil,10))
    --推送通用处理(记录推送索引)
    local connectorType = NetUtil.CONNECTOR_TYPE.UNKNOWN
    if connector == self.localHallConnector then
        connectorType =  NetUtil.CONNECTOR_TYPE.HALL
    elseif connector == self.localNationConnector then
        connectorType =  NetUtil.CONNECTOR_TYPE.NATION
    end

    if msg_obj.MsgType == NetUtil.MSG_TYPE_INDICATION then
        self.pushIndex = msg_obj.RequestSeq
    elseif msg_obj.MsgType == NetUtil.MSG_TYPE_REQUEST then
    end

    if sendData ~= nil then -- 正常关闭蒙版
        if sendData.show_mask then
            UIMask:GetInstance():CloseMask(sendData.msg_id)
        end
    end
    --检测发送队列
    if self.queneSend and msg_id == self.queneMsgId then
        self.queneSend = false
        SendQueneMessage(self)
    end

    if callbackFunc ~= nil then
        if type(callbackFunc) == "function" then
            callbackFunc(msg_obj)
        end
    end

    -- 这里可以做通用协议处理
    self:Broadcast(msg_id,msg_obj)
end


--local function OnConnectSocket(...)
local function OnConnectSocket(connector,self,socket,result,msg)
    Logger.LogVars("NetManager OnConnectSocket result:"," result ",result, " msg : ",msg)
    --Logger.Log("NetManager OnConnectSocket package:"..table.dump({...},nil,10))
    local connectorType = NetUtil.CONNECTOR_TYPE.UNKNOWN
    if connector == self.localHallConnector then
        connectorType =  NetUtil.CONNECTOR_TYPE.HALL
    elseif connector == self.localNationConnector then
        connectorType =  NetUtil.CONNECTOR_TYPE.NATION
    end


    if result > 0 then -- 连接成功
        if result == NetUtil.CONNECT_EVENT_CONECT_OK then -- 连接成功
        elseif result == NetUtil.CONNECT_EVENT_CLOSE_OK then

        end
    else
        if result == NetUtil.CONNECT_EVENT_SEVER_NOT_OPEN  then

        elseif result == NetUtil.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER then
        elseif result == NetUtil.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE then

        elseif result == NetUtil.CONNECT_RETRY_SEND_MANY_TIMES then

        elseif result == NetUtil.CONNECT_RESET_MES_MASK then
            for i, v in pairs(self:__GetSendQueue()) do
                if v ~= nil and v.show_mask then
                    UIMask:GetInstance():CloseMask(v.msg_id)
                end
            end
            return
        else -- 其他情况

        end
    end
    --Logger.Log("OnConnectSocket : result : "..tostring(result) .." msg : ".. tostring(msg))
    self:BroadcastEvent(ON_NET_CONNECT, self,connectorType, result, msg)
end




-- 注册消息
local function AddListener(self, e_type, e_listener,...)
    self:__initNetMessage()
    self.net_message_center:AddListener(e_type, e_listener,...)
end

-- 发送消息
local function Broadcast(self, e_type, ...)
    if self.net_message_center == nil then
        return
    end
    self.net_message_center:Broadcast(e_type,...)
end

-- 注销消息
local function RemoveListener(self, e_type, e_listener)
    if self.net_message_center == nil then
        return
    end
    self.net_message_center:RemoveListener(e_type, e_listener)
end

--[[
    注册网络链接事件
]]
local function AddNetConnectEvent(self, e_listener,...)
    self:__initNetEvent()
    self.net_event_center:AddListener(ON_NET_CONNECT, e_listener,...)
end

--[[
    发送网络事件
]]
local function BroadcastEvent(self, e_type, ...)
    if self.net_event_center == nil then
        return
    end
    self.net_event_center:Broadcast(e_type,...)
end

--[[
    注销网络链接事件
]]
local function RemoveNetConnectEvent(self, e_listener)
    if self.net_event_center == nil then
        return
    end
    self.net_event_center:RemoveListener(ON_NET_CONNECT, e_listener)
end


local function ClearNetConnectEvent(self)
    if self.net_event_center == nil then
        return
    end
    self.net_event_center:Cleanup()
end


local function InsetQueneMessage(self, msg_id, msg_obj,func)
    if IsNull(self.localHallConnector) then
        return
    end
    table.insert(self.queneMessage,{msg_id = msg_id,msg_obj = msg_obj,func = func})
    SendQueneMessage(self)
end


local function HallConnect(self)
    self.localHallConnector:Connect()
end



--[[
	设置网络的基本参数
]]
local function SetNetParam(self,token,routerId,routerType,host_ip,host_port,heartBeatTimes)
    self:SetToken(token)
    self.localHallConnector:SetNetParam(routerId,routerType,NetUtil.DEFAULT_NET_SECRETKEY,host_ip,host_port,heartBeatTimes)
end

local function SetHallConnectState(self,state)
    self.localHallConnector:SetConnectState(state)
end

--设置秘钥
local function SetHallNetSecretKey(self,keys)
    --self:__initNet()
    self.localHallConnector:SetNetSecretKey(keys)
end


--设置路由id
local function SetHallRouterId(self,routerId)
    --self:__initNet()
    self.localHallConnector:SetRouterId(routerId)
end

--设置路由类型
local function SetHallRouterType(self,routerType)
    --self:__initNet()
    self.localHallConnector:SetRouterType(routerType)
end

--设置推送索引
local function SetPushIndex(self,pushIndex)
    self.pushIndex = pushIndex
end

--设置token
local function SetToken(self,token)
    self.token = token
end


local function Update(self)
    if not IsNull(self.localHallConnector) then
        self.localHallConnector:Update()
    end

    if not IsNull(self.localNationConnector) then
        self.localNationConnector:Update()
    end

end

--获取是否正在连接
local function IsHallConnect(self)
    if IsNull(self.localHallConnector) then
        return false
    end
    return self.localHallConnector:IsConnect()
end



-----------------new net proxy add------------------------------
local function __GetGlobalSeq(self)
    return self.globalSeq
end

local function __SetGlobalSeq(self,val)
    self.globalSeq = val
end

local function __GetSendQueue(self)
    return self.sendQueue
end

local function __GetSendQueueMsgByIndex(self,index)
    return self.sendQueue[index]
end

local function __SetSendQueueMsgByIndex(self,index,val)
    self.sendQueue[index] = val
end

local function __ClearSendQueue(self)
    self.sendQueue = {}
end

--检测发送队列包含某协议号
local function SendQueueContainsMsg_id(self,msg_id)
    if self.sendQueue == nil then
        return
    end


    for i, v in pairs(self.sendQueue) do
        if v.msg_id == msg_id then
            return true
        end
    end
    return false
end

--[[
	设置网络的基本参数
]]
local function SetNationNetParam(self,routerId,routerType,host_ip,host_port,heartBeatTimes,innerServerId)
    self.localNationConnector:SetServerId(innerServerId)
    self.localNationConnector:SetNetParam(routerId,routerType,NetUtil.DEFAULT_NET_SECRETKEY,host_ip,host_port,heartBeatTimes)
end

--设置秘钥
local function SetNationNetSecretKey(self,keys)
    --self:__initNet()
    self.localNationConnector:SetNetSecretKey(keys)
end

local function DoNationConnect(self)
    self.localNationConnector:Connect()
end

local function SetNationConnectState(self,state)
    self.localNationConnector:SetConnectState(state)
end

local function GetNationConnectState(self,state)
    self.localNationConnector:GetConnectState(state)
end

--获取是否正在连接
local function IsNationConnect(self)
    if IsNull(self.localNationConnector) then
        return false
    end
    return self.localNationConnector:IsConnect()
end

--断开socket连接 无事件
local function MainSocketDispose(self)
    self:NationSocketDispose()
    self:HallSocketDispose()
end



local function HallSocketDispose(self)
    if not IsNull(self.localHallConnector) then
        self.localHallConnector:SocketDispose()
    end
    self:SetHallConnectState(NetUtil.HALL_CONNECT_ST.INIT)
end

local function NationSocketDispose(self)
    if not IsNull(self.localNationConnector) then
        self.localNationConnector:SocketDispose()
    end
    self:SetNationConnectState(NetUtil.HALL_CONNECT_ST.INIT)
end

-- 登出国战
local function LogoutNation(self,hasEvent)
    if not IsNull( self.localNationConnector) then
        if hasEvent then
            self.localNationConnector:LogoutHasEvent()
        else
            self.localNationConnector:LogoutNoneEvent()
        end
    end
end

--[[
	登出操作
]]
local function LogoutAllAndHasEvent(self)
    if not IsNull( self.localHallConnector) then
        self.localHallConnector:LogoutHasEvent()
    end

    if not IsNull( self.localNationConnector) then
        self.localNationConnector:LogoutNoneEvent()
    end
    self:__resetVal()
    self:__SetGlobalSeq(1)
    if not IsNull( self.localHallConnector) then
        self.localHallConnector:__TriggerOnConnect(nil,NetUtil.CONNECT_RESET_MES_MASK,nil)
    end

    self:__ClearSendQueue(1)
end


--[[
	强制登出操作(没有用到)
]]
local function LogoutAllNoneEvent(self)
    if not IsNull( self.localHallConnector) then
        self.localHallConnector:LogoutNoneEvent()
    end

    if not IsNull( self.localNationConnector) then
        self.localNationConnector:LogoutNoneEvent()
    end

    self:__resetVal()
    self:__SetGlobalSeq(1)
    if not IsNull( self.localHallConnector) then
        self.localHallConnector:__TriggerOnConnect(nil,NetUtil.CONNECT_RESET_MES_MASK,nil)
    end
    self:__ClearSendQueue(1)
end


-----------------new net proxy add---------------------------------

NetManager.__initNet = __initNet
NetManager.__initNetMessage = __initNetMessage
NetManager.__initNetEvent = __initNetEvent


NetManager.OnReceivePackage = OnReceivePackage
NetManager.OnConnectSocket = OnConnectSocket
NetManager.__resetConnecting = __resetConnecting
NetManager.__resetVal = __resetVal
NetManager.__init = __init
NetManager.__delete = __delete



-- public func
NetManager.SetHallConnectState = SetHallConnectState
NetManager.SetNetParam = SetNetParam
NetManager.SetHallRouterId = SetHallRouterId
NetManager.SetHallRouterType = SetHallRouterType
NetManager.SetHallNetSecretKey = SetHallNetSecretKey
NetManager.SetPushIndex = SetPushIndex
NetManager.SetToken = SetToken
NetManager.IsHallConnect = IsHallConnect
NetManager.HallConnect = HallConnect

NetManager.SendMessage = SendMessage
NetManager.SendMessageFull = SendMessageFull
NetManager.Update = Update


NetManager.Release = Release
NetManager.AddNetConnectEvent = AddNetConnectEvent
NetManager.BroadcastEvent = BroadcastEvent
NetManager.ClearNetConnectEvent = ClearNetConnectEvent
NetManager.RemoveNetConnectEvent = RemoveNetConnectEvent
NetManager.InsetQueneMessage = InsetQueneMessage
NetManager.AddListener = AddListener
NetManager.Broadcast = Broadcast
NetManager.RemoveListener = RemoveListener


NetManager.ReConnectHandle = ReConnectHandle

--------------

--------------
NetManager.DoNationConnect = DoNationConnect
NetManager.SetNationNetParam = SetNationNetParam
NetManager.__GetGlobalSeq = __GetGlobalSeq
NetManager.__SetGlobalSeq = __SetGlobalSeq
NetManager.__GetSendQueue = __GetSendQueue
NetManager.__ClearSendQueue = __ClearSendQueue
NetManager.__GetSendQueueMsgByIndex = __GetSendQueueMsgByIndex
NetManager.__SetSendQueueMsgByIndex = __SetSendQueueMsgByIndex
NetManager.SendQueueContainsMsg_id = SendQueueContainsMsg_id
NetManager.SetNationNetSecretKey = SetNationNetSecretKey
NetManager.SetNationConnectState = SetNationConnectState
NetManager.GetNationConnectState = GetNationConnectState
NetManager.IsNationConnect = IsNationConnect
NetManager.MainSocketDispose = MainSocketDispose
NetManager.HallSocketDispose = HallSocketDispose
NetManager.NationSocketDispose = NationSocketDispose
NetManager.LogoutAllAndHasEvent = LogoutAllAndHasEvent
NetManager.LogoutAllNoneEvent = LogoutAllNoneEvent
NetManager.LogoutNation = LogoutNation

------------

return NetManager