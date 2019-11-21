
--[[
-- 控制层
--]]

local UIDRBossInviteCtrl = BaseClass("UIDRBossInviteCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIDRBossInvite)
end


UIDRBossInviteCtrl.CloseSelf = CloseSelf

return UIDRBossInviteCtrl