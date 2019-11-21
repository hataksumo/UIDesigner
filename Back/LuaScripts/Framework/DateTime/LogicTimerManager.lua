--[[
-- added by dyg @ 2018-11-02
-- 逻辑计时器管理器
--]]

local LogicTimerManager = BaseClass("LogicTimerManager", Singleton)

local LOGIC_TYPE = {
    NATION_SCENE_CLEAR = 1, -- 国战场景清空类型
    NONE_CLEAR = 2, -- 不清除 一直存在
}

local TIME_TYPE = {
    SERVER_TIME = 1, -- 真实时间类型
    CLIENT_TIME = 2, -- 2模拟时间类型
}


-- 构造函数
local function __init(self)
	-- 成员变量
	-- handle 计时器对象表
    self.__update_timers = {}
    --[[
       timer结构
       名称 keyName 唯一名字 key
       计时器类型  timeType 1 真实时间类型  2模拟时间类型
       类型 logicType 1 国战场景清空 2不清空
      计时器结构 timer
    ]]
end


-- 清理：可用在场景切换前，不清理关系也不大，只是缓存池不会下降
local function Cleanup(self)
    if self.__update_timers ~= nil then
        for i, v in pairs(self.__update_timers) do
            self:__SimpleClearTimer(v)
        end
    end
    self.__update_timers = {}
end


-- 析构函数
local function __delete(self)
    self:Cleanup()
    self.__update_timers = nil
end


--[[
    创建定时器
    全参数
]]
local function AddTimer(self, keyName,timeType,logicType,SYNC_TIMER_MODE,timeStamp,delay, one_shot, func, obj,use_frame, unscaled)
    assert(type(keyName) == "string","keyName not exist!")
    self:RemoveTimer(keyName)
    local timerParam = nil
    if timeType == LogicTimerManager.TIME_TYPE.SERVER_TIME then
        timerParam = {keyName = keyName,timeType = timeType,logicType = logicType,one_shot = one_shot,func = func,obj = obj}
        --self, mode, timeStamp, delay, one_shot, func, obj
        local turnFunc = Bind(self,self.__OnTimerTrigger,timerParam)
        local syncTimer = SyncTimer.New(SYNC_TIMER_MODE, timeStamp,
                delay, false, turnFunc,obj)
        timerParam.timer = syncTimer
        self.__update_timers[timerParam.keyName] = timerParam
        --self, mode, timeStamp, delay, one_shot, func, obj
    elseif timeType == LogicTimerManager.TIME_TYPE.CLIENT_TIME then
        timerParam = {keyName = keyName,timeType = timeType,logicType = logicType,one_shot = one_shot}
        use_frame = use_frame or false
        unscaled = unscaled or false
        --local turnFunc = Bind(self,func,timerParam)
        local turnFunc = Bind(self,self.__OnTimerTrigger,timerParam)
        timerParam.timer = TimerManager:GetInstance():GetTimer(delay, turnFunc, obj,false,use_frame,unscaled)
        self.__update_timers[timerParam.keyName] = timerParam
    else
        Logger.LogVars("AddTimer timerParam is timeType is unkowan",timeType)
    end
    timerParam.Start = function (self)
        LogicTimerManager:GetInstance():StartTimer(self.keyName)
        return self
    end
    timerParam.Stop = function (self)
        LogicTimerManager:GetInstance():RemoveTimer(self.keyName)
        return self
    end
    return timerParam
    --SimpleTimerArgs(self, delay, func, obj, one_shot, use_frame, unscaled)
end


--当时间触发的时候
--local function __OnTimerTrigger(superSelf,func,timerParam, ...)
local function __OnTimerTrigger(self,timerParam)
    --Logger.LogVars(" __OnTimerTrigger : ",timerParam)
    --Logger.LogVars("__OnTimerTrigger timerParam.keyName : ",timerParam.keyName)
    if timerParam.func ~= nil then
        if timerParam.obj ~= nil then
            timerParam.func(timerParam,timerParam.obj)
        else
            timerParam.func(timerParam)
        end
    end
    if timerParam ~= nil then
        if timerParam.one_shot then
            self:RemoveTimer(timerParam.keyName)
        end
    end
end

--[[增加服务器计时器]]
local function AddServerTimer(self, keyName,logicType,SYNC_TIMER_MODE,timeStamp,delay, one_shot, func, obj)
    return self:AddTimer(keyName,LogicTimerManager.TIME_TYPE.SERVER_TIME,logicType,SYNC_TIMER_MODE,timeStamp,delay, one_shot, func, obj)
end

--[[增加前端计时器]]
local function AddClientTimer(self, keyName,logicType,delay, one_shot, func, obj,use_frame, unscaled)
    return self:AddTimer(keyName,LogicTimerManager.TIME_TYPE.CLIENT_TIME,logicType,nil,0,delay, one_shot, func, obj,use_frame,unscaled)
end

---- 获取Update定时器
--local function GetTimer(self, delay, func, obj, one_shot, use_frame, unscaled)
--    assert(not self.__update_timer[timer] and not self.__update_toadd[timer])
--    local timer = InnerGetTimer(self, delay, func, obj, one_shot, use_frame, unscaled)
--    self.__update_toadd[timer] = true
--    return timer
--end

--通过名字获取计时器参数
local function GetTimerByKeyName(self, keyName)
    local oldTimer = self.__update_timers[keyName]
    return oldTimer
end

--[[通过逻辑类型获取组多个计时器]]
local function __GetTimerByLogicType(self, logicType)
    local list = {}
    if self.__update_timers ~= nil then
        for i, v in pairs(self.__update_timers) do
            if v.logicType == logicType then
                table.insert(list,v)
            end
        end
    end
    return list
end

--[[通过逻辑类型获取组多个计时器名字]]
local function __GetTimerKeyNameByLogicType(self, logicType)
    local list = {}
    if self.__update_timers ~= nil then
        for i, v in pairs(self.__update_timers) do
            if v.logicType == logicType then
                table.insert(list,v.keyName)
            end
        end
    end
    return list
end

--通过逻辑类型移除多组计时器对象
local function RemoveTimerByLogicType(self, logicType)
   local list = self:__GetTimerKeyNameByLogicType(logicType)
    --Logger.LogVars("RemoveTimerByLogicType list ",list)
    for i, v in ipairs(list) do
      self:RemoveTimer(v)
    end
end


-- 内部通过名字获取计时器
local function __GetInnerTimerByKeyName(self, keyName)
    local timerParam = self:GetTimerByKeyName(keyName)
    if timerParam == nil then
        return
    end
    local timer = timerParam.timer
    return timer
end
--开始运行计时器
local function StartTimer(self, keyName)
    local timer = self:__GetInnerTimerByKeyName(keyName)
    if timer == nil then
        return
    end
    timer:Start()
end

local function RemoveTimer(self,keyName)
   local timerParam = self:GetTimerByKeyName(keyName)
    if timerParam == nil then
        return
    end
    self:__SimpleClearTimer(timerParam)
end

-- 清除计时器
local function __SimpleClearTimer(self,timerParam)
    if timerParam == nil then
        Logger.LogVars("__SimpleClearTimer timerParam is nil")
        return
    end
    local timer = timerParam.timer
    if timerParam.timeType == LogicTimerManager.TIME_TYPE.SERVER_TIME then
        if timer ~= nil then
            timer:Stop()
        end
        self.__update_timers[timerParam.keyName] = nil
    elseif timerParam.timeType == LogicTimerManager.TIME_TYPE.CLIENT_TIME then
        if timer ~= nil then
            timer:Stop()
        end
        self.__update_timers[timerParam.keyName] = nil
    else
        Logger.LogVars("__SimpleClearTimer timerParam is timeType is unknowan!",timerParam.timeType)
    end
end




LogicTimerManager.__init = __init
LogicTimerManager.__delete = __delete

LogicTimerManager.LOGIC_TYPE = LOGIC_TYPE
LogicTimerManager.TIME_TYPE = TIME_TYPE

LogicTimerManager.__SimpleClearTimer = __SimpleClearTimer
LogicTimerManager.__GetInnerTimerByKeyName = __GetInnerTimerByKeyName
LogicTimerManager.__GetTimerByLogicType = __GetTimerByLogicType
LogicTimerManager.__GetTimerKeyNameByLogicType = __GetTimerKeyNameByLogicType
LogicTimerManager.__OnTimerTrigger = __OnTimerTrigger

LogicTimerManager.RemoveTimer = RemoveTimer
LogicTimerManager.AddTimer = AddTimer
LogicTimerManager.Cleanup = Cleanup
LogicTimerManager.GetTimerByKeyName = GetTimerByKeyName
LogicTimerManager.StartTimer = StartTimer
LogicTimerManager.RemoveTimerByLogicType = RemoveTimerByLogicType
LogicTimerManager.AddServerTimer = AddServerTimer
LogicTimerManager.AddClientTimer = AddClientTimer



return LogicTimerManager