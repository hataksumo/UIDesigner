
--[[
-- 控制层
--]]

local UICarnivalCtrl = BaseClass("UICarnivalCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICarnival)
end


UICarnivalCtrl.CloseSelf = CloseSelf

return UICarnivalCtrl