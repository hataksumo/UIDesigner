--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationRecordEventDetailView = BaseClass("UINationRecordEventDetailView", UIBaseView)
local base = UIBaseView

--计时器
local function CountDownTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.state_UIText:SetText(DataUtil.GetClientText(200164))
            return
        end
        self.state_UIText:SetText(DataUtil.GetClientText(200302) .. UIUtil.GetTimeStrDHMS(countDown))
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function ShowAllianceUIItem(self, titleText)
    self.finishAllianceTitle_UIText:SetText(titleText)
    if #self.model.allianceNameList > 0 then
        self.finishAllianceEmpty_Text.gameObject:SetActive(false)
    else
        self.finishAllianceEmpty_Text:SetText(DataUtil.GetClientText(200421))
        self.finishAllianceEmpty_Text.gameObject:SetActive(true)
    end

    for k, v in ipairs(self.model.allianceNameList) do
        self.finishAllianceItemTab[k].text:SetText(v)
        self.finishAllianceItemTab[k].obj:SetActive(true)
    end

    for i = #self.model.allianceNameList + 1, 16 do
        self.finishAllianceItemTab[i].obj:SetActive(false)
    end
end

--显示奖励的信息
local function ShowRewardFunc(self, rewardText)
    for k, v in ipairs(self.model.rewardItemList) do
        self.rewardTab[k].icon:SetSpriteName(v.icon)
        self.rewardTab[k].text:SetText(v.count)
        self.rewardTab[k].obj:SetActive(true)
    end
    for i = #self.model.rewardItemList + 1, 6 do
        self.rewardTab[i].obj:SetActive(false)
    end

    if rewardText ~= nil then
        self.rewardContent_UIText:SetText(rewardText)
        self.rewardContent_UIText.gameObject:SetActive(true)
        self.rewardPanelObj:SetActive(false)
    else
        --展示。对应名次获得的数值
        for k, v in ipairs(self.model.rewardTextList) do
            self.rewardDesTab[k].text:SetText(v)
            self.rewardDesTab[k].obj:SetActive(true)
        end

        for i = #self.model.rewardTextList + 1, 12 do
            self.rewardDesTab[i].obj:SetActive(false)
        end

        self.rewardContent_UIText.gameObject:SetActive(false)
        self.rewardPanelObj:SetActive(true)
    end
end

--展示新开启的功能
local function ShowAddGameFunc(self)
    for i = #self.model.addGameFunclist + 1, 6 do
        self.funcItemTab[i].obj:SetActive(false)
    end
    for k, v in ipairs(self.model.addGameFunclist) do
        self.funcItemTab[k].icon:SetSpriteName(v.icon)
        self.funcItemTab[k].text:SetText(v.text)
        self.funcItemTab[k].obj:SetActive(true)
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.mask_btn = self:AddComponent(UIButton, "maskImg")
    self.mask_btn:SetOnClick(function()
        self.ctrl.CloseSelf()
    end)
    self.closeUIButton = self:AddComponent(UIButton, "Root/close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl.CloseSelf()
    end)

    self.titleText_UIText = self:AddComponent(UIText, "Root/titleText_UIText")

    --动态字体
    self.add_func_title = self:AddComponent(UIText, "Root/panel/content/addFunc/AddtitleBg/Addtitle")
    self.reward_title = self:AddComponent(UIText, "Root/panel/content/reward/RewardtitleBg/Rewardtitle")

    ---详情item
    self.describeText_UIText = self:AddComponent(UIText, "Root/describeText_UIText")
    self.target_UIText = self:AddComponent(UIText, "Root/target_UIText")
    --进度条
    self.schedule_UISlider = self:AddComponent(UISlider, "Root/schedule_UISlider")
    self.scheduleFill_UIImage = self:AddComponent(UIImage, "Root/schedule_UISlider/FillArea/Fill", AtlasConfig.DynamicTex)
    self.scheduleRate_UIText = self:AddComponent(UIText, "Root/schedule_UISlider/rate_UIText")

    --当前状态信息和提示
    self.state_UIText = self:AddComponent(UIText, "Root/describe/state_UIText")
    self.tip_UIText = self:AddComponent(UIText, "Root/describe/Tip_UIText")

    ---达成联盟item，or 联盟排名？
    self.finishAllianceObj = UIUtil.FindTrans(self.transform, "Root/panel/content/finishAlliance").gameObject
    self.finishAllianceEmpty_Text = self:AddComponent(UIText, "Root/panel/content/finishAlliance/Empty")
    self.finishAllianceTitle_UIText = self:AddComponent(UIText, "Root/panel/content/finishAlliance/titleBg/title")
    self.finishAllianceItemTab = {}
    for i = 1, 16 do
        self.finishAllianceItemTab[i] = {}
        self.finishAllianceItemTab[i].text = self:AddComponent(UIText, "Root/panel/content/finishAlliance/GridGroup/AllianceName" .. i)
        self.finishAllianceItemTab[i].obj = self.finishAllianceItemTab[i].text.gameObject
    end

    ---奖励item
    self.rewardContent_UIText = self:AddComponent(UIText, "Root/panel/content/reward/content_UIText")
    self.rewardPanelObj = UIUtil.FindTrans(self.transform, "Root/panel/content/reward/rewardPanel").gameObject
    self.rewardDesTab = {}
    for i = 1, 12 do
        self.rewardDesTab[i] = {}
        self.rewardDesTab[i].text = self:AddComponent(UIText, "Root/panel/content/reward/rewardPanel/reward" .. i)
        self.rewardDesTab[i].obj = self.rewardDesTab[i].text.gameObject
    end
    self.rewardTab = {}
    for i = 1, 6 do
        self.rewardTab[i] = {}
        self.rewardTab[i].icon = self:AddComponent(UIImage, "Root/panel/content/reward/rewardList/item" .. i .. "/ItemIconImg" .. i, AtlasConfig.DynamicTex)
        self.rewardTab[i].iconBg = self:AddComponent(UIImage, "Root/panel/content/reward/rewardList/item" .. i .. "/IconBgImg" .. i, AtlasConfig.DynamicTex)
        self.rewardTab[i].text = self:AddComponent(UIText, "Root/panel/content/reward/rewardList/item" .. i .. "/count" .. i)
        self.rewardTab[i].obj = UIUtil.FindTrans(self.transform, "Root/panel/content/reward/rewardList/item" .. i).gameObject
    end

    ---功能开启item
    self.funcItemTab = {}
    for i = 1, 6 do
        self.funcItemTab[i] = {}
        self.funcItemTab[i].icon = self:AddComponent(UIImage, "Root/panel/content/addFunc/GridGroup/funcItem" .. i .. "/funcImg" .. i, AtlasConfig.DynamicTex)
        self.funcItemTab[i].text = self:AddComponent(UIText, "Root/panel/content/addFunc/GridGroup/funcItem" .. i .. "/funcText" .. i)
        self.funcItemTab[i].obj = UIUtil.FindTrans(self.transform, "Root/panel/content/addFunc/GridGroup/funcItem" .. i).gameObject
    end
    --todo, 临时代码，暂时没有，关闭
    self.addFuncObj = UIUtil.FindTrans(self.transform, "Root/panel/content/addFunc").gameObject
    self.addFuncObj:SetActive(false)
end

local function OnEnable(self)
    base.OnEnable(self)
    local data = self.model.data
    self.add_func_title:SetText(DataUtil.GetClientText(200309))
    self.reward_title:SetText(DataUtil.GetClientText(200310))
    self.titleText_UIText:SetText(data.title)

    ---详情
    self.describeText_UIText:SetText(data.describeText)
    self.target_UIText:SetText(data.targetText)

    if data.tipText ~= nil then
        self.tip_UIText:SetText(data.tipText)
        self.tip_UIText.gameObject:SetActive(true)
    else
        self.tip_UIText.gameObject:SetActive(false)
    end

    if data.stateText ~= nil then
        self.state_UIText:SetText(data.stateText)
        self.state_UIText.gameObject:SetActive(true)
    else
        self.state_UIText.gameObject:SetActive(false)
    end

    self.schedule_UISlider:SetValue(data.rateValue)
    self.scheduleRate_UIText:SetText(data.rateText)
    if data.remainTime ~= nil then
        if data.remainTime > 0 then
            CountDownTimer(self, data.remainTime)
        end
    end

    ---达成联盟
    if data.isHaveAlliance then
        self.finishAllianceObj:SetActive(true)
        ShowAllianceUIItem(self, data.allianceTitle)
    else
        self.finishAllianceObj:SetActive(false)
    end

    ---奖励
    ShowRewardFunc(self, data.rewardText)

    ---开启功能
    ShowAddGameFunc(self)

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

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

UINationRecordEventDetailView.OnCreate = OnCreate
UINationRecordEventDetailView.OnEnable = OnEnable
UINationRecordEventDetailView.OnRefresh = OnRefresh
UINationRecordEventDetailView.OnAddListener = OnAddListener
UINationRecordEventDetailView.OnRemoveListener = OnRemoveListener
UINationRecordEventDetailView.OnDisable = OnDisable
UINationRecordEventDetailView.OnDestroy = OnDestroy

return UINationRecordEventDetailView
