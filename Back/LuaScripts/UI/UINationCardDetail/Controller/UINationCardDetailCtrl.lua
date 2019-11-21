
--[[
-- 控制层
--]]

local UINationCardDetailCtrl = BaseClass("UINationCardDetailCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationCardDetail)
end


UINationCardDetailCtrl.CloseSelf = CloseSelf

return UINationCardDetailCtrl