
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTEventCollectView = BaseClass("UILYZTEventCollectView", UIBaseView)
local base = UIBaseView
local UILTCollectWrap = require "UI.UILYZTEventCollect.Component.UILTCollectWrap"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.wray_group = self:AddComponent(UIWrapGroup3D,"Bg/Con/Desc/Content",UILTCollectWrap)
	self.back_btn = self:AddComponent(UIButton,"Bg/Con/Close")
	self.back_btn:SetOnClick(function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventCollect)
	end)

end

local function OnEnable(self)
	base.OnEnable(self)
	if self.model.event_list ~= nil and #self.model.event_list>0then
		self.wray_group:SetLength(#self.model.event_list)
		self.wray_group:ResetToBeginning()
	else
		self.wray_group:SetLength(0)
	end
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

UILYZTEventCollectView.OnCreate = OnCreate
UILYZTEventCollectView.OnEnable = OnEnable
UILYZTEventCollectView.OnAddListener = OnAddListener
UILYZTEventCollectView.OnRemoveListener = OnRemoveListener
UILYZTEventCollectView.OnDestroy = OnDestroy

return UILYZTEventCollectView
