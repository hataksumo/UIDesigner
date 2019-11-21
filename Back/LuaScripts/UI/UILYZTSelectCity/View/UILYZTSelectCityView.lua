
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTSelectCityView = BaseClass("UILYZTSelectCityView", UIBaseView)
local base = UIBaseView

local UILYZTCityWrapItem = require "UI.UILYZTSelectCity.Component.UILYZTCityWrapItem"

local close_btn_path="ParentLayout/exitBtn";
local certain_btn_path="ParentLayout/certainBtn";
local cancel_btn_path="ParentLayout/cancelBtn";
local city_btn_group_path="ParentLayout/ScrollRect/Grid";
local select_img_path="ParentLayout/selectBg";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.certainBtn=self:AddComponent(UIButton,certain_btn_path);
	self.certainBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.cancelBtn=self:AddComponent(UIButton,cancel_btn_path);
	self.cancelBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.selectImg=UIUtil.FindTrans(self.transform,select_img_path);
	self.cityItemWrapGroup=self:AddComponent(UIWrapGroup3D,city_btn_group_path,UILYZTCityWrapItem);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.selectIndex=self.model.selectIndex;
	self.selectImg.transform.gameObject:SetActive(false);
	self.cityItemWrapGroup:SetLength(table.length(self.model.cityList));
	self.cityItemWrapGroup:ResetToBeginning();
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

UILYZTSelectCityView.OnCreate = OnCreate
UILYZTSelectCityView.OnEnable = OnEnable
UILYZTSelectCityView.OnRefresh = OnRefresh
UILYZTSelectCityView.OnAddListener = OnAddListener
UILYZTSelectCityView.OnRemoveListener = OnRemoveListener
UILYZTSelectCityView.OnDestroy = OnDestroy

return UILYZTSelectCityView
