
--[[
-- 控制层
--]]

local UICardSkillTipCtrl = BaseClass("UICardSkillTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardSkillTip)
end


UICardSkillTipCtrl.CloseSelf = CloseSelf

return UICardSkillTipCtrl