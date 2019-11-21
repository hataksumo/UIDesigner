
--[[
-- 控制层
--]]

local UIHDLevelGiftCtrl = BaseClass("UIHDLevelGiftCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIHDLevelGift)
end


UIHDLevelGiftCtrl.CloseSelf = CloseSelf

return UIHDLevelGiftCtrl