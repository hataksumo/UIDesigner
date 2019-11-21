--[[
-- added by dyg @ 2018-11-02
-- 时间同步管理器：负责获取与服务器时间同步的时间
--]]


local TimeSyncManager = BaseClass("TimeSyncManager", Singleton)
local MsgIDDefine = require "Net.Config.MsgIDDefine"
local MsgIDMap = require "Net.Config.MsgIDMap"

--最大ping采样数量
local MAX_PING_SAMPLE = 10

--同步间隔时间
--local SYNC_DURATION_SECOND = 10.0
--local SYNC_DURATION_SECOND = 45.0

local TIMER_STATUS =
{
    --初始化
    INIT = 1,
    --时间自己增长中
    TIME_ADD = 2,
    --同步时间中
    SYNCING = 3,
}

-- 构造函数
local function __init(self)
	-- 成员变量
	-- handle

    --模拟的服务器时间(会同步)(Unity秒)
    self.simulationUnitySecond = 0.0
    --模拟的服务器时间(会同步)（java 毫秒）
    self.simulationJavaMS = 0
    --现在能用多少个位置算ping
    self.firstSyncServerTime = false

    --现在能用多少个位置算ping
    self.currentPingCount = 0
    --ping值数组 double数组
    self.pingValues = {}
    for i = 1, MAX_PING_SAMPLE do
        self.pingValues[i] = 0
    end
    --pingValues = new double[MAX_PING_SAMPLE];

    --平均ping值
    self.averagePing = 0
    self.pingCount = 0
    self.currentPingValueIndex = 0

    -- 是否打印网络延迟
    self.debugNetLag = false

    --同步协议之前的时间
    self.timeBeforeSync = 0
    --是否初始化
    self.inited = false
    -- 是否开始运行running
    self.running = false

    self.timerStatus = TIMER_STATUS.INIT;

    self.requestTimer = 0
    self:SetCoreParams(Config.SYNC_SERVER_TIME_UNITY_SECONDS,true)
end

local function SetRunning(self,isRunning)
    if isRunning then
        self.timerStatus = TIMER_STATUS.INIT;
    else

    end
    self.running = isRunning
end

--[[
    设置同步时间和是否打印网络延迟
    syncDurationSecond 秒单位(0.1)
    debugNetLag true false
]]
local function SetCoreParams(self,syncDurationSecond,debugNetLag)
    self.syncDurationSecond = syncDurationSecond
    self.debugNetLag = debugNetLag
    self:SetSimulationJavaMS(os.time() * 1000)
    self.inited = true
end


 --[[
    基于java服务器的毫秒转秒时间 Unity秒时间
    注意:java服务器是从1970-1-1 00:00:00 开始 加上服务器的时区（即北京时间 +8小时）
 ]]
local function GetSimulationUnitySecond(self)
    --if self.firstSyncServerTime then
    --  return self.simulationUnitySecond
    --end
    --return os.time() -- 当前秒的时间戳
    return self.simulationUnitySecond
end
--[[
    获取时间差值
]]
local function get_timezone()
    local now = os.time()
    return os.difftime(now, os.time(os.date("!*t", now)))
end


--[[
    基于java服务器的毫秒转纳秒时间(服务器时间) C# 纳秒
 ]]
local function GetSimulationJavaMS(self)
    return tonumber(self.simulationJavaMS)
    --if self.firstSyncServerTime then
    --    return self.simulationJavaMS
    --end
    --return os.time() * 1000 -- 当前秒的时间戳
end


--[[
   设置基于java服务器的的的毫秒时间 毫秒
   注意:java服务器是从1970-1-1 00:00:00 开始 加上服务器的时区（即北京时间 +8小时）
 ]]
local function SetSimulationJavaMS(self,msJavaTimeStamp)
    self.simulationJavaMS = tonumber(msJavaTimeStamp)
    self.simulationUnitySecond = ConvertMS2UnitySeconds(msJavaTimeStamp);
    --//				simulationUnitySecond = Convert.ToDouble (value * 0.001f);
    --//				simulationJavaMS = Convert.ToInt64 (simulationUnitySecond * 1000d);
    --////				Debug.Log ("simulationJavaMS : " + simulationJavaMS + " ");
    --//				simulationCSharpNS = simulationUnitySecond * 1000000000d;
end

--[[
    强行同步时间
]]
local function ForceSyncTime(self)
    local mytimerStatus = self.timerStatus
    if mytimerStatus == TIMER_STATUS.INIT then
    elseif mytimerStatus == TIMER_STATUS.TIME_ADD then
        self.requestTimer = 0
    elseif mytimerStatus == TIMER_STATUS.SYNCING then
        self.requestTimer = 0
    end
end
--[[
    发送时间同步协议
]]
local function SendGetServerNowDataRequest(self)
    local msd_id = MsgIDDefine.PBSERVER_TIME_SYNC_REQUEST
    --NetManager:GetInstance():SendMessage(msd_id,nil,nil,nil,false,false)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBSERVER_TIME_SYNC_RESPONSE,self.OnGetServerNowDataResp,self)
    --NetManager:GetInstance():SendMessage(msd_id,nil,nil,"我是参数!",false,false)
    NetManager:GetInstance():SendMessage(msd_id,nil,Bind(self,self.OnGetServerNowDataResp),nil,false,false)
end

--local function OnGetServerNowDataResp(self,msg_obj)
--    -- 注意必须要移除对应的监听，或是注册移除监听成对出现，否则会响应多次。（需要自己维护监听函数）
--    NetManager:GetInstance():RemoveListener(MsgIDDefine.PBSERVER_TIME_SYNC_RESPONSE,self.OnRecvBackpackData)
--
--    if msg_obj.OpCode ~= 0 then --不为0则为请求协议错误 msg_obj.Packages.msg 为错误的文字内容
--        Logger.Log("error； ".." OpCode :"..msg_obj.OpCode.." error msg : "..msg_obj.Packages.msg)
--        return
--    end
--    local packages = msg_obj.Packages -- 如果为 0 则为正常协议结构体
--    ... --TODO 业务代码
--end

local function OnGetServerNowDataResp(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBSERVER_TIME_SYNC_RESPONSE,self.OnGetServerNowDataResp)
    --Logger.Log("OnGetServerNowDataResp； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj,nil,10))
    if msg_obj.OpCode ~= 0 then
        --Logger.Log("error； ".." OpCode :"..msg_obj.OpCode.." error msg : "..tostring(msg_obj.Packages.msg))
        self.requestTimer = self.syncDurationSecond;
        self.timerStatus = TIMER_STATUS.TIME_ADD;
        return
    else
        local javaMsTime = -1
        local packages = msg_obj.Packages

        if packages == nil or packages._is_null then
        else
            javaMsTime = packages.time
        end
        self:Synchronize(javaMsTime)
        --已经请求过一次时间了 同步时间吗？
        self.firstSyncServerTime = true
        self.requestTimer = self.syncDurationSecond;
        self.timerStatus = TIMER_STATUS.TIME_ADD;
    end
end


local function Synchronize(self, javaMsTime)
    -- Measure the ping in milliseconds
    local ping = (Time.unscaledTime - self.timeBeforeSync) * 1000 --  协议经过的网络时间
    self:CalculateAveragePing(ping)

    --[[ Take the time passed between server sends response and we get it
     as half of the average ping value]]

    local timePassed = self.averagePing / 2.0
    self.lastServerSecond = javaMsTime + timePassed; -- 秒级别服务器时间
    self.lastLocalSecond = Time.unscaledTime -- 秒级别本地时间
    self.simulationJavaMS = tonumber(javaMsTime)
    self.simulationUnitySecond = ConvertMS2UnitySeconds(javaMsTime)
    --Logger.Log ("Synchronize TimeSyncManager simulationJavaMS : " .. self.simulationJavaMS .. " ")
end


--[[
   计算平均时间
   ping 当前采样pin值 小数类型
 ]]
local function CalculateAveragePing(self,ping)

    self.pingValues[self.currentPingValueIndex] = ping
    if  self.currentPingCount <= self.currentPingValueIndex then
        self.currentPingCount = self.currentPingValueIndex + 1
    end

    self.currentPingValueIndex = self.currentPingValueIndex + 1
    if self.currentPingValueIndex >= MAX_PING_SAMPLE then
        self.currentPingValueIndex = 0
    end


    local pingSum = 0.0;
    for i = 1, self.currentPingCount do
        pingSum = pingSum + self.pingValues[i]
    end

    --			Debug.LogError ("pingSum : " + pingSum);
    --			Debug.LogError ("currentPingValueIndex : " + currentPingValueIndex + " currentPingCount : " + currentPingCount);
    self.averagePing = pingSum / self.currentPingCount
end

local function UpdateNetLag(self)

    if not self.running then
        return
    end

    if self.timerStatus == TIMER_STATUS.INIT then
        self.timerStatus = TIMER_STATUS.TIME_ADD
    elseif self.timerStatus == TIMER_STATUS.TIME_ADD then
        if self.requestTimer <= 0 then
            self.timeBeforeSync = Time.unscaledTime
            self:SendGetServerNowDataRequest()
            self.timerStatus = TIMER_STATUS.SYNCING
        else
            self.requestTimer = self.requestTimer - Time.unscaledDeltaTime
        end
    elseif self.timerStatus == TIMER_STATUS.SYNCING then

    end
    --if not self.firstSyncServerTime then
    --    return
    --end
    --self.simulationUnitySecond = self.simulationUnitySecond + Time.unscaledDeltaTime;
    --self.simulationJavaMS = ConvertUnitySeconds2MS(self.simulationUnitySecond);
end

local function UpdateNetTime(self)
    self.simulationUnitySecond = self.simulationUnitySecond + Time.unscaledDeltaTime;
    self.simulationJavaMS = tonumber(ConvertUnitySeconds2MS(self.simulationUnitySecond))
end


function  ConvertMS2UnitySeconds(tick)
    return tick * 0.001
end

function  ConvertUnitySeconds2MS(tick)
    return tick * 1000
end


-- Update回调
local function Update(self)

    if not self.inited then
        return
    end

    self:UpdateNetLag()
    self:UpdateNetTime()
end

-- 启动
local function Startup(self)
    self:Dispose()

end

-- 释放
local function Dispose(self)

end

-- 清理：可用在场景切换前，不清理关系也不大，只是缓存池不会下降
local function Cleanup(self)
    self.__update_timer = {}
end


--[[
    重置时间同步
]]
local function Reset(self)
    --self.firstSyncServerTime = false
    --self.currentPingCount = 0
    --self.currentPingValueIndex = 0
end

-- 析构函数
local function __delete(self)
    self:Cleanup()
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBSERVER_TIME_SYNC_RESPONSE,self.OnGetServerNowDataResp)
end

---- 获取定时器
--local function InnerGetTimer(self, delay, func, obj, one_shot, use_frame, unscaled)
--    local timer = nil
--    if table.length(self.__pool) > 0 then
--        timer = table.remove(self.__pool)
--        if delay and func then
--            timer:Init(delay, func, obj, one_shot, use_frame, unscaled)
--        end
--    else
--        timer = Timer.New(delay, func, obj, one_shot, use_frame, unscaled)
--    end
--    return timer
--end




TimeSyncManager.Update = Update
TimeSyncManager.__init = __init
TimeSyncManager.Startup = Startup
TimeSyncManager.Cleanup = Cleanup
TimeSyncManager.Dispose = Dispose
TimeSyncManager.__delete = __delete

TimeSyncManager.GetSimulationUnitySecond = GetSimulationUnitySecond
TimeSyncManager.GetSimulationJavaMS = GetSimulationJavaMS
TimeSyncManager.SetSimulationJavaMS = SetSimulationJavaMS
TimeSyncManager.SetCoreParams = SetCoreParams
TimeSyncManager.SendGetServerNowDataRequest = SendGetServerNowDataRequest
TimeSyncManager.OnGetServerNowDataResp = OnGetServerNowDataResp
TimeSyncManager.Synchronize = Synchronize
TimeSyncManager.CalculateAveragePing = CalculateAveragePing
TimeSyncManager.UpdateNetLag = UpdateNetLag
TimeSyncManager.UpdateNetTime = UpdateNetTime
TimeSyncManager.SetRunning = SetRunning
TimeSyncManager.ForceSyncTime = ForceSyncTime

return TimeSyncManager