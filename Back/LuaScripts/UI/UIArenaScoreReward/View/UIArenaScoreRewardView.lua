
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaScoreRewardView = BaseClass("UIArenaScoreRewardView", UIBaseView)
local base = UIBaseView
local UIArenaScoreWrapItem=require"UI.UIArenaScoreReward.Component.UIArenaScoreWrapItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.titleUIText = self:AddComponent(UIText, "UIImgPanel/title_UIText")
    
	self.desUIText = self:AddComponent(UIText, "UIImgPanel/des_UIText")
    
	self.seoreUIText = self:AddComponent(UIText, "UIImgPanel/seore_UIText")
    
	self.awardUIText = self:AddComponent(UIText, "UIImgPanel/award_UIText")

	self.maskBtn = self:AddComponent(UIButton, "mask")
	self.maskBtn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf()
	end)

	self.closeBtn = self:AddComponent(UIButton, "UIImgPanel/closeBtn")
	self.closeBtn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf()
	end)
	self.scroll_view_content=self:AddComponent(UIWrapGroup3D,"UIAwardPanel/awardScrollRect/awardGrid",UIArenaScoreWrapItem)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.itemData =	self.model.awardInfoData
	if 	self.itemData ~= nil then
		self.scroll_view_content:SetLength(table.count(self.itemData))
		self.scroll_view_content:SetGridPositionByIndex(0)
	else
		self.scroll_view_content:SetLength(0)
	end
	if self.model.type == 3 then
		self.titleUIText:SetText("竞技积分奖励")
		self.seoreUIText:SetText("积分")
		self.desUIText:SetText("根据积分领取奖励 每日邮件发放")
	else
		self.titleUIText:SetText("竞技排名奖励")
		self.seoreUIText:SetText("排名")
		self.desUIText:SetText("根据排名领取奖励 每日邮件发放")
	end
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

UIArenaScoreRewardView.OnCreate = OnCreate
UIArenaScoreRewardView.OnEnable = OnEnable
UIArenaScoreRewardView.OnRefresh = OnRefresh
UIArenaScoreRewardView.OnAddListener = OnAddListener
UIArenaScoreRewardView.OnRemoveListener = OnRemoveListener
UIArenaScoreRewardView.OnDestroy = OnDestroy

return UIArenaScoreRewardView
