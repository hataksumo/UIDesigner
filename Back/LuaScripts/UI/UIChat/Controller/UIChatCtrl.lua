--[[
-- 控制层
--]]

local UIChatCtrl = BaseClass("UIChatCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIUtil.SetChatImgStatus(true)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIChat)
end

local function OnClickApplyJoinLeague(self)
    if SceneManager:GetInstance().current_scene.scene_config.Name == SceneConfig.BattleScene.Name or SceneManager:GetInstance().current_scene.scene_config.Name == SceneConfig.PVPBattleScene.Name or SceneManager:GetInstance().current_scene.scene_config.Name == SceneConfig.WorldBossScene.Name or UIManager:GetInstance():GetWindow(UIWindowNames.UIEmBattle2D, true, true) ~= nil then
        UISpecial:GetInstance():UITipText("该场景不可跳转")
        return
    end
    local lockdata ,type,des= UnlockData:GetInstance():GetLockDataState(401)
    if not lockdata then
        UISpecial:GetInstance():UITipText(des)
        return
    end
    CloseSelf(self)
    if SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.NationScene) then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAllianceList)
    else
        --切换到国战场景
        --local callback = function()
        --    SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
        --end
        --NationCtrlManager:GetInstance():GetNationLoginData(true, callback)
        NationCtrlManager:GetInstance():EnterNationLogicNew()
    end
end

UIChatCtrl.CloseSelf = CloseSelf
UIChatCtrl.OnClickApplyJoinLeague = OnClickApplyJoinLeague

return UIChatCtrl