
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICardEquipmentModel = BaseClass("UICardEquipmentModel", UIBaseModel)
local base = UIBaseModel
local EqpData=DataUtil.GetData("eqp");

local SingleEquipData={
	equipId=0,
	itemData=0,
	staticData=0,
	strengthLv=0,
	force=0,
	isWear=false;
}
local SingleEquipDataModel = DataClass("SingleEquipDataModel",SingleEquipData);
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

--获取显示数据通过装备类型和品质过滤
local function GetShowDataByFilterTypeAndQualityType(self,_type,_qualityType,_isSelectAll)
	self.equipType=_type;
	self.qualitySelectList=_qualityType;
	local isSelectAll=true;
	if not _isSelectAll then
		for i, v in ipairs(_qualityType) do
			if not v then
				isSelectAll=false;
				break;
			end
		end
	end

	if _type==0 and isSelectAll then
		self.showData=self.equipList;
	else
		self.showData=_type==0 and self.equipList or self.equipTypeDic[_type];
		if self.showData==nil then
			self.showData={};
		end
		if not isSelectAll and self.showData~=nil then
			local filterQualityList={};
			for i, v in ipairs(self.showData) do
				if _qualityType[v.staticData.Qua] then
					table.insert(filterQualityList,v);
				end
			end
			self.showData=filterQualityList;
		end
	end
	if self.showData~=nil and #self.showData>0 then
		table.sort(self.showData,function(a,b)
			if a.force==b.force then
				return a.equipId>b.equipId;
			else
				return a.force>b.force;
			end
		end)
	end

end

--检测是否有激活的套装属性
local function CheckHaveActiveSuitProp(self,_equipIds)
	local equipDic={};
	for i, v in ipairs(_equipIds) do
		local serverData=EquipData:GetInstance().equipList[v];
		if serverData~=nil then
			local eqpXlsxData=EqpData[serverData.equipTid];
			if eqpXlsxData.Suit~=-1 then
				if equipDic[eqpXlsxData.Suit]~=nil then
					equipDic[eqpXlsxData.Suit].num=equipDic[eqpXlsxData.Suit].num+1;
					return true;
				else
					equipDic[eqpXlsxData.Suit]={num=1};
				end
			end
		end
	end
	return false;
end

-- 打开
local function OnEnable(self,_cardId)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	EquipData:GetInstance():SendCardGetAllEquipForce(_cardId);
	self.cardId=_cardId;
	self.equipType=0;
	self.qualitySelectList={[1]=true,[2]=true,[3]=true,[4]=true};
	self:OnRefresh(true);
end

-- 刷新全部数据
local function OnRefresh(self,_isSend)
	self.equipList={};
	self.equipRealIndexDic={};
	self.equipTypeDic={};
	self.showData={};


	local curCardData=CardData:GetInstance():GetCardDataById(self.cardId);
	self.isActiveSuit=CheckHaveActiveSuitProp(self,curCardData.equip);
	self.cardType=curCardData.type;
	self.cardName=curCardData.name;
	local serverEquipData=EquipData:GetInstance().equipList;
	for i, v in pairs(serverEquipData) do
		if v~=nil then
			local xlsxData=EqpData[v.equipTid];

			if xlsxData~=nil and xlsxData.Type==curCardData.type and v.cardId==0 then
				local singleData=SingleEquipDataModel.New();
				singleData.itemData=DataUtil.GetDataByIdAndType(v.equipTid);
				singleData.equipId=i;
				singleData.staticData=xlsxData;
				singleData.strengthLv=v.equipStrengthLv;
				singleData.force=v.equipForce;
				singleData.isWear=v.cardId~=0;
				table.insert(self.equipList,singleData);
				self.equipRealIndexDic[i]=#self.equipList;
				if self.equipTypeDic[xlsxData.Pos]~=nil then
					table.insert(self.equipTypeDic[xlsxData.Pos],singleData);
				else
					self.equipTypeDic[xlsxData.Pos]={};
					table.insert(self.equipTypeDic[xlsxData.Pos],singleData);
				end
			end
		end
	end
	self.heroEquip={};
	local cardHaveEquip=CardData:GetInstance():GetCardDataById(self.cardId).equip;
	local cardEquipDic={};
	if cardHaveEquip~=nil then
		for i, v in ipairs(cardHaveEquip) do
			if serverEquipData[v]~=nil then
				local equipData=serverEquipData[v];
				local xlsxData=EqpData[equipData.equipTid];
				cardEquipDic[xlsxData.Pos]=v;
			end
		end
	end
	for i = 1, 8 do
		local singleData=SingleEquipDataModel.New();
		singleData.isWear=false;
		if cardHaveEquip~=nil and cardEquipDic[i]~=nil then
			local id=cardEquipDic[i];
			singleData.equipId=id;
			local serverEquipData=serverEquipData[id];
			local xlsxData=EqpData[serverEquipData.equipTid];
			singleData.itemData=DataUtil.GetDataByIdAndType(serverEquipData.equipTid);
			singleData.staticData=xlsxData;
			singleData.strengthLv=serverEquipData.equipStrengthLv;
			singleData.force=serverEquipData.equipForce;
			singleData.isWear=true;
		end
		table.insert(self.heroEquip,singleData);
	end
	GetShowDataByFilterTypeAndQualityType(self,self.equipType,self.qualitySelectList);

	if not _isSend then
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_REFRESH);
	end
end

local function FilterList(self,_type,_qualityType)
	GetShowDataByFilterTypeAndQualityType(self,_type,_qualityType);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_REFRESH);
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddUIListener(UIMessageNames.UI_EQUIP_FILTER,FilterList);
	self:AddDataListener(DataMessageNames.ON_EQUIP_DATA_REFRESH,OnRefresh);

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_FILTER,FilterList);
	self:RemoveDataListener(DataMessageNames.ON_EQUIP_DATA_REFRESH,OnRefresh);
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

UICardEquipmentModel.OnCreate = OnCreate
UICardEquipmentModel.OnEnable = OnEnable
UICardEquipmentModel.OnRefresh = OnRefresh
UICardEquipmentModel.OnAddListener = OnAddListener
UICardEquipmentModel.OnRemoveListener = OnRemoveListener
UICardEquipmentModel.OnDisable = OnDisable
UICardEquipmentModel.OnDestroy = OnDestroy
UICardEquipmentModel.GetShowDataByFilterTypeAndQualityType=GetShowDataByFilterTypeAndQualityType;

return UICardEquipmentModel