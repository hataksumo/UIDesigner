
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTItemListView = BaseClass("UILYZTItemListView", UIBaseView)
local base = UIBaseView

local UILyztUseItem = require "UI.UILYZTItemList.Component.UILyztUseItem"

local bg_close_path="mask";
local close_btn_path="ParentLayout/itemDetailPanel/exitBtn";
local item_detail_panel_path="ParentLayout/itemDetailPanel";
local use_item_btn_path="ParentLayout/itemDetailPanel/userItemBtn";
local item_name_path="ParentLayout/itemDetailPanel/itemName";
local item_icon_path="ParentLayout/itemDetailPanel/itemIcon";
local item_info_path="ParentLayout/itemDetailPanel/itemInfo";
local item_grid_path="ParentLayout/Scrollrect/Grid";



local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgCloseBtn=self:AddComponent(UIButton,bg_close_path);
	self.bgCloseBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.itemDetalPanel.transform.gameObject:SetActive(false);
	end)
	self.itemDetalPanel=UIUtil.FindTrans(self.transform,item_detail_panel_path);
	self.useItemBtn=self:AddComponent(UIButton,use_item_btn_path);
	self.useItemBtn:SetOnClick(function()

	end)
	self.itemNameText=self:AddComponent(UIText,item_name_path);
	self.itemIcon=self:AddComponent(UIImage,item_icon_path,AtlasConfig.DynamicTex);
	self.itemInfoText=self:AddComponent(UIText,item_info_path);

	self.itemWrapGroup=self:AddComponent(UIWrapGroup3D,item_grid_path,UILyztUseItem);
end


--显示物品详情
local function ShowItemDetail(self,_itemData)
    self.itemDetalPanel.transform.gameObject:SetActive(true);
	self.itemNameText:SetText(_itemData.name);
	self.itemInfoText:SetText(_itemData.info);
end


local function OnEnable(self)
	base.OnEnable(self)
	self.itemDetalPanel.transform.gameObject:SetActive(false);
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.itemWrapGroup:SetLength(table.length(self.model.itemList));
	self.itemWrapGroup:ResetToBeginning();
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

UILYZTItemListView.OnCreate = OnCreate
UILYZTItemListView.OnEnable = OnEnable
UILYZTItemListView.OnRefresh = OnRefresh
UILYZTItemListView.OnAddListener = OnAddListener
UILYZTItemListView.OnRemoveListener = OnRemoveListener
UILYZTItemListView.OnDestroy = OnDestroy
UILYZTItemListView.ShowItemDetail=ShowItemDetail;

return UILYZTItemListView
