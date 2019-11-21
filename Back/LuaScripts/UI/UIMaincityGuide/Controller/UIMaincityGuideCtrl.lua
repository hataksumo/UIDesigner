
--[[
-- 控制层
--]]

local UIMaincityGuideCtrl = BaseClass("UIMaincityGuideCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIMaincityGuide)
end


UIMaincityGuideCtrl.CloseSelf = CloseSelf

return UIMaincityGuideCtrl