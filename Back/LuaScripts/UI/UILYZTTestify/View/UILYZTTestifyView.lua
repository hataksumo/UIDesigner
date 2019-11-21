
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTTestifyView = BaseClass("UILYZTTestifyView", UIBaseView)
local base = UIBaseView

local close_btn_path="parentLayout/closeBtn";
local testify_btn_path="parentLayout/testifyBtn";
local gird_item_path="parentLayout/ScrollRect/Grid";

local UILyztTestifyHeadItem=require "UI.UILYZTTestify.Component.UILyztTestifyHeadItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.testifyBtn=self:AddComponent(UIButton,testify_btn_path);
	self.testifyBtn:SetOnClick(function()

	end)
    self.testifyHeadWrapGroup=self:AddComponent(UIWrapGroup3D,gird_item_path,UILyztTestifyHeadItem);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
    self.testifyHeadWrapGroup:SetLength(table.length(self.model.headList));
    self.testifyHeadWrapGroup:ResetToBeginning();
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

UILYZTTestifyView.OnCreate = OnCreate
UILYZTTestifyView.OnEnable = OnEnable
UILYZTTestifyView.OnRefresh = OnRefresh
UILYZTTestifyView.OnAddListener = OnAddListener
UILYZTTestifyView.OnRemoveListener = OnRemoveListener
UILYZTTestifyView.OnDestroy = OnDestroy

return UILYZTTestifyView
