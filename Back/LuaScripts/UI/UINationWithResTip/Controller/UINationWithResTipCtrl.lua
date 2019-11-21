
local UINationWithResTipCtrl = BaseClass("UINationWithResTipCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationWithResTip)
end

local function ConfirmButtonClick(self)
    if self.model.type==NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.DOWN_FORMATION then
        local callBack=function()
            CloseSelf(self)
        end
        NationNetManager:GetInstance():ExChangeTeamInfo(self.model.confirmCallBackParams[1],self.model.confirmCallBackParams[2],self.model.confirmCallBackParams[3],self.model.confirmCallBackParams[4],callBack)--下阵
    elseif self.model.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.ARMY_GROUP_SWITCH then
        if self.model.myParams.myCallback ~= nil then
            self.model.myParams.myCallback(self.model.myParams.teamId,self.model.myParams.corpsId,self.model.myParams.armyGroupId)
        end
        self:CloseSelf(self)
    elseif self.model.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.RECRUIT_RETURN then
        if self.model.myParams.myCallback ~= nil then
            self.model.myParams.myCallback(self.model.myParams.teamId)
        end
        self:CloseSelf(self)
    end
end

UINationWithResTipCtrl.CloseSelf = CloseSelf
UINationWithResTipCtrl.ConfirmButtonClick=ConfirmButtonClick

return UINationWithResTipCtrl