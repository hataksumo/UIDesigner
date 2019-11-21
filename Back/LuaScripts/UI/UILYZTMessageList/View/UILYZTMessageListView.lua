
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTMessageListView = BaseClass("UILYZTMessageListView", UIBaseView)
local base = UIBaseView

local UIlyztMsgWrapItem = require "UI.UILYZTMessageList.Component.UIlyztMsgWrapItem"

local close_btn_path="parentLayout/closeBtn";
local testify_btn_path="parentLayout/testifyBtn";
local grid_path="parentLayout/ScrollRect/Grid";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.testifyBtn=self:AddComponent(UIButton,testify_btn_path);
	self.testifyBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTTestify)
	end)
	self.msgItemWrapGroup=self:AddComponent(UIWrapGroup3D,grid_path,UIlyztMsgWrapItem);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.msgItemWrapGroup:SetLength(table.length(self.model.msgList));
	self.msgItemWrapGroup:ResetToBeginning();
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

UILYZTMessageListView.OnCreate = OnCreate
UILYZTMessageListView.OnEnable = OnEnable
UILYZTMessageListView.OnRefresh = OnRefresh
UILYZTMessageListView.OnAddListener = OnAddListener
UILYZTMessageListView.OnRemoveListener = OnRemoveListener
UILYZTMessageListView.OnDestroy = OnDestroy

return UILYZTMessageListView
