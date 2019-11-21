
--[[
-- 控制层
--]]

local UIShenQiActiveCtrl = BaseClass("UIShenQiActiveCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIShenQiActive)
end


UIShenQiActiveCtrl.CloseSelf = CloseSelf

return UIShenQiActiveCtrl