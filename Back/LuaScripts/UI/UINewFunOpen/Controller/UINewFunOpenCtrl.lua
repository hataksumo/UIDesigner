
--[[
-- 控制层
--]]

local UINewFunOpenCtrl = BaseClass("UINewFunOpenCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINewFunOpen)
end


UINewFunOpenCtrl.CloseSelf = CloseSelf

return UINewFunOpenCtrl