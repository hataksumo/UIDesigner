
--[[
-- 控制层
--]]

local UINationGuideCtrl = BaseClass("UINationGuideCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationGuide)
end


UINationGuideCtrl.CloseSelf = CloseSelf

return UINationGuideCtrl