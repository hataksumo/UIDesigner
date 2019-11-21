
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UITestHoardView = BaseClass("UITestHoardView", UIBaseView)
local base = UIBaseView

local UITestHoardLeftWrapItem = require "UI.UITestHoard.Component.UITestHoardLeftWrapItem"
local UITestHoardRightWrapItem = require "UI.UITestHoard.Component.UITestHoardRightWrapItem"

-- 选中左侧item
local function OnSelectLeft(self, index)
	if self.selectLeftIndex == index then
		self.leftwrap_group:WrapContent(true)
		return
	end
	self.selectLeftIndex = index
	TestHoardData:GetInstance().selectLeftIndex = index
	self.leftwrap_group:WrapContent(true)
	self.rightwrap_group:SetLength(table.count(TestHoardData:GetInstance()._data[index].Levels))
	self.rightwrap_group:ResetToBeginning()
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.leftwrap_group = self:AddComponent(UIWrapGroup3D,"LeftScroll/ScrollRect1/Content1",UITestHoardLeftWrapItem)
	self.rightwrap_group = self:AddComponent(UIWrapGroup3D,"RightScroll/ScrollRect2/Content2",UITestHoardRightWrapItem)
	self.btnhelp = self:AddComponent(UIButton,"LeftUp/help_UIButton")
	self.btnhelp:SetOnClick(function ()
		self.ctrl:OnHelp()
	end)
	self.btnBackMain = self:AddComponent(UIButton,"LeftUp/BackMain_UIButton/Image1")
	self.btnBackMain:SetOnClick(function ()
		self.ctrl:BackMainCtiy()
	end)
	self.btnBack = self:AddComponent(UIButton,"LeftUp/Back_UIButton/Image")
	self.btnBack:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UITestHoard,ResourceBarType.TEST_HOARD,self);
	self.selectLeftIndex = 0
end

local function OnEnable(self)
	base.OnEnable(self)
	self.leftwrap_group:SetLength(table.count(TestHoardData:GetInstance()._data))
	self.leftwrap_group:ResetToBeginning()
	OnSelectLeft(self, TestHoardData:GetInstance().selectLeftIndex)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.leftwrap_group:WrapContent(true)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_TESTHOARD_VIEW_REFRESH, OnRefresh);
	self:AddUIListener(UIMessageNames.UI_TESTHOARD_SELECT_LEFT, OnSelectLeft);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_TESTHOARD_VIEW_REFRESH, OnRefresh);
	self:RemoveUIListener(UIMessageNames.UI_TESTHOARD_SELECT_LEFT, OnSelectLeft);
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UITestHoard)
end

UITestHoardView.OnCreate = OnCreate
UITestHoardView.OnEnable = OnEnable
UITestHoardView.OnRefresh = OnRefresh
UITestHoardView.OnAddListener = OnAddListener
UITestHoardView.OnRemoveListener = OnRemoveListener
UITestHoardView.OnDestroy = OnDestroy

return UITestHoardView
