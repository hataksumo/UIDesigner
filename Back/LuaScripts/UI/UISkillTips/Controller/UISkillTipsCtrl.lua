
--[[
-- 控制层
--]]

local UISkillTipsCtrl = BaseClass("UISkillTipsCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UISkillTips)
end


UISkillTipsCtrl.CloseSelf = CloseSelf

return UISkillTipsCtrl