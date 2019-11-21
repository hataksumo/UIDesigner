--[[
-- 控制层
--]]

local UINationPunitiveMainCtrl = BaseClass("UINationPunitiveMainCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationPunitiveMain)
end

local function SearchOneOutlawPoint(self)
    local msgID = MsgIDDefine.PBNATION_NATION_CRUSADE_SEARCH_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.crusadeId = self.model.buildID
    msgObj.level = self.model.curSearchMonster.Level
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("搜索讨伐区怪物出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if msg_obj.Packages.reginId == 0 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200150))
            return
        end

        self:OnClickSwitchOneAreaByAreaNumber(math.modf(msg_obj.Packages.reginId))
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_SEARCH_MONSTER, msg_obj.Packages.reginId)
    end)
end

local function OnClickSwitchOneAreaByAreaNumber(self, num)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PUNITIVE_SELECT_AREA, num)
end

local function OnClickArrowBtn(self, num)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")

    local tempNum = self.model.curSelectArea
    tempNum = tempNum + num

    if tempNum < 1 or tempNum > self.model.maxAreaCount then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200143))
        return
    end

    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PUNITIVE_SELECT_AREA, tempNum)
end

local function OpenPunitiveTargetInfo(self, monsterID, posID)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_CRUSADE_INTERIOR_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.crusadeId = self.model.buildID
    msgObj.regionId = self.model.curSelectArea
    msgObj.pointId = monsterID
    msgObj.position = posID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPunitiveTargetInfo, params.buildID, params.areaID, params.monsterID,
                params.posID)
    end, { buildID = self.model.buildID, areaID = self.model.curSelectArea, monsterID = monsterID, posID = posID })
end

UINationPunitiveMainCtrl.CloseSelf = CloseSelf
UINationPunitiveMainCtrl.SearchOneOutlawPoint = SearchOneOutlawPoint
UINationPunitiveMainCtrl.OpenPunitiveTargetInfo = OpenPunitiveTargetInfo
UINationPunitiveMainCtrl.OnClickArrowBtn = OnClickArrowBtn
UINationPunitiveMainCtrl.OnClickSwitchOneAreaByAreaNumber = OnClickSwitchOneAreaByAreaNumber

return UINationPunitiveMainCtrl