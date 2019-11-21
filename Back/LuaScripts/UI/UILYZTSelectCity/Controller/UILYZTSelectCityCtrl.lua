
--[[
-- 控制层
--]]

local UILYZTSelectCityCtrl = BaseClass("UILYZTSelectCityCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTSelectCity)
end


UILYZTSelectCityCtrl.CloseSelf = CloseSelf

return UILYZTSelectCityCtrl