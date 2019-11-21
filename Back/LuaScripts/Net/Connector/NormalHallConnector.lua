---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/9/24 16:53
---
local HallConnector = require "Net.Connector.HallConnector"
local NormalHallConnector = BaseClass("NormalHallConnector",HallConnector)
local PushManager = require "Net.Util.PushManager"
local base = HallConnector

local RE_CONNECT_FLAG_REING = -3 -- 重连中
local RE_CONNECT_FLAG_LOGOUT = -4 --登出状态
local RE_CONNECT_FLAG_NORMAL = -5 -- 正常状态
local RE_CONNECT_FLAG_LOGOUT_OK = -6 --登出完成
local CONNECT_MASK_ID = 1000
--初始化
local function InitHallSocket(self)
    base.InitHallSocket(self)
    if self.pushManager == nil then
        self.pushManager = PushManager.New(self)
    end
    self.save_send_msg = {}
end
--[[
	登出操作 有事件
]]
local function __resetVal(self)
    self.pushManager:UnRegister()
    for i, v in pairs(self.sendQueue) do
        if v ~= nil and v.show_mask then
            UIMask:GetInstance():CloseMask(v.msg_id)
        end
    end

    self.save_send_msg = {}
end

local function Connect(self)
    Logger.Log("------------->Connect")
    UIMask:GetInstance():ShowMask(CONNECT_MASK_ID)
    return base.Connect(self)
end

local function LogoutAll(self,hasEvent)
    self.reConnectFlag = RE_CONNECT_FLAG_LOGOUT
    TimeSyncManager:GetInstance():SetRunning(false) -- 启动服务器时间同步
    NetManager:GetInstance():Logout()
    __resetVal(self)
    if hasEvent then
        base.LogoutHasEvent(self)
    else
        base.LogoutNoneEvent(self)
    end
    UIMask:GetInstance():CloseMask(CONNECT_MASK_ID)
end

--重发处理
local function ReConnectHandle(self)
    for i, v in pairs(self.save_send_msg) do
        self:SendMessage(i,v.msg_obj, v.callbackFunc, v.params, v.show_mask, v.resendMode)
    end
    self.save_send_msg = {}
end
--[[
    重新链接响应
]]
local function OnReconnectResp(self,msg_obj)
    if msg_obj.OpCode~=0 then
        LogoutAll(self,true)  -- 如果没有这段代码将陷入死循环
        Logger.Log("重新链接失败； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
        -- 连接失败处理
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NET_CONNECT_FAIL)-- 登陆继续往下处理
        return
    else
        Logger.Log("重新链接成功")
        base.SetNetSecretKey(self,msg_obj.Packages.secretKey) -- 重新设置秘钥
        base.SetRouterType(self,1)
        -- 设置网络正常
        base.SetConnectState(self,base.HALL_CONNECT_ST.LOGIC_OK)
        TimeSyncManager:GetInstance():SetRunning(true) -- 启动服务器时间同步
        ReConnectHandle(self)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NET_CONNECT_RE_OK)
        GiftData:GetInstance():RequestGiftData()
    end
end



local function  BackLoginScene(self)
    DataManager:GetInstance():ClearData()
    UIManager:GetInstance():ClearWindowStack()
    SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
end
--返回到登录场景 并没有网络调用
local function ReturnLoginScene(self)
    self.reConnectFlag = RE_CONNECT_FLAG_LOGOUT_OK -- 重连标志
    TimeSyncManager:GetInstance():SetRunning(false) -- 启动服务器时间同步
    NationCtrlManager:GetInstance():__OnLogout()
    if not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then
        BackLoginScene(self)
    end
end
--[[
 登陆gate响应
]]
local function OnRecvLogin(self,msg_obj)
    Logger.Log("------------->正常登陸返回")
    if msg_obj.OpCode ~= 0 then
        LogoutAll(self,true) -- 如果没有这段代码将陷入死循环
        UIManager:GetInstance():OpenTwoButtonTip("提示",msg_obj.Packages.msg,"退出游戏","知道了",function()
            GameChannelMgr:GetInstance():ExitGame()
        end,nil)
        return
    end
    local secretKey = msg_obj.Packages.secretKey
    base.SetNetSecretKey(self,secretKey) -- 设置新的秘钥
    base.SetRouterType(self,1)
    local serverTime = msg_obj.Packages.serverTime
    if serverTime ~= nil then
        if serverTime ~= 0 then
            TimeSyncManager:GetInstance():SetSimulationJavaMS(serverTime)
        end
    end
    TimeSyncManager:GetInstance():SetRunning(true) -- 启动服务器时间同步
    base.SetConnectState(self,base.HALL_CONNECT_ST.LOGIC_OK)
    -- 发送进入游戏
    local msd_id = MsgIDDefine.PBUSER_ENTER_GAME_REQUEST
    local msg = (MsgIDMap[msd_id])()
    msg.vopenid = ClientData:GetInstance().openId
    local deviceId=CS.UnityEngine.SystemInfo.deviceUniqueIdentifier
    local deviceModel=CS.UnityEngine.SystemInfo.deviceModel
    if string.contains(deviceModel,"iPhone") then
        msg.iosEquipmentId =deviceId
    else
        msg.androidEquipmentId =deviceId
    end
    Logger.Log("设备deviceId是："..deviceId.."    设备名称是："..deviceModel)
   -- local ledouChannel = CS.GameChannel.ChannelManager.instance:CreateChannel(CS.GameChannel.ChannelType.Ledou)

    msg.channelId = GameChannelMgr:GetInstance():GetChannelId()
    msg.deviceId = GameChannelMgr:GetInstance():GetSpecifiedInfo("DeviceID")
    msg.imei = GameChannelMgr:GetInstance():GetSpecifiedInfo("IMEI")
    --local ip = CS.GameUtility.GetAllIP()
    --Logger.LogErrorVars("设备ip是 : ",ip)
    --msg.ip = ""
   self.pushManager:Register()
    self:SendMessage(msd_id, msg,Bind(self, function(self,msg_obj)
        if msg_obj.OpCode ~= 0 then
            LogoutAll(self,true)  -- 如果没有这段代码将陷入死循环
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            Logger.Log("登陆game响应失败； ".." OpCode :"..msg_obj.OpCode.." msg : ")
            return
        end
        DataManager:GetInstance():InitLoginData(msg_obj.Packages)
    end))
end


--重连逻辑
local function ReConnectLogic(self)
    self.reConnectFlag = RE_CONNECT_FLAG_REING -- 正在重连
    UIMask:GetInstance():ShowMask(CONNECT_MASK_ID)
    TimeSyncManager:GetInstance():SetRunning(false) -- 暂停服务器时间同步
    base.SetNetSecretKey(self) -- 设置新的秘钥
    base.SetRouterType(self,0)
    Connect(self)
end

local function OnClickHallReConnectWindow(self,isConfirm)
    UIManager:GetInstance():CloseTip()
    Logger.LogVars(" __OnClickHallReConnectWindow  isConfirm :",isConfirm)
    if isConfirm then
        ReConnectLogic(self)
    else
        LogoutAll(self,true) -- 返回到登录
    end
end

--重新连接逻辑
local function DoReConnectWindow(self)
    if  SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then
        LogoutAll(self,false) -- 全部退出
        return
    end
    if UIManager:GetInstance():GetWindow(UIWindowNames.UINoticeTip, true) then
        return
    end
    --如果加载中也返回
    base.SocketDispose(self)
    base.SetConnectState(self,base.HALL_CONNECT_ST.INIT)
    UIManager:GetInstance():OpenTwoButtonTip("提示", "网络链接已断开是否重新连接？", "确认", "取消", Bind(self,OnClickHallReConnectWindow,true),Bind(self,OnClickHallReConnectWindow,false))
end


local function TriggerOnConnect(self,socket,result,msg)
    Logger.LogVars("TriggerOnConnect  result:",result)
    if result > 0 then -- 连接成功
        if result == base.CONNECT_EVENT_CONECT_OK then -- 连接成功
            local msd_id = nil
            local msg = nil
            if  self.reConnectFlag == RE_CONNECT_FLAG_REING  then -- 重连的
                msd_id = MsgIDDefine.PBUSER_RECONNECT_REQUEST
                self:SendMessage(msd_id, msg, Bind(self,OnReconnectResp))
            else -- 正常登陆的
                msd_id = MsgIDDefine.PBUSER_LOGIN_REQUEST
                self:SendMessage(msd_id, msg, Bind(self,OnRecvLogin))
            end
            UIMask:GetInstance():CloseMask(CONNECT_MASK_ID)
            self.reConnectFlag = RE_CONNECT_FLAG_NORMAL
        elseif result == base.CONNECT_EVENT_CLOSE_OK then
            --登出到登录场景
            if self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT then
                ReturnLoginScene(self)
            elseif self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT_OK and  not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then --登出但是不在登陆场景
                BackLoginScene(self)
            end
        end
    else
        if self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT then -- 状态判断 登录服已经登出了   返回登录
            ReturnLoginScene(self)
        else
            if self.reConnectFlag == RE_CONNECT_FLAG_NORMAL or self.reConnectFlag == RE_CONNECT_FLAG_REING then
                if result == base.CONNECT_EVENT_SEVER_NOT_OPEN  then -- 服务器没开
                    DoReConnectWindow(self)
                elseif result == base.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER then -- 客户端没网
                    DoReConnectWindow(self)
                elseif result == base.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE then -- 服务器停掉了 断开了
                    DoReConnectWindow(self)
                elseif result == base.CONNECT_RETRY_SEND_MANY_TIMES then -- 重试次数过多
                    DoReConnectWindow(self)
                else -- 其他情况
                    LogoutAll(self,true)
                end
            elseif self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT_OK and  not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then --登出但是不在登陆场景
                BackLoginScene(self)
            end
        end
    end
end

local function OnConnectSocketEvent(self,socket,result,msg)
    base.OnConnectSocketEvent(self,socket,result,msg)
    TriggerOnConnect(self,socket,result,msg)
end

local function ReSendMessage(self,v)
    if self.__connectState == base.HALL_CONNECT_ST.LOGIC_OK or
            v.msg_id == MsgIDDefine.PBUSER_RECONNECT_REQUEST or
            v.msg_id == MsgIDDefine.PBUSER_LOGIN_REQUEST  or
            v.msg_id == MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then
        base.ReSendMessage(self,v)
    end
end
local function SendMessage(self, msg_id, msg_obj, callbackFunc, params, show_mask,resendMode)
    --假如连接成功或者是重连协议
    if base.IsConnect(self) then
        --添加遮罩
        show_mask = show_mask == nil and true or show_mask
        if show_mask then --是否显示蒙版
            UIMask:GetInstance():ShowMask(msg_id)
        end
        if self.__connectState == base.HALL_CONNECT_ST.LOGIC_OK or
                msg_id == MsgIDDefine.PBUSER_RECONNECT_REQUEST or
                msg_id == MsgIDDefine.PBUSER_LOGIN_REQUEST  or
                msg_id == MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then
                --检测是否有重复
                for i, v in pairs(self.sendQueue) do
                    if v.msg_id == msg_id then
                        Logger.Log("协议重复发送:  添加到队列中"..msg_id)
                        NetManager:GetInstance():AddQueneMessage({msg_id = msg_id,msg_obj = msg_obj,func = callbackFunc,params = params,
                                                                   show_mask = show_mask,resendMode = resendMode})
                        --UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100050))
                        return
                    end
                end
            base.SendMessage(self, msg_id, msg_obj, callbackFunc, params, show_mask,resendMode)
        end
    else
        if 	msg_id ~= MsgIDDefine.PBUSER_RECONNECT_REQUEST and
                msg_id ~= MsgIDDefine.PBUSER_LOGIN_REQUEST and
                msg_id ~= MsgIDDefine.PBNATION_NATION_OPEN_REQUEST then
            Logger.Log("重发队列   "..msg_id)
            self.save_send_msg[msg_id] = {msg_obj = msg_obj,callbackFunc = callbackFunc,params = params,show_mask = show_mask,resendMode = resendMode}
        end
        TriggerOnConnect(self,nil, base.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER)
    end
end

--[[
	根据数据源转发网络消息
]]
local function TransmitNetData(self, receive_msg)
    if receive_msg.MsgType == 2 then
        self.pushIndex = receive_msg.RequestSeq
        if self.pushManager ~= nil then
            self.pushManager:PushMessage(receive_msg.MsgID,receive_msg)
        end
    else
        local absGlobalSeq = math.abs(receive_msg.RequestSeq)
        local sendData =  self.sendQueue[absGlobalSeq]
        if sendData ~= nil then -- 正常关闭蒙版
            if sendData.show_mask then
                UIMask:GetInstance():CloseMask(sendData.msg_id)
            end
        end
        base.TransmitNetData(self,receive_msg)
    end
end

NormalHallConnector.TriggerOnConnect = TriggerOnConnect
NormalHallConnector.TransmitNetData = TransmitNetData
NormalHallConnector.Connect = Connect
NormalHallConnector.InitHallSocket = InitHallSocket
NormalHallConnector.SendMessage = SendMessage
NormalHallConnector.OnConnectSocketEvent = OnConnectSocketEvent
NormalHallConnector.ReSendMessage = ReSendMessage
NormalHallConnector.LogoutAll = LogoutAll

return NormalHallConnector