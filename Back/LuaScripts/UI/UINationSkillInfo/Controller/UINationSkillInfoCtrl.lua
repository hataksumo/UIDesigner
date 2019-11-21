--[[
-- 控制层
--]]

local UINationSkillInfoCtrl = BaseClass("UINationSkillInfoCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationSkillInfo)
end


UINationSkillInfoCtrl.CloseSelf = CloseSelf

return UINationSkillInfoCtrl