
--[[
-- 控制层
--]]

local UIArenaScoreRewardCtrl = BaseClass("UIArenaScoreRewardCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaScoreReward)
end


UIArenaScoreRewardCtrl.CloseSelf = CloseSelf

return UIArenaScoreRewardCtrl