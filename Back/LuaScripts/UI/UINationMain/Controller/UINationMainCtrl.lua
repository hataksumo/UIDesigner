--[[
-- 控制层
--]]

local UINationMainCtrl = BaseClass("UINationMainCtrl", UIBaseCtrl)

local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationMain)
end

local function OpenGMPanel(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIGMCommand)
end

local function OpenMailPanel(self)
    if MailData:GetInstance():GetMailRedState()then
        MailData:GetInstance():SendGetAddMailRequest()
    elseif MailData:GetInstance():GetMailIsRequest() then
        MailData:GetInstance():SendGetAddMailRequest()
    else
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIMail)
    end
end

local function OpenLogsPanelByNetMsg(self)
    local function callFunc(opcode, type, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msgObj.msg)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationNewBattleLogs, type, msgObj)
    end
    NationNetManager:GetInstance():SendMsgBattleLogs(NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF, callFunc)
    ------------------------------------旧的日志-----------------------------------------
    ---
    --    local function callFunc(opcode,type, msgObj,userDefineData)
    --        if opcode ~= 0 then
    --            UISpecial:GetInstance():UITipText(msgObj.msg)
    --            return
    --        end
    --        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationNewBattleLogs,type, msgObj)
    --    end
    --    NationNetManager:GetInstance():SendMsgBattleLogs(NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF,{},callFunc)
end

local function OpenRecordEventByNetMsg(self)
    local function callFunc(opcode, msg, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msg)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationRecordEvent, msgObj)
    end
    NationNetManager:GetInstance():SendGetRecordEventData(callFunc)
end

local function OpenTaskViewByNetMsg(self)
    TaskData:GetInstance():RequestGetAllDaily()
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIDailyTask)
end

local function OpenOccupiedLandByNetMsg(self)
    local function callFunc(opcode, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msgObj.msg)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationOccupiedLand, msgObj)
    end
    NationNetManager:GetInstance():SendMsgGetOccupiedLand(callFunc)
end

local function OpenCollectPosPanelByNetNsg(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionPanel)
end

local function OpenWorldMap(self)
    Logger.Log("开始打开地图界面，时间： " .. TimeSyncManager:GetInstance():GetSimulationJavaMS() % 10000)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWorldMap)
end

local function OnScienceBtnClick(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationScience)
end

local function OnArmyGroupBtnClick(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationGuardianSoulForce, NationDefine.NATION_GUARDIAN_OPEN_TYPE.MAIN_OPEN_TYPE)
end

local function FlushNationFame(self)

    --判断等级是否有变化
    --if true
    --local changeLevel = self.model:GetNationFame(true)
    --if changeLevel then
    --	-- syncRes
    --
    --end
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UI_FAME_TIMER_UPDATE)

end

local function FlushNationRes(self, resId)
    NationNetManager:GetInstance():SendSyncNationResourceRequest(nil)
end

local function OnTeamSelectItemPressed(self, team)
    --todo,优化
    if team.isReturnTown ~= nil then
        NationUtil.TurnToOnePositionByPointData(team.buildID)
        return
    end
    --todo,end
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, team.marchId, team.uid, team.teamId)
end

local function OnClosePageBtnClick(self)
    --local func = function(self)
    --    SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
    --end
    --local callback = BindCallback(self, func)
    NationCtrlManager:GetInstance():DoLeaveNation()
end

UINationMainCtrl.CloseSelf = CloseSelf
UINationMainCtrl.OpenGMPanel = OpenGMPanel
UINationMainCtrl.FlushNationFame = FlushNationFame
UINationMainCtrl.FlushNationRes = FlushNationRes
UINationMainCtrl.OpenRecordEventByNetMsg = OpenRecordEventByNetMsg
UINationMainCtrl.OpenTaskViewByNetMsg = OpenTaskViewByNetMsg
UINationMainCtrl.OpenOccupiedLandByNetMsg = OpenOccupiedLandByNetMsg
UINationMainCtrl.OpenMailPanel = OpenMailPanel
UINationMainCtrl.OpenLogsPanelByNetMsg = OpenLogsPanelByNetMsg
UINationMainCtrl.OpenCollectPosPanelByNetNsg = OpenCollectPosPanelByNetNsg
UINationMainCtrl.OpenWorldMap = OpenWorldMap
UINationMainCtrl.OnClosePageBtnClick = OnClosePageBtnClick
UINationMainCtrl.OnTeamSelectItemPressed = OnTeamSelectItemPressed
UINationMainCtrl.OnScienceBtnClick = OnScienceBtnClick
UINationMainCtrl.OnArmyGroupBtnClick = OnArmyGroupBtnClick

return UINationMainCtrl