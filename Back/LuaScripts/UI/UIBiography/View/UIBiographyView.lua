
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIBiographyView = BaseClass("UIBiographyView", UIBaseView)
local base = UIBaseView

local UIBiographyLeftWrapItem = require "UI.UIBiography.Component.UIBiographyLeftWrapItem"
local UIBiographyRightWrapItem = require "UI.UIBiography.Component.UIBiographyRightWrapItem"
local UIBiographyBuyNumView = require "UI.UIBiography.Component.UIBiographyBuyNumView"
local UIBiographyAwardListItem = require "UI.UIBiography.Component.UIBiographyAwardListItem"
local UIBiographyCostTipItem = require "UI.UIBiography.Component.UIBiographyCostTipItem"

local function SwitchLevel(self, levelIndex)
	self.selectCardID = BiographyData:GetInstance()._cardIdGroup[levelIndex]
	BiographyData:GetInstance().selectCardId = self.selectCardID
	self.rightwrap_group:SetLength(table.count(BiographyData:GetInstance()._data[self.selectCardID]))
	if self.selectLeftIndex ~= levelIndex then
		self.selectLeftIndex = levelIndex
		self.rightwrap_group:ResetToBeginning()
	else
		self.rightwrap_group:WrapContent(true)
	end
	self.leftwrap_group:WrapContent(true)
end

local function ShowCostTipView(self, rightIndex)
	self.costTipView:SetData(BiographyData:GetInstance()._data[self.selectCardID][rightIndex])
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.leftwrap_group = self:AddComponent(UIWrapGroup3D,"LeftScroll/ScrollRect1/Content1",UIBiographyLeftWrapItem)
	self.rightwrap_group = self:AddComponent(UIWrapGroup3D,"RightScroll/ScrollRect2/Content2",UIBiographyRightWrapItem)
	self.buyNumView = UIBiographyBuyNumView.New(self, "UIShopBuyItem")
	self.buyNumView:OnCreate(self)
	self.awardListView = UIBiographyAwardListItem.New(self, "UIAwardList")
	self.awardListView:OnCreate(self)
	self.costTipView = UIBiographyCostTipItem.New(self, "UICommonCostTip")
	self.costTipView:OnCreate(self)
	self.backMainUIButton = self:AddComponent(UIButton, "LeftUp/BackMain_UIButton")
	self.backMainUIButton:SetOnClick(function ()
		self.ctrl:BackMainCtiy()
	end)
	self.backUIButton = self:AddComponent(UIButton, "LeftUp/Back_UIButton")
	self.backUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.helpUIButton = self:AddComponent(UIButton, "LeftUp/help_UIButton")
	self.helpUIButton:SetOnClick(function ()
		self.ctrl:OnHelp()
	end)
	self.titleUIText = self:AddComponent(UIText, "LeftUp/title_UIText")
	self.totalUIText = self:AddComponent(UIText, "TotalText")
	self.addTotalButton = self:AddComponent(UIButton, "AddTotalButton")
	self.addTotalButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
		self.buyNumView:SetData()
	end)
	self.grayImage = self:AddComponent(UIImage, "GrayImage")
	self.grayMat = self.grayImage:GetMat()
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIBiography,ResourceBarType.BIOGRAPHY,self);
	self.selectLeftIndex = 0
end

local function OnEnable(self)
	base.OnEnable(self)
	BiographyData:GetInstance():RefreshData();
    if table.count(BiographyData:GetInstance()._cardIdGroup) == 0 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100141))
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIBiography);
        return
    end
	self.leftwrap_group:SetLength(table.count(BiographyData:GetInstance()._cardIdGroup))
	self.leftwrap_group:ResetToBeginning()

	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.buyNumView:SetActive(false)
	self.costTipView:SetActive(false)
	local switchId = 1
	if BiographyData:GetInstance().selectCardId > 0 then
		for k, v in pairs(BiographyData:GetInstance()._cardIdGroup) do
			if v == BiographyData:GetInstance().selectCardId then
				switchId = k
				break
			end
		end
	end
	SwitchLevel(self, switchId)
	--self.rightwrap_group:WrapContent(true)
	--self.leftwrap_group:WrapContent(true)
	self.totalUIText:SetText(string.format(DataUtil.GetClientText(100142),math.floor(BiographyData:GetInstance().ticket),DataUtil.GetData("global")[180].valueN))
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_BIOGRAPHY_VIEW_REFRESH, OnRefresh);

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_BIOGRAPHY_VIEW_REFRESH, OnRefresh);
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIBiography)
end

UIBiographyView.OnCreate = OnCreate
UIBiographyView.OnEnable = OnEnable
UIBiographyView.OnRefresh = OnRefresh
UIBiographyView.OnAddListener = OnAddListener
UIBiographyView.OnRemoveListener = OnRemoveListener
UIBiographyView.OnDestroy = OnDestroy
UIBiographyView.SwitchLevel = SwitchLevel
UIBiographyView.ShowCostTipView = ShowCostTipView

return UIBiographyView
