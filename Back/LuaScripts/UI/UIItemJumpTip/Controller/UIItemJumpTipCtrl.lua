
--[[
-- 控制层
--]]

local UIItemJumpTipCtrl = BaseClass("UIItemJumpTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemJumpTip)
end


UIItemJumpTipCtrl.CloseSelf = CloseSelf

return UIItemJumpTipCtrl