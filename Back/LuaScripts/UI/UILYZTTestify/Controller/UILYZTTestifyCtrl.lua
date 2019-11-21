
--[[
-- 控制层
--]]

local UILYZTTestifyCtrl = BaseClass("UILYZTTestifyCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTTestify)
end


UILYZTTestifyCtrl.CloseSelf = CloseSelf

return UILYZTTestifyCtrl