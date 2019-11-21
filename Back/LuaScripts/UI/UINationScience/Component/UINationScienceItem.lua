---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/1/15 18:18
---
local UINationScienceItem = BaseClass("UINationScienceItem", UIBaseContainer)
local base = UIBaseContainer

--计时器
local function HandleTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.timeText:SetText(UIUtil.GetFinialTime(countDown))
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function OnCreate(self)
    base.OnCreate(self)

    self.button = self:AddComponent(UIButton, "")
    self.button:SetOnClick(function()
        self.view:OnClickScienceItem(self.data.id)
    end)

    self.icon = self:AddComponent(UIImage, "icon", AtlasConfig.DynamicTex)
    self.iconBG = self:AddComponent(UIImage, "bg", AtlasConfig.DynamicNationTex)
    self.timeObj = UIUtil.FindTrans(self.transform, "timeBg").gameObject
    self.timeText = self:AddComponent(UIText, "timeBg/time")
    self.timeObj:SetActive(false)
    self.levelText = self:AddComponent(UIText, "levelText")
    self.nameText = self:AddComponent(UIText, "name")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, row, column)
    self.data = self.view.model:GetItemByPos(row, column)

    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end

    self.icon:SetSpriteName(self.data.icon)
    self.levelText:SetText(self.data.levelText)
    self.nameText:SetText(self.data.name)

    if self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_CONDITION_LOCK then
        self.timeObj:SetActive(false)
        self.icon:SetMat(self.view.mat_gray)
        self.iconBG:SetSpriteName("ui_t_c2_581")
        self.levelText:SetColor32(186, 183, 176)
        self.nameText:SetColor32(186, 183, 176)
    elseif self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_FAIL_LEVEL_NONE then
        self.timeObj:SetActive(false)
        self.icon:SetMat(self.view.mat_gray)
        self.iconBG:SetSpriteName("ui_t_c2_581")
        self.levelText:SetColor32(186, 183, 176)
        self.nameText:SetColor32(186, 183, 176)
    elseif self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_FAIL_LEVEL_HAVE then
        self.timeObj:SetActive(false)
        self.icon:SetMat(nil)
        self.iconBG:SetSpriteName("ui_t_c2_581")
        self.levelText:SetColor32(222, 75, 75)
        self.nameText:SetColor32(222, 75, 75)
    elseif self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_OK then
        self.timeObj:SetActive(false)
        self.icon:SetMat(nil)
        self.iconBG:SetSpriteName("ui_t_c2_581")
        self.levelText:SetColor32(239, 234, 222)
        self.nameText:SetColor32(239, 234, 222)
    elseif self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.TECH_MAX_LEVEL then
        self.timeObj:SetActive(false)
        self.icon:SetMat(nil)
        self.iconBG:SetSpriteName("ui_t_c2_580")
        self.levelText:SetColor32(245, 179, 5)
        self.nameText:SetColor32(245, 179, 5)
    elseif self.data.state == NationDefine.NATION_SCIENCE_ITEM_STATE.NOW_UPGRADEING then
        self.timeObj:SetActive(false)
        self.countDownTime = self.data.lastTime
        self.icon:SetMat(nil)
        self.iconBG:SetSpriteName("ui_t_c2_581")
        self.levelText:SetColor32(239, 234, 222)
        self.nameText:SetColor32(239, 234, 222)

        self.timeText:SetText(UIUtil.GetFinialTime(self.countDownTime))
        HandleTimer(self, self.countDownTime)
        self.timeObj:SetActive(true)
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

UINationScienceItem.OnCreate = OnCreate
UINationScienceItem.OnRefresh = OnRefresh
UINationScienceItem.OnDisable = OnDisable

return UINationScienceItem