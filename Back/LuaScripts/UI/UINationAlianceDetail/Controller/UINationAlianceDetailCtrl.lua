
--[[
-- 控制层
--]]

local UINationAlianceDetailCtrl = BaseClass("UINationAlianceDetailCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAlianceDetail)
end

local function OnMengZhuBtnClick(self)
	 local unionId = self.model.alianceData.id
	local leaderUid = self.model.alianceData.leaderUid
	NationNetManager:GetInstance():SendGetNationOneMemberRequest(unionId,leaderUid,self.model.alianceData.name,Bind(self,self.__SendGetNationOneMemberCallback))
end


--params.unionId,params.memberId, msg_obj.Packages.member
local function __SendGetNationOneMemberCallback(self,opCode,unionId,unionName,member)
	if opCode ~= 0 then
	else
		Logger.LogVars("__ __SendGetNationOneMemberCallback unionId : ",unionId," unionName : ",unionName
		," member : ",member
		)
		--self:CloseSelf()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAliancePlayerDetail,unionId,unionName,member)
	end
end


local function EnterNationUnionLogic(self)
	self:CloseSelf()
end

UINationAlianceDetailCtrl.EnterNationUnionLogic = EnterNationUnionLogic
UINationAlianceDetailCtrl.__SendGetNationOneMemberCallback = __SendGetNationOneMemberCallback
UINationAlianceDetailCtrl.OnMengZhuBtnClick = OnMengZhuBtnClick
UINationAlianceDetailCtrl.CloseSelf = CloseSelf

return UINationAlianceDetailCtrl