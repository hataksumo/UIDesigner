local UINationTeamConfigurationCtrl = BaseClass("UINationTeamConfigurationCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationTeamConfiguration)
end

--(废弃)
local function BackButtonClick(self)
    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_TEAM_BACKBUTTON_CLICK)
end

local function OnClickSelectArmyGroup(self)
    local myNationTeamData = self.model.nationTeamData
    if myNationTeamData == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200126))
        return
    end
    if myNationTeamData:IsTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200076))
        return
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationGuardianSoulForce, NationDefine.NATION_GUARDIAN_OPEN_TYPE.TEAM_OPEN_TYPE, myNationTeamData.teamId)
end

--点击一个队伍，选择
local function TeamListItemClick(self, index)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UI_FIRST_SELECT_TEAM, index)
end

--点击队伍征募按钮
local function DeployBeforeRecruitButtonClick(self)
    if self.model.nationTeamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200127))
    else
        if not self.model.nationTeamData:IsTeamCardsEmpty() then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationRecruitArmy, self.model.nationTeamData.teamId)
        else
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200076))
        end
    end
end

--点击队伍配置按钮(废弃)
local function DeployBeforeconfigureButtonClick(self)
    if self.model.nationTeamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200128))
    else
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_DEPLOYBEFORECONFIGURE_BUTTON_CLICK)
    end
end

--卡牌上阵，或交换位置
local function OnDragPutOnCard(self, type, posNum, dragCardId)
    self.isDrop = true
    local teamId = self.model.nationTeamData.teamId
    local cardId = dragCardId
    local position = (type - 1) * 3 + posNum
    local townId = self.model.curTeamBuildID
    local cardIndex = NationUtil.__GetNationTeamCardsIndexDataHelper(posNum, type)

    --判断上阵或者交换的卡牌是否能配置
    local belongTeamId, teamData = NationTeamData:GetInstance():GetTeamIdAndTeamDataByCardId(cardId)
    if belongTeamId ~= nil and teamData ~= nil then
        if teamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200128))
            return
        end
    end

    local posDataId = NationTeamData:GetInstance():GetNationTeamCardIdByTeamIdAndCardIndex(teamId, cardIndex)
    if posDataId ~= 0 then
        if posDataId == dragCardId then
            return
        end
        local posCardArmyValue = NationCardData:GetInstance():GetCardNationArmyValue(posDataId)
        if posCardArmyValue > self.model.RecruitReturnLimit and belongTeamId == nil then
            local formatContentStr = string.format(self.model.RecruitReturnResContent,
                    string.format("%s%s", math.modf(self.model.UninstallReturn * 100), "%"))
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWithResTip, NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.DOWN_FORMATION,
                    { formatContentStr, self.model.RecruitReturnResTitle, posDataId, (posCardArmyValue - 100), { teamId, cardId, position, townId } })
            return
        end
    end
    NationNetManager:GetInstance():ExChangeTeamInfo(teamId, cardId, position, townId)--上阵
end

--卡牌下阵
local function OnDragTakeOffCard(self, type, posNum, dragCardId)
    local teamId = self.model.nationTeamData.teamId
    local cardId = dragCardId
    local position = (type - 1) * 3 + posNum
    local townId = 0
    local armyValue = NationCardData:GetInstance():GetCardNationArmyValue(cardId)

    if armyValue > self.model.RecruitReturnLimit then
        local formatContentStr = string.format(self.model.RecruitReturnResContent,
                string.format("%s%s", math.modf(self.model.UninstallReturn * 100), "%"))
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWithResTip, NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.DOWN_FORMATION,
                { formatContentStr, self.model.RecruitReturnResTitle, cardId, (armyValue - 100), { teamId, cardId, position, townId } })
    else
        NationNetManager:GetInstance():ExChangeTeamInfo(teamId, cardId, position, townId)--下阵
    end
end

UINationTeamConfigurationCtrl.CloseSelf = CloseSelf
UINationTeamConfigurationCtrl.BackButtonClick = BackButtonClick
UINationTeamConfigurationCtrl.OnClickSelectArmyGroup = OnClickSelectArmyGroup
UINationTeamConfigurationCtrl.TeamListItemClick = TeamListItemClick
UINationTeamConfigurationCtrl.DeployBeforeconfigureButtonClick = DeployBeforeconfigureButtonClick
UINationTeamConfigurationCtrl.DeployBeforeRecruitButtonClick = DeployBeforeRecruitButtonClick

UINationTeamConfigurationCtrl.OnDragTakeOffCard = OnDragTakeOffCard
UINationTeamConfigurationCtrl.OnDragPutOnCard = OnDragPutOnCard

return UINationTeamConfigurationCtrl