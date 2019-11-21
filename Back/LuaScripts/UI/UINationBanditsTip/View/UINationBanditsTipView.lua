
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationBanditsTipView = BaseClass("UINationBanditsTipView", UIBaseView)
local base = UIBaseView
local UINationBanditsCostItem = require"UI.UINationBanditsTip.Component.UINationBanditsCostItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.titleUIText = self:AddComponent(UIText, "root/Bg/title_UIText")
    self.mask_btn=self:AddComponent(UIButton,"root/Bg/maskImg")
	self.mask_btn:SetOnClick(function ()
		self.ctrl:OnClickCloseBtn()
	end)
	self.closeUIButton = self:AddComponent(UIButton, "root/close_UIButton")
	self.closeUIButton:SetOnClick(function()
		self.ctrl:OnClickCloseBtn()
	end)

	self.targetNameLabelUIText = self:AddComponent(UIText, "root/targetNameGroup/targetNameLabel_UIText")
    
	self.difficultyPreLabelUIText = self:AddComponent(UIText, "root/difficultyGroup/difficultyPreLabel_UIText")

	self.difficultyContentLabelUIText = self:AddComponent(UIText, "root/difficultyGroup/difficultyContentLabel_UIText")
    
	self.terrainPreLabelUIText = self:AddComponent(UIText, "root/terrainGroup/terrainPreLabel_UIText")

	self.terrainContentLabelUIText = self:AddComponent(UIText, "root/terrainGroup/terrainContentLabel_UIText")

	self.dropTipContentLabelUIText = self:AddComponent(UIText, "root/dropTipGroup/dropTipContentLabel_UIText")

    
	--self.scrollViewGroup = self:AddComponent(ViewGroup, "root/Scroll_ViewGroup")
	--self.scrollViewGroupBackImg = self:AddComponent(ViewGroupBackImg, "root/Scroll_ViewGroup/Scroll_ViewGroupBackImg")
    
	self.attackBtnUIButton = self:AddComponent(UIButton, "root/attackBtn_UIButton")
	self.attackBtnUIButton:SetOnClick(function()
		self.ctrl:OnClickGo()
	end)
	self.attackBtnUIText = self:AddComponent(UIText, "root/attackBtn_UIButton/attackBtn_UIText")

	self.titleUIText:SetText(DataUtil.GetClientText(200021))
	self.difficultyPreLabelUIText:SetText(DataUtil.GetClientText(200024))
	self.terrainPreLabelUIText:SetText(DataUtil.GetClientText(200025))
	self.dropTipContentLabelUIText:SetText(DataUtil.GetClientText(200026))
	self.attackBtnUIText:SetText(DataUtil.GetClientText(200027))

	self.gridUIWrapGroup3D = self:AddComponent(UIWrapGroup3D, "root/Scroll_ViewGroup/Scroll View/Content", UINationBanditsCostItem)
end

local function OnEnable(self)
	base.OnEnable(self)



	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新

	if self.model.hasThisPoint then -- 已经有这个点了
		UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200028))
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BANDITS_TIP_ERROR)
		self.ctrl:CloseSelf()
		return
	else

	end


	local formatTargetName = string.format("%s Lv%d",self.model.wipeOut.Name,self.model.wipeOut.PointLv)--%s <color=#F7BD00>Lv%d</color>
	self.targetNameLabelUIText:SetText(formatTargetName)
	--Logger.LogVars("self.model.guardData ,",self.model.guardData)
	--formatTargetName = string.format("统御等级 Lv%d",self.model.guardData.Difficult)
	formatTargetName = string.format(DataUtil.GetClientText(200023).."%d",self.model.guardData.Difficult)
	self.difficultyContentLabelUIText:SetText(formatTargetName)
	self.terrainContentLabelUIText:SetText(self.model.terrainStr)

	local length = table.length(self.model.rewardShows)
	self.gridUIWrapGroup3D:SetLength(length)
	self.gridUIWrapGroup3D:SetGridPositionByIndex(0)
	--self.gridUIWrapGroup3D:RefreshGrid()
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_NATION_BANDITS_TIP_FLUSH, self.OnNationBanditsTipFlush)
	self:AddUIListener(UIMessageNames.UI_NATION_BANDITS_TIP_ERROR, self.OnNationBanditsTipError)
end


local function OnNationBanditsTipFlush(self)
	self:OnRefresh()
end



local function OnNationBanditsTipError(self)
	self.ctrl:CloseSelf()
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_NATION_BANDITS_TIP_FLUSH, self.OnNationBanditsTipFlush)
	self:RemoveUIListener(UIMessageNames.UI_NATION_BANDITS_TIP_ERROR, self.OnNationBanditsTipError)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UINationBanditsTipView.OnCreate = OnCreate
UINationBanditsTipView.OnEnable = OnEnable
UINationBanditsTipView.OnRefresh = OnRefresh
UINationBanditsTipView.OnAddListener = OnAddListener
UINationBanditsTipView.OnRemoveListener = OnRemoveListener
UINationBanditsTipView.OnDestroy = OnDestroy
UINationBanditsTipView.OnNationBanditsTipFlush = OnNationBanditsTipFlush
UINationBanditsTipView.OnNationBanditsTipError = OnNationBanditsTipError
return UINationBanditsTipView
