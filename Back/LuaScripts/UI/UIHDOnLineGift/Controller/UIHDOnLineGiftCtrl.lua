
--[[
-- 控制层
--]]

local UIHDOnLineGiftCtrl = BaseClass("UIHDOnLineGiftCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIHDOnLineGift)
end



UIHDOnLineGiftCtrl.CloseSelf = CloseSelf
UIHDOnLineGiftCtrl.UpdateAddTimeToZero=UpdateAddTimeToZero
return UIHDOnLineGiftCtrl