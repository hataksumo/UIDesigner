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

local UINationResourcesTargetInfoView = BaseClass("UINationResourcesTargetInfoView", UIBaseView)
local base = UIBaseView

local UITeamItem = require "UI.UINationResourcesMain.Component.UIResTeamItem"
local TeamWrapGroup = require "UI.UIChat.Component.WorldChatWrapGroup"

local function RefreshTimer(self)
    local timer = self.model.battleTime
    local function UpdateData(self)
        timer = timer - 1
        self.freeTimeUIText:SetText(UIUtil.GetFinialTime(timer))
        if timer <= 0 then
            self.freetimeObj:SetActive(false)
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateData, self, false, false)
end

local function OnClickLeftFuncBtn(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        if self.UpdateDataTimer ~= nil then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200034))
            return
        end
        UIManager:GetInstance():OpenTwoButtonTip("提<size=40>示</size>", "是否确定放弃该资源点？\n (确定放弃，"
                .. math.modf(self.model.ResAbandon / 60) .. "分钟后失去该领地)", "取消", "确定",
                function()
                    UIManager:GetInstance():CloseTip()
                end, function()
                    self.ctrl:SendMsgGiveUpResPoint()
                end)
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
        --暂时没有按钮
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        self.ctrl:SendMsgCancelGiveUpResPoint()
    else
        --暂时没有按钮
    end
end

local function OnClickRightFuncBtn(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        self.ctrl:OnClickCollectResources()
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
        --暂时没有按钮
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        self.ctrl:OnClickCollectResources()
    else
        --暂时没有按钮
    end
end

local function OnClickMidFuncBtn(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND)
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND)
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND)
    else
        if self.UpdateDataTimer ~= nil then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200035))
            return
        end
        self.ctrl:StartAttack(NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE)
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
        itemDataTab = self.model.teamBattleList
    else
        if self.curSelectTeamType ~= TeamType.defend then
            return
        end
        itemDataTab = self.model.teamDefendList
    end

    if table.length(itemDataTab) > 0 then
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
    self.team_group_trans.gameObject:SetActive(true)
end

--点击一个队伍的Item
local function OnClickOpenButtonPanel(self, teamID)
    self.curOnClickTeamID = teamID
    OnUIMsgRefreshTeamList(self, self.curSelectTeamType == TeamType.battle)
end

--切换到战场队伍列表
local function OnClickBattleTeamButton(self)
    if self.curSelectTeamType == TeamType.battle then
        return
    end
    self.curOnClickTeamID = 0
    self.curSelectTeamType = TeamType.battle
    OnUIMsgRefreshTeamList(self, true)
    self.team_group_trans.gameObject:SetActive(false)
    self.team_group_trans:SetParent(self.team_battle_trans)
end

--切换到驻守队伍列表
local function OnClickDefendTeamButton(self)
    if self.curSelectTeamType == TeamType.defend then
        return
    end
    self.curSelectTeamType = TeamType.defend
    --给服务器发消息，获取驻守的队伍信息
    self.ctrl:GetDefendTeamList()
    self.team_group_trans.gameObject:SetActive(false)
    self.team_group_trans:SetParent(self.team_defend_trans)
end

local function RefreshButton(self)
    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
        if self.model.unlockFunc.collect then
            self.rightBtn_UIImage:SetMat()
            self.rightBtnTip_Text:SetText()
        else
            self.rightBtn_UIImage:SetMat(self.grayMat)
            self.rightBtnTip_Text:SetText(DataUtil.GetClientText(200422)) --需解锁采集科技
        end
        self.rightUIButton.gameObject:SetActive(true)
        self.rightUIButton_Text:SetText(DataUtil.GetClientText(200037)) --采集收益
        self.leftUIButton.gameObject:SetActive(true)
        self.leftUIButton_Text:SetText(DataUtil.GetClientText(200038))  --放弃占领
        if self.model.unlockFunc.defend then
            self.midBtn_UIImage:SetMat()
            self.midBtnTip_Text:SetText()
        else
            self.midBtn_UIImage:SetMat(self.grayMat)
            self.midBtnTip_Text:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
        end
        self.midUIButton.gameObject:SetActive(true)
        self.midUIButton_Text:SetText(DataUtil.GetClientText(200039)) --驻守
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
        self.rightUIButton.gameObject:SetActive(false)
        self.leftUIButton.gameObject:SetActive(false)
        if self.model.unlockFunc.defend then
            self.midBtn_UIImage:SetMat()
            self.midBtnTip_Text:SetText()
        else
            self.midBtn_UIImage:SetMat(self.grayMat)
            self.midBtnTip_Text:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
        end
        self.midUIButton.gameObject:SetActive(true)
        self.midUIButton_Text:SetText(DataUtil.GetClientText(200039)) --驻守
    elseif self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Abandon then
        if self.model.unlockFunc.collect then
            self.rightBtn_UIImage:SetMat()
            self.rightBtnTip_Text:SetText()
        else
            self.rightBtn_UIImage:SetMat(self.grayMat)
            self.rightBtnTip_Text:SetText(DataUtil.GetClientText(200422)) --需解锁采集科技
        end
        self.rightUIButton.gameObject:SetActive(true)
        self.rightUIButton_Text:SetText(DataUtil.GetClientText(200037)) --采集收益
        self.leftUIButton.gameObject:SetActive(true)
        self.leftUIButton_Text:SetText(DataUtil.GetClientText(200042)) --取消放弃
        if self.model.unlockFunc.defend then
            self.midBtn_UIImage:SetMat()
            self.midBtnTip_Text:SetText()
        else
            self.midBtn_UIImage:SetMat(self.grayMat)
            self.midBtnTip_Text:SetText(DataUtil.GetClientText(200423)) --需解锁驻守科技
        end
        self.midUIButton.gameObject:SetActive(true)
        self.midUIButton_Text:SetText(DataUtil.GetClientText(200039)) --驻守
    else
        self.rightUIButton.gameObject:SetActive(false)
        self.leftUIButton.gameObject:SetActive(false)
        self.midBtn_UIImage:SetMat()
        self.midBtnTip_Text:SetText()
        self.midUIButton.gameObject:SetActive(true)
        self.midUIButton_Text:SetText(DataUtil.GetClientText(200027)) --攻打
    end
end

local function OnUIMsgRefreshUI(self)
    local resData = self.model.resPointData

    if self.model.battleTime <= 0 then
        self.freetimeObj:SetActive(false)
    else
        self.free_time_title:SetText(DataUtil.GetClientText(200046))
        self.freeTimeUIText:SetText(UIUtil.GetFinialTime(self.model.battleTime))
        self.freetimeObj:SetActive(true)
        RefreshTimer(self)
    end

    self.endurance_numUIText:SetText(resData.Endurance)
    self.endurance_UISlider:SetValue(resData.EnduranceValue)

    if self.model.state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        self.ownerPanel:SetActive(false)
        self.ownerEmptyText:SetText(DataUtil.GetClientText(200041))
    else
        self.ownerPanel:SetActive(true)
        self.ownerEmptyText:SetText("")
        if isNilOrEmpty(resData.OwnerGroup) then
            self.junIcon_UIImage:SetEnabled(false)
        else
            self.junIcon_UIImage:SetEnabled(true)
        end
        self.junUITextText:SetText(resData.OwnerGroup)
        self.playerUITextText:SetText(resData.OwnerPlayer)
    end

    RefreshButton(self)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.mask_btn = self:AddComponent(UIButton, "MaskBtn")
    self.mask_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.closeUIButton = self:AddComponent(UIButton, "Root/BgRoot/Close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.collectUIButton = self:AddComponent(UIButton, "Root/RightRoot/collect_UIButton")

    self.collect_text = self:AddComponent(UIText, "Root/RightRoot/collect_UIButton/CollectText")
    self.share_text = self:AddComponent(UIText, "Root/RightRoot/share_UIButton/ShareText")

    self.collectUIButton_UIImage = self:AddComponent(UIImage, "Root/RightRoot/collect_UIButton/collectBtnImage", AtlasConfig.DynamicNationTex)
    self.collectUIButton:SetOnClick(function()
        if self.model.collectPosID ~= nil then
            self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_592")
        end
        self.ctrl:CollectThisPoint()
    end)
    self.shareUIButton = self:AddComponent(UIButton, "Root/RightRoot/share_UIButton")
    self.shareUIButton:SetOnClick(function()
        self.ctrl:ShareThisPoint()
    end)

    self.titleUIText = self:AddComponent(UIText, "Root/RightRoot/title_UIText")
    self.titleLevelUIText = self:AddComponent(UIText, "Root/RightRoot/titleLevel_UIText")
    self.freetimeObj = UIUtil.FindTrans(self.transform, "Root/RightRoot/freeTimePanel").gameObject
    self.free_time_title = self:AddComponent(UIText, "Root/RightRoot/freeTimePanel/freeTimeTitle")
    self.freeTimeUIText = self:AddComponent(UIText, "Root/RightRoot/freeTimePanel/freeTime_UIText")
    self.typeUIText = self:AddComponent(UIText, "Root/RightRoot/type_UIText")
    self.junUIText = self:AddComponent(UIText, "Root/RightRoot/jun_UIText")
    self.mapIconUIImage = self:AddComponent(UIImage, "Root/RightRoot/mapIcon_UIImage", AtlasConfig.DynamicNationTex)
    self.endurance_numUIText = self:AddComponent(UIText, "Root/RightRoot/enduranceSlider/endurance_num_UIText")
    self.endurance_UISlider = self:AddComponent(UISlider, "Root/RightRoot/enduranceSlider")
    self.jun_title = self:AddComponent(UIText, "Root/RightRoot/JunImg/junTitle")
    self.have_title = self:AddComponent(UIText, "Root/RightRoot/HaveImg/haveTitle")
    self.type_title = self:AddComponent(UIText, "Root/RightRoot/typeTitle")
    self.battle_team_text = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup/BattleTeamText")
    self.defend_team_text = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup/DefendTeamText")


    --三个按钮
    self.rightUIButton = self:AddComponent(UIButton, "Root/RightRoot/right_UIButton")
    self.rightBtn_UIImage = self:AddComponent(UIImage, "Root/RightRoot/right_UIButton")
    self.rightUIButton_Text = self:AddComponent(UIText, "Root/RightRoot/right_UIButton/rightText")
    self.rightBtnTip_Text = self:AddComponent(UIText, "Root/RightRoot/right_UIButton/rightTipText")
    self.rightUIButton:SetOnClick(self, OnClickRightFuncBtn)

    self.midUIButton = self:AddComponent(UIButton, "Root/RightRoot/mid_UIButton")
    self.midBtn_UIImage = self:AddComponent(UIImage, "Root/RightRoot/mid_UIButton")
    self.midUIButton_Text = self:AddComponent(UIText, "Root/RightRoot/mid_UIButton/midText")
    self.midBtnTip_Text = self:AddComponent(UIText, "Root/RightRoot/mid_UIButton/midTipText")
    self.midUIButton:SetOnClick(self, OnClickMidFuncBtn)

    self.leftUIButton = self:AddComponent(UIButton, "Root/RightRoot/left_UIButton")
    self.leftBtn_UIImage = self:AddComponent(UIImage, "Root/RightRoot/left_UIButton")
    self.leftUIButton_Text = self:AddComponent(UIText, "Root/RightRoot/left_UIButton/leftText")
    self.leftUIButton:SetOnClick(self, OnClickLeftFuncBtn)

    --灰色材质球
    self.grayMat = self.midBtn_UIImage:GetMat()

    self.productTab = {}
    for i = 1, 3 do
        self.productTab[i] = {}
        self.productTab[i].image = self:AddComponent(UIImage, "Root/RightRoot/ProductPanel/product" .. i .. "/product_UIImage" .. i, AtlasConfig.DynamicTex)
        self.productTab[i].text = self:AddComponent(UIText, "Root/RightRoot/ProductPanel/product" .. i .. "/product_UIText" .. i)
        self.productTab[i].name = self:AddComponent(UIText, "Root/RightRoot/ProductPanel/product" .. i .. "/productTitle_UIText" .. i)
        self.productTab[i].obj = UIUtil.FindTrans(self.transform, "Root/RightRoot/ProductPanel/product" .. i).gameObject
    end

    self.ownerPanel = UIUtil.FindTrans(self.transform, "Root/RightRoot/Owner").gameObject

    self.playerUITextText = self:AddComponent(UIText, "Root/RightRoot/Owner/player_UITextText")
    self.junIcon_UIImage = self:AddComponent(UIImage, "Root/RightRoot/Owner/junIcon")
    self.junUITextText = self:AddComponent(UIText, "Root/RightRoot/Owner/jun_UITextText")
    self.ownerEmptyText = self:AddComponent(UIText, "Root/RightRoot/OwnerEmptyUIText")

    --队伍列表
    --self.team_group = self:AddComponent(UIWrapGroup3D, "LeftRoot/TeamPanel/BattleTeam/ScrollView/nationGrid", UITeamItem)
    self.team_group = self:AddComponent(TeamWrapGroup, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView/nationGrid", UITeamItem, Vector2.New(742, 130))
    self.team_group_empty = self:AddComponent(UIText, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView/Empty")
    self.team_group_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/BattleTeam/ScrollView")
    self.team_battle_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/BattleTeam")
    self.team_defend_trans = UIUtil.FindTrans(self.transform, "Root/LeftRoot/TeamPanel/DefendTeam")
    self.team_battle_UIButton = self:AddComponent(UIButton, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup")
    self.team_battle_arrow = self:AddComponent(UIImage, "Root/LeftRoot/TeamPanel/BattleTeam/nationGroup/Arrow")--*
    self.team_battle_UIButton:SetOnClick(function()
        OnClickBattleTeamButton(self)
        self.team_battle_arrow.transform.rotation = Vector3.New(0, 0, 0)
        self.team_defend_arrow.transform.rotation = Quaternion.Euler(0, 0, 90)
    end)
    self.team_defend_UIButton = self:AddComponent(UIButton, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup")
    self.team_defend_arrow = self:AddComponent(UIImage, "Root/LeftRoot/TeamPanel/DefendTeam/defendGroup/Arrow1")--*
    self.team_defend_UIButton:SetOnClick(function()
        OnClickDefendTeamButton(self)
        self.team_battle_arrow.transform.rotation = Quaternion.Euler(0, 0, 90)
        self.team_defend_arrow.transform.rotation = Quaternion.Euler(0, 0, 0)
    end)

    self.curSelectTeamType = 0
end

local function OnEnable(self)
    base.OnEnable(self)

    --初始化
    self.curOnClickTeamID = 0

    if self.model.collectPosID then
        self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_630")
    else
        self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_592")
    end

    local resData = self.model.resPointData

    self.jun_title:SetText(DataUtil.GetClientText(200047))
    self.type_title:SetText(DataUtil.GetClientText(200025))
    self.have_title:SetText(DataUtil.GetClientText(200049))
    self.titleUIText:SetText(resData.Name)
    self.titleLevelUIText:SetText(resData.Level)
    self.typeUIText:SetText(resData.Terrain)
    self.junUIText:SetText(resData.Difficult)
    self.battle_team_text:SetText(DataUtil.GetClientText(200060))
    self.defend_team_text:SetText(DataUtil.GetClientText(200061))
    self.mapIconUIImage:SetSpriteName(resData.ResImage)

    OnUIMsgRefreshUI(self)
    self.collect_text:SetText(DataUtil.GetClientText(200043))
    self.share_text:SetText(DataUtil.GetClientText(200044))

    --掉落的物品
    local productTemp = nil
    for i = 1, 3 do
        productTemp = resData.Product[i]
        if productTemp ~= nil then
            self.productTab[i].image:SetSpriteName(productTemp.resImage)
            --   self.productTab[i].text:SetText("+" .. productTemp.value .. "/小时")
            self.productTab[i].text:SetText(string.format(DataUtil.GetClientText(200056), productTemp.value))
            self.productTab[i].name:SetText(productTemp.name)
            self.productTab[i].obj:SetActive(true)
        else
            self.productTab[i].obj:SetActive(false)
        end
    end

    OnClickBattleTeamButton(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_UPDATE_DETAIL, OnUIMsgRefreshUI)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_TEAM_REFRESH, OnUIMsgRefreshTeamList)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_UPDATE_DETAIL, OnUIMsgRefreshUI)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_TEAM_REFRESH, OnUIMsgRefreshTeamList)
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
    self.curSelectTeamType = nil
    self.curOnClickTeamID = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationResourcesTargetInfoView.OnCreate = OnCreate
UINationResourcesTargetInfoView.OnEnable = OnEnable
UINationResourcesTargetInfoView.OnRefresh = OnRefresh
UINationResourcesTargetInfoView.OnAddListener = OnAddListener
UINationResourcesTargetInfoView.OnRemoveListener = OnRemoveListener
UINationResourcesTargetInfoView.OnDisable = OnDisable
UINationResourcesTargetInfoView.OnDestroy = OnDestroy
UINationResourcesTargetInfoView.OnClickOpenButtonPanel = OnClickOpenButtonPanel
UINationResourcesTargetInfoView.TeamType = TeamType

return UINationResourcesTargetInfoView
