
--[[
-- 控制层
--]]

local UIExploreMainCtrl = BaseClass("UIExploreMainCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreMain)
end

--加速获取奖励
local function UseOnHookItemRequest(self,_type)
	local msdId = MsgIDDefine.PBCHAPTER_USE_ONHOOK_ITEM_REQUEST
	local msdObj = MsgIDMap[msdId]()
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			BackpackData:GetInstance():UpdateItemData(_costId, -1)
			DataUtil.ParseDropItem(msg_obj.Packages.reward)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward)
		end
	end)
end

--领取挂机奖励
local function GetOnHookRewardRequest(self)
	local msdId = MsgIDDefine.PBCHAPTER_GET_ONHOOK_REWARD_REQUEST
	local msdObj = MsgIDMap[msdId]()
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ExploreData:GetInstance():RefreshHangUpStarTime(msg_obj.Packages.startTime);
			DataUtil.ParseDropItem(msg_obj.Packages.reward)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward)
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EXPLORE_TAKE_REWARD_REFRESH);

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
			local lastMaxLvId=ExploreData:GetInstance().teamData.haveHangMaxId;
            ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH);
			if lastMaxLvId<_chapterId then
				UIManager:GetInstance():Broadcast(UIMessageNames.UI_EXPLORE_REWARD_UP,lastMaxLvId,_chapterId)
			end
		end
	end)
end

--挂机开启下一关
local function OpenOnHookNextChapterRequest(self,_time)
	local msdId = MsgIDDefine.PBCHAPTER_OPEN_ONHOOK_NEXT_CHAPTER_REQUEST
	local msdObj = MsgIDMap[msdId]()
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			--UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			ExploreData:GetInstance():RefreshHangUpTime(_time);
		else
			ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
		end
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_EXPLORE_MAX_LV_REFRESH);
	end)
end

UIExploreMainCtrl.OpenOnHookNextChapterRequest=OpenOnHookNextChapterRequest;
UIExploreMainCtrl.CloseSelf = CloseSelf
UIExploreMainCtrl.GetOnHookRewardRequest=GetOnHookRewardRequest;
UIExploreMainCtrl.UseOnHookItemRequest=UseOnHookItemRequest;
UIExploreMainCtrl.SetOnHookTeamRequest=SetOnHookTeamRequest;

return UIExploreMainCtrl