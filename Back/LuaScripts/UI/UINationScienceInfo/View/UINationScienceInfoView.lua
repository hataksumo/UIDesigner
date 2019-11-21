local UINationScienceInfoView = BaseClass("UINationScienceInfoView", UIBaseView)
local base = UIBaseView

local UINationScienceInfoEffectItem = require "UI.UINationScienceInfo.Component.UINationScienceInfoEffectItem"
local UINationScienceInfoFinalEffectItem = require "UI.UINationScienceInfo.Component.UINationScienceInfoFinalEffectItem"
local UINationScienceInfoCostItem = require "UI.UINationScienceInfo.Component.UINationScienceInfoCostItem"

local function OnClickLevelUpButton(self)
    if self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_OK then
        self.ctrl:upLevelButtonClick()
    elseif self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.NOW_UPGRADEING then
        self.ctrl:rightNowFinishButtonClick()
    else
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200205))
    end
end

local function HandleCountDownTimer(self, time)
    local countDown = time
    local totalTime = self.model.levelUpTime.totalTime
    local function callbackFunc(self)
        countDown = countDown - 1
        self.upLevelText:SetText(UIUtil.GetFinialTime(countDown))
        self.upLevelSlider:SetValue(1 - countDown / totalTime)
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
            self.LevelUpButtonObj:SetActive(false)
            self.upLevelCancelButton:SetActive(false)
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function OnCreate(self)
    base.OnCreate(self)

    self.maskButton = self:AddComponent(UIButton, "mask")
    self.maskButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.closeButton = self:AddComponent(UIButton, "Top/CloseButton")
    self.closeButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    --科技信息
    self.nameText = self:AddComponent(UIText, "Top/titleName_UIText")
    self.describeText = self:AddComponent(UIText, "total/TopInfo/infoContent")
    self.icon = self:AddComponent(UIImage, "total/TopInfo/icon", AtlasConfig.DynamicTex)
    self.lvText = self:AddComponent(UIText, "total/TopInfo/levelText")

    --科技效果
    self.effectGridPanelRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "total/EffectGrid")
    self.effectItemTab = {}
    for i = 1, 4 do
        self.effectItemTab[i] = UINationScienceInfoEffectItem.New(self, "total/EffectGrid/effectItem" .. i)
        self.effectItemTab[i]:OnCreate()
    end

    --特定等级下的附加效果
    self.finalEffectGridPanelRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "total/MaxLevelGrid")
    self.finalEffectItemTab = {}
    for i = 1, 4 do
        self.finalEffectItemTab[i] = UINationScienceInfoFinalEffectItem.New(self, "total/MaxLevelGrid/finalEffectItem" .. i)
        self.finalEffectItemTab[i]:OnCreate()
    end

    --升级消耗的信息
    self.resumePanelObj = UIUtil.FindTrans(self.transform, "total/Resume").gameObject
    self.downTittleText = self:AddComponent(UIText, "total/Resume/infoTittle")
    self.downTittleText:SetText(DataUtil.GetClientText(200206))
    self.resumeItemTab = {}
    for i = 1, 6 do
        self.resumeItemTab[i] = UINationScienceInfoCostItem.New(self, "total/Resume/ResumeGrid/item" .. i)
        self.resumeItemTab[i]:OnCreate()
    end

    --升级中信息
    self.levelUpArea = UIUtil.FindTrans(self.transform, "total/LevelUpArea").gameObject
    self.upLevelText1 = self:AddComponent(UIText, "total/LevelUpArea/lvText1")
    self.upLevelText2 = self:AddComponent(UIText, "total/LevelUpArea/lvText2")
    self.upLevelSlider = self:AddComponent(UISlider, "total/LevelUpArea/Slider")
    self.upLevelText = self:AddComponent(UIText, "total/LevelUpArea/Slider/countTimeText")
    self.upLevelCancelBtnText = self:AddComponent(UIText, "total/LevelUpArea/cancelButton/cancelBtnText")
    self.upLevelCancelBtnText:SetText(DataUtil.GetClientText(200007))
    self.upLevelCancelButton = self:AddComponent(UIButton, "total/LevelUpArea/cancelButton")
    self.upLevelCancelButton:SetOnClick(function()
        self.ctrl:upLevelCancelButtonClick()
    end)

    --底部提示，升级等按钮
    self.timeText = self:AddComponent(UIText, "bottom/needTime")
    self.caseText = self:AddComponent(UIText, "bottom/caseText")
    self.LevelUpButtonObj = UIUtil.FindTrans(self.transform, "bottom/button").gameObject
    self.levelUpButton_UIText = self:AddComponent(UIText, "bottom/button/LevelUpButtonText")
    self.LevelUpButton_UIImage = self:AddComponent(UIImage, "bottom/button/LevelUpButton")
    self.grayMat = self.LevelUpButton_UIImage:GetMat()
    self.levelUpButton = self:AddComponent(UIButton, "bottom/button/LevelUpButton")
    self.levelUpButton:SetOnClick(function()
        OnClickLevelUpButton(self)
    end)

    self.costItemObj = UIUtil.FindTrans(self.transform, "bottom/button/CostItem").gameObject
    self.costItem_UIText = self:AddComponent(UIText, "bottom/button/CostItem/CostCount")
end

local function OnEnable(self)
    base.OnEnable(self)
    self.nameText:SetText(self.model.name)
    self.describeText:SetText(self.model.des)
    self.icon:SetSpriteName(self.model.icon)

    local data = {}
    local height = 0
    for k, v in ipairs(self.finalEffectItemTab) do
        data = self.model.finalEffectItem[k]
        if data ~= nil then
            v:OnRefresh(data)
            v.gameObject:SetActive(true)
            height = height + 60
        else
            v.gameObject:SetActive(false)
        end
    end
    self.finalEffectGridPanelRect.sizeDelta = Vector2.New(self.finalEffectGridPanelRect.sizeDelta.x, height - 10)

    self:OnRefresh()
end

local function OnRefresh(self)
    self.lvText:SetText(self.model.levelText)

    local data = {}
    local height = 0
    for k, v in ipairs(self.effectItemTab) do
        data = self.model.effectItems[k]
        if data ~= nil then
            v:OnRefresh(data)
            v.gameObject:SetActive(true)
            height = height + 60
        else
            v.gameObject:SetActive(false)
        end
    end
    self.effectGridPanelRect.sizeDelta = Vector2.New(self.effectGridPanelRect.sizeDelta.x, height - 10)

    for k, v in ipairs(self.resumeItemTab) do
        data = self.model.costItems[k]
        if data ~= nil then
            v:OnRefresh(data)
            v.gameObject:SetActive(true)
        else
            v.gameObject:SetActive(false)
        end
    end

    if self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_CONDITION_LOCK then
        self.resumePanelObj:SetActive(true)
        self.levelUpArea:SetActive(false)
        self.timeText.gameObject:SetActive(true)
        self.caseText.gameObject:SetActive(true)
        self.timeText.rectTransform.sizeDelta = Vector2.New(self.timeText.rectTransform.sizeDelta.x, 60)
        self.caseText.rectTransform.sizeDelta = Vector2.New(self.caseText.rectTransform.sizeDelta.x, 60)
        self.LevelUpButtonObj:SetActive(false)
        self.timeText:SetText(DataUtil.GetClientText(200207) .. UIUtil.GetFinialTime(self.model.needTime))
        self.caseText:SetText(self.model.frontText)
    elseif self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_FAIL_LEVEL_NONE
            or self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_FAIL_LEVEL_HAVE then
        self.resumePanelObj:SetActive(true)
        self.levelUpArea:SetActive(false)
        self.timeText.gameObject:SetActive(false)
        self.caseText.gameObject:SetActive(true)
        self.timeText.rectTransform.sizeDelta = Vector2.New(self.timeText.rectTransform.sizeDelta.x, 40)
        self.caseText.rectTransform.sizeDelta = Vector2.New(self.caseText.rectTransform.sizeDelta.x, 40)
        self.LevelUpButtonObj:SetActive(true)
        self.costItemObj:SetActive(false)
        self.caseText:SetText(DataUtil.GetClientText(200208))
        self.levelUpButton_UIText:SetText(DataUtil.GetClientText(200209))
        self.LevelUpButton_UIImage:SetMat(self.grayMat)
    elseif self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.PRE_OK_RES_OK then
        self.resumePanelObj:SetActive(true)
        self.levelUpArea:SetActive(false)
        self.timeText.gameObject:SetActive(true)
        self.caseText.gameObject:SetActive(false)
        self.timeText.rectTransform.sizeDelta = Vector2.New(self.timeText.rectTransform.sizeDelta.x, 40)
        self.caseText.rectTransform.sizeDelta = Vector2.New(self.caseText.rectTransform.sizeDelta.x, 40)
        self.LevelUpButtonObj:SetActive(true)
        self.costItemObj:SetActive(false)
        self.timeText:SetText(DataUtil.GetClientText(200207) .. UIUtil.GetFinialTime(math.ceil(self.model.needTime)))
        self.levelUpButton_UIText:SetText(DataUtil.GetClientText(200209))
        self.LevelUpButton_UIImage:SetMat()
    elseif self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.TECH_MAX_LEVEL then
        self.resumePanelObj:SetActive(false)
        self.levelUpArea:SetActive(false)
        self.timeText.gameObject:SetActive(false)
        self.caseText.gameObject:SetActive(true)
        self.timeText.rectTransform.sizeDelta = Vector2.New(self.timeText.rectTransform.sizeDelta.x, 40)
        self.caseText.rectTransform.sizeDelta = Vector2.New(self.caseText.rectTransform.sizeDelta.x, 120)
        self.LevelUpButtonObj:SetActive(false)
        self.caseText:SetText(DataUtil.GetClientText(200210))
    elseif self.model.state == NationDefine.NATION_SCIENCE_ITEM_STATE.NOW_UPGRADEING then
        self.resumePanelObj:SetActive(false)
        self.levelUpArea:SetActive(true)
        self.timeText.gameObject:SetActive(false)
        self.caseText.gameObject:SetActive(false)
        self.LevelUpButtonObj:SetActive(true)
        self.costItemObj:SetActive(true)

        if self.UpdateDataTimer ~= nil then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
        end
        self.upLevelText:SetText(UIUtil.GetFinialTime(self.model.levelUpTime.remindTime))
        self.upLevelSlider:SetValue(1 - self.model.levelUpTime.remindTime / self.model.levelUpTime.totalTime)
        HandleCountDownTimer(self, self.model.levelUpTime.remindTime)
        self.upLevelText1:SetText("LV" .. self.model.scienceData.level)
        self.upLevelText2:SetText("LV" .. self.model.scienceData.level + 1)
        self.levelUpButton_UIText:SetText(DataUtil.GetClientText(200003))
        self.LevelUpButton_UIImage:SetMat()
        self.costItem_UIText:SetText(self.model.TechFinishResumeDiamond)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_NATION_SCIENCEINFO_REFRESH, OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_SCIENCEINFO_REFRESH, OnRefresh)
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)

end

UINationScienceInfoView.OnCreate = OnCreate
UINationScienceInfoView.OnEnable = OnEnable
UINationScienceInfoView.OnDisable = OnDisable
UINationScienceInfoView.OnRefresh = OnRefresh
UINationScienceInfoView.OnAddListener = OnAddListener
UINationScienceInfoView.OnRemoveListener = OnRemoveListener
UINationScienceInfoView.OnDestroy = OnDestroy

return UINationScienceInfoView