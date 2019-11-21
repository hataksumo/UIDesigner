--[[
-- 控制层
--]]

local UINationResourcesTargetInfoCtrl = BaseClass("UINationResourcesTargetInfoCtrl", UIBaseCtrl)

local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationResourcesTargetInfo)
end

local function StartAttack(self, type)
    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND and self.model.unlockFunc.defend == false then
        --驻守未解锁
        return
    end

    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText("未配置队伍，请先配置队伍")
        return
    end

    local canAttack = NationUtil.CheckCanAttackByBuildID(self.model.buildID)
    if canAttack == false then
        UISpecial:GetInstance():UITipText("无过路权限，无法前往！！！")
        return
    end

    local tempTab = {}
    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
        tempTab[3] = 0
    elseif type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
        tempTab[3] = 1
    end

    tempTab[1] = type
    tempTab[2] = self.model.buildID
    tempTab[4] = self.model.posID

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)

    --local function callback()
    --    local tempTab = {}
    --    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
    --        tempTab[3] = 0
    --    elseif type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
    --        tempTab[3] = 1
    --    end
    --
    --    tempTab[1] = type
    --    tempTab[2] = self.model.buildID
    --    tempTab[4] = self.model.posID
    --
    --    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
    --end
    --
    --NationNetManager:GetInstance():SendGetCanCrossThisWay(self.model.buildID, callback)
end

--放弃占领
local function SendMsgGiveUpResPoint(self)
    local function callback(self, opCode, buildID, posID)
        if opCode ~= 0 then
            return
        end
        --local abanDonTime =  NationOccupyData:GetInstance().ResAbandon * 1000 --ms
        local timeStamp = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS())
        NationOccupyData:GetInstance():AddAdandonDataBySelf(buildID, posID, timeStamp)
        self:CloseSelf()
    end

    NationNetManager:GetInstance():SendMsgAbandonResPoint(self.model.buildID, self.model.posID, Bind(self, callback))
end

--取消放弃占领
local function SendMsgCancelGiveUpResPoint(self)
    local function callback(self, opCode, buildID, posID)
        if opCode ~= 0 then
            return
        end
        NationOccupyData:GetInstance():RemoveAdandonDataByTownIdAndPos(buildID, posID)
        self:CloseSelf()
    end

    NationNetManager:GetInstance():SendMsgCancelAbandonResPoint(self.model.buildID, self.model.posID, Bind(self, callback))
end

--队伍撤退
local function OnClickRetreat(self, teamID)
    local function callbackFunc()
        self:GetDefendTeamList()
    end
    NationNetManager:GetInstance():SendMsgTeamRetreat(teamID, callbackFunc)
end

--采集
local function OnClickCollectResources(self)
    if self.model.unlockFunc.collect == false then
        --未解锁采集
        return
    end

    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText("未配置队伍，请先配置队伍")
        return
    end

    local resInfo = NationMapInfoData:GetInstance():GetNationalResInfoById(self.model.resID)

    local tempTab = {}

    tempTab[1] = NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT
    tempTab[2] = self.model.buildID
    tempTab[3] = 2
    tempTab[4] = self.model.posID
    tempTab[5] = NationPlayerData:GetInstance():IsResourcesOverflow(resInfo.Collect)
    tempTab[6] = resInfo.Collect

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
end

--获得驻守队伍的队列
local function GetDefendTeamList(self)
    NationNetManager:GetInstance():SendGetDefendTeamListData(self.model.buildID, self.model.posID, function(msgObj)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, msgObj)
    end)
end

local function CollectThisPoint(self)
    local collectID = self.model.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_POS_COLLECT_DELETE)
    else
        local buildID = self.model.buildID
        local resID = self.model.resID
        local posID = self.model.posID
        CloseSelf(self)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, buildID, resID, posID)
    end
end

local function ShareThisPoint(self)
    local temp = {}
    temp.posID = self.model.buildID
    temp.subPosID = self.model.posID
    temp.areaID = 0
    temp.infoID = self.model.resID
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

UINationResourcesTargetInfoCtrl.CloseSelf = CloseSelf
UINationResourcesTargetInfoCtrl.StartAttack = StartAttack
UINationResourcesTargetInfoCtrl.SendMsgGiveUpResPoint = SendMsgGiveUpResPoint
UINationResourcesTargetInfoCtrl.SendMsgCancelGiveUpResPoint = SendMsgCancelGiveUpResPoint
UINationResourcesTargetInfoCtrl.OnClickRetreat = OnClickRetreat
UINationResourcesTargetInfoCtrl.OnClickCollectResources = OnClickCollectResources
UINationResourcesTargetInfoCtrl.GetDefendTeamList = GetDefendTeamList
UINationResourcesTargetInfoCtrl.CollectThisPoint = CollectThisPoint
UINationResourcesTargetInfoCtrl.ShareThisPoint = ShareThisPoint

return UINationResourcesTargetInfoCtrl