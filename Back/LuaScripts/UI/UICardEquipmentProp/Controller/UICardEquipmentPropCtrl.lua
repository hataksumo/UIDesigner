
--[[
-- 控制层
--]]

local UICardEquipmentPropCtrl = BaseClass("UICardEquipmentPropCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentProp)
end

--发送穿装备请求
local function SendwearEquipRequest(self,_cardId,_equipId,_equipIndex)
	local msdId = MsgIDDefine.PBEQUIP_WEAR_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.cardId = _cardId
	msdObj.id=_equipId;
	msdObj.index=_equipIndex;
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			EquipData:GetInstance():UpdateSingleEquipDataWear(_equipId,_cardId);
			EquipData:GetInstance():UpdateCardAllEqiupForce(_cardId,msg_obj.Packages.allFighting);
			CardData:GetInstance():UpdateEquip(_cardId,true,_equipId,EquipData:GetInstance():GetReplaceEquipId(_equipId,_cardId));
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DATA_REFRESH);
			CloseSelf(self);
		end
	end)
end

--卸下装备
local function SendDisboardEquipRequest(self,_cardId,_equipId,_equipIndex)
	local msdId = MsgIDDefine.PBEQUIP_DISBOARD_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.cardId = _cardId
	msdObj.id=_equipId;
	msdObj.index=_equipIndex;
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			EquipData:GetInstance():UpdateSingleEquipDataWear(_equipId,0);
			EquipData:GetInstance():UpdateCardAllEqiupForce(_cardId,msg_obj.Packages.allFighting);
			CardData:GetInstance():UpdateEquip(_cardId,false,_equipId);
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DATA_REFRESH);
			CloseSelf(self);
		end
	end)
end

--强化装备
--1单件强化 2 单件一键强化 3 穿戴的装备一键强化
local function SendIntensifyEquipRequest(self,_type,_cardId,_equipId)
	local msdId = MsgIDDefine.PBEQUIP_INTENSIFY_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.type = _type
	msdObj.equipId=_equipId;
	local cardId=_cardId~=nil and _cardId or 0;
	msdObj.cardId=cardId;
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			if not msg_obj.Packages.equip.is_null then
				EquipData:GetInstance():UpDateEquipStrength(msg_obj.Packages.equip);
				local costId=DataUtil.GetData("eqp_lvup")[1][1].Cost[1].Id;
				BackpackData:GetInstance():UpdateItemData(costId, -msg_obj.Packages.cost);
				EquipData:GetInstance():UpdateCardAllEqiupForce(_cardId,msg_obj.Packages.fighting);
				DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DATA_REFRESH);
				DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_PROP_DATA_REFRESH);
				CardData:GetInstance():UpdateEquipProp(cardId);
			end
		end
	end)
end

UICardEquipmentPropCtrl.SendIntensifyEquipRequest=SendIntensifyEquipRequest;
UICardEquipmentPropCtrl.SendwearEquipRequest=SendwearEquipRequest;
UICardEquipmentPropCtrl.SendDisboardEquipRequest=SendDisboardEquipRequest;
UICardEquipmentPropCtrl.CloseSelf = CloseSelf

return UICardEquipmentPropCtrl