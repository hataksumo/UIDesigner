
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICardEquipmentMakeModel = BaseClass("UICardEquipmentMakeModel", UIBaseModel)
local base = UIBaseModel
local EqpData=DataUtil.GetData("eqp");
local EqpForgeData=DataUtil.GetData("eqp_forge");

local SingleEquipData={
	equipId=0,
	itemData=0,
	staticData=0,
	strengthLv=0,
	force=0,
	isWear=false;
	isSelect=false;
}

local SingleEquipDataModel = DataClass("SingleEquipDataModel",SingleEquipData);
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end


--设置装备的选中通过品质
local function SelectEquipByQualityType(self,_type,_notSendMsg)
	self.decomposeType=_type;
	if self.showData~=nil and #self.showData>0 then
		for i, v in ipairs(self.showData) do
			if v.itemData.quality<=_type then
				v.isSelect=true;
			else
				v.isSelect=false;
			end
		end
	end
	if not _notSendMsg then
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH);
	end
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
                return a.force<b.force;
            end
        end)
    end

	SelectEquipByQualityType(self,self.decomposeType,true);
end

--获取锻造消耗数据
local function GetForgeCostData(self)
	self.costData={};
	self.forgeTitle="";
	local playerLv=UserData:GetInstance().pLevel;
	local index=0;
	for i, v in ipairs(EqpForgeData) do
		if playerLv>=v.LvMin and playerLv<=v.LvMax then
			index=i;
			break;
		end
	end
	if EqpForgeData[index]~=nil then
		local singleForgeData=EqpForgeData[index];
		self.forgeTitle=singleForgeData.Desc;
		for i, v in ipairs(singleForgeData.Equips) do
			local itemData=DataUtil.GetDataByIdAndType(v.Cost[1].Id);
			table.insert(self.costData,{name=v.Name,itemData=itemData,val=v.Cost[1].Val,pic=v.Pic});
		end
	end

end

--创建一件新装备
local function CreatOneNewEquip(self,_equipList)
	for i, v in ipairs(_equipList) do
		local _equipData=v;
		local xlsxData=EqpData[_equipData.templateId];
		if xlsxData~=nil then
			local singleEquip=SingleEquipDataModel.New();
			singleEquip.itemData=DataUtil.GetDataByIdAndType(_equipData.templateId);
			singleEquip.equipId=_equipData.id;
			singleEquip.staticData=xlsxData;
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FORGE_UI_REFRESH,singleEquip);
		end
	end

end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	GetForgeCostData(self);
    self.equipType=0;
    self.qualitySelectList={[1]=true,[2]=true,[3]=true,[4]=true};
	self.decomposeType=1;
	self:OnRefresh(true);
end

-- 刷新全部数据
local function OnRefresh(self,_isSend)
	self.equipList={};
	self.equipRealIndexDic={};
	self.equipTypeDic={};
	self.showData={};
	local serverEquipData=EquipData:GetInstance().equipList;
	for i, v in pairs(serverEquipData) do
        if v~=nil then
            local xlsxData=EqpData[v.equipTid];
            if xlsxData~=nil and v.cardId==0 then
                local singleData=SingleEquipDataModel.New();
                singleData.itemData=DataUtil.GetDataByIdAndType(v.equipTid);
                singleData.equipId=i;
                singleData.staticData=xlsxData;
                singleData.strengthLv=v.equipStrengthLv;
                singleData.force=v.equipForce;
                singleData.isSelect=false;
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
	GetShowDataByFilterTypeAndQualityType(self,self.equipType,self.qualitySelectList);
	if not _isSend then
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH);
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
	self:AddUIListener(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_BY_TYPE,SelectEquipByQualityType);
    self:AddDataListener(DataMessageNames.ON_EQUIP_DECOMPOSE_REFRESH,OnRefresh);
	self:AddUIListener(UIMessageNames.UI_EQUIP_FORGE_DATA_REFRESH,CreatOneNewEquip);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_FILTER,FilterList);
	self:RemoveUIListener(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_BY_TYPE,SelectEquipByQualityType);
    self:RemoveDataListener(DataMessageNames.ON_EQUIP_DECOMPOSE_REFRESH,OnRefresh);
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_FORGE_DATA_REFRESH,CreatOneNewEquip);
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

UICardEquipmentMakeModel.OnCreate = OnCreate
UICardEquipmentMakeModel.OnEnable = OnEnable
UICardEquipmentMakeModel.OnRefresh = OnRefresh
UICardEquipmentMakeModel.OnAddListener = OnAddListener
UICardEquipmentMakeModel.OnRemoveListener = OnRemoveListener
UICardEquipmentMakeModel.OnDisable = OnDisable
UICardEquipmentMakeModel.OnDestroy = OnDestroy

return UICardEquipmentMakeModel
