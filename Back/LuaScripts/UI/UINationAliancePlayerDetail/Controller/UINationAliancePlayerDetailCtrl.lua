
--[[
-- 控制层
--]]

local UINationAliancePlayerDetailCtrl = BaseClass("UINationAliancePlayerDetailCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAliancePlayerDetail)
end


UINationAliancePlayerDetailCtrl.CloseSelf = CloseSelf

return UINationAliancePlayerDetailCtrl