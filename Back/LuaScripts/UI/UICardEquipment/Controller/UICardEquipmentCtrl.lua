
--[[
-- 控制层
--]]

local UICardEquipmentCtrl = BaseClass("UICardEquipmentCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipment)
end

--检测是否可以一键穿装备
local function CheckNeedWearEquip(self,_cardId)
    local EqpData=DataUtil.GetData("eqp");
    local cardHaveEquip= CardData:GetInstance():GetCardDataById(_cardId).equip;
    local equipIds=EquipData:GetInstance():GetOneKeyEquipList(_cardId);
    local equipHaveDic={};
    for i, v in ipairs(cardHaveEquip) do
        local equipData=EquipData:GetInstance():GetEquipDataById(v);
        if equipData then
            local xlsxData=EqpData[equipData.equipTid];
            equipHaveDic[xlsxData.Pos]=v;
        end
    end
    for i, v in ipairs(equipIds) do
        if equipHaveDic[v.pos] then
            if equipHaveDic[v.pos]~=v.id then
                return true;
            end
        else
            return true;
        end
    end
    return false;
end

--发送穿装备请求   1装备 2 卸载
local function SendAutomaticEquipRequest(self,_type,_cardId)
	local msdId = MsgIDDefine.PBEQUIP_AUTOMATIC_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.cardId = _cardId
	msdObj.type=_type;
	local equipIds=EquipData:GetInstance():GetOneKeyEquipList(_cardId);
	if _type== 1 then

		if equipIds~=nil and #equipIds>0 then
			for i, v in ipairs(equipIds) do
				local wearEquip=msdObj.wearEquip:add()
				wearEquip.id=v.id;
				wearEquip.index=v.pos;
				Logger.Log("要装备的装备id",wearEquip.id,"     ",wearEquip.index);
			end
		end
	end
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			local cardEquips={};
			local cardHaveEquip= CardData:GetInstance():GetCardDataById(_cardId).equip;
			local eqpData=DataUtil.GetData("eqp");
			local finalEquips={};
			if _type==1 then
				for i, v in ipairs(equipIds) do
					cardEquips[v.pos]=v.id;
				end
				if cardHaveEquip~= nil and #cardHaveEquip>0 then
					for i, v in ipairs(cardHaveEquip) do
						local equipData=EquipData:GetInstance():GetEquipDataById(v);
						if equipData~=nil then
							local xlsxData=eqpData[equipData.equipTid];
							local pos=xlsxData.Pos;
							if cardEquips[pos]==nil then
								cardEquips[pos]=v;
							end
						end
					end
				end
				for i, v in pairs(cardEquips) do
					table.insert(finalEquips,v);
				end
			else
				finalEquips= cardHaveEquip;
			end
			if finalEquips~=nil and #finalEquips>0 then
				local type=_type==1 and true or false;
				EquipData:GetInstance():UpDateOneKeyEquipDataWear(_cardId,finalEquips,type);
				EquipData:GetInstance():UpdateCardAllEqiupForce(_cardId,msg_obj.Packages.fighting);
				CardData:GetInstance():EquipAKeyFun(_cardId,type,finalEquips);
			end
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DATA_REFRESH);
			DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
		end
	end)
end

--强化装备
--1单件强化 2 单件一键强化 3 穿戴的装备一键强化
local function SendIntensifyEquipRequest(self,_type,_cardId,_equipId)
	local msdId = MsgIDDefine.PBEQUIP_INTENSIFY_EQUIP_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.type = _type;
	msdObj.equipId=_equipId;
	local cardId=_cardId~=nil and _cardId or 0;
	msdObj.cardId=cardId;
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			local equip=msg_obj.Packages.equip;
			if equip~=nil and  not equip.is_null then
				local costId=DataUtil.GetData("eqp_lvup")[1][1].Cost[1].Id;
				BackpackData:GetInstance():UpdateItemData(costId, -msg_obj.Packages.cost);
				EquipData:GetInstance():UpDateEquipStrength(msg_obj.Packages.equip);
				EquipData:GetInstance():UpdateCardAllEqiupForce(_cardId,msg_obj.Packages.fighting);
				DataManager:GetInstance():Broadcast(DataMessageNames.ON_EQUIP_DATA_REFRESH);
				CardData:GetInstance():UpdateEquipProp(cardId);
			end
			DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
		end
	end)
end

UICardEquipmentCtrl.SendIntensifyEquipRequest=SendIntensifyEquipRequest;
UICardEquipmentCtrl.SendAutomaticEquipRequest=SendAutomaticEquipRequest;
UICardEquipmentCtrl.CheckNeedWearEquip = CheckNeedWearEquip
UICardEquipmentCtrl.CloseSelf = CloseSelf

return UICardEquipmentCtrl