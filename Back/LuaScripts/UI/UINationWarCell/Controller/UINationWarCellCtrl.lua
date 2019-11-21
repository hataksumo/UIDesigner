--[[
-- 控制层
--]]

local UINationWarCellCtrl = BaseClass("UINationWarCellCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationWarCell)
end

local function StartAttack(self, type)
    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND and self.model.unlockFunc.defend == false then
        --驻守未解锁
        return
    end

    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200076))
        return
    end

    local canAttack = NationTownData:GetInstance():CanAttackWarCellByWarCellID(self.model.cellID)
    if canAttack == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200074))
        return
    end

    local tempTab = {}
    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
        tempTab[3] = 0
    elseif type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
        tempTab[3] = 1
    end

    tempTab[1] = type
    tempTab[2] = self.model.ownerBuildID
    tempTab[4] = self.model.cellID

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)


    --local function callback()
    --    local tempTab = {}
    --    if type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
    --        tempTab[3] = 0
    --    elseif type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
    --        tempTab[3] = 1
    --    end
    --
    --    tempTab[1] = type
    --    tempTab[2] = self.model.ownerBuildID
    --    tempTab[4] = self.model.cellID
    --
    --    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
    --end
    --
    --NationNetManager:GetInstance():SendGetCanCrossThisWay(self.model.ownerBuildID, callback, self.model.cellID)
end

--放弃占领
local function SendMsgGiveUpWarCell(self)
    local function callback(self, opCode, buildID, cellID)
        if opCode ~= 0 then
            return
        end
        --local abanDonTime =  NationOccupyData:GetInstance().BattleAbandon * 1000 --ms
        local timeStamp = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS())
        NationOccupyData:GetInstance():AddAdandonDataBySelf(buildID, cellID, timeStamp)--(cellID, 0, timeStamp)
        self:CloseSelf()
    end

    NationNetManager:GetInstance():SendMsgAbandonWarCellLand(self.model.ownerBuildID, self.model.cellID, Bind(self, callback))
end
--取消放弃占领
local function SendMsgCancelGiveUpWarCell(self)
    local function callback(self, opCode, buildID, cellID)
        if opCode ~= 0 then
            return
        end
        NationOccupyData:GetInstance():RemoveAdandonDataByTownIdAndPos(buildID, cellID)--(cellID, 0)
        self:CloseSelf()
    end

    NationNetManager:GetInstance():SendMsgCancelAbandonWarCellLand(self.model.ownerBuildID, self.model.cellID, Bind(self, callback))
end
--队伍撤退
local function OnClickRetreat(self, teamID)
    NationNetManager:GetInstance():SendMsgTeamRetreat(teamID, NationDefine.NATION_RETREAT_ST.WAR_CELL)
end
--获得驻守队伍的队列
local function GetDefendTeamList(self)
    NationNetManager:GetInstance():SendGetDefendTeamListData(self.model.ownerBuildID, self.model.cellID, function(msgObj)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, msgObj)
    end)
end

local function CollectThisPoint(self)
    local collectID = self.model.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
    else
        local ownerBuildID = self.model.ownerBuildID
        local cellID = self.model.cellID
        CloseSelf(self)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, ownerBuildID, nil, cellID)
    end
end

local function ShareThisPoint(self)
    local temp = {}
    temp.posID = self.model.ownerBuildID
    temp.subPosID = self.model.cellID
    temp.areaID = 0
    temp.infoID = self.model.cellID
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

UINationWarCellCtrl.CloseSelf = CloseSelf
UINationWarCellCtrl.StartAttack = StartAttack
UINationWarCellCtrl.SendMsgGiveUpWarCell = SendMsgGiveUpWarCell
UINationWarCellCtrl.SendMsgCancelGiveUpWarCell = SendMsgCancelGiveUpWarCell
UINationWarCellCtrl.GetDefendTeamList = GetDefendTeamList
UINationWarCellCtrl.OnClickRetreat = OnClickRetreat
UINationWarCellCtrl.CollectThisPoint = CollectThisPoint
UINationWarCellCtrl.ShareThisPoint = ShareThisPoint

return UINationWarCellCtrl