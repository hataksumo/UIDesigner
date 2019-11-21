--[[
-- 控制层
--]]

local UINationPositionPanelCtrl = BaseClass("UINationPositionPanelCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationPositionPanel)
end

local function DeleteOnePosItem(self, id)
    NationCollectPosData:GetInstance():DeletePointData(id)
end

local function TurnToOnePosition(self, posID, subPosID, areaID)
    CloseSelf(self)
    NationUtil.TurnToOnePositionByPointData(posID, subPosID, areaID)
end

UINationPositionPanelCtrl.CloseSelf = CloseSelf
UINationPositionPanelCtrl.DeleteOnePosItem = DeleteOnePosItem
UINationPositionPanelCtrl.TurnToOnePosition = TurnToOnePosition

return UINationPositionPanelCtrl