--[[
-- 控制层
--]]

local UINationPunitiveTargetInfoCtrl = BaseClass("UINationPunitiveTargetInfoCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_CLOSE_CRUSADE_INTERIOR_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.crusadeId = self.model.buildID
    msgObj.regionId = self.model.areaID
    msgObj.pointId = self.model.outlawID
    msgObj.position = self.model.posID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
    end)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationPunitiveTargetInfo)
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
    tempTab[1] = NationDefine.NATION_TEAM_BEHAVIOR_TYPE.PUNITIVE
    tempTab[2] = self.model.buildID
    tempTab[3] = self.model.areaID
    tempTab[4] = self.model.outlawID
    tempTab[5] = self.model.posID

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, tempTab)
end

--todo, -by qqf
local function ToSeverGetTeamData(self, index)
    --local msgID = MsgIDDefine.
    local msgObj = MsgIDMap[msgID]()
    msgObj.om = self.model.curSearchMonster
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PUNITIVE_TEAM_UPDATE, msg_obj.Packages, params.curIndex)
    end, { curIndex = index })
end

local function CollectThisPoint(self)
    local collectID = self.model.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_POS_COLLECT_DELETE)
    else
        local buildID = self.model.buildID
        local outlawID = self.model.outlawID
        local posID = self.model.posID
        local areaID = self.model.areaID
        CloseSelf(self)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, buildID, outlawID, posID, areaID)
    end
end

local function ShareThisPoint(self)
    local temp = {}
    temp.posID = self.model.buildID
    temp.subPosID = self.model.posID
    temp.areaID = self.model.areaID
    temp.infoID = self.model.outlawID
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

UINationPunitiveTargetInfoCtrl.CloseSelf = CloseSelf
UINationPunitiveTargetInfoCtrl.StartAttack = StartAttack
UINationPunitiveTargetInfoCtrl.ToSeverGetTeamData = ToSeverGetTeamData
UINationPunitiveTargetInfoCtrl.CollectThisPoint = CollectThisPoint
UINationPunitiveTargetInfoCtrl.ShareThisPoint = ShareThisPoint

return UINationPunitiveTargetInfoCtrl