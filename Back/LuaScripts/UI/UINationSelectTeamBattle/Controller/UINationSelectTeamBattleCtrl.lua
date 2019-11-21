--[[
-- 控制层
--]]

local UINationSelectTeamBattleCtrl = BaseClass("UINationSelectTeamBattleCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationSelectTeamBattle)
end

local function TeamListItemClick(self, index)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_SELECTTEAM__SELECT, index)
end

local function moveOnClick(self)
    --Logger.Log("调动按钮 可否调动状态：" .. self.model.currentTeamState)
    if self.model.currentTeamState == 0 then
        --可以
        if self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.TRANSFER then
            local teamId = self.model.nationTeamData.teamId
            local cellId = self.model.buildingId
            NationNetManager:GetInstance():SendTeamMoveRequest(teamId, cellId)
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
            --todo,扩展
            if self.model.townType == NationUtil.BUILDING_TYPE_RESOURCE then
                NationNetManager:GetInstance():SendMsgBattleResourcesPoint(self.model.nationTeamData.teamId, self.model.buildingId,
                        self.model.severNeedData[3], self.model.severNeedData[4])
            elseif self.model.townType == NationUtil.BUILDING_TYPE_GUAN_AI or self.model.townType == NationUtil.BUILDING_TYPE_WE_DU or self.model.townType == NationUtil.BUILDING_TYPE_YU_DU then
                NationNetManager:GetInstance():SendMsgAttackWarCell(self.model.nationTeamData.teamId, self.model.buildingId,
                        self.model.severNeedData[3], self.model.severNeedData[4])
            end
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
            local teamId = self.model.nationTeamData.teamId
            local cellId = self.model.buildingId
            local pointId = self.model.pointId
            NationNetManager:GetInstance():SendFightingBanditsRequest(teamId, cellId, pointId)
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.PUNITIVE then
            NationNetManager:GetInstance():SendFightingCrusadeRequest(self.model.nationTeamData.teamId, self.model.buildingId,
                    self.model.severNeedData[3], self.model.severNeedData[4], self.model.severNeedData[5])
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
            NationNetManager:GetInstance():SendMsgBattleResourcesPoint(self.model.nationTeamData.teamId, self.model.buildingId,
                    self.model.severNeedData[3], self.model.severNeedData[4])
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
            NationNetManager:GetInstance():SendMsgBattleResourcesPoint(self.model.nationTeamData.teamId, self.model.buildingId,
                    self.model.severNeedData[3], self.model.severNeedData[4])
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
            NationNetManager:GetInstance():SendMsgAttackWarCell(self.model.nationTeamData.teamId, self.model.buildingId,
                    self.model.severNeedData[3], self.model.severNeedData[4])
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_BREAK then
            NationNetManager:GetInstance():SendMsgSiegeBreakCity(self.model.nationTeamData.teamId, self.model.buildingId)
        elseif self.model.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
            NationNetManager:GetInstance():SendMsgSiegeKillEnemy(self.model.nationTeamData.teamId, self.model.buildingId)
        end
        NationUtil.CloseAllWindowsReturnMainView()
    end
end

UINationSelectTeamBattleCtrl.CloseSelf = CloseSelf
UINationSelectTeamBattleCtrl.TeamListItemClick = TeamListItemClick
UINationSelectTeamBattleCtrl.moveOnClick = moveOnClick
return UINationSelectTeamBattleCtrl