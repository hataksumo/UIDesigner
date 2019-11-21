
--[[
-- 控制层
--]]

local UINationTeamListInfoCtrl = BaseClass("UINationTeamListInfoCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationTeamListInfo)
end


UINationTeamListInfoCtrl.CloseSelf = CloseSelf

return UINationTeamListInfoCtrl