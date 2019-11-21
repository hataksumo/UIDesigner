
--[[
-- 控制层
--]]

local UIItemTipsCtrl = BaseClass("UIItemTipsCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
end


UIItemTipsCtrl.CloseSelf = CloseSelf

return UIItemTipsCtrl