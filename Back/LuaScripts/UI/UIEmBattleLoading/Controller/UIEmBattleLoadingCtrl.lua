
--[[
-- 控制层
--]]

local UIEmBattleLoadingCtrl = BaseClass("UIEmBattleLoadingCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattleLoading)
end


UIEmBattleLoadingCtrl.CloseSelf = CloseSelf

return UIEmBattleLoadingCtrl