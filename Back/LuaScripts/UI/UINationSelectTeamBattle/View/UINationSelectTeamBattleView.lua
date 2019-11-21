--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationSelectTeamBattleView = BaseClass("UINationSelectTeamBattleView", UIBaseView)
local base = UIBaseView

local UINationTeamListItem = require "UI.UINationSelectTeamBattle.Component.UINationTeamListItem"
local UINationJLRWrapItem = require "UI.UINationSelectTeamBattle.Component.UINationJLRWrapItem"
local UINationSHLWrapItem = require "UI.UINationSelectTeamBattle.Component.UINationSHLWrapItem"

local NationUtil = require "GameLogic.Nation.NationUtil"
local ItemInfo = DataUtil.GetData("item")

local function PlayTipsTextAnimation(self)
    self.tipsAni = LuaTweener.UIScaleTo(self.stateText.transform,
            Vector3.New(1, 1, 1), Vector3.New(1.25, 1.25, 1.25), 0.1, EaseFormula.Linear, function()
                self.tipsAni = LuaTweener.UIScaleTo(self.stateText.transform,
                        Vector3.New(1.25, 1.25, 1.25), Vector3.New(1, 1, 1), 0.2, EaseFormula.Linear, function()
                        end)
            end)
end

--设置按钮的父物体
local function SetBtnParent(self, child, parent)
    child.transform:SetParent(parent)
    child.localScale = Vector3.New(1, 1, 1)
    child.anchoredPosition = Vector2.New(0, 0)
    child.gameObject:SetActive(true)

    local teamData = self.model.teamList[self.model.currentSelectIndex]
    local textStr = ""
    if teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
        textStr = DataUtil.GetClientText(200115)
    elseif teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
        textStr = DataUtil.GetClientText(200116)
    elseif teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
        textStr = DataUtil.GetClientText(200117)
    elseif teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        textStr = DataUtil.GetClientText(200118)
    end
    if teamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
        local nationState = self.model:GetTeamDispatchState(teamData)
        if nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_RECRUIT then
            textStr = DataUtil.GetClientText(200110)
        elseif nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_HURT then
            textStr = DataUtil.GetClientText(200119)
        else
            if self.model.currentSelectIndex == 1 then
                textStr = DataUtil.GetClientText(200120)
            elseif self.model.currentSelectIndex == 2 then
                textStr = DataUtil.GetClientText(200121)
            elseif self.model.currentSelectIndex == 3 then
                textStr = DataUtil.GetClientText(200122)
            end
        end
    elseif teamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL
            or teamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_RES then
        if teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY then
            textStr = DataUtil.GetClientText(200039)
        end
    elseif teamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
        if teamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
            textStr = DataUtil.GetClientText(200124)
        end
    end
    self.selectUIText:SetText(textStr)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.exitUIButton = self:AddComponent(UIButton, "Root/top/returnButton/Image")
    self.exitUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.titleNameUIText = self:AddComponent(UIText, "Root/top/titleName_UIText")
    self.titleNameUIText:SetText(DataUtil.GetClientText(200131))

    self.teamSelectObj = UIUtil.FindTrans(self.transform, "Root/btnObj/SelectImg")
    self.selectUIText = self:AddComponent(UIText, "Root/btnObj/SelectImg/Select_UIText")
    self.teamSelectObj.gameObject:SetActive(false)

    self.corpsText = self:AddComponent(UIText, "Root/InfoPanel/corpsIcon/corpsText")
    self.corpsIconBG = self:AddComponent(UIImage, "Root/InfoPanel/corpsIcon/IconBG", AtlasConfig.DynamicNationTex)
    self.corpsIcon = self:AddComponent(UIImage, "Root/InfoPanel/corpsIcon/Icon", AtlasConfig.DynamicNationTex)
    self.militaryText = self:AddComponent(UIText, "Root/InfoPanel/militaryBgImage/militaryText")
    self.militaryText:SetText(DataUtil.GetClientText(200109))
    self.militaryValueText = self:AddComponent(UIText, "Root/InfoPanel/militaryBgImage/militaryValueText")
    self.siegeText = self:AddComponent(UIText, "Root/InfoPanel/siegeBgImage/siegeText")
    self.siegeText:SetText(DataUtil.GetClientText(200015))
    self.siegeValueText = self:AddComponent(UIText, "Root/InfoPanel/siegeBgImage/siegeValueText")
    self.team_cost_text = self:AddComponent(UIText, "Root/InfoPanel/teamCostImage/TeamCostText")

    --状态文本提示
    self.stateInfoObj = UIUtil.FindTrans(self.transform, "Root/teamObj/StateInfo").gameObject
    self.stateText = self:AddComponent(UIText, "Root/teamObj/StateInfo/StateText")

    --信息面板
    self.info = UIUtil.FindTrans(self.transform, "Root/teamObj/infoShow")
    self.infoPanel = UIUtil.FindTrans(self.transform, "Root/teamObj/infoShow").gameObject

    self.startPosUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/startPos_UIText")
    self.startInfoUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/startPos_UIText/startInfo_UIText")

    self.targetPosUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/targetPos_UIText")
    self.targetInfoUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/targetPos_UIText/targetInfo_UIText")

    self.battleTimeUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/battleTime_UIText")
    self.battleTimeInfoUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/battleTime_UIText/battleTimeInfo_UIText")

    self.arriveTimeUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/arriveTime_UIText")
    self.arriveTimeInfoUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/arriveTime_UIText/arriveTimeInfo_UIText")

    self.tipsStateText = self:AddComponent(UIText, "Root/teamObj/infoShow/TipsText1")

    self.rewardUIText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/reward_UIText")
    self.rewardTipsText = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/reward_UIText/TipsText2")
    self.rewardInfoTab = {}
    for i = 1, 4 do
        self.rewardInfoTab[i] = {}
        self.rewardInfoTab[i].icon = self:AddComponent(UIImage, "Root/teamObj/infoShow/InfoPanel/reward_UIText/item" .. i .. "/Image" .. i, AtlasConfig.DynamicTex)
        self.rewardInfoTab[i].text = self:AddComponent(UIText, "Root/teamObj/infoShow/InfoPanel/reward_UIText/item" .. i .. "/Text" .. i)
        self.rewardInfoTab[i].Obj = UIUtil.FindTrans(self.transform, "Root/teamObj/infoShow/InfoPanel/reward_UIText/item" .. i).gameObject
    end

    self.btn_Text = self:AddComponent(UIText, "Root/teamObj/attack_UIButton/Text")
    self.attackUIButton = self:AddComponent(UIButton, "Root/teamObj/attack_UIButton")
    self.attack_UIImage = self:AddComponent(UIImage, "Root/teamObj/attack_UIButton")
    self.gray_Material = self.attack_UIImage:GetMat()
    self.attackUIButton:SetOnClick(function()
        --if self.model.card_sum>self.model.cardCostLimit then
        --    UISpecial:GetInstance():UITipText("COST超出上限无法出征")
        --    return
        --end
        if self.model.currentTeamState ~= 0 then
            if self.tipsAni ~= nil then
                LuaTweener.StopTweener(self.tipsAni)
            end
            PlayTipsTextAnimation(self)
            return
        end
        self.ctrl:moveOnClick()
    end)

    --消耗
    self.resumePanel = UIUtil.FindTrans(self.transform, "Root/teamObj/resumePanel").gameObject
    self.energy_UIText = self:AddComponent(UIText, "Root/teamObj/resumePanel/Energy/energy_UIText")
    self.energyObj = UIUtil.FindTrans(self.transform, "Root/teamObj/resumePanel/Energy").gameObject
    self.order_UIText = self:AddComponent(UIText, "Root/teamObj/resumePanel/Order/order_UIText")
    self.orderObj = UIUtil.FindTrans(self.transform, "Root/teamObj/resumePanel/Order").gameObject

    --左侧，选择队伍列表
    self.team_view_content = self:AddComponent(UIWrapGroup3D, "Root/btnObj/RectScroll/grid", UINationTeamListItem)

    --队伍第三个位置锁定
    self.lockThirdPosOverObj = UIUtil.FindTrans(self.transform, "Root/teamObj/LockCardOver").gameObject
    self.lockThirdPosText = self:AddComponent(UIText, "Root/teamObj/LockCardUnder/LockCardText")
    self.lockThirdPosUnderObj = UIUtil.FindTrans(self.transform, "Root/teamObj/LockCardUnder").gameObject

    self.JLRCardItems = {}
    self.SHLCardItems = {}
    for i = 1, 3 do
        self.JLRCardItems[i] = UINationJLRWrapItem.New(self, "Root/teamObj/teamCardContent/Item" .. i .. "/JLRIcon" .. i)
        self.SHLCardItems[i] = UINationSHLWrapItem.New(self, "Root/teamObj/teamCardContent/Item" .. i .. "/SHLIcon" .. i)
        self.JLRCardItems[i]:OnCreate(self)
        self.JLRCardItems[i]:OnRefresh()
        self.SHLCardItems[i]:OnCreate(self)
        self.SHLCardItems[i]:OnRefresh()
    end
end

local function OnEnable(self)
    base.OnEnable(self)

    self.team_view_content:SetLength(#self.model.teamList)
    self.team_view_content:ResetToBeginning()

    self:OnRefresh()
end

local function OnRefresh(self)
    SetBtnParent(self, self.teamSelectObj, self.team_view_content:GetComponentByIndex(self.model.currentSelectIndex - 1).transform)
    self.team_view_content:WrapContent(true)

    --队伍第三个位置是否解锁
    if self.model.is_unLock_third_team then
        self.JLRCardItems[3]:SetCardPosLocked(false)
        self.SHLCardItems[3]:SetCardPosLocked(false)
        self.lockThirdPosOverObj:SetActive(false)
        self.lockThirdPosUnderObj:SetActive(false)
    else
        self.JLRCardItems[3]:SetCardPosLocked(true)
        self.SHLCardItems[3]:SetCardPosLocked(true)
        self.lockThirdPosOverObj:SetActive(true)
        self.lockThirdPosUnderObj:SetActive(true)
        local name = NationScienceData:GetInstance():GetStaticNationalTechById(NationDefine.NATION_TECH_ID.FORMATION_UNLOCK).TechName
        self.lockThirdPosText:SetText(name .. "Lv." .. self.model.is_unLock_third_pos_level .. DataUtil.GetClientText(200348))
    end

    for k, v in pairs(self.JLRCardItems) do
        v:OnRefresh(self.model.deployUpArrayCards[1][k])
    end
    for j, w in pairs(self.SHLCardItems) do
        w:OnRefresh(self.model.deployUpArrayCards[2][j])
    end

    self.corpsText:SetText(self.model.armyGroupName)
    self.corpsIconBG:SetSpriteName(self.model.armyGroupIconBG)
    self.corpsIcon:SetSpriteName(self.model.armyGroupIcon)
    self.militaryValueText:SetText(self.model.totalArmy)
    self.siegeValueText:SetText(self.model.totalAttackPower)
    self.btn_Text:SetText(self.model.teamBehaviorInfo.text)

    if self.model.card_sum == nil then
        self.team_cost_text:SetText("")
    else
        if self.model.card_sum > self.model.cardCostLimit then
            self.team_cost_text:SetText(string.format("<color=#E04B4D>%d</color>/%d", self.model.card_sum, self.model.cardCostLimit))
        else
            self.team_cost_text:SetText(string.format("%d/%d", self.model.card_sum, self.model.cardCostLimit))
        end
    end

    if self.model.teamBehaviorInfo.resumeEnergy then
        self.resumePanel:SetActive(true)
        self.energy_UIText:SetText(self.model.teamBehaviorInfo.resumeEnergy)
        if self.model.teamBehaviorInfo.resumeOrder then
            self.orderObj:SetActive(true)
            self.order_UIText:SetText(self.model.teamBehaviorInfo.resumeOrder)
        else
            self.orderObj:SetActive(false)
        end
    else
        self.resumePanel:SetActive(false)
    end

    if self.model.currentTeamState == 0 then
        self.stateInfoObj:SetActive(false)
        self.attack_UIImage:SetMat()
        self.infoPanel:SetActive(true)

        if self.model.isFullManor then
            self.tipsStateText.gameObject:SetActive(true)
            self.rewardTipsText.gameObject:SetActive(false)
            self.tipsStateText:SetText(DataUtil.GetClientText(200132))
        elseif self.model.isResOverflow then
            self.tipsStateText.gameObject:SetActive(false)
            self.rewardTipsText.gameObject:SetActive(true)
            self.rewardTipsText:SetText(DataUtil.GetClientText(200133))
        else
            self.tipsStateText.gameObject:SetActive(false)
            self.rewardTipsText.gameObject:SetActive(false)
        end

        self.startPosUIText:SetText(DataUtil.GetClientText(200351))
        self.targetPosUIText:SetText(DataUtil.GetClientText(200134))

        local x, y = NationUtil.GetXYByCellId(self.model.buildingId)
        local startX, startY = NationUtil.GetXYByCellId(self.model.startBuildId)
        self.targetInfoUIText:SetText(self.model.townName .. "(" .. x .. "," .. y .. ")")
        self.startInfoUIText:SetText(self.model.startBuildName .. "(" .. startX .. "," .. startY .. ")")

        self.battleTimeUIText:SetText(DataUtil.GetClientText(200135))
        self.battleTimeInfoUIText:SetText(UIUtil.GetFinialTime(self.model.girdCostNeedTimeSecond))
        local finishTime = math.floor((TimeSyncManager:GetInstance():GetSimulationJavaMS() * 0.001 + self.model.girdCostNeedTimeSecond))
        self.arriveTimeUIText:SetText(DataUtil.GetClientText(200136))
        self.arriveTimeInfoUIText:SetText(os.date("%m/%d  %H:%M:%S", finishTime))
        --self.arriveTimeInfoUIText:SetText(os.date("%Y/%m/%d  %H:%M:%S", finishTime))

        --是否显示采集收益
        if self.model.severNeedData[6] == nil then
            self.rewardUIText.gameObject:SetActive(false)
        else
            self.rewardUIText:SetText(DataUtil.GetClientText(200037))
            local itemInfo = {}
            for k = 1, 4 do
                itemInfo = self.model.severNeedData[6][k]
                if itemInfo ~= nil then
                    self.rewardInfoTab[k].icon:SetSpriteName(ItemInfo[itemInfo.Id].Icon)
                    self.rewardInfoTab[k].text:SetText(itemInfo.val)
                    self.rewardInfoTab[k].Obj:SetActive(true)
                else
                    self.rewardInfoTab[k].Obj:SetActive(false)
                end
            end
            self.rewardUIText.gameObject:SetActive(true)
        end
    elseif self.model.currentTeamState == 1 then
        self.stateText:SetText(DataUtil.GetClientText(200137))
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    elseif self.model.currentTeamState == 2 then
        self.stateText:SetText(DataUtil.GetClientText(200138))
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    elseif self.model.currentTeamState == 3 then
        self.stateText:SetText(DataUtil.GetClientText(200139))
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    elseif self.model.currentTeamState == 4 then
        self.stateText:SetText(DataUtil.GetClientText(200140))
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    elseif self.model.currentTeamState == 5 then
        self.stateText:SetText(DataUtil.GetClientText(200141))
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    elseif self.model.currentTeamState == 100 then
        self.stateText:SetText("")
        self.attack_UIImage:SetMat(self.gray_Material)
        self.stateInfoObj:SetActive(true)
        self.infoPanel:SetActive(false)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddUIListener(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH, OnRefresh);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH, OnRefresh);
end

local function OnDisable(self)
    base.OnDisable(self)

    for i = 1, 3 do
        self.JLRCardItems[i]:OnDisable()
        self.SHLCardItems[i]:OnDisable()
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationSelectTeamBattleView.OnCreate = OnCreate
UINationSelectTeamBattleView.OnEnable = OnEnable
UINationSelectTeamBattleView.OnRefresh = OnRefresh
UINationSelectTeamBattleView.OnAddListener = OnAddListener
UINationSelectTeamBattleView.OnRemoveListener = OnRemoveListener
UINationSelectTeamBattleView.OnDisable = OnDisable
UINationSelectTeamBattleView.OnDestroy = OnDestroy

return UINationSelectTeamBattleView
