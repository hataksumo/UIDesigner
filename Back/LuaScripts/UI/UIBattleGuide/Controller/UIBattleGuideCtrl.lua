
--[[
-- 控制层
--]]

local UIBattleGuideCtrl = BaseClass("UIBattleGuideCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleGuide)
end


UIBattleGuideCtrl.CloseSelf = CloseSelf

return UIBattleGuideCtrl