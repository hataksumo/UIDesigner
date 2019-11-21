
--[[
-- 控制层
--]]

local UICardEquipmentMakeCtrl = BaseClass("UICardEquipmentMakeCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentMake)
end

--获取熔炼获得金币
local function GetDecomposeCostIdAndNum(self,_equipIds)
	local eqp=DataUtil.GetData("eqp");
	local coinId=0;
	local coinNum=0;
	for i, v in ipairs(_equipIds) do
		local serverData=EquipData:GetInstance():GetEquipDataById(v);
		if serverData then
			local xlsxData=eqp[serverData.equipTid];
			coinId=xlsxData.Resolve[1].Id;
			coinNum=coinNum+xlsxData.Resolve[1].Val;
		end
	end
	return coinId,coinNum;
end


--熔炼装备
local function SendSmeltEquipRequest(self,_equipId)
	local msdId = MsgIDDefine.PBEQUIP_SMELT_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	for i, v in ipairs(_equipId) do
		msdObj.id:append(v);
	end
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			if not msg_obj.Packages.reward._is_null then
				local coinId,coinNum= GetDecomposeCostIdAndNum(self,_equipId);
				--BackpackData:GetInstance():UpdateItemData(coinId, coinNum);
				EquipData:GetInstance():ClearEquipData(_equipId);
				DataUtil.ParseDropItem(msg_obj.Packages.reward);
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward);
				DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DECOMPOSE_REFRESH);
			end
			DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
		end
	end)
end

--获取装备打造的花费
local function GetForgeEquipCostIdAndNum(self,_index)
	local eqp_forge=DataUtil.GetData("eqp_forge");
	local lv=UserData:GetInstance().pLevel;
	local costId,costNum=0;
	for i, v in ipairs(eqp_forge) do
		if lv>=v.LvMin and lv<=v.LvMax then
			if v.Equips[_index] then
				costId=v.Equips[_index].Cost[1].Id;
				costNum=v.Equips[_index].Cost[1].Val;
			end
		break;
		end
	end
	return costId,costNum;
end

--打造装备
local function SendForgeEquipRequest(self,_index)
	local msdId = MsgIDDefine.PBEQUIP_AUTHENTICATE_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.index=_index;
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			if not msg_obj.Packages.reward._is_null and not msg_obj.Packages.reward.equips._is_null then
				local costId,costNum= GetForgeEquipCostIdAndNum(self,_index);
				BackpackData:GetInstance():UpdateItemData(costId, -costNum);
				EquipData:GetInstance():CacheEquipData(msg_obj.Packages.reward.equips);
				UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FORGE_DATA_REFRESH,msg_obj.Packages.reward.equips);
			end
			DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
		end
	end)
end
UICardEquipmentMakeCtrl.SendForgeEquipRequest=SendForgeEquipRequest;
UICardEquipmentMakeCtrl.SendSmeltEquipRequest=SendSmeltEquipRequest;
UICardEquipmentMakeCtrl.CloseSelf = CloseSelf

return UICardEquipmentMakeCtrl