--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIWorldBossMainView = BaseClass("UIWorldBossMainView", UIBaseView)
local base = UIBaseView

local UIWBMainTeamItem = require "UI.UIWorldBossMain.Component.UIWBMainTeamItem"
local UIWBMainBagItem = require "UI.UIWorldBossMain.Component.UIWBMainBagItem"
local UIWBMainEventPanel = require "UI.UIWorldBossMain.Component.UIWBMainEventPanel"

--时间计时
local function UpdateMapTime(self, time)
    local countDown = time
    local function callBack()
        countDown = countDown - 1
        self.timeCountDown:SetText(UIUtil.GetFinialTime(countDown))
        if countDown <= 0 then
            TimerManager:GetInstance():SimpleTimerStop(self.timer)
            self.timer = nil
        end
    end

    self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, callBack, nil, false, false)
end

--选中队伍效果
local function SelectOneTeamObj(self, index)
    local teamObj = self.playerTeamList[index]
    self.selectTeamObj.transform:SetParent(teamObj.transform)
    self.selectTeamObj.transform.localPosition = Vector3.zero
    self.selectObjText:SetText("队伍 " .. index)
end

local function OnUIMsgRefreshTeam(self, teamID)
    local teamData = self.model.game_team_info[teamID]
    self.playerTeamList[teamID]:OnRefresh(teamID, teamData)
end

--触发事件弹板
local function OnGameEventPanel(self, teamID, eventId)
    self.eventPanel:OnRefresh(teamID, eventId)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.parentCanvasRect = UIUtil.FindComponent(self.holder.transform, typeof(CS.UnityEngine.RectTransform), "")

    self.closeBtn = self:AddComponent(UIButton, "closeBtn")
    self.closeBtn:SetOnClick(function()
        UIManager:GetInstance():OpenTwoButtonTip("提<size=40>示</size>", "中途退出不会获得任何奖励\n 是否确定退出", "取消", "确定",
                function()
                    UIManager:GetInstance():CloseTip()
                end, function()
                    self.ctrl:BackMainCity()
                end)
    end)

    self.mapName = self:AddComponent(UIText, "MapName")
    self.timeText = self:AddComponent(UIText, "TimeTitle")
    self.timeText:SetText("倒计时")
    self.timeCountDown = self:AddComponent(UIText, "TimeCountDown")

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UIWorldBossMain, ResourceBarType.MAIN_CITY, self)

    self.smallMapBtn = self:AddComponent(UIButton, "Right/smallMap")
    self.smallMapBtn:SetOnClick(function()
        --打开小地图
    end)

    self.hadRewardBtn = self:AddComponent(UIButton, "Right/hadRewardBtn")
    self.hadRewardBtn:SetOnClick(function()
        --打开已获得奖励的界面
    end)

    --副本进度
    self.schedulePanel = UIUtil.FindTrans(self.transform, "Right/schedulePanel")

    --背包item
    --self.bagWrapGroup = self:AddComponent(UIWrapGroup3D, "Right/BagPanel/Grid", UIWBMainBagItem)
    self.itemList = {}
    for i = 1, 6 do
        self.itemList[i] = UIWBMainBagItem.New(self, "Right/BagPanel/Grid/Item" .. i)
        self.itemList[i]:OnCreate()
    end

    --玩家队伍
    self.selectObjText = self:AddComponent(UIText, "LeftPanel/SelectObj/name")
    self.selectTeamObj = UIUtil.FindTrans(self.transform, "LeftPanel/SelectObj").gameObject
    self.playerTeamList = {}
    for i = 1, 3 do
        self.playerTeamList[i] = UIWBMainTeamItem.New(self, "LeftPanel/Team" .. i)
        self.playerTeamList[i]:OnCreate()
    end

    --事件弹板
    self.eventPanel = UIWBMainEventPanel.New(self, "EventPanel")
    self.eventPanel:OnCreate(self)
    self.eventPanel:SetActive(false);
end

local function OnEnable(self)
    base.OnEnable(self)
    self.mapName:SetText(self.model.mapName)

    local limitTime = self.model.limitTime
    self.timeCountDown:SetText(UIUtil.GetFinialTime(limitTime))
    UpdateMapTime(self, limitTime)

    for i = 1, 3 do
        self.playerTeamList[i]:OnRefresh(i, self.model.game_team_info[i])
    end

    for i = 1, 6 do
        self.itemList[i]:OnRefresh(i - 1)
    end

    --local bagListLength = table.length(self.model.bagItemList)
    --if bagListLength > 0 then
    --    self.bagWrapGroup:SetLength(bagListLength)
    --    self.bagWrapGroup:WrapContent(true)
    --else
    --    self.bagWrapGroup:SetLength(0)
    --end

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_TEAM_REFRESH, OnUIMsgRefreshTeam)
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_GAME_EVENT, OnGameEventPanel)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_TEAM_REFRESH, OnUIMsgRefreshTeam)
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_GAME_EVENT, OnGameEventPanel)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
    end
    self.timer = nil
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIWorldBossMain)
end

UIWorldBossMainView.OnCreate = OnCreate
UIWorldBossMainView.OnEnable = OnEnable
UIWorldBossMainView.OnRefresh = OnRefresh
UIWorldBossMainView.OnAddListener = OnAddListener
UIWorldBossMainView.OnRemoveListener = OnRemoveListener
UIWorldBossMainView.OnDestroy = OnDestroy
UIWorldBossMainView.SelectOneTeamObj = SelectOneTeamObj

return UIWorldBossMainView
