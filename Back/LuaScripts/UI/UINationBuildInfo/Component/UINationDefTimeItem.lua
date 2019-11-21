local UINationDefTimeItem = BaseClass("UINationDefTimeItem", UIBaseContainer)
local base = UIBaseContainer

local function OnCreate(self)
    base.OnCreate(self)
    self.recoverTime_UIText = self:AddComponent(UIText, "recoverTime_UIText")
end

local function OnDisable(self)
    self:__DisposeDefRecoverTimer()
    self.rootView = nil
    self.parentView = nil
end

local function OnDestroy(self)
    self:__DisposeDefRecoverTimer()
    self.rootView = nil
    self.parentView = nil
end

local function __DisposeDefRecoverTimer(self)
    if self.defTimer ~= nil then
        self.defTimer:Stop()
        self.defTimer = nil
    end
end

local function OnEnable(self)

end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,rootView,parentView,townId,pos,endTime,defId)
    self.rootView = rootView
    self.parentView = parentView
    self.townId = townId
    self.pos = pos
    self.defId = defId
    self.gameObject.name = defId

    if self.rootView == nil then
        self:__DisposeDefRecoverTimer()
        return
    end

    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    self:__DisposeDefRecoverTimer()
    self.defTimer = SyncTimer.New(SyncTimer.MODE_STEP, currentTime,
            500, false, self.__OnTimerCallback, {endTime = endTime, superSelf = self })
    self.defTimer:Start()

    local showTime = (endTime - currentTime) / 1000
    local formatTime
    if currentTime > endTime then
        showTime = 0
        formatTime = os.date("%M:%S", math.modf(showTime))
        self.recoverTime_UIText:SetText(formatTime)
    else
        formatTime = os.date("%M:%S", math.modf(showTime))
        self.recoverTime_UIText:SetText(formatTime)
    end
end

local function __OnTimerCallback(selfTimer, obj)
    local superSelf = obj.superSelf
    local endTime = obj.endTime
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local showTime = (endTime - currentTime) / 1000
    local formatTime
    if currentTime > endTime then
        showTime = 0
        superSelf:__DisposeDefRecoverTimer()
        formatTime = os.date("%M:%S", math.modf(showTime))
        superSelf.recoverTime_UIText:SetText(formatTime)
    else
        formatTime = os.date("%M:%S", math.modf(showTime))
        superSelf.recoverTime_UIText:SetText(formatTime)
    end
end
local function OnDisposeItem(self)
    self:__DisposeDefRecoverTimer()
end

UINationDefTimeItem.OnCreate = OnCreate
UINationDefTimeItem.OnDestroy = OnDestroy
UINationDefTimeItem.OnDisposeItem = OnDisposeItem

UINationDefTimeItem.OnRefresh = OnRefresh
UINationDefTimeItem.OnEnable=OnEnable
UINationDefTimeItem.OnDisable=OnDisable
UINationDefTimeItem.__DisposeDefRecoverTimer=__DisposeDefRecoverTimer
UINationDefTimeItem.__OnTimerCallback=__OnTimerCallback

return UINationDefTimeItem