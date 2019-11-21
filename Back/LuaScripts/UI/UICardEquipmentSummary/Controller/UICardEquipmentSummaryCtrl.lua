
--[[
-- 控制层
--]]

local UICardEquipmentSummaryCtrl = BaseClass("UICardEquipmentSummaryCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentSummary)
end


UICardEquipmentSummaryCtrl.CloseSelf = CloseSelf

return UICardEquipmentSummaryCtrl