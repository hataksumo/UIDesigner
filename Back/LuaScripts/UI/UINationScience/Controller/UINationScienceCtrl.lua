--[[
-- 控制层
--]]

local UINationScienceCtrl = BaseClass("UINationScienceCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationScience)
end

local function scienceItemClick(self, id)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationScienceInfo, id)
end

UINationScienceCtrl.CloseSelf = CloseSelf
UINationScienceCtrl.scienceItemClick = scienceItemClick
return UINationScienceCtrl