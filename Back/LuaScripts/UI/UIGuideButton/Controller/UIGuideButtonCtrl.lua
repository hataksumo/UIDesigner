
--[[
-- 控制层
--]]

local UIGuideButtonCtrl = BaseClass("UIGuideButtonCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGuideButton)
end


UIGuideButtonCtrl.CloseSelf = CloseSelf

return UIGuideButtonCtrl