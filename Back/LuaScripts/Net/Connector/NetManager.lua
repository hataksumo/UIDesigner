--[[
-- added by dyg @ 2018-10-29
-- 网络全局管理器
--
--]]

local NetManager = BaseClass("NetManager", Singleton)
local NormalHallConnector = require "Net.Connector.NormalHallConnector"

local function __init(self)
    -- 队列的消息
    self.queneMessage = {}
    self.queneSend = false
    self.queneMsgId = -1
    -- 队列的消息
    if IsNull(self.localNormalHallConnector )then
        self.localNormalHallConnector =  NormalHallConnector.New(self)
        self.localNormalHallConnector:SetReceivePkgHandle(Bind(self,self.OnReceivePackage))
    end
end
--[[
    重置连接准备下次连接
]]
local function __resetConnecting(self)
    if not IsNull(self.localNormalHallConnector) then
        self.localNormalHallConnector:Release()
    end
end

--[[
    重置所有内部变量
]]
local function __resetVal(self)
    self.queneMessage = {}
    self.queneSend = false
    self.queneMsgId = -1
end

--[[
    析构函数
]]
local function __delete(self)
    self:Release()
end--[[
	释放连接资源 (真正清空)
]]
local function Release(self)
    self:__resetConnecting()
    self:__resetVal()
    self.localNormalHallConnector = nil
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
    self.localNormalHallConnector:SendMessage(msg_id, msg_obj, callbackFunc, params, show_mask, need_resend)
end


local function SendQueneMessage(self)
    if self.queneSend == false and table.count(self.queneMessage) > 0 then
        local data =  table.remove(self.queneMessage,1)
        self.queneSend = true
        self.queneMsgId = data.msg_id + 1
        SendMessage(self,data.msg_id,data.msg_obj,data.func,data.params,data.show_mask,data.resendMode)
    end
end

local function AddQueneMessage(self,data)
    table.insert(self.queneMessage,data)
    if self.queneSend == false then
        self.queneMsgId = data.msg_id + 1
        self.queneSend = true
    end
end

--local function OnReceivePackage(...)
local function OnReceivePackage(self,msg_id)
    --检测发送队列
    if self.queneSend and msg_id == self.queneMsgId then
        self.queneSend = false
        SendQueneMessage(self)
    end
end

local function InsetQueneMessage(self, msg_id, msg_obj,func,params,show_mask,resendMode)
    if IsNull(self.localNormalHallConnector) then
        return
    end
    table.insert(self.queneMessage,{msg_id = msg_id,msg_obj = msg_obj,func = func,params = params,
    show_mask = show_mask,resendMode = resendMode})
    SendQueneMessage(self)
end


local function ConnectServer(self,login_server_id,token,routerId,routerType)
    local ipAddress,port = ServerData:GetInstance():GetServerAddressAndPortByServerId(login_server_id)
    --port = 9007
    -- 心跳同步时间间隔为5
    self.localNormalHallConnector:SetNetParam( routerId,routerType,ipAddress,port,Config.HEARTBEAT_TIME_UNITY_SECONDS,token)
    self.localNormalHallConnector:Connect()

    --UIMask:GetInstance():ShowMask(-1)
end


local function Update(self)
    if not IsNull(self.localNormalHallConnector) then
        self.localNormalHallConnector:Update()
    end
end

--[[
	登出操作
]]
local function Logout(self)
    self:__resetVal()
end
-----------------new net proxy add---------------------------------

NetManager.OnReceivePackage = OnReceivePackage
NetManager.__resetConnecting = __resetConnecting
NetManager.__resetVal = __resetVal
NetManager.__init = __init
NetManager.__delete = __delete
NetManager.ConnectServer = ConnectServer
NetManager.SendMessage = SendMessage
NetManager.Update = Update
NetManager.Release = Release
NetManager.InsetQueneMessage = InsetQueneMessage
NetManager.AddQueneMessage = AddQueneMessage
NetManager.Logout = Logout
return NetManager