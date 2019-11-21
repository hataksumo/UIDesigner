
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardEquipmentSummaryView = BaseClass("UICardEquipmentSummaryView", UIBaseView)
local base = UIBaseView

local bg_close_btn_path="close_UIButton";
local close_btn_path="EquipmentSummaryPanel/exitBtn";
local total_force_text_path="EquipmentSummaryPanel/EquipmentScore/EquipmentScore_UIText";
local prop_grid_path="EquipmentSummaryPanel/ScrollRect/EquipmentSummary/EquipmentPropSummary/intensifyGrid";
local suit_grid_path="EquipmentSummaryPanel/ScrollRect/EquipmentSummary/suitSummary";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgCloseBtn=self:AddComponent(UIButton,bg_close_btn_path);
	self.bgCloseBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.totalForceText=self:AddComponent(UIText,total_force_text_path);
	self.propGridLayout=self:AddComponent(UIBaseContainer,prop_grid_path);
	self.propList={};
	local count =self.propGridLayout.transform.childCount;
	for i = 0, count-1 do
		local tempItem=self.propGridLayout:AddComponent(UIBaseContainer,i);
		local tempNameText=tempItem:AddComponent(UIText,"name");
		local tempValText=tempItem:AddComponent(UIText,"name/beforeText");
		local tempImg=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		table.insert(self.propList,{obj=tempItem,nameText=tempNameText,valText=tempValText,img=tempImg});
	end
	self.suitGridLayout=self:AddComponent(UIBaseContainer,suit_grid_path);
	self.suitList={};
	count=self.suitGridLayout.transform.childCount;
	for i = 1, count-1 do
		local tempItem=self.suitGridLayout:AddComponent(UIBaseContainer,i);
		local tempValText=tempItem:AddComponent(UIText,"suitName");
		table.insert(self.suitList,{obj=tempItem,valText=tempValText})
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self.totalForceText:SetText(self.model.totalFoece);
	for i, v in ipairs(self.propList) do
		v.obj.transform.gameObject:SetActive(self.model.propList[i]~=nil);
		if self.model.propList[i]~=nil then
			v.nameText:SetText(self.model.propList[i].name);
			local addValueStr=self.model.propList[i].fac==100 and math.floor(self.model.propList[i].value*100).."%" or math.floor(self.model.propList[i].value);
			v.valText:SetText("+"..addValueStr);
		end
		v.img:SetEnabled(i%2==1);
	end
	for i, v in ipairs(self.suitList) do
		v.obj.transform.gameObject:SetActive(self.model.suitList[i]~=nil);
		if self.model.suitList[i]~=nil then
			local suitData=self.model.suitList[i];
			v.valText:SetText(string.format("%s(%s/%s)",suitData.name,suitData.haveNum,suitData.maxNum));
		end
	end
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UICardEquipmentSummaryView.OnCreate = OnCreate
UICardEquipmentSummaryView.OnEnable = OnEnable
UICardEquipmentSummaryView.OnRefresh = OnRefresh
UICardEquipmentSummaryView.OnAddListener = OnAddListener
UICardEquipmentSummaryView.OnRemoveListener = OnRemoveListener
UICardEquipmentSummaryView.OnDestroy = OnDestroy

return UICardEquipmentSummaryView
