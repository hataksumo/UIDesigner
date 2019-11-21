
--[[
-- 控制层
--]]

local UIHDQiRiLiBaoCtrl = BaseClass("UIHDQiRiLiBaoCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIHDQiRiLiBao)
end


UIHDQiRiLiBaoCtrl.CloseSelf = CloseSelf

return UIHDQiRiLiBaoCtrl