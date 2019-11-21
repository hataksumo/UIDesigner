
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICardEquipmentSummaryModel = BaseClass("UICardEquipmentSummaryModel", UIBaseModel)
local base = UIBaseModel
local EqpData=DataUtil.GetData("eqp");
local PropertyData=DataUtil.GetData("property");
local EqpLvData=DataUtil.GetData("eqp_lvup");
local EqpSuitData=DataUtil.GetData("eqp_suit");
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
			_propList[_id]={id=_id,value=_value,fac=_fac,name=xlsxPropData.CnName};
		end
	end
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
-- 打开
local function OnEnable(self,_cardId)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	local cardHaveEquip=CardData:GetInstance():GetCardDataById(_cardId).equip;
	local propDic={};
	local serverEquipList=EquipData:GetInstance().equipList;
	self.totalFoece=EquipData:GetInstance():GetCardEquipForce(_cardId);
	for i, v in ipairs(cardHaveEquip) do

		local serverData=serverEquipList[v];
		if serverData~=nil then
			local eqpXlsxData=EqpData[serverData.equipTid];
			for a, b in ipairs(eqpXlsxData.Prop) do
				local tempPropData=PropertyData[b.Id];
				local fac=EqpLvData[eqpXlsxData.StrengthenId][serverData.equipStrengthLv].Fac;
				local tempAddNum=math.floor(b.Base+b.Up*fac);
				CalculatePropChange(propDic,b.Id,tempPropData.Show_Fac,tempAddNum);
			end
			for a, b in ipairs(serverData.equipRandomProp) do
				local tempPropData=PropertyData[b.id];
				CalculatePropChange(propDic,b.id,tempPropData.Show_Fac,b.value);
			end
		end

	end
	local equipDic=GetSuitList(self,cardHaveEquip)
	self.suitList={};
	for i, v in pairs(equipDic) do
		local suitData=EqpSuitData[i];
		local isInsert=true;
		for a, b in ipairs(suitData.Props) do
			--判断属性激活
			if b.Num<=v.num then
				local tempPropData=PropertyData[b.Prop[1].Id];
				CalculatePropChange(propDic,b.Prop[1].Id,tempPropData.Show_Fac,b.Prop[1].Val);
				if isInsert then
					table.insert(self.suitList,{name=suitData.Name,maxNum=#suitData.Equips,haveNum=v.num});
				end
			end
		end

	end
	self.propList={};
	for i, v in pairs(propDic) do
		table.insert(self.propList,v);
	end
	table.sort(self.propList,function(a,b) return a.id<b.id  end);
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听

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

UICardEquipmentSummaryModel.OnCreate = OnCreate
UICardEquipmentSummaryModel.OnEnable = OnEnable
UICardEquipmentSummaryModel.OnRefresh = OnRefresh
UICardEquipmentSummaryModel.OnAddListener = OnAddListener
UICardEquipmentSummaryModel.OnRemoveListener = OnRemoveListener
UICardEquipmentSummaryModel.OnDisable = OnDisable
UICardEquipmentSummaryModel.OnDestroy = OnDestroy

return UICardEquipmentSummaryModel