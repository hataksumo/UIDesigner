---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by dyg.
--- DateTime: 2018/12/17 16:24
--- 游戏网络通用业务模块（连接断开或者登陆登出）  重新链接
---
local NetUILogic = BaseClass("NetUILogic", Singleton)
local NetUtil = require "Net.Util.NetUtil"

local RE_CONNECT_FLAG_NORMAL = -5 -- 正常状态
local RE_CONNECT_FLAG_LOGOUT = -4 --登出状态
local RE_CONNECT_FLAG_LOGOUT_OK = -6 --登出完成
local RE_CONNECT_FLAG_REING = -3 -- 重连中

-- 1 不管是国战还是游戏服 断开连接后都必须重连
 -- 2 国战服还没连接呢的时候不需要重新连接
-- 3 游戏服连接断开 国战服有没有连接 没有 连接游戏服 有 连接游戏服
-- 4 国战服连接断开  游戏服有没有连接 没有 连接游戏服和国战服 有 连接国战服

local function ConnectServer(self,login_server_id,token,routerId,routerType)
    local ipAddress,port = ServerData:GetInstance():GetServerAddressAndPortByServerId(login_server_id)
    --port = 9007
    -- 心跳同步时间间隔为5
    NetManager:GetInstance():SetNetParam(token,routerId,routerType,ipAddress,port,Config.HEARTBEAT_TIME_UNITY_SECONDS)
    NetManager:GetInstance():HallConnect()
    UIMask:GetInstance():ShowMask(-1)
end

local function Connect2NationServer(self)
    if NetManager:GetInstance():IsNationConnect() then
        NationCtrlManager:GetInstance():OnNationConnectorEvent(NetUtil.CONNECT_EVENT_CONECT_OK,nil)
    else
        local nationIPAddress ,nationPort =  UserData:GetInstance():GetNationAddressAndPort()
        local innerServerId =  UserData:GetInstance():GetInnerServerId()
        Logger.LogVars("nationIPAddress ,",nationIPAddress," nationPort : ",nationPort, " innerServerId : ",innerServerId)
        NetManager:GetInstance():SetNationNetParam(UserData:GetInstance().roleID,0,nationIPAddress,nationPort,Config.HEARTBEAT_TIME_UNITY_SECONDS,innerServerId)

        NetManager:GetInstance():DoNationConnect()
        UIMask:GetInstance():ShowMask(-1)
    end
end

--[[
	登出操作 有事件
]]
local function LogoutAll(self,hasEvent)
    self.reConnectFlag = RE_CONNECT_FLAG_LOGOUT
    TimeSyncManager:GetInstance():SetRunning(false) -- 启动服务器时间同步
    if hasEvent then
        NetManager:GetInstance():LogoutAllAndHasEvent() -- 有事件的登出
    else
        NetManager:GetInstance():LogoutAllNoneEvent() -- 有事件的登出
    end
    UIMask:GetInstance():CloseMask(-1)
end

--[[
	登出国战
]]
local function LogoutNation(self,hasEvent)
    NetManager:GetInstance():LogoutNation(hasEvent) -- 有事件的登出
    --if hasEvent then
    --
    --else
    --    NetManager:GetInstance():LogoutAllNoneEvent() -- 有事件的登出
    --end
    UIMask:GetInstance():CloseMask(-1)
end

--重新连接逻辑
local function __DoReConnectWindow(self)
    if  SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then
        self:LogoutAll(false) -- 全部退出
        return
    end

    if UIManager:GetInstance():GetWindow(UIWindowNames.UINoticeTip, true) then
        return
    end
    --如果加载中也返回
    NetManager:GetInstance():HallSocketDispose() -- 断开连接 并不重置变量
    UIManager:GetInstance():OpenTwoButtonTip("提示", "网络链接已断开是否重新连接？", "确认", "取消", Bind(self,self.__OnClickHallReConnectWindow,true),Bind(self,self.__OnClickHallReConnectWindow,false))
end


local function __OnClickHallReConnectWindow(self,isConfirm)
    UIManager:GetInstance():CloseTip()
    Logger.LogVars(" __OnClickHallReConnectWindow  isConfirm :",isConfirm)
    if isConfirm then
        self:__ReConnectLogic()
    else
        self:LogoutAll(true) -- 返回到登录
    end
end



local function  BackLoginScene(self)
    DataManager:GetInstance():ClearData()
    UIManager:GetInstance():ClearWindowStack()
    SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
end

--返回到登录场景 并没有网络调用
local function __ReturnLoginScene(self)
    self.reConnectFlag = RE_CONNECT_FLAG_NORMAL -- 重连标志
    UIMask:GetInstance():CloseMask(-1)
    TimeSyncManager:GetInstance():SetRunning(false) -- 启动服务器时间同步
    NationCtrlManager:GetInstance():__OnLogout()
    if not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then
        --Logger.LogVars(" 登出到登录场景 调用 ClearWindowStack")
        BackLoginScene(self)
    end
end

--重连逻辑
local function __ReConnectLogic(self)
    self.reConnectFlag = RE_CONNECT_FLAG_REING -- 正在重连
    UIMask:GetInstance():ShowMask(-1)
    TimeSyncManager:GetInstance():SetRunning(false) -- 暂停服务器时间同步
    NetManager:GetInstance():SetHallNetSecretKey(NetUtil.DEFAULT_NET_SECRETKEY)
    NetManager:GetInstance():SetHallRouterType(0)
    NetManager:GetInstance():HallConnect()
end

local function __OnConnectHallEvent(self,connector,connectorType, result, msg)
    if result < 0 then
        if self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT then -- 状态判断 登录服已经登出了   返回登录
            __ReturnLoginScene(self)
        else
            if self.reConnectFlag == RE_CONNECT_FLAG_NORMAL or self.reConnectFlag == RE_CONNECT_FLAG_REING then
                if result == NetUtil.CONNECT_EVENT_SEVER_NOT_OPEN  then -- 服务器没开
                    self:__DoReConnectWindow(connectorType)
                elseif result == NetUtil.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER then -- 客户端没网
                    self:__DoReConnectWindow(connectorType)
                elseif result == NetUtil.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE then -- 服务器停掉了 断开了
                    self:__DoReConnectWindow(connectorType)
                elseif result == NetUtil.CONNECT_RETRY_SEND_MANY_TIMES then -- 重试次数过多
                    self:__DoReConnectWindow(connectorType)
                else -- 其他情况
                    self:LogoutAll(true)
                end
            elseif self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT_OK and  not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then --登出但是不在登陆场景
                BackLoginScene(self)
            end
        end
        return
    end
    if result == NetUtil.CONNECT_EVENT_CONECT_OK then
        local msd_id = nil
        local msg = nil
        if  self.reConnectFlag == RE_CONNECT_FLAG_REING  then -- 重连的
            msd_id = MsgIDDefine.PBUSER_RECONNECT_REQUEST
            NetManager:GetInstance():SendMessage(msd_id, msg, Bind(self,self.__OnReconnectResp), nil, true, true)
        else -- 正常登陆的
            UIMask:GetInstance():CloseMask(-1)
            msd_id = MsgIDDefine.PBUSER_LOGIN_REQUEST
            NetManager:GetInstance():SendMessage(msd_id,nil, Bind(self,self.__OnRecvLogin), nil, true, true)
        end
        self.reConnectFlag = RE_CONNECT_FLAG_NORMAL
    elseif result == NetUtil.CONNECT_EVENT_CLOSE_OK then -- 正常退出啊
        --登出到登录场景
        if self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT then
            __ReturnLoginScene(self)
        elseif self.reConnectFlag == RE_CONNECT_FLAG_LOGOUT_OK and  not SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.LoginScene) then --登出但是不在登陆场景
            BackLoginScene(self)
        end
    end
end

local function __OnConnectNationEvent(self,connector,connectorType, result, msg)
    UIMask:GetInstance():CloseMask(-1)
    if result < 0 then
        Logger.LogErrorVars("__OnConnectNationEvent Connect result: ",result," 国战服连接 msg ： ",msg)
        NationCtrlManager:GetInstance():OnNationConnectorEvent(result,msg)
        return
    end
    Logger.LogErrorVars(" success __OnConnectNationEvent Connect result: ",result," 国战服连接 msg ： ",msg)
    NationCtrlManager:GetInstance():OnNationConnectorEvent(result,msg)
end

--[[
    服务器连接成功
]]
local function __OnConnectEvent(self, connector,connectorType, result, msg)
    --local function OnConnect(...)
    --    Logger.Log((table.dump({...},nil,10)))
    --Logger.LogErrorVars("NetUILogic Connect result: ",result," msg : ",msg,"  self.reConnectFlag ",self.reConnectFlag," connectorType : ",connectorType)
    if connectorType == NetUtil.CONNECTOR_TYPE.HALL then
        self:__OnConnectHallEvent(connector,connectorType, result, msg)
    elseif connectorType == NetUtil.CONNECTOR_TYPE.NATION then
        self:__OnConnectNationEvent(connector,connectorType, result, msg)
    else

    end
end

--[[
 登陆gate响应
]]
--local function __OnRecvLogin(...)
local function __OnRecvLogin(self,msg_obj)

    --Logger.Log("NetUILogic __OnRecvLogin :"..table.dump({...},nil,10))
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_LOGIN_RESPONSE,self.__OnRecvLogin)
    if msg_obj.OpCode ~= 0 then
        self:LogoutAll(true) -- 如果没有这段代码将陷入死循环
        --Logger.Log("登陆gate响应失败； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
        UIManager:GetInstance():OpenTwoButtonTip("提示",msg_obj.Packages.msg,"退出游戏","知道了",function()
            GameChannelMgr:GetInstance():ExitGame()
        end,nil)
        return
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NET_CONNECT_FAIL)-- 登陆继续往下处理
       -- return
    end
    local secretKey = msg_obj.Packages.secretKey
    NetManager:GetInstance():SetHallNetSecretKey(secretKey) -- 设置新的秘钥
    NetManager:GetInstance():SetHallRouterType(1)
    local serverTime = msg_obj.Packages.serverTime
    --Logger.LogVars("serverTime : ",serverTime)
    if serverTime ~= nil then
        if serverTime ~= 0 then
            --Logger.LogVars("go  SetSimulationJavaMS: ",serverTime)
            TimeSyncManager:GetInstance():SetSimulationJavaMS(serverTime)
        end
    end
    TimeSyncManager:GetInstance():SetRunning(true) -- 启动服务器时间同步
    NetManager:GetInstance():SetHallConnectState(NetUtil.HALL_CONNECT_ST.LOGIC_OK)
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
    PushManager:GetInstance():Register()
    NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self,self.__OnRecvEnterGame))
end

--[[
 登陆game响应
]]
local function __OnRecvEnterGame(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_ENTER_GAME_RESPONSE,self.__OnRecvEnterGame)
    if msg_obj.OpCode ~= 0 then
        self:LogoutAll(true)  -- 如果没有这段代码将陷入死循环
        UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        Logger.Log("登陆game响应失败； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NET_CONNECT_FAIL)-- 登陆继续往下处理
        return
    end
    self.coinExchangeTime=msg_obj.Packages.coinExchangeTime
    --Logger.LogAny(msg_obj.Packages,"登录数据")
    DataManager:GetInstance():InitLoginData(msg_obj.Packages)
end

--[[
    重新链接响应
]]
local function __OnReconnectResp(self,msg_obj)
    UIMask:GetInstance():CloseMask(-1)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_RECONNECT_RESPONSE,self.__OnReconnectResp)
    if msg_obj.OpCode~=0 then
        self:LogoutAll(true)  -- 如果没有这段代码将陷入死循环
        Logger.Log("重新链接失败； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
        -- 连接失败处理
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NET_CONNECT_FAIL)-- 登陆继续往下处理
        return
    else
        Logger.Log("重新链接成功")
        NetManager:GetInstance():SetHallNetSecretKey(msg_obj.Packages.secretKey) -- 重新设置秘钥
        NetManager:GetInstance():SetHallRouterType(1)
        -- 设置网络正常
        NetManager:GetInstance():SetHallConnectState(NetUtil.HALL_CONNECT_ST.LOGIC_OK)
        TimeSyncManager:GetInstance():SetRunning(true) -- 启动服务器时间同步
        NetManager:GetInstance():ReConnectHandle()
    --    UI_NET_CONNECT_SUCCESS = "UI_NET_CONNECT_SUCCESS", -- 网络连接成功
    --    UI_NET_CONNECT_FAIL = "UI_NET_CONNECT_FAIL", -- 网络连接失败
    --UI_NET_CONNECT_RE_OK = "UI_NET_CONNECT_RE_OK", -- 重新连接成功
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NET_CONNECT_RE_OK)
        GiftData:GetInstance():RequestGiftData()
    end
end


--[[
-- 注册相关事件
--]]
local function __register(self)
    NetManager:GetInstance():AddNetConnectEvent(self.__OnConnectEvent,self)
end

--[[
--  释放相关事件
--]]
local function __unRegister(self)
    Logger.Log("__unRegister")
    NetManager:GetInstance():ClearNetConnectEvent()
end


-- 构造函数
local function __init(self)
    self.reConnectFlag = RE_CONNECT_FLAG_NORMAL -- 重连标志
    --self.__isRegister = false
    self:__register()
end

-- 析构函数
local function __delete(self)
    self:__unRegister()
end


NetUILogic.ConnectServer = ConnectServer
NetUILogic.LogoutAll = LogoutAll
NetUILogic.__DoReConnectWindow = __DoReConnectWindow
NetUILogic.__OnClickHallReConnectWindow = __OnClickHallReConnectWindow
NetUILogic.__ReConnectLogic = __ReConnectLogic

NetUILogic.__OnConnectEvent = __OnConnectEvent

NetUILogic.__OnRecvLogin = __OnRecvLogin
NetUILogic.__OnRecvEnterGame = __OnRecvEnterGame
NetUILogic.__OnReconnectResp = __OnReconnectResp
NetUILogic.__ReturnLoginScene = __ReturnLoginScene


NetUILogic.__init = __init
NetUILogic.__delete = __delete
NetUILogic.__register = __register
NetUILogic.__unRegister = __unRegister

-- new add
NetUILogic.Connect2NationServer = Connect2NationServer
NetUILogic.__OnConnectNationEvent = __OnConnectNationEvent
NetUILogic.__OnConnectHallEvent = __OnConnectHallEvent
NetUILogic.LogoutNation = LogoutNation

--

return NetUILogic