
--[[
-- 控制层
--]]

local UIWeakGuideCtrl = BaseClass("UIWeakGuideCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIWeakGuide)
end


UIWeakGuideCtrl.CloseSelf = CloseSelf

return UIWeakGuideCtrl