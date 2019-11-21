
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICardEquipmentPropModel = BaseClass("UICardEquipmentPropModel", UIBaseModel)
local base = UIBaseModel
local EqpData=DataUtil.GetData("eqp");
local PropertyData=DataUtil.GetData("property");
local EqpLvData=DataUtil.GetData("eqp_lvup");
local EqpSuitData=DataUtil.GetData("eqp_suit");
local posNameList={[1]="武器",[2]="头盔",[3]="肩甲",[4]="衣服",[5]="鞋子",[6]="护手",[7]="项链",[8]="戒指"};
local TeamLevelData=DataUtil.GetData("team_level");

local SingleEquipData=
{
	equipId=0,--装备id
	itemData=0,--装备物品表数据
	staticData=0,--装备表数据
	strengthLv=0,--强化等级
	force=0,--战斗力
	isWear=false,--是否穿戴
	baseProp={},--基础属性
    randomProp={},--随机属性
	suitName="",--套装名字
	suitList={},--套装列表
	suitPropList={},--套装属性
	strengthList={},--强化属性
	oneTimeCost={},--一次强化消耗
	wearCardId=0,--装备的英雄id
	propChangeList={},--装备替换属性变化
	changeForce=0,--战力变更
}
local SingleEquipDataModel = DataClass("SingleEquipDataModel",SingleEquipData);
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--计算属性变化
local function CalculatePropChange(_propList,_id,_fac,_value)
	if _propList[_id]~=nil then
		_propList[_id].value=_propList[_id].value+_value;
	else
		local xlsxPropData=PropertyData[_id];
		if xlsxPropData~=nil then
			_propList[_id]={value=_value,fac=_fac,name=xlsxPropData.CnName};
		end
	end
end

-- 打开
local function OnEnable(self,_cardId,_equipId,_isHideBtn)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.isHideBtn=_isHideBtn;
	self.cardId=_cardId;
	self.equipId=_equipId
	self:OnRefresh(true);
end

--获取英雄穿戴的装备字典
local function GetHeroHaveEquipDic(self)
	local haveEquipDic={};
	if self.cardId~=0 then
		local heroHaveEquip= CardData:GetInstance():GetCardDataById(self.cardId).equip;
		for i, v in ipairs(heroHaveEquip) do
			local serverData=EquipData:GetInstance().equipList[v];
			if serverData~=nil then
				haveEquipDic[serverData.equipTid]=i;
			end

		end
	end
	return haveEquipDic;
end

--获取套装列表
local function GetSuitList(self,_equipIds)
	local equipDic={};
	for i, v in ipairs(_equipIds) do
		local serverData=EquipData:GetInstance().equipList[v];
		if serverData~=nil then
			local eqpXlsxData=EqpData[serverData.equipTid];
			if eqpXlsxData.Suit~=-1 then
				if equipDic[eqpXlsxData.Suit]~=nil then
					equipDic[eqpXlsxData.Suit].num=equipDic[eqpXlsxData.Suit].num+1;
				else
					equipDic[eqpXlsxData.Suit]={num=1};
				end
			end
		end
	end
	return equipDic;
end

-- 刷新全部数据
local function OnRefresh(self,_isSend)
	self.cardData=CardData:GetInstance():GetCardDataById(self.cardId);
	local playerLv=UserData:GetInstance().pLevel;
	self.maxStrengthLv=TeamLevelData[playerLv].MaxEqpStrengthLv;
	local serverData=EquipData:GetInstance().equipList[self.equipId];
	if serverData~=nil then
		local equipData=SingleEquipDataModel.New();
		equipData.equipId=self.equipId;
		equipData.itemData=DataUtil.GetDataByIdAndType(serverData.equipTid);
		equipData.staticData=EqpData[serverData.equipTid];
		equipData.strengthLv=serverData.equipStrengthLv;
		equipData.force=serverData.equipForce;
		equipData.isWear=serverData.cardId~=0;
		equipData.wearCardId=serverData.cardId
		equipData.baseProp={};
		local propChangeDic={};
		for i, v in ipairs(equipData.staticData.Prop) do
			local tempPropData=PropertyData[v.Id];
			local fac=EqpLvData[equipData.staticData.StrengthenId][equipData.strengthLv].Fac;
			local tempAddNum=math.floor(v.Base+v.Up*fac);
			table.insert(equipData.baseProp,{propData=tempPropData,addValue=tempAddNum});
			CalculatePropChange(propChangeDic,v.Id,tempPropData.Show_Fac,tempAddNum);
		end
		self.equipData=equipData;
		equipData.randomProp={};
		for i, v in ipairs(serverData.equipRandomProp) do
			local tempPropData=PropertyData[v.id];
			local tempVal=v.value;
			tempVal=tempPropData.Show_Fac==100 and math.floor(tempVal*100).."%" or math.floor(tempVal);
			table.insert(equipData.randomProp,{propData=tempPropData,value=tempVal});
			CalculatePropChange(propChangeDic,v.id,tempPropData.Show_Fac,v.value);
		end


		--左侧信息
		--套装属性
		if equipData.staticData.Suit~=1 and EqpSuitData[equipData.staticData.Suit]~=nil then
			equipData.suitList={};
			local heroEquipDic=GetHeroHaveEquipDic(self);
			local suitData=EqpSuitData[equipData.staticData.Suit];
			equipData.suitName=suitData.Name;
			for i, v in ipairs(suitData.Equips) do
				local pos=EqpData[v].Pos;
				local item=DataUtil.GetDataByIdAndType(v);
				local name="";
				if item~=nil then
					name=string.format("%s(%s)",item.name,posNameList[pos]) ;
				end
				if heroEquipDic[v]~=nil then
					name=string.format("<color=#15181e>%s</color>",name);
				else
					name=string.format("<color=#828282>%s</color>",name);
				end
				table.insert(equipData.suitList,name);
			end
			equipData.suitPropList={};
			local equipDic={};
			if self.cardId~=0 then
				equipDic=GetSuitList(self,CardData:GetInstance():GetCardDataById(self.cardId).equip);
			end
			for i, v in ipairs(suitData.Props) do
				local info="";
				local isActive=false;
				if equipDic[equipData.staticData.Suit]~=nil then
					isActive=v.Num<=equipDic[equipData.staticData.Suit].num;
				end
				local suitTitleName="";
				for a, b in ipairs(v.Prop) do
					local tempPropData=PropertyData[b.Id];
					if tempPropData~=nil then
						local fac=tempPropData.Show_Fac;
						local addValue=fac==100 and (math.floor(b.Val*100)).."%" or b.Val;
						info=info..tempPropData.CnName.."+"..addValue..";";

						if isActive then
							info=string.format("<color=#3f793f>%s</color>",info);
							suitTitleName=string.format("<color=#3f793f>(%s)套装</color>",v.Num);
						else
							info=string.format("<color=#828282>%s</color>",info);
							suitTitleName=string.format("<color=#828282>(%s)套装</color>",v.Num);
						end
					end
				end

				table.insert(equipData.suitPropList,{suitNum=v.Num,info=info,suitNameShow=suitTitleName});
			end
		end
		--强化属性
		equipData.strengthList={};
		local maxLv=#EqpLvData[equipData.staticData.StrengthenId];
		local nextStrengthLv=equipData.strengthLv+1>maxLv and maxLv or equipData.strengthLv+1;
		table.insert(equipData.strengthList,{name="强化等级",curValue=math.floor(equipData.strengthLv),nextVal=math.floor(nextStrengthLv)});
		local fac=EqpLvData[equipData.staticData.StrengthenId][equipData.strengthLv].Fac;
		local nextFac=EqpLvData[equipData.staticData.StrengthenId][nextStrengthLv].Fac;
		for i, v in ipairs(equipData.staticData.Prop) do
			local tempPropData=PropertyData[v.Id];
			local tempAddNum=math.floor(v.Base+v.Up*fac);
			tempAddNum=tempPropData.Show_Fac==100 and math.floor(tempAddNum*100).."%" or math.floor(tempAddNum);
			local tempNextAddNum=math.floor(v.Base+v.Up*nextFac);
			tempNextAddNum=tempPropData.Show_Fac==100 and math.floor(tempNextAddNum*100).."%" or math.floor(tempNextAddNum);
			table.insert(equipData.strengthList,{name=tempPropData.CnName,curValue=tempAddNum,nextVal=tempNextAddNum});
		end
		local strengthLv=equipData.strengthLv+1;
		if strengthLv< #EqpLvData[equipData.staticData.StrengthenId]then
			local costData=EqpLvData[equipData.staticData.StrengthenId][equipData.strengthLv+1].Cost[1];
			local oneTimeCostData= DataUtil.GetDataByIdAndType(costData.Id,nil,costData.Val);
			equipData.oneTimeCost=oneTimeCostData;
		end
		self.isShowPropChange=false;
		--计算英雄身上穿的装备
		if self.cardId~=serverData.cardId then
			local cardHaveEquip=CardData:GetInstance():GetCardDataById(self.cardId).equip;
			local cardHeroHaveEquipDic={};
			if cardHaveEquip~=nil then
				for i, v in ipairs(cardHaveEquip) do
					if EquipData:GetInstance().equipList[v]~=nil then
						local equipData=EquipData:GetInstance().equipList[v];
						local xlsxData=EqpData[equipData.equipTid];
						cardHeroHaveEquipDic[xlsxData.Pos]=v;
					end

				end
			end
			--计算装备替换的属性变化值
			self.isShowPropChange=true;
			local pos=equipData.staticData.Pos;
			equipData.changeForce=equipData.force;
			if  cardHeroHaveEquipDic[pos]~=nil then

				local wearId=cardHeroHaveEquipDic[pos];
				local wearEquipServerData=EquipData:GetInstance().equipList[wearId];
				equipData.changeForce=equipData.force-wearEquipServerData.equipForce;
				local wearEquipStaticData=EqpData[wearEquipServerData.equipTid];

				for i, v in ipairs(wearEquipStaticData.Prop) do
					local tempPropData=PropertyData[v.Id];
					local fac=EqpLvData[wearEquipStaticData.StrengthenId][wearEquipServerData.equipStrengthLv].Fac;
					local tempAddNum=math.floor(v.Base+v.Up*fac);
					CalculatePropChange(propChangeDic,v.Id,tempPropData.Show_Fac,-tempAddNum);
				end
				for i, v in ipairs(wearEquipServerData.equipRandomProp) do
					local tempPropData=PropertyData[v.id];
					CalculatePropChange(propChangeDic,v.id,tempPropData.Show_Fac,-v.value);
				end
			end
			equipData.propChangeList={};
			for i, v in pairs(propChangeDic) do
				v.value=v.fac==100 and math.floor(v.value*100) or math.floor(v.value);
				local showVal="";
				if v.value>0 then
					showVal=string.format("<color=#3F793F>+%s</color>",v.fac==100 and v.value.."%" or v.value)
				elseif v.value<0 then
					showVal=string.format("<color=#E04C4C>%s</color>",v.fac==100 and v.value.."%" or v.value);
				else
					showVal=string.format("<color=#313131>%s</color>",v.fac==100 and v.value.."%" or v.value);
				end
				table.insert(equipData.propChangeList,{name=v.name,val=showVal});
			end
		end
		if not _isSend then
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_PROP_REFRESH);
		end
	end

end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_EQUIP_PROP_DATA_REFRESH,OnRefresh);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_EQUIP_PROP_DATA_REFRESH,OnRefresh);
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UICardEquipmentPropModel.OnCreate = OnCreate
UICardEquipmentPropModel.OnEnable = OnEnable
UICardEquipmentPropModel.OnRefresh = OnRefresh
UICardEquipmentPropModel.OnAddListener = OnAddListener
UICardEquipmentPropModel.OnRemoveListener = OnRemoveListener
UICardEquipmentPropModel.OnDisable = OnDisable
UICardEquipmentPropModel.OnDestroy = OnDestroy

return UICardEquipmentPropModel