
--[[
-- 控制层
--]]

local UIGuideCtrl = BaseClass("UIGuideCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGuide)
end


UIGuideCtrl.CloseSelf = CloseSelf

return UIGuideCtrl