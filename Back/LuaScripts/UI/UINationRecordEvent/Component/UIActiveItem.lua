local UIActiveItem = BaseClass("UIActiveItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    if self.isStartActive == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200312))
        return
    end
    self.view.ctrl:OpenDetailRecordEvent(self.id)
end

local function OnClickRewardItem(self, index)
    local tab = {}
    tab.text = self.rewardTab[index].textValue
    tab.icon = self.rewardTab[index].iconValue
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationRecordEventShowItem, tab)
end

--计时器
local function HandleTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.stateUIText:SetText("")
            self.view.ctrl:NeedSendGetRecordEventData()
            return
        end
      --  self.stateUIText:SetText("<color=#D73C3A>剩余时间  " .. UIUtil.GetTimeStrDHMS(countDown) .. "</color>")
        self.stateUIText:SetText("剩余时间\n  " .. "<size=30>"..UIUtil.GetTimeStrDHMS(countDown) .. "</size>")
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function OnClickGetButton(self)
    --local function callbackFunc()
    --    for i = 1, 6 do
    --        self.rewardTab[i].icon:SetMat(self.gray)
    --        self.rewardTab[i].iconBg:SetMat(self.gray)
    --    end
    --    self.getButton_UIButton.gameObject:SetActive(false)

    --
    --end
    --self.view.ctrl:GetRecordEventReward(self.id, self.reward, callbackFunc)
    self.view.ctrl:GetRecordEventReward(self.id, self.reward)
    --self.view.ctrl:NeedSendGetRecordEventData()
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.item_UIButton = self:AddComponent(UIButton, "Item_UIButton")
    self.item_UIButton:SetOnClick(function()
        OnItemClick(self)
    end)

    self.getButton_UIButton = self:AddComponent(UIButton, "GetButton_UIButton")
    self.no_open_btn=self:AddComponent(UIImage,"NoOpen_UIButton")
    self.is_over=self:AddComponent(UIImage,"isOver")
    self.is_have=self:AddComponent(UIImage,"isHave")
   -- self.uiGreyMat = self.no_open_btn:GetMat()
    self.getButton_UIButton:SetOnClick(function()
        OnClickGetButton(self)
    end)

    self.titleUIText = self:AddComponent(UIText, "Title_UIText")
    self.describeUIText = self:AddComponent(UIText, "describe_UIText")
    self.targetUIText = self:AddComponent(UIText, "target_UIText")
    self.stateUIText = self:AddComponent(UIText, "state_UIText")

    --进度条
    self.schedule_UISlider = self:AddComponent(UISlider, "schedule_UISlider")
   -- self.rate_UIText = self:AddComponent(UIText, "schedule_UISlider/Text_UIText")
    self.rateValue_UIText = self:AddComponent(UIText, "schedule_UISlider/rate_UIText")

    --联盟的排名
  --  self.finishAllianceObj = UIUtil.FindTrans(self.transform, "finishAlliance").gameObject
  --  self.allianceNameTab = {}
  --  for i = 1, 3 do
  --      self.allianceNameTab[i] = {}
  --      self.allianceNameTab[i].text = self:AddComponent(UIText, "finishAlliance/itemName" .. i .. "_UIText")
  --  end

    self.grayMaterial = self:AddComponent(UIImage, "rewardList/GrayMat"):GetMat()
    --奖励物品
    self.rewardTab = {}
    for i = 1, 6 do
        self.rewardTab[i] = {}
        self.rewardTab[i].icon = self:AddComponent(UIImage, "rewardList/item" .. i .. "/ItemIconImg" .. i, AtlasConfig.DynamicTex)
        self.rewardTab[i].iconBg = self:AddComponent(UIImage, "rewardList/item" .. i .. "/IconBgImg" .. i, AtlasConfig.DynamicTex)
        self.rewardTab[i].text = self:AddComponent(UIText, "rewardList/item" .. i .. "/count" .. i)

        self.rewardTab[i].iconValue = nil
        self.rewardTab[i].textValue = nil

        self.rewardTab[i].obj = UIUtil.FindTrans(self.transform, "rewardList/item" .. i).gameObject
        self.rewardTab[i].btn = self:AddComponent(UIButton, "rewardList/item" .. i .. "/ItemIconImg" .. i)
        self.rewardTab[i].btn:SetOnClick(function()
            OnClickRewardItem(self, i)
        end)
    end

    --self.maskBtn = self:AddComponent(UIButton, "GetStateBgImg")
    --self.maskBtn:SetOnClick(function()
    --    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200312))
    --end)
    self.is_over:SetActive(false)
    self.is_have:SetActive(false)
    self.UpdateDataTimer = nil
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)

    local itemData = self.view.model.activeList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID
    self.reward = itemData.Reward

    self.titleUIText:SetText(itemData.Name)
    self.describeUIText:SetText(itemData.Describe)
    self.targetUIText:SetText(itemData.Target)

    if itemData.IsSchedule == false then
    --    self.finishAllianceObj:SetActive(true)
        self.schedule_UISlider.gameObject:SetActive(false)
        --for k, v in ipairs(itemData.Alliance) do
        --    self.allianceNameTab[k].text:SetText(v)
        --end
    else
      --  self.finishAllianceObj:SetActive(false)
        self.schedule_UISlider.gameObject:SetActive(true)
        self.schedule_UISlider:SetValue(itemData.ScheduleValue)
     --   self.rate_UIText:SetText(itemData.SchedulePercent)
        self.rateValue_UIText:SetText(itemData.ScheduleText)
    end

    for k, v in ipairs(itemData.Reward) do
        self.rewardTab[k].icon:SetSpriteName(v.icon)
        self.rewardTab[k].text:SetText(v.count)
        self.rewardTab[k].obj:SetActive(true)
        self.rewardTab[k].iconValue = v.icon
        self.rewardTab[k].textValue = v.text
        if itemData.rewardState == self.view.model.EnumRewardState.HadGain then
            self.rewardTab[k].icon:SetMat(self.grayMaterial)
            self.rewardTab[k].iconBg:SetMat(self.grayMaterial)
        else
            self.rewardTab[k].icon:SetMat()
            self.rewardTab[k].iconBg:SetMat()
        end
        if itemData.State == self.view.model.EnumRecordEventState.NotStart then
            self.rewardTab[k].icon:SetMat(self.grayMaterial)
            self.rewardTab[k].iconBg:SetMat(self.grayMaterial)
        else
            self.rewardTab[k].icon:SetMat()
            self.rewardTab[k].iconBg:SetMat()
        end
    end

    for i = #itemData.Reward + 1, 6 do
        self.rewardTab[i].obj:SetActive(false)
    end

    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end

    self.isStartActive = true
    if itemData.State == self.view.model.EnumRecordEventState.Finish then
        --self.maskBtn.gameObject:SetActive(false)
        self.no_open_btn.gameObject:SetActive(false)
        self:DefaultSetRewardState(itemData)
    elseif itemData.State == self.view.model.EnumRecordEventState.NotStart then
        self.isStartActive = false
        --self.maskBtn.gameObject:SetActive(true)
        self.no_open_btn.gameObject:SetActive(true)
        self.is_over:SetActive(false)
        self.is_have:SetActive(false)
    --    self.no_open_btn.gameObject:SetMat(self.uiGreyMat)
        self.stateUIText:SetText("")
        self:DefaultSetRewardState(itemData)
    elseif itemData.State == self.view.model.EnumRecordEventState.End then
        --self.maskBtn.gameObject:SetActive(false)
        self.no_open_btn.gameObject:SetActive(false)
        self.is_over:SetActive(true)
        self.is_have:SetActive(false)
        if itemData.rewardState == self.view.model.EnumRewardState.CanGain then
            -- self.stateUIText:SetActive(false)
            self.getButton_UIButton.gameObject:SetActive(true)
            self.is_have:SetActive(false)
            self.is_over:SetActive(false)
            self.no_open_btn:SetActive(false)
            self.stateUIText:SetText("")
        elseif itemData.rewardState == self.view.model.EnumRewardState.HadGain then
            self.getButton_UIButton.gameObject:SetActive(false)
            self.is_have:SetActive(true)
            self.stateUIText:SetText("<color=#FFFFFF>已领取</color>")
        elseif itemData.rewardState == self.view.model.EnumRewardState.NotGain    then
            self.getButton_UIButton.gameObject:SetActive(false)
            self.stateUIText:SetText("<color=#FFFFFF>已结束</color>")
        end
    elseif itemData.State == self.view.model.EnumRecordEventState.Doing then
        --self.maskBtn.gameObject:SetActive(false)
        self.no_open_btn.gameObject:SetActive(false)
        self.is_over:SetActive(false)
        self.is_have:SetActive(false)
        local remainTime = itemData.EndTime - math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
        if remainTime > 0 then
       --  self.stateUIText:SetText("<color=#D73C3A>剩余时间  " .. UIUtil.GetTimeStrDHMS(remainTime) .. "</color>")
            self.stateUIText:SetText("剩余时间\n  " .. "<size=30>"..UIUtil.GetTimeStrDHMS(remainTime) .. "</size>")
            HandleTimer(self, remainTime)
        else
            self.stateUIText:SetText("")
        end

        self:DefaultSetRewardState(itemData)
    end


end


local function DefaultSetRewardState(self, itemData)
    if itemData.rewardState == self.view.model.EnumRewardState.CanGain then
        -- self.stateUIText:SetActive(false)
        self.getButton_UIButton.gameObject:SetActive(true)
        self.is_have:SetActive(false)
        self.is_over:SetActive(false)
        self.no_open_btn:SetActive(false)
    elseif itemData.rewardState == self.view.model.EnumRewardState.HadGain then
        self.getButton_UIButton.gameObject:SetActive(false)
        self.is_have:SetActive(true)
        self.stateUIText:SetText("<color=#FFFFFF>已领取</color>")
    elseif itemData.rewardState == self.view.model.EnumRewardState.NotGain    then
        self.getButton_UIButton.gameObject:SetActive(false)
    end
end


UIActiveItem.DefaultSetRewardState = DefaultSetRewardState
UIActiveItem.OnCreate = OnCreate
UIActiveItem.OnRefresh = OnRefresh
return UIActiveItem