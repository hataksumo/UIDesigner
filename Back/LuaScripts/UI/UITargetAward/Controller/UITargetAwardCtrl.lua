
--[[
-- 控制层
--]]

local UITargetAwardCtrl = BaseClass("UITargetAwardCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UITargetAward)
end


UITargetAwardCtrl.CloseSelf = CloseSelf

return UITargetAwardCtrl