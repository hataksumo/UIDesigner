
--[[
-- 控制层
--]]

local UICommonBoxInfoTipCtrl = BaseClass("UICommonBoxInfoTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICommonBoxInfoTip)
end


UICommonBoxInfoTipCtrl.CloseSelf = CloseSelf

return UICommonBoxInfoTipCtrl