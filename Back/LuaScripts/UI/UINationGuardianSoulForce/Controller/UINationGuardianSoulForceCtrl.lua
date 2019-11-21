
--[[
-- 控制层
--]]

local UINationGuardianSoulForceCtrl = BaseClass("UINationGuardianSoulForceCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationGuardianSoulForce)
end


UINationGuardianSoulForceCtrl.CloseSelf = CloseSelf

return UINationGuardianSoulForceCtrl