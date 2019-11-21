--[[
-- 控制层
--]]

local UINationWorldMapCtrl = BaseClass("UINationWorldMapCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationWorldMap)
end

local function TurnToPosPoint(self)
    local posID = self.model.curClickPos
    CloseSelf(self)
    NationUtil.TurnToOnePositionByPointData(posID)
end

local function OnClickNavigationBtn(self, isNav)
    local targetID = nil
    if isNav then
        targetID = self.model.curClickPos
    end
    NationWorldMapData:GetInstance():GetCurrentAllTeamToTargetPath(targetID)
end

UINationWorldMapCtrl.CloseSelf = CloseSelf
UINationWorldMapCtrl.TurnToPosPoint = TurnToPosPoint
UINationWorldMapCtrl.OnClickNavigationBtn = OnClickNavigationBtn

return UINationWorldMapCtrl