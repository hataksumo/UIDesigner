
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaBoxInfoTipView = BaseClass("UIArenaBoxInfoTipView", UIBaseView)
local base = UIBaseView
local UIArenaBoxWrapItem = require "UI.UIArenaBoxInfoTip.Component.UIArenaBoxWrapItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.scoreText = self:AddComponent(UIText,"UIImgPanel/boxInfo/nameText")
	self.closeUIButton = self:AddComponent(UIButton, "UIImgPanel/close_UIButton")
    self.closeUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	self.box_view_content=self:AddComponent(UIWrapGroup3D,"UIImgPanel/ScrollRect/Grid",UIArenaBoxWrapItem)
	self.titleText = self:AddComponent(UIText,"UIImgPanel/baoxiangText")
	self.titleText:SetText(DataUtil.GetClientText(100224))
end

local function OnEnable(self)
	base.OnEnable(self)
    self.itemData = self.model.box_data
	self.scoreInfo = self.model.box_score
	self.scoreText:SetText(self.scoreInfo)
    if self.itemData ~= nil and #self.itemData > 0 then
        self.box_view_content:SetLength(table.count(self.itemData))
        self.box_view_content:SetGridPositionByIndex(0)
    else
        self.box_view_content:SetLength(0)
    end
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

UIArenaBoxInfoTipView.OnCreate = OnCreate
UIArenaBoxInfoTipView.OnEnable = OnEnable
UIArenaBoxInfoTipView.OnRefresh = OnRefresh
UIArenaBoxInfoTipView.OnAddListener = OnAddListener
UIArenaBoxInfoTipView.OnRemoveListener = OnRemoveListener
UIArenaBoxInfoTipView.OnDestroy = OnDestroy

return UIArenaBoxInfoTipView
