
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardEquipmentMakeView = BaseClass("UICardEquipmentMakeView", UIBaseView)
local base = UIBaseView
local UIEquipForgeWrapNormalItem = require "UI.UICardEquipmentMake.Component.UIEquipForgeWrapNormalItem"
local UIEquipmentForgetItem = require "UI.UICardEquipmentMake.Component.UIEquipmentForgetItem"

local parent_layout_path="ParentLayout";
local filter_obj_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj";
local filter_btn_path="ParentLayout/CardEquipmentList/btnFilterByQuality";
local filter_text_path="ParentLayout/CardEquipmentList/btnFilterByQuality/qualityType";
local filter_close_btn_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj/btnConditionMask";
local filter_grid_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj/TypeGrid";
local filter_quality_path="ParentLayout/CardEquipmentList/FilterObj/slectGrid";
local decompose_btn_path="ParentLayout/CardEquipmentList/oneStepSelect/oneStepSelect_UIButton";
local equip_list_gird_path="ParentLayout/CardEquipmentList/ScrollView/grid_UIWrapGroup3D";
local equip_forge_max_lv_path="ParentLayout/CardEquipmentRight/CardEquipmentPanel/heiBgLeft/CardEquipmentTitle/CardEquipmentTitle_UIText";
local suit_btn_grid_path="ParentLayout/CardEquipmentRight/CardEquipmentPanel/CardEquipment_Make";
local decompose_filter_btn_path="ParentLayout/CardEquipmentList/oneStepSelect/filterByQuality_UIButton";
local decompose_filter_grid_path="ParentLayout/CardEquipmentList/FilterObj/qualityGridObj/qualityGrid";
local decompose_filter_close_btn_path="ParentLayout/CardEquipmentList/FilterObj/qualityGridObj/qualityMask";
local decompose_filter_panel="ParentLayout/CardEquipmentList/FilterObj/qualityGridObj";
local decompose_filter_btn_text_path="ParentLayout/CardEquipmentList/oneStepSelect/filterByQuality_UIButton/selectQuality_UIText";
local continue_forge_equip_toggle_path="ParentLayout/CardEquipmentRight/CardEquipmentPanel/ContinuousProduction/ContinuousProduction_BG/ContinuousProductionToggle";
local mask_panel_path="ParentLayout/maskObj";

local quailtyTextList={[1]="<color=#1CE974>绿色</color>",[2]="<color=#28A2E5>蓝色</color>",[3]="<color=#B625E2>紫色</color>",[4]="<color=#FEC200>橙色</color>"};
local EquipType={
	ALL=0,--全部
	WEAPON=1,--武器
	HELMET=2,--头盔
	SCAPULA=3,--肩甲
	CLOTHES=4,--衣服
	SHOE=5,--鞋子
	HANDGUARD=6,--护手
	NECKLACE=7,--项链
	RING=8,--戒指
}

local filterTypeList={[1]={type=EquipType.ALL,name="全部"},[2]={type=EquipType.WEAPON,name="武器"},[3]={type=EquipType.HELMET,name="头盔"},[4]={type=EquipType.SCAPULA,name="肩甲"},
					  [5]={type=EquipType.CLOTHES,name="衣服"},[6]={type=EquipType.SHOE,name="鞋子"},[7]={type=EquipType.HANDGUARD,name="护手"},
					  [8]={type=EquipType.NECKLACE,name="项链"},[9]={type=EquipType.RING,name="戒指"}};

--设置品质排序按钮
local function OnSetQualityBtnImg(self)
	for i, v in ipairs(self.filterQualityList) do
		local btnImgIndex=4-i+1;
		if self.qualitySelectList[btnImgIndex] then
			v.img:SetMat(nil);
		else
			v.img:SetMat(self.grayMat);
		end
	end
end

--获取熔炼的装备列表
local function GetDecomposeEquipIds(self)
	local equipIds={};
	for i, v in ipairs(self.model.showData) do
		if v.isSelect then
			table.insert(equipIds,v.equipId);
		end
	end
	return equipIds;
end

--连续打造toggle
local function OnContinueForgeToggleValChange(self,boo);
	self.isContinueForge=boo;
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maskBtn=self:AddComponent(UIButton,mask_panel_path);
	self.maskBtn:SetOnClick(function()
		for i, v in ipairs(self.suitForgeList) do
			v:SetContinueForgeState(false);
		end
	end);
	self.maskCanvas=self:AddComponent(UICanvas,mask_panel_path);
	self.maskCanvas:SetOrder(2);
	self.forgeToggle=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.Toggle),continue_forge_equip_toggle_path);
	self.forgeToggle.onValueChanged:AddListener(BindCallback(self,OnContinueForgeToggleValChange));
	self.parentLayout=self:AddComponent(UIImage,parent_layout_path);
	self.grayMat=self.parentLayout:GetMat();
	self.filterObj=UIUtil.FindTrans(self.transform,filter_obj_path);
	self.filterCloseBtn=self:AddComponent(UIButton,filter_close_btn_path);
	self.filterCloseBtn:SetOnClick(function()
		self.filterObj.transform.gameObject:SetActive(false);
	end)
	self.filterText=self:AddComponent(UIText,filter_text_path);
	self.filterBtn=self:AddComponent(UIButton,filter_btn_path);
	self.filterBtn:SetOnClick(function()
		self.filterObj.transform.gameObject:SetActive(true);
	end)
	self.filterGrid=self:AddComponent(UIBaseContainer,filter_grid_path);
	self.filterList={};
	local count=self.filterGrid.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.filterGrid:AddComponent(UIBaseContainer,i);
		--local tempText=tempObj:AddComponent(UIText,"");
		local tempBtn=tempObj:AddComponent(UIButton,"");
		tempBtn:SetOnClick(function()
			self.curFilter=i+1;
			self.filterText:SetText(filterTypeList[self.curFilter].name);
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
			self.filterObj.transform.gameObject:SetActive(false);
		end);
		table.insert(self.filterList,{obj=tempObj});
	end
	self.filterQuality=self:AddComponent(UIBaseContainer,filter_quality_path);
	self.filterQualityList={};
	count=self.filterQuality.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.filterQuality:AddComponent(UIBaseContainer,i);
		--local tempText=tempObj:AddComponent(UIText,"");
		local tempBtn=tempObj:AddComponent(UIButton,"");
		local tempImg=tempObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local index=4-i;
		tempBtn:SetOnClick(function()
			self.qualitySelectList[index]=not self.qualitySelectList[index];
			OnSetQualityBtnImg(self);
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
		end)
		table.insert(self.filterQualityList,{obj=tempObj,img=tempImg});
	end
	self.decomposeBtn=self:AddComponent(UIButton,decompose_btn_path);
	self.decomposeBtn:SetOnClick(function()
		if #GetDecomposeEquipIds(self)>0 then
			self.ctrl:SendSmeltEquipRequest(GetDecomposeEquipIds(self));
		else
			UISpecial:GetInstance():UITipText("没有选中的装备");
		end
	end)
	self.decomposeCloseBtn=self:AddComponent(UIButton,decompose_filter_close_btn_path);
	self.decomposeCloseBtn:SetOnClick(function()
		self.decomposeFilterPanel.transform.gameObject:SetActive(false);
	end)
	self.decomposeFilterPanel=UIUtil.FindTrans(self.transform,decompose_filter_panel);
	self.decomposeFilterBtn=self:AddComponent(UIButton,decompose_filter_btn_path);
	self.decomposeFilterBtn:SetOnClick(function()
		self.decomposeFilterPanel.transform.gameObject:SetActive(true);
	end)
	self.decomposeFilterBtnText=self:AddComponent(UIText,decompose_filter_btn_text_path);
	self.decomposeFilterGrid=self:AddComponent(UIBaseContainer,decompose_filter_grid_path);
	count=self.decomposeFilterGrid.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.decomposeFilterGrid:AddComponent(UIBaseContainer,i);
		local tempBtn=tempObj:AddComponent(UIButton,"");
		tempBtn:SetOnClick(function()
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_BY_TYPE,i+1);
			self.decomposeFilterPanel.transform.gameObject:SetActive(false);
		end);
	end

	--右侧套装界面
	self.equipForgeMaxLvText=self:AddComponent(UIText,equip_forge_max_lv_path);
	self.suitLayout=self:AddComponent(UIBaseContainer,suit_btn_grid_path);
	self.suitForgeList={};
	count=self.suitLayout.transform.childCount;
	for i = 0, count-1 do
		local tempObjTrans=self.suitLayout.transform:GetChild(i);
		local forgeItem=UIEquipmentForgetItem.New(self,tempObjTrans.gameObject);
		forgeItem:OnCreate(self);
		table.insert(self.suitForgeList,forgeItem);
	end

	self.normal_item_wrap_group=self:AddComponent(UIWrapGroup3D,equip_list_gird_path,UIEquipForgeWrapNormalItem);
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.parentLayout,UIWindowNames.UICardEquipmentMake,33,self);
	UIUtil.CreatCloseBtnComponent(self,self.parentLayout,function(go) self.closeComponent=go end,function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentMake);
		EquipData:GetInstance():PutCacheEquipsToBackpack(nil,true);
	end,function() EquipData:GetInstance():PutCacheEquipsToBackpack(nil,true); end ,"装备锻造",true,12);
end

--显示锻造信息
local function ShowForgeInfo(self)

	if self.model.costData~=nil then
		for i, v in ipairs(self.suitForgeList) do
			if self.model.costData[i]~=nil then
				v:Refresh(i,self.model.costData[i]);
			end
		end
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self.isContinueForge=false;
	self.forgeToggle.isOn=self.isContinueForge;
	self.maskBtn.transform.gameObject:SetActive(false);
	ShowForgeInfo(self);
	self.decomposeFilterBtnText:SetText(quailtyTextList[self.model.decomposeType]);
	self.curFilter=1;
	self.filterObj.transform.gameObject:SetActive(false);
	self.filterText:SetText(filterTypeList[self.curFilter].name);
	self.qualitySelectList={[1]=true,[2]=true,[3]=true,[4]=true};
	self.decomposeFilterPanel.transform.gameObject:SetActive(false);
	self.equipForgeMaxLvText:SetText(self.model.forgeTitle);
	OnSetQualityBtnImg(self);
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.decomposeFilterBtnText:SetText(quailtyTextList[self.model.decomposeType]);
	self.normal_item_wrap_group:SetLength(table.length(self.model.showData));
	self.normal_item_wrap_group:ResetToBeginning();
end

--刷新锻造的装备信息
local function RefreshSingleForgeEquip(self,_data)
    local pos=_data.staticData.Pos;
    if self.suitForgeList[pos]~=nil then
        self.suitForgeList[pos]:RefreshForgeEquip(_data);
    end

end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_EQUIP_REFRESH,OnRefresh);
	self:AddUIListener(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH,OnRefresh);
    self:AddUIListener(UIMessageNames.UI_EQUIP_FORGE_UI_REFRESH,RefreshSingleForgeEquip);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_REFRESH,OnRefresh)
	self:RemoveUIListener(UIMessageNames.UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH,OnRefresh);
    self:RemoveUIListener(UIMessageNames.UI_EQUIP_FORGE_UI_REFRESH,RefreshSingleForgeEquip);
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICardEquipmentMake);
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf();
	end
end

UICardEquipmentMakeView.OnCreate = OnCreate
UICardEquipmentMakeView.OnEnable = OnEnable
UICardEquipmentMakeView.OnRefresh = OnRefresh
UICardEquipmentMakeView.OnAddListener = OnAddListener
UICardEquipmentMakeView.OnRemoveListener = OnRemoveListener
UICardEquipmentMakeView.OnDestroy = OnDestroy

return UICardEquipmentMakeView
