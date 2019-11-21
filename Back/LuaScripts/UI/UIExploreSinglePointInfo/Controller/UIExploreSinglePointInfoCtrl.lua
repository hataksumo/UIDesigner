
--[[
-- 控制层
--]]

local UIExploreSinglePointInfoCtrl = BaseClass("UIExploreSinglePointInfoCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreSinglePointInfo)
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
			local lastMaxLvId=ExploreData:GetInstance().teamData.haveHangMaxId;
			ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH);
			if lastMaxLvId<_chapterId then
				UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_REWARD_UP,lastMaxLvId,_chapterId)
			end
		end
	end)
	CloseSelf(self);
end
UIExploreSinglePointInfoCtrl.SetOnHookTeamRequest=SetOnHookTeamRequest;
UIExploreSinglePointInfoCtrl.CloseSelf = CloseSelf

return UIExploreSinglePointInfoCtrl