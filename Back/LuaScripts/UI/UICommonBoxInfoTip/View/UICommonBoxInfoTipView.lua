
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICommonBoxInfoTipView = BaseClass("UICommonBoxInfoTipView", UIBaseView)
local base = UIBaseView
local UIBoxWrapItem = require "UI.UICommonBoxInfoTip.Component.UIBoxWrapItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgCloseBtn=self:AddComponent(UIButton,"mask");
	self.bgCloseBtn:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	self.boxImg=self:AddComponent(UIImage,"UIImgPanel/GiftBox_UIImage/GiftBox_UIImage",AtlasConfig.DynamicTex);
	self.hasTaken=UIUtil.FindTrans(self.transform,"UIImgPanel/hasTaken");
	self.titleText=self:AddComponent(UIText,"UIImgPanel/titleText");
	self.closeUIButton = self:AddComponent(UIButton, "UIImgPanel/close_UIButton")
	self.closeUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	self.box_view_content=self:AddComponent(UIWrapGroup3D,"UIImgPanel/ScrollRect/Grid",UIBoxWrapItem)
	self.coin_image = self:AddComponent(UIImage,"UIImgPanel/boxInfo/starImage",AtlasConfig.DynamicTex)
	--表示当前星级可得的关卡宝箱
	self.nameUIText = self:AddComponent(UIText, "UIImgPanel/boxInfo/nameText")
	--表示当前宝箱的描述
	self.desUIText = self:AddComponent(UIText, "UIImgPanel/des_UIText")

	--控制关卡文本框显示组件
	self.Dex_TextObject = UIUtil.FindTrans(self.transform,"UIImgPanel/boxInfo").gameObject
end

local function OnEnable(self)
	base.OnEnable(self)
	self.box_data = self.model.box_data
	if self.box_data == nil then
		return
	end

	self.titleText.transform.gameObject:SetActive(not self.box_data.isShowStar);
	self.Dex_TextObject:SetActive(self.box_data.isShowStar);
	self.hasTaken.transform.gameObject:SetActive(self.box_data.state==2);
	self.desUIText.transform.gameObject:SetActive(self.box_data.state~=2);
	local boxImgName=self.box_data.state==2 and "ui_t_c2_192" or "ui_t_c2_150";
	self.boxImg:SetSpriteName(boxImgName);

	if self.box_data.isShowStar then
		self.titleText:SetText(self.box_data.title);
        self.nameUIText:SetText(self.box_data.title);
        self.coin_image:SetSpriteName(self.box_data.showIcon);
    else
		self.titleText:SetText(self.box_data.title);
	end
	self.desUIText:SetText(self.box_data.des);
	if  self.box_data.rewardList~=nil then
		self.box_view_content:SetLength(table.count(self.box_data.rewardList))
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

UICommonBoxInfoTipView.OnCreate = OnCreate
UICommonBoxInfoTipView.OnEnable = OnEnable
UICommonBoxInfoTipView.OnRefresh = OnRefresh
UICommonBoxInfoTipView.OnAddListener = OnAddListener
UICommonBoxInfoTipView.OnRemoveListener = OnRemoveListener
UICommonBoxInfoTipView.OnDestroy = OnDestroy

return UICommonBoxInfoTipView
