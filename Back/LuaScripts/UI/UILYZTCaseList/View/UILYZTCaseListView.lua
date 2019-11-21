
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTCaseListView = BaseClass("UILYZTCaseListView", UIBaseView)
local base = UIBaseView

local close_btn_path="ParentLayout/closeBtn";
local city_list_grid_path="ParentLayout/leftPanel/CityScroll/Grid";
local case_list_grid_path="ParentLayout/rightPanel/grid";



local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
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

UILYZTCaseListView.OnCreate = OnCreate
UILYZTCaseListView.OnEnable = OnEnable
UILYZTCaseListView.OnRefresh = OnRefresh
UILYZTCaseListView.OnAddListener = OnAddListener
UILYZTCaseListView.OnRemoveListener = OnRemoveListener
UILYZTCaseListView.OnDestroy = OnDestroy

return UILYZTCaseListView
