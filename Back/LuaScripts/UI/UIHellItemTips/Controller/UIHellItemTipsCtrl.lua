
--[[
-- 控制层
--]]

local UIHellItemTipsCtrl = BaseClass("UIHellItemTipsCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIHellItemTips)
end


UIHellItemTipsCtrl.CloseSelf = CloseSelf

return UIHellItemTipsCtrl