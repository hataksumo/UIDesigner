--[[
-- 控制层
--]]

local UINationTeamSideInfoCtrl = BaseClass("UINationTeamSideInfoCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationTeamSideInfo)
end

--立即撤退返回
local function OnClickRightNowRetreatBtn(self, selectTeamId)
    NationNetManager:GetInstance():SendMsgTeamRightNowRetreat(selectTeamId,self.model.QuickReturn)
end

--撤退
local function OnRetreatBtnClick(self, selectTeamId)
    NationNetManager:GetInstance():SendMsgTeamRetreat(selectTeamId)
end

--征募
local function OnGetBtnClick(self, marchData)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT,nil,0,0)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTeamConfiguration, marchData.nationArmyPath.currentBehavior.startMapID, marchData.nationArmyPath.teamId)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UINationRecruitArmy, marchData.nationArmyPath.teamId)
end

--设置
local function OnSetBtnClick(self, marchData)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, nil, 0, 0)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTeamConfiguration, marchData.nationArmyPath.currentBehavior.startMapID, marchData.nationArmyPath.teamId)
end

UINationTeamSideInfoCtrl.CloseSelf = CloseSelf
UINationTeamSideInfoCtrl.OnClickRightNowRetreatBtn = OnClickRightNowRetreatBtn
UINationTeamSideInfoCtrl.OnSetBtnClick = OnSetBtnClick
UINationTeamSideInfoCtrl.OnGetBtnClick = OnGetBtnClick
UINationTeamSideInfoCtrl.OnRetreatBtnClick = OnRetreatBtnClick

return UINationTeamSideInfoCtrl