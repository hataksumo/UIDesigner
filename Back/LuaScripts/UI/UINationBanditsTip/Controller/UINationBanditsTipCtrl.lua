--[[
-- 控制层
--]]

local UINationBanditsTipCtrl = BaseClass("UINationBanditsTipCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationBanditsTip)
end

local function OnClickCloseBtn(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationBanditsTip)
    --Logger.LogVars("在剿匪详情界面打开城镇界面")
    NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationTownBuildInfo, self.model.townId)
end

local function OnClickGo(self)
    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText("未配置队伍，请先配置队伍")
        return
    end

    local canAttack = NationUtil.CheckCanAttackByBuildID(self.model.townId)
    if canAttack == false then
        UISpecial:GetInstance():UITipText("无过路权限，无法前往！！！")
        return
    end

    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationBanditsTip)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, { NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE, self.model.townId, self.model.pointId })

    --local function callback()
    --    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationBanditsTip)
    --    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, { NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE, self.model.townId, self.model.pointId })
    --end
    --NationNetManager:GetInstance():SendGetCanCrossThisWay(self.model.townId, callback)
end

UINationBanditsTipCtrl.CloseSelf = CloseSelf
UINationBanditsTipCtrl.OnClickGo = OnClickGo
UINationBanditsTipCtrl.OnClickCloseBtn = OnClickCloseBtn

return UINationBanditsTipCtrl