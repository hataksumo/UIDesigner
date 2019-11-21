
--[[
-- 控制层
--]]

local UIExploreSetTeamListCtrl = BaseClass("UIExploreSetTeamListCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreSetTeamList)
end


--挂机派遣保存队伍
local function SaveOnHookTeamRequest(self,_memberList,_isHangUp,_firstId)
	local msdId = MsgIDDefine.PBCHAPTER_SAVE_ONHOOK_TEAM_REQUEST
	local msdObj = MsgIDMap[msdId]()
	for i, v in ipairs(_memberList) do
		msdObj.memberList:append(v)
	end
	--GuideGroup:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
			if _isHangUp then
				self:SetOnHookTeamRequest(_firstId);
			else
				CloseSelf();
			end
		end
	end)
end

--派遣队伍挂机
local function SetOnHookTeamRequest(self,_chapterId)
	local msdId = MsgIDDefine.PBCHAPTER_SET_ONHOOK_TEAM_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.chapterId=_chapterId;

	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
			CloseSelf();
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreMain);

			--ExploreData:GetInstance():RefreshMaxLvAndHangTime(msg_obj.Packages.maxLevelId,msg_obj.Packages.haveHangTime);
			--DataManager:GetInstance():Broadcast(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH);
		end
	end)
end


UIExploreSetTeamListCtrl.SetOnHookTeamRequest=SetOnHookTeamRequest;
UIExploreSetTeamListCtrl.SaveOnHookTeamRequest=SaveOnHookTeamRequest;
UIExploreSetTeamListCtrl.CloseSelf = CloseSelf

return UIExploreSetTeamListCtrl