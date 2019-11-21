
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExploreChapterListView = BaseClass("UIExploreChapterListView", UIBaseView)
local base = UIBaseView
local UIExploreChapterWrapItem = require "UI.UIExploreChapterList.Component.UIExploreChapterWrapItem"

local close_btn_path="ParentLayout/CloseBtn";
local wrap_group_path="ParentLayout/ScrollRect/Grid";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreChapterList);
	end);
	self.cahpter_wrap_group=self:AddComponent(UIWrapGroup3D,wrap_group_path,UIExploreChapterWrapItem);

end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.cahpter_wrap_group:SetLength(table.length(self.model.chapList));
	self.cahpter_wrap_group:ResetToBeginning()

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

UIExploreChapterListView.OnCreate = OnCreate
UIExploreChapterListView.OnEnable = OnEnable
UIExploreChapterListView.OnRefresh = OnRefresh
UIExploreChapterListView.OnAddListener = OnAddListener
UIExploreChapterListView.OnRemoveListener = OnRemoveListener
UIExploreChapterListView.OnDestroy = OnDestroy

return UIExploreChapterListView
