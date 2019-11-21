local UINationBanditsItem = BaseClass("UINationBanditsItem", UIWrapComponent)
local base = UIWrapComponent
local UPDATE_RATE = 0.01
local function OnCreate(self)
    base.OnCreate(self)
    self.frameImg = self:AddComponent(UIImage, "frame", AtlasConfig.DynamicTex)
    self.IconImg = self:AddComponent(UIImage, "frame/icon", AtlasConfig.DynamicNationTex)
    self.nameText = self:AddComponent(UIText, "frame/nameText")
    self.maskBtn = self:AddComponent(UIButton, "frame/maskBtn")
    self.timeText = self:AddComponent(UIText, "frame/timeBack/timeText")
    self.timeBack = self:AddComponent(UIImage, "frame/timeBack")
    self.maskBtn:SetOnClick(function()
        self.view:OnClickBanditsItem(self.itemData)
    end)
end


local function MoniUpdate(self)
    local distance =self.pos_b - self.pos_a
    local frame_pos = self.frameImg.transform.position.x
    local val = frame_pos - self.pos_a
    local scale = val/distance
    local val_b = frame_pos - self.pos_b
    if val_b<-2.8 then
        self.frameImg.transform.localPosition = Vector3.New(0,val_b * scale * 50,0)--600
    else
        self.frameImg.transform.localPosition = Vector3.New(0,val_b * scale * 50,0)--600
    end
end

local function OnDisable(self)
    self:__DisposeTimer()
    self:__DisposeDefRecoverTimer()
    self.itemData = nil
end

local function __DisposeTimer(self)
    if self.Timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.Timer)
    end
    self.Timer = nil
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
local function OnRefresh(self, real_index)
    self.pos_a=  self.view.pos1.transform.position.x
    self.pos_b=  self.view.pos2.transform.position.x

    self:__DisposeTimer()
    MoniUpdate(self)
    self.Timer=TimerManager:GetInstance():SimpleTimerArgs(UPDATE_RATE,Bind(self,MoniUpdate))

    local index = real_index + 1
    local itemDatas = self.view.wipeStaticDataList
    self.itemData = itemDatas[index]

    local wipeData = self.itemData.wipeData
    local defRecoverData = self.itemData.defRecoverData
    local showName = string.format("%sLv%d", wipeData.Name, wipeData.PointLv)
    self.nameText:SetText(showName)
    self.IconImg:SetSpriteName(wipeData.Pic)

    if defRecoverData ~= nil then
        local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
        self.timeBack.gameObject:SetActive(true)

        local showTime = (defRecoverData.endTime - currentTime) / 1000
        local formatTime
        if currentTime > defRecoverData.endTime then
            showTime = 0
            formatTime = os.date("%M:%S", math.modf(showTime))
            self.timeText:SetText(formatTime)
        else
            formatTime = os.date("%M:%S", math.modf(showTime))
            self.timeText:SetText(formatTime)
        end

        self:__DisposeDefRecoverTimer()
        self.defTimer = SyncTimer.New(SyncTimer.MODE_STEP, currentTime,
                500, false, self.__OnTimerCallback, {endTime = defRecoverData.endTime, superSelf = self })
        self.defTimer:Start()
    else
        self:__DisposeDefRecoverTimer()
        self.timeBack.gameObject:SetActive(false)
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
        superSelf.timeText:SetText(formatTime)
    else
        formatTime = os.date("%M:%S", math.modf(showTime))
        superSelf.timeText:SetText(formatTime)
    end
end


UINationBanditsItem.OnCreate = OnCreate
UINationBanditsItem.OnRefresh = OnRefresh
UINationBanditsItem.OnEnable=OnEnable
UINationBanditsItem.OnDisable=OnDisable
UINationBanditsItem.__DisposeTimer=__DisposeTimer
UINationBanditsItem.__DisposeDefRecoverTimer=__DisposeDefRecoverTimer
UINationBanditsItem.__OnTimerCallback=__OnTimerCallback


return UINationBanditsItem