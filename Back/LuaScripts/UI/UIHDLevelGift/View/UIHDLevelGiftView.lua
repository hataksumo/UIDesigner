
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UILevelRewardWrapItem = require "UI.UIHDLevelGift.Component.UILevelRewardWrapItem"
local UIHDLevelGiftView = BaseClass("UIHDLevelGiftView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
	self.exitUIButton=self:AddComponent(UIButton, "panel/top/exit_UIButton")
	self.Level_reward_scroll_view_content=self:AddComponent(UIWrapGroup3D,"panel/ScrollRect/Content",UILevelRewardWrapItem)
	-- 关闭页面按钮
	self.maskUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	self.exitUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
end
local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()

end
local function OnRefresh(self)
	-- 各组件刷新
	self.hasReciveRewardLevel=self.model.hasReciveRewardLevel
	self:SetLevelRewardData()
end
---设置等级礼包列表
local function SetLevelRewardData(self)
	self.level_reward_data=self.model.level_reward_data
	if(self.hasReciveRewardLevel~=nil and self.model.level_reward_data~=nil) then
		self.level_reward_data = self.model.level_reward_data
		if self.level_reward_data ~= nil and #self.level_reward_data > 0 then
			self.Level_reward_scroll_view_content:SetLength(table.count(self.level_reward_data))
			self.Level_reward_scroll_view_content:SetGridPositionByIndex(0)
		else
			self.Level_reward_scroll_view_content:SetLength(0)
		end
	end
end


local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.ON_CHANGE_LV,self.OnRefresh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.ON_CHANGE_LV,self.OnRefresh)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIHDLevelGiftView.OnCreate = OnCreate
UIHDLevelGiftView.OnEnable = OnEnable
UIHDLevelGiftView.OnRefresh = OnRefresh
UIHDLevelGiftView.OnAddListener = OnAddListener
UIHDLevelGiftView.OnRemoveListener = OnRemoveListener
UIHDLevelGiftView.OnDestroy = OnDestroy
UIHDLevelGiftView.SetLevelRewardData=SetLevelRewardData
return UIHDLevelGiftView
