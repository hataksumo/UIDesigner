
--[[
-- 控制层
--]]

local UIExploreAddSpeedCtrl = BaseClass("UIExploreAddSpeedCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreAddSpeed)
end

--加速获取奖励
local function UseOnHookItemRequest(self,_type,_costNum)
	local msdId = MsgIDDefine.PBCHAPTER_USE_ONHOOK_ITEM_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.itemType=_type;
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			self:CloseSelf();
			--BackpackData:GetInstance():UpdateItemData(_costId, -1)
			if _type==1 then--劵
				local costId=DataUtil.GetData("global")[153].valueN;
				BackpackData:GetInstance():UpdateItemData(costId, -1)
			else--灵金
				local diamondId=1401010
				BackpackData:GetInstance():UpdateItemData(diamondId,-_costNum)
			end
			DataUtil.ParseDropItem(msg_obj.Packages.reward)
			ExploreData:GetInstance():RefreshSingleTeamLvId(msg_obj.Packages.onHookTeamInfo);
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward)
		end
	end)
end

UIExploreAddSpeedCtrl.UseOnHookItemRequest=UseOnHookItemRequest;
UIExploreAddSpeedCtrl.CloseSelf = CloseSelf

return UIExploreAddSpeedCtrl