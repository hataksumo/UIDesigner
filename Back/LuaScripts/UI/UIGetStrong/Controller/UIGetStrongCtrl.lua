
--[[
-- 控制层
--]]

local UIGetStrongCtrl = BaseClass("UIGetStrongCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetStrong)
end


UIGetStrongCtrl.CloseSelf = CloseSelf

return UIGetStrongCtrl