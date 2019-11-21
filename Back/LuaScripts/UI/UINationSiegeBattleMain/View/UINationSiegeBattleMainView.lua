--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationSiegeBattleMainView = BaseClass("UINationSiegeBattleMainView", UIBaseView)
local base = UIBaseView
local UIRightTeamItem = require "UI.UINationSiegeBattleMain.Component.UIRightTeamItem"
local UILeftTeamItem = require "UI.UINationSiegeBattleMain.Component.UILeftTeamItem"
local TeamWrapGroup = require "UI.UIChat.Component.WorldChatWrapGroup"

local function UINetMsgKillActiveEnd(sender, msgObj)
    if sender.model.buildID == msgObj.Packages.buildingId then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200163))
        sender.ctrl:CloseSelf()
    end
end

--计时器，显示倒计时
local function RefreshCurRoundRemainTimeTimer(self, countDownTime)
    local timer = countDownTime
    local timeFinial = nil
    local function UpdateTime()
        timer = timer - 1
        self.curCountDown = timer
        timeFinial = UIUtil.GetFinialTime(timer)
        self.StageTimeText_UIText:SetText(timeFinial)
        self.timeText_UIText:SetText(timeFinial)
        if timer <= 0 then
            if self.curRound >= self.model.data.maxRound and self.curState == self.model.EnumRoundState.Battle then
                self.StageTimeText_UIText:SetText(DataUtil.GetClientText(200164))
                self.StageTimeState_UIText:SetText("")
                self.timeText_UIText:SetText(DataUtil.GetClientText(200164))
                self.stageTextUIText:SetText("")
                self.doingRound_UIText:SetText("")
            end

            self.curCountDown = 0
            TimerManager:GetInstance():SimpleTimerStop(self.timer)
            self.timer = nil
        end
    end
    self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateTime, self, false, false)
end

--前端自己，计算下一轮的状态和时间，开启计时器
local function CalculateRefreshRoundState(self)
    if self.timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
        self.timer = nil
    end

    local data = self.model.data
    local countDownTime = 0
    local stateText = nil
    if self.curState == self.model.EnumRoundState.Battle then
        self.curState = self.model.EnumRoundState.Prepare
        stateText = DataUtil.GetClientText(200165)
        countDownTime = data.readyTime - 1
        self.curRound = self.curRound + 1
    else
        self.curState = self.model.EnumRoundState.Battle
        stateText = DataUtil.GetClientText(200166)
        countDownTime = data.runningTime - 1
    end

    if self.curRound > self.model.data.maxRound then
        return
    end

    local timeFinial = UIUtil.GetFinialTime(countDownTime)
    self.stageTextUIText:SetText(string.format(DataUtil.GetClientText(200169), self.curRound, stateText))
    self.StageTimeText_UIText:SetText(timeFinial)

    if self.curRound - 1 == 0 then
        self.hadFinishRound_UIText:SetText(DataUtil.GetClientText(200167))
    else
        self.hadFinishRound_UIText:SetText(string.format(DataUtil.GetClientText(200168), self.curRound - 1))
    end

    self.doingRound_UIText:SetText(string.format(DataUtil.GetClientText(200169), self.curRound, stateText))
    self.timeText_UIText:SetText(timeFinial)

    RefreshCurRoundRemainTimeTimer(self, countDownTime)
end

--重新计算列表的Item位置
local function CalculateTeamItemPos(self, v, pos)
    v.pos = pos
    if self.curOnClickTeamID ~= nil and v.IsMine and self.curOnClickTeamID == v.TeamID then
        v.y = 220
    else
        v.y = 140
    end
    return pos + v.y
end

local function OnUIMsgRefreshAttackList(self)
    local leftItemTab = self.model.attackTeamTab
    if #leftItemTab > 0 then
        local pos = 0
        for _, v in ipairs(leftItemTab) do
            pos = CalculateTeamItemPos(self, v, pos)
        end

        self.leftTeamGroup:SetLength(#leftItemTab, leftItemTab)
        self.leftTeamGroup:ResetToTop()
    else
        self.leftTeamGroup:SetLength(0)
    end

    if self.curCountDown <= 1 then
        self.curCountDown = 2
        CalculateRefreshRoundState(self)
    end
end

local function OnUIMsgRefreshDefendList(self)
    local data = self.model.data
    local rightItemTab = self.model.defendTeamTab
    if #rightItemTab > 0 then
        local pos = 0
        for _, v in ipairs(rightItemTab) do
            pos = CalculateTeamItemPos(self, v, pos)
        end

        self.rightTeamGroup:SetLength(#rightItemTab, rightItemTab)
        self.rightTeamGroup:ResetToTop()
    else
        self.rightTeamGroup:SetLength(0)
    end

    --更新文字数量
    self.defendTextUIText:SetText(data.difficult .. "  " .. data.defendNPCRemainCount .. "/" .. data.defendNPCMaxCount)

    if self.curCountDown <= 1 then
        self.curCountDown = 2
        CalculateRefreshRoundState(self)
    end
end

local function OnClickOpenButtonPanel(self, teamID)
    self.curOnClickTeamID = teamID
    if self.model.state == 1 then
        --防守方
        OnUIMsgRefreshDefendList(self)
    else
        --进攻方
        OnUIMsgRefreshAttackList(self)
    end
end

local function RefreshBattleInfo(self, data)
    local timeFinial = UIUtil.GetFinialTime(data.remainTime)
    self.stageTextUIText:SetText(string.format(DataUtil.GetClientText(200169), data.curRound, data.stateText))
    self.StageTimeText_UIText:SetText(timeFinial)
    self.StageTimeState_UIText:SetText(DataUtil.GetClientText(200079))

    self.defendTextUIText:SetText(data.difficult .. "  " .. data.defendNPCRemainCount .. "/" .. data.defendNPCMaxCount)

    if data.curRound - 1 == 0 then
        self.hadFinishRound_UIText:SetText(DataUtil.GetClientText(200167))
    else
        self.hadFinishRound_UIText:SetText(string.format(DataUtil.GetClientText(200168), data.curRound - 1))
    end

    self.doingRound_UIText:SetText(string.format(DataUtil.GetClientText(200169), data.curRound, data.stateText))
    self.timeText_UIText:SetText(timeFinial)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.TitleBar = UIUtil.FindTrans(self.transform, "TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        self.ctrl:CloseSelf()
    end, function()
        self.ctrl:CloseSelf()
    end, "", false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationSiegeBattleMain, ResourceBarType.NATION_MAIN, self)

    self.leftTeamGroupText = self:AddComponent(UIText, "LeftRoot/attack/attackText")
    self.leftTeamGroupText:SetText(DataUtil.GetClientText(200170))
    self.rightTeamGroupText = self:AddComponent(UIText, "RightRoot/defend/defendText")
    self.rightTeamGroupText:SetText(DataUtil.GetClientText(200171))
    self.leftTeamGroup = self:AddComponent(TeamWrapGroup, "LeftRoot/ScrollView/leftNationGrid", UILeftTeamItem, Vector2.New(807, 140))
    self.rightTeamGroup = self:AddComponent(TeamWrapGroup, "RightRoot/ScrollView/rightNationGrid", UIRightTeamItem, Vector2.New(807, 140))

    self.detailBtnText = self:AddComponent(UIText, "MidRoot/Detail_UIButton/DetailBtnText")
    self.detailBtnText:SetText(DataUtil.GetClientText(200102))
    self.detailUIButton = self:AddComponent(UIButton, "MidRoot/Detail_UIButton")
    self.detailUIButton:SetOnClick(function()
        self.detailPanel:SetActive(true)
    end)

    self.attackBtnText = self:AddComponent(UIText, "MidRoot/Attack_UIButton/AttackBtnText")
    self.attackBtnText:SetText(DataUtil.GetClientText(200172))
    self.attackUIButton = self:AddComponent(UIButton, "MidRoot/Attack_UIButton")
    self.attackUIButton:SetOnClick(function()
        local data = self.model.data
        if data.curRound == data.maxRound and data.roundState == self.model.EnumRoundState.Battle and self.timer == nil then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200163))
            self.ctrl.CloseSelf()
            return
        end
        self.ctrl:StartAttack()
    end)

    self.title_UIText = self:AddComponent(UIText, "MidRoot/Title")
    self.title_UIText:SetText(DataUtil.GetClientText(200173))
    self.stageText = self:AddComponent(UIText, "MidRoot/StageText")
    self.stageText:SetText(DataUtil.GetClientText(200174))
    self.defendText = self:AddComponent(UIText, "MidRoot/DefendText")
    self.defendText:SetText(DataUtil.GetClientText(200175))
    self.campText = self:AddComponent(UIText, "MidRoot/CampText")
    self.campText:SetText(DataUtil.GetClientText(200176))

    self.cityTitle_UIText = self:AddComponent(UIText, "MidRoot/cityName_UIText")
    self.stageTextUIText = self:AddComponent(UIText, "MidRoot/StageText_UIText")
    self.StageTimeText_UIText = self:AddComponent(UIText, "MidRoot/StageTimeText_UIText")
    self.StageTimeState_UIText = self:AddComponent(UIText, "MidRoot/StageTimeState_UIText")
    self.defendTextUIText = self:AddComponent(UIText, "MidRoot/DefendText_UIText")
    self.campTextUIText = self:AddComponent(UIText, "MidRoot/CampText_UIText")

    --详情面板
    self.detailPanel = UIUtil.FindTrans(self.transform, "DetailPanel").gameObject
    self.detailPanel:SetActive(false)
    self.detailPanelText = self:AddComponent(UIText, "DetailPanel/DetailPanelText")
    self.detailPanelText:SetText(DataUtil.GetClientText(200177))
    self.hadFinishText = self:AddComponent(UIText, "DetailPanel/hadFinishText")
    self.hadFinishText:SetText(DataUtil.GetClientText(200164))
    self.hadFinishRound_UIText = self:AddComponent(UIText, "DetailPanel/hadFinishText_UIText")
    self.doingText = self:AddComponent(UIText, "DetailPanel/doingText")
    self.doingText:SetText(DataUtil.GetClientText(200178))
    self.doingText1 = self:AddComponent(UIText, "DetailPanel/doingText1")
    self.doingText1:SetText(DataUtil.GetClientText(200079))
    self.doingRound_UIText = self:AddComponent(UIText, "DetailPanel/doingText_UIText")
    self.timeText_UIText = self:AddComponent(UIText, "DetailPanel/timeText_UIText")
    self.totalText = self:AddComponent(UIText, "DetailPanel/totalText")
    self.totalText:SetText(DataUtil.GetClientText(200179))
    self.totalRound_UIText = self:AddComponent(UIText, "DetailPanel/totalText_UIText")
    self.closePanelBtn = self:AddComponent(UIButton, "DetailPanel/closeBtn")
    self.closePanelBtn:SetOnClick(function()
        self.detailPanel:SetActive(false)
    end)
    self.maskBtn = self:AddComponent(UIButton, "DetailPanel/Mask")
    self.maskBtn:SetOnClick(function()
        self.detailPanel:SetActive(false)
    end)
    self.ensureBtn_UIText = self:AddComponent(UIText, "DetailPanel/ensureBtn/ensureBtnText")
    self.ensureBtn_UIText:SetText(DataUtil.GetClientText(200006))
    self.ensureBtn = self:AddComponent(UIButton, "DetailPanel/ensureBtn")
    self.ensureBtn:SetOnClick(function()
        self.detailPanel:SetActive(false)
    end)
end

local function OnEnable(self)
    base.OnEnable(self)

    local data = self.model.data
    self.campTextUIText:SetText(data.camp)

    self.curOnClickTeamID = 0

    local leftItemTab = self.model.attackTeamTab
    if #leftItemTab > 0 then
        local pos = 0
        for _, v in ipairs(leftItemTab) do
            pos = CalculateTeamItemPos(self, v, pos)
        end

        self.leftTeamGroup:SetLength(#leftItemTab, leftItemTab)
        self.leftTeamGroup:ResetToTop()
    else
        self.leftTeamGroup:SetLength(0)
    end

    local rightItemTab = self.model.defendTeamTab
    if #rightItemTab > 0 then
        local pos = 0
        for _, v in ipairs(rightItemTab) do
            pos = CalculateTeamItemPos(self, v, pos)
        end

        self.rightTeamGroup:SetLength(#rightItemTab, rightItemTab)
        self.rightTeamGroup:ResetToTop()
    else
        self.rightTeamGroup:SetLength(0)
    end

    self.totalRound_UIText:SetText(string.format(DataUtil.GetClientText(200168), data.maxRound))

    RefreshBattleInfo(self, data)
    RefreshCurRoundRemainTimeTimer(self, data.remainTime)

    self.cityTitle_UIText:SetText(data.name)
    self.curState = data.roundState
    self.curRound = data.curRound
    self.curCountDown = data.remainTime

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_SIEGE_ATTACKTEAM_UPDATE, OnUIMsgRefreshAttackList)
    self:AddUIListener(UIMessageNames.UI_NATION_SIEGE_DEFENDTEAM_UPDATE, OnUIMsgRefreshDefendList)
    self:AddUIListener(UIMessageNames.UI_NATION_SIEGE_KILL_ACTIVE_END, UINetMsgKillActiveEnd)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_SIEGE_ATTACKTEAM_UPDATE, OnUIMsgRefreshAttackList)
    self:RemoveUIListener(UIMessageNames.UI_NATION_SIEGE_DEFENDTEAM_UPDATE, OnUIMsgRefreshDefendList)
    self:RemoveUIListener(UIMessageNames.UI_NATION_SIEGE_KILL_ACTIVE_END, UINetMsgKillActiveEnd)
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
        self.timer = nil
    end

    self.curOnClickTeamItem = nil
    self.curState = nil
    self.curRound = nil
    self.curCountDown = nil
    self.curOnClickTeamID = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf()
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationSiegeBattleMain)
end

UINationSiegeBattleMainView.OnCreate = OnCreate
UINationSiegeBattleMainView.OnEnable = OnEnable
UINationSiegeBattleMainView.OnRefresh = OnRefresh
UINationSiegeBattleMainView.OnAddListener = OnAddListener
UINationSiegeBattleMainView.OnRemoveListener = OnRemoveListener
UINationSiegeBattleMainView.OnDisable = OnDisable
UINationSiegeBattleMainView.OnDestroy = OnDestroy
UINationSiegeBattleMainView.OnClickOpenButtonPanel = OnClickOpenButtonPanel

return UINationSiegeBattleMainView
