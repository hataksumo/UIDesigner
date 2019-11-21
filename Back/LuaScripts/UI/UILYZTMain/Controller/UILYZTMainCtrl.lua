
--[[
-- 控制层
--]]

local UILYZTMainCtrl = BaseClass("UILYZTMainCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTMain)
end


UILYZTMainCtrl.CloseSelf = CloseSelf

return UILYZTMainCtrl