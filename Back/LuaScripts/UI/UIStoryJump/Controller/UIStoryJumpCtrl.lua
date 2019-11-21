
--[[
-- 控制层
--]]

local UIStoryJumpCtrl = BaseClass("UIStoryJumpCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIStoryJump)
end


UIStoryJumpCtrl.CloseSelf = CloseSelf

return UIStoryJumpCtrl