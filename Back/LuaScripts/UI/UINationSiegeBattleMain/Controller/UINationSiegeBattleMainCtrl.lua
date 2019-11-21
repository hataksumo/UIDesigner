--[[
-- 控制层
--]]

local UINationSiegeBattleMainCtrl = BaseClass("UINationSiegeBattleMainCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationSiegeBattleMain)
end

local function StartAttack(self)
    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200076))
        return
    end

    local canAttack = NationUtil.CheckCanAttackByBuildID(self.model.buildID)
    if canAttack == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200074))
        return
    end

    local tempTab = {}
    tempTab[1] = NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL
    tempTab[2] = self.model.buildID

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
end

local function OnClickRetreat(self, teamID, state)
    if state == NationDefine.SIEGE_KILL_TEAM_STATE.INBATTLE then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200162))
        return
    end
    NationNetManager:GetInstance():SendMsgTeamRetreat(teamID, NationDefine.NATION_RETREAT_ST.SIEGE_KILL)
    --前段自己修改，把自己的队伍删除
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_SIEGE_REMOVE_ONE_TEAM, teamID)
end

UINationSiegeBattleMainCtrl.CloseSelf = CloseSelf
UINationSiegeBattleMainCtrl.StartAttack = StartAttack
UINationSiegeBattleMainCtrl.OnClickRetreat = OnClickRetreat

return UINationSiegeBattleMainCtrl