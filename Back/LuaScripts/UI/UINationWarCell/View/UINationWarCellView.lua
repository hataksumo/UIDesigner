--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local TeamType = {
    battle = 1, --战场队伍
    defend = 2, --驻守队伍
}

local UINationWarCellView = BaseClass("UINationWarCellView", UIBaseView)
local base = UIBaseView
local UITeamItem = require "UI.UINationWarCell.Component.UITeamItem"
local TeamWrapGroup = require "UI.UIChat.Component.WorldChatWrapGroup"

local function RefreshNotBattleTimeTimer(self, time)
    local timer = time
    local function UpdateTimer(self)
        timer = timer - 1
        self.freeTimeUIText:SetText(UIUtil.GetFinialTime(timer))
        if timer <= 0 then
            TimerManager:GetInstance():SimpleTimerStop(self.battleTimeTimer)
            self.battleTimeTimer = nil
            self.freeTimeObj:SetActive(false)
        end
    end
    self.battleTimeTimer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateTimer, self, false, false)
end

local function OnClickLeftButton(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        if self.battleTimeTimer ~= nil then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200034))
            return
        end
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200029), DataUtil.GetClientText(200031)
                .. math.modf(self.model.BattleAbandon / 60) .. DataUtil.GetClientText(200050), DataUtil.GetClientText(200022), DataUtil.GetClientText(200006),
                function()
                    UIManager:GetInstance():CloseTip()
                end, function()
                    self.ctrl:SendMsgGiveUpWarCell()
                end)
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then

    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        self.ctrl:SendMsgCancelGiveUpWarCell()
    end
end

local function OnClickRightButton(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Enemy
            or self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL)
    else
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND)
    end
end

--重新计算列表的Item位置
local function CalculateTeamItemPos(self, v, pos)
    v.pos = pos
    if self.curOnClickTeamID ~= nil and self.curOnClickTeamID == v.TeamID then
        v.y = 210
    else
        v.y = 130
    end
    return pos + v.y
end

local function OnUIMsgRefreshTeamList(self, isBattle)
    local itemDataTab = {}
    if isBattle then
        if self.curSelectTeamType ~= TeamType.battle then
            return
        end
        itemDataTab = self.model.teamList
    else
        if self.curSelectTeamType ~= TeamType.defend then
            return
        end
        itemDataTab = self.model.teamDefendList
    end

    if table.length(itemDataTab) > 0 then
        --  self.team_group_empty:SetText("")
        local pos = 0
        for _, v in ipairs(itemDataTab) do
            pos = CalculateTeamItemPos(self, v, pos)
        end
        self.team_group_empty:SetText("")
        self.team_group:SetLength(#itemDataTab, itemDataTab)
        self.team_group:ResetToTop()
    else
        self.team_group:SetLength(0)
        self.team_group_empty:SetText(DataUtil.GetClientText(200036))
    end
end
local function OnClickOpenButtonPanel(self, teamID)
    self.curOnClickTeamID = teamID
    OnUIMsgRefreshTeamList(self, self.curSelectTeamType == TeamType.battle)
end
--切换到战场队伍列表
local function OnClickBattleTeamButton(self)
    --self.curSelectTeamType = TeamType.battle
    --OnUIMsgRefreshTeamList(self, true)
    --self.team_group_trans:SetParent(self.team_battle_trans)
    if self.curSelectTeamType == TeamType.battle then
        return
    end
    self.curOnClickTeamID = 0
    self.curSelectTeamType = TeamType.battle
    OnUIMsgRefreshTeamList(self, true)
    self.team_group_trans:SetParent(self.team_battle_trans)

end
--切换到驻守队伍列表
local function OnClickDefendTeamButton(self)
    --self.curSelectTeamType = TeamType.defend
    ----给服务器发消息，获取驻守的队伍信息,todo,只拿一次
    --self.ctrl:GetDefendTeamList()
    --OnUIMsgRefreshTeamList(self, false)
    --self.team_group_trans:SetParent(self.team_defend_trans)
    if self.curSelectTeamType == TeamType.defend then
        return
    end
    self.curSelectTeamType = TeamType.defend
    --给服务器发消息，获取驻守的队伍信息
    self.ctrl:GetDefendTeamList()
    self.team_group_trans:SetParent(self.team_defend_trans)

end

local function RefreshBottomFuncButton(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        self.leftUIButton.gameObject:SetActive(true)
        self.rightUIButton.gameObject:SetActive(true)
        self.leftUIButton_UIText:SetText(DataUtil.GetClientText(200038)) --放弃占领
        if self.model.unlockFunc.defend then
            self.rightBtnTip_UIText:SetText()
            self.rightBtn_Image:SetMat()
        else
            self.rightBtnTip_UIText:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
            self.rightBtn_Image:SetMat(self.grayMat)
        end
        self.rightUIButton_UIText:SetText(DataUtil.GetClientText(200039))  --驻守
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
        self.rightUIButton.gameObject:SetActive(true)
        self.leftUIButton.gameObject:SetActive(false)
        if self.model.unlockFunc.defend then
            self.rightBtnTip_UIText:SetText()
            self.rightBtn_Image:SetMat()
        else
            self.rightBtnTip_UIText:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
            self.rightBtn_Image:SetMat(self.grayMat)
        end
        self.rightUIButton_UIText:SetText(DataUtil.GetClientText(200039)) --驻守
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        self.leftUIButton.gameObject:SetActive(true)
        self.rightUIButton.gameObject:SetActive(true)
        self.leftUIButton_UIText:SetText(DataUtil.GetClientText(200042)) --取消放弃
        if self.model.unlockFunc.defend then
            self.rightBtnTip_UIText:SetText()
            self.rightBtn_Image:SetMat()
        else
            self.rightBtnTip_UIText:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
            self.rightBtn_Image:SetMat(self.grayMat)
        end
        self.rightUIButton_UIText:SetText(DataUtil.GetClientText(200039)) --驻守
    else
        self.rightBtn_Image:SetMat()
        self.rightBtnTip_UIText:SetText()
        self.leftUIButton.gameObject:SetActive(false)
        self.rightUIButton.gameObject:SetActive(true)
        self.rightUIButton_UIText:SetText(DataUtil.GetClientText(200027)) --攻打
    end
end

local function OnUIMsgRefreshDetailInfo(self)
    local tempData = self.model.data

    self.endurance_numUIText:SetText(tempData.duration)
    self.endurance_UISlider:SetValue(tempData.durationValue)

    if self.model.state ~= NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        self.playerUITextText:SetText(tempData.ownerPlayerName)
        self.junUITextText:SetText(tempData.ownerGroupName)
        self.ownerEmptyObj:SetActive(false)
        self.ownerPanel:SetActive(true)
    else
        self.ownerEmptyObj:SetActive(true)
        self.ownerPanel:SetActive(false)
    end

    if tempData.notBattleTime > 0 then
        self.freeTimeUIText:SetText(UIUtil.GetFinialTime(tempData.notBattleTime))
        self.freeTimeObj:SetActive(true)
        RefreshNotBattleTimeTimer(self, tempData.notBattleTime)
    else
        self.freeTimeObj:SetActive(false)
    end

    RefreshBottomFuncButton(self)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.mask_btn = self:AddComponent(UIButton, "Mask")
    self.mask_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.closeUIButton = self:AddComponent(UIButton, "Root/BgRoot/Close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.collectUIButton = self:AddComponent(UIButton, "Root/RightRoot/collect_UIButton")
    self.collectUIButton_UIImage = self:AddComponent(UIImage, "Root/RightRoot/collect_UIButton")
    self.collectUIButton:SetOnClick(function()
        self.ctrl:CollectThisPoint()
    end)

    self.shareUIButton = self:AddComponent(UIButton, "Root/RightRoot/share_UIButton")
    self.shareUIButton:SetOnClick(function()
        self.ctrl:ShareThisPoint()
    end)

    self.rightBtn_Image = self:AddComponent(UIImage, "Root/RightRoot/BtnGroup/right_UIButton")
    self.rightUIButton_UIText = self:AddComponent(UIText, "Root/RightRoot/BtnGroup/right_UIButton/rightText")
    self.rightBtnTip_UIText = self:AddComponent(UIText, "Root/RightRoot/BtnGroup/right_UIButton/rightTipText")
    self.rightUIButton = self:AddComponent(UIButton, "Root/RightRoot/BtnGroup/right_UIButton")
    self.rightUIButton:SetOnClick(function()
        OnClickRightButton(self)
    end)

    self.leftUIButton_UIText = self:AddComponent(UIText, "Root/RightRoot/BtnGroup/left_UIButton/leftText")
    self.leftUIButton = self:AddComponent(UIButton, "Root/RightRoot/BtnGroup/left_UIButton")
    self.leftUIButton:SetOnClick(function()
        OnClickLeftButton(self)
    end)

    self.grayMat = self.rightBtn_Image:GetMat()

    self.mapIconUIImage = self:AddComponent(UIImage, "Root/RightRoot/mapIcon_UIImage")
    self.defaultMapIconSize = {}
    self.defaultMapIconSize.x = self.mapIconUIImage.rectTransform.sizeDelta.x
    self.defaultMapIconSize.y = self.mapIconUIImage.rectTransform.sizeDelta.y

    self.titleUIText = self:AddComponent(UIText, "Root/RightRoot/title_UIText")
    self.titleLevelUIText = self:AddComponent(UIText, "Root/RightRoot/titleLevel_UIText")
    self.freeTimeUIText = self:AddComponent(UIText, "Root/RightRoot/freeTimePanel/freeTime_UIText")
    self.free_time_title = self:AddComponent(UIText, "Root/RightRoot/freeTimePanel/freeTimeTitle")
    self.endurance_text = self:AddComponent(UIText, "Root/RightRoot/enduranceText")
    self.jun_title = self:AddComponent(UIText, "Root/RightRoot/JunImg/junTitle")
    self.terrain_text = self:AddComponent(UIText, "Root/RightRoot/terrainText")
    self.have_text = self:AddComponent(UIText, "Root/RightRoot/HaveImg/haveTitle")
    self.battle_team_text = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup/BattleTeamText")
    self.defend_team_text = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup/DefendTeamText")
    self.freeTimeObj = UIUtil.FindTrans(self.transform, "Root/RightRoot/freeTimePanel").gameObject
    self.endurance_UISlider = self:AddComponent(UISlider, "Root/RightRoot/enduranceSlider")
    self.endurance_numUIText = self:AddComponent(UIText, "Root/RightRoot/enduranceSlider/endurance_num_UIText")
    self.terrainUIText = self:AddComponent(UIText, "Root/RightRoot/terrain_UIText")
    self.junUIText = self:AddComponent(UIText, "Root/RightRoot/jun_UIText")
    --归属
    self.ownerEmptyObj = UIUtil.FindTrans(self.transform, "Root/RightRoot/OwnerEmptyUIText").gameObject
    self.ownerPanel = UIUtil.FindTrans(self.transform, "Root/RightRoot/Owner").gameObject
    self.playerUITextText = self:AddComponent(UIText, "Root/RightRoot/Owner/player_UITextText")
    self.junUITextText = self:AddComponent(UIText, "Root/RightRoot/Owner/jun_UITextText")

    --队伍列表
    --   self.team_group = self:AddComponent(UIWrapGroup3D, "LeftRoot/TeamPanel/BattleTeam/ScrollView/nationGrid", UITeamItem)
    self.team_group = self:AddComponent(TeamWrapGroup, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView/nationGrid", UITeamItem, Vector2.New(742, 130))
    self.team_group_empty = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView/Empty")
    self.team_group_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView")
    self.team_battle_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/BattleTeam")
    self.team_defend_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/DefendTeam")
    self.team_battle_arrow = self:AddComponent(UIImage, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup/Arrow")--*
    self.team_battle_UIButton = self:AddComponent(UIButton, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup")
    self.team_battle_UIButton:SetOnClick(function()
        OnClickBattleTeamButton(self)
        self.team_battle_arrow.transform.rotation = Vector3.New(0, 0, 0)
        self.team_defend_arrow.transform.rotation = Quaternion.Euler(0, 0, 90)
    end)
    self.team_defend_arrow = self:AddComponent(UIImage, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup/Arrow1")--*
    self.team_defend_UIButton = self:AddComponent(UIButton, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup")
    self.team_defend_UIButton:SetOnClick(function()
        OnClickDefendTeamButton(self)
        self.team_battle_arrow.transform.rotation = Quaternion.Euler(0, 0, 90)
        self.team_defend_arrow.transform.rotation = Quaternion.Euler(0, 0, 0)
    end)

    --队伍列表操作按扭面板
    --self.teamButtonPanel = UIUtil.FindTrans(self.transform, "LeftRoot/TeamButtonPanel/ButtonPanel")
    --self.teamRetreat_UIButton = self:AddComponent(UIButton, "LeftRoot/TeamButtonPanel/ButtonPanel/retreat_UIButton")

    --self.teamButtonPanel = UIUtil.FindTrans(self.transform, "TeamButtonPanel").gameObject
    --self.teamRetreat_UIButton = self:AddComponent(UIButton, "TeamButtonPanel/Button")
    --self.teamRetreat_UIButton:SetOnClick(function()
    --    if self.curOnClickTeamItem ~= nil then
    --        self.ctrl:OnClickRetreat(self.curOnClickTeamItem.teamID)
    --    end
    --    self.teamClose_UIButton.gameObject:SetActive(false)
    --    self.curOnClickTeamItem = nil
    --end)
    --self.teamClose_UIButton = self:AddComponent(UIButton, "LeftRoot/TeamButtonPanel")
    --self.teamClose_UIButton.gameObject:SetActive(false)
    --self.teamClose_UIButton:SetOnClick(function()
    --    self.teamClose_UIButton.gameObject:SetActive(false)
    --    if self.curOnClickTeamItem ~= nil then
    --       -- self.curOnClickTeamItem.arrow_btn.transform.rotation = Vector3.zero
    --    end
    --    self.curOnClickTeamItem = nil
    --end)

    self.curSelectTeamType = nil
end

local function OnEnable(self)
    base.OnEnable(self)
    self.curOnClickTeamID = 0

    if self.model.collectPosID then
        self.collectUIButton_UIImage:SetAlphaVal(0.5)
    else
        self.collectUIButton_UIImage:SetAlphaVal(1)
    end

    local tempData = self.model.data
    self.mapIconUIImage:SetSprite(tempData.pic)
    self.mapIconUIImage.rectTransform.sizeDelta = Vector2.New(self.defaultMapIconSize.x * tempData.ImageScale, self.defaultMapIconSize.y * tempData.ImageScale)
    self.mapIconUIImage.transform.localPosition = Vector3.New(tempData.ImagePosX, tempData.ImagePosY, 0)

    self.titleUIText:SetText(tempData.name)
    self.titleLevelUIText:SetText(tempData.buildLv)
    self.terrainUIText:SetText(tempData.terrain)
    self.junUIText:SetText(tempData.difficult)
    self.free_time_title:SetText(DataUtil.GetClientText(200046))
    self.endurance_text:SetText(DataUtil.GetClientText(200045))
    self.jun_title:SetText(DataUtil.GetClientText(200047))
    self.terrain_text:SetText(DataUtil.GetClientText(200025))
    self.have_text:SetText(DataUtil.GetClientText(200049))
    self.battle_team_text:SetText(DataUtil.GetClientText(200060))
    self.defend_team_text:SetText(DataUtil.GetClientText(200061))
    OnUIMsgRefreshDetailInfo(self)
    OnClickBattleTeamButton(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_WARCELL_TEAM_UPDATE, OnUIMsgRefreshTeamList)
    self:AddUIListener(UIMessageNames.UI_NATION_WARCELL_UPDATE_DETAIL, OnUIMsgRefreshDetailInfo)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_WARCELL_TEAM_UPDATE, OnUIMsgRefreshTeamList)
    self:RemoveUIListener(UIMessageNames.UI_NATION_WARCELL_UPDATE_DETAIL, OnUIMsgRefreshDetailInfo)
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.battleTimeTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.battleTimeTimer)
        self.battleTimeTimer = nil
    end
    self.curSelectTeamType = nil
    self.curOnClickTeamID = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationWarCellView.OnCreate = OnCreate
UINationWarCellView.OnEnable = OnEnable
UINationWarCellView.OnRefresh = OnRefresh
UINationWarCellView.OnAddListener = OnAddListener
UINationWarCellView.OnRemoveListener = OnRemoveListener
UINationWarCellView.OnDisable = OnDisable
UINationWarCellView.OnDestroy = OnDestroy
UINationWarCellView.TeamType = TeamType
UINationWarCellView.OnClickOpenButtonPanel = OnClickOpenButtonPanel

return UINationWarCellView
