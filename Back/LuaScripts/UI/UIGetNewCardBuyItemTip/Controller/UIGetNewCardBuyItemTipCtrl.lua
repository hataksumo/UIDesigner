
--[[
-- 控制层
--]]

local UIGetNewCardBuyItemTipCtrl = BaseClass("UIGetNewCardBuyItemTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetNewCardBuyItemTip)
end


UIGetNewCardBuyItemTipCtrl.CloseSelf = CloseSelf

return UIGetNewCardBuyItemTipCtrl