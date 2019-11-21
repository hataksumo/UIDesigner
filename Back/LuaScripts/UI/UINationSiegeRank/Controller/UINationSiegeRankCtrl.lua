
--[[
-- 控制层
--]]

local UINationSiegeRankCtrl = BaseClass("UINationSiegeRankCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationSiegeRank)
end


UINationSiegeRankCtrl.CloseSelf = CloseSelf

return UINationSiegeRankCtrl