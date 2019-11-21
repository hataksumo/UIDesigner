--[[
-- 控制层
--]]

local UINationAlianceConditionSetCtrl = BaseClass("UINationAlianceConditionSetCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAlianceConditionSet)
end

local function OnSubmit(self,viewApply)
    local curApply = self.model.apply
    if viewApply ~= curApply then
        NationNetManager:GetInstance():SendNationSetApplyRequest(viewApply, Bind(self, CloseSelf))
    else
        self:CloseSelf()
    end
end

UINationAlianceConditionSetCtrl.CloseSelf = CloseSelf
UINationAlianceConditionSetCtrl.OnSubmit = OnSubmit
return UINationAlianceConditionSetCtrl