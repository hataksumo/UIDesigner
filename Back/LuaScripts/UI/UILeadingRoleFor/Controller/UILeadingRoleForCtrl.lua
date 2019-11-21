
--[[
-- 控制层
--]]

local UILeadingRoleForCtrl = BaseClass("UILeadingRoleForCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILeadingRoleFor)
end

local function LdRewardRequest(self)
	local msdId = MsgIDDefine.PBUSER_LD_REWARD_REQUEST
	NetManager:GetInstance():SendMessage(msdId,nil,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("PBUSER_LD_OPEN_REQUEST出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			UserData:GetInstance().ldReward=true;
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_LD_TAKE_REWARD_REFRESH);
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_LD_RED_POINT_REFRESH);
		end
	end)
end

UILeadingRoleForCtrl.LdRewardRequest=LdRewardRequest;
UILeadingRoleForCtrl.CloseSelf = CloseSelf

return UILeadingRoleForCtrl