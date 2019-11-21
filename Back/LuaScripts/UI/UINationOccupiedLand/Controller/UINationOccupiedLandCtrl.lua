--[[
-- 控制层
--]]

local UINationOccupiedLandCtrl = BaseClass("UINationOccupiedLandCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationOccupiedLand)
end

--跳转到一个坐标领地ui
local function TurnToOnePosPoint(self, posID, subPosID, areaID)
    CloseSelf(self)
    NationUtil.TurnToOnePositionByPointData(posID, subPosID, areaID)
end

--选择类型，筛选领地
local function ShowLandBySelectType(self)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_SELECT_TYPE)
end

--选择类型，全选还是取消全选
local function SelectAllType(self, isSelect)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_ALL_SELECT, isSelect)
end

--放弃一块领地后，删除
local function DeleteOnePosItem(self, id)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_DELETE, id)
end

--放弃占领资源点
local function SendMsgGiveUpResPoint(self, buildID, posID, landID)
    local function callback(self, opCode, buildID, posID)
        if opCode ~= 0 then
            return
        end
        --local abanDonTime =  NationOccupyData:GetInstance().ResAbandon * 1000 --ms
        local timeStamp = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS())
        NationOccupyData:GetInstance():AddAdandonDataBySelf(buildID, posID, timeStamp)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, landID, true)
    end

    NationNetManager:GetInstance():SendMsgAbandonResPoint(buildID, posID, Bind(self, callback))
end

--取消放弃占领资源点
local function SendMsgCancelGiveUpResPoint(self, buildID, posID, landID)
    local function callback(self, opCode, buildID, posID)
        if opCode ~= 0 then
            return
        end

        NationOccupyData:GetInstance():RemoveAdandonDataByTownIdAndPos(buildID, posID)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, landID, false)
    end

    NationNetManager:GetInstance():SendMsgCancelAbandonResPoint(buildID, posID, Bind(self, callback))
end

--放弃占领接战区
local function SendMsgGiveUpWarCell(self, buildID, cellID, landID)
    local function callback(self, opCode, buildID, cellID)
        if opCode ~= 0 then
            return
        end
        --local abanDonTime =  NationOccupyData:GetInstance().BattleAbandon * 1000 --ms
        local timeStamp = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS())
        NationOccupyData:GetInstance():AddAdandonDataBySelf(cellID, 0, timeStamp)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, landID, true)
    end

    NationNetManager:GetInstance():SendMsgAbandonWarCellLand(buildID, cellID, Bind(self, callback))
end

--取消放弃占领接战区
local function SendMsgCancelGiveUpWarCell(self, buildID, cellID, landID)
    local function callback(self, opCode, buildID, cellID)
        if opCode ~= 0 then
            return
        end
        NationOccupyData:GetInstance():RemoveAdandonDataByTownIdAndPos(cellID, 0)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, landID, false)
    end

    NationNetManager:GetInstance():SendMsgCancelAbandonWarCellLand(buildID, cellID, Bind(self, callback))
end

UINationOccupiedLandCtrl.CloseSelf = CloseSelf
UINationOccupiedLandCtrl.ShowLandBySelectType = ShowLandBySelectType
UINationOccupiedLandCtrl.SelectAllType = SelectAllType
UINationOccupiedLandCtrl.SendMsgGiveUpResPoint = SendMsgGiveUpResPoint
UINationOccupiedLandCtrl.SendMsgCancelGiveUpResPoint = SendMsgCancelGiveUpResPoint
UINationOccupiedLandCtrl.SendMsgGiveUpWarCell = SendMsgGiveUpWarCell
UINationOccupiedLandCtrl.SendMsgCancelGiveUpWarCell = SendMsgCancelGiveUpWarCell
UINationOccupiedLandCtrl.TurnToOnePosPoint = TurnToOnePosPoint
UINationOccupiedLandCtrl.DeleteOnePosItem = DeleteOnePosItem

return UINationOccupiedLandCtrl