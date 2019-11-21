
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationCardDetailView = BaseClass("UINationCardDetailView", UIBaseView)
local base = UIBaseView
local UINationCardDetailItem = require "UI.UINationCardDetail.Component.UINationCardDetailItem"

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationCardDetail)
end
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.nationCard_scroll_view_content=self:AddComponent(UIWrapGroup3D,"centerContent/SkillRectScroll/content",UINationCardDetailItem)
	self.controlsLevelText=self:AddComponent(UIText, "topContent/controlsLevelText_UIText")
	self.controlsrNum=self:AddComponent(UIText, "topContent/controlsBg/controlsrNum")
	self.soulEnergyNum=self:AddComponent(UIText, "topContent/soulEnergyBg/soulEnergyNum")
	self.proActiveNum=self:AddComponent(UIText, "topContent/proActiveBg/proActiveNum")
	self.controlsLevelImg=self:AddComponent(UIImage,"topContent/controlsBg/controlsrPer");
	self.soulEnergyImg=self:AddComponent(UIImage,"topContent/soulEnergyBg/soulEnergyPer");
	self.proActiveImg=self:AddComponent(UIImage,"topContent/proActiveBg/proActivePer");

	self.SeeDetailButton=self:AddComponent(UIButton, "SeeDetailButton")
	self.SeeDetailContent=UIUtil.FindTrans(self.transform,"SeeDetailContent")
	self.SeeDetailContent.gameObject:SetActive(false)
	self.SeeDetailButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SeeDetailContent.gameObject:SetActive(true)
		self.SeeDetailButton.gameObject:SetActive(false);
		self.closeDetailBtn.gameObject:SetActive(true);
	end)
	self.closeDetailBtn=self:AddComponent(UIButton,"CloseDetailBtn");

	self.closeDetailBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SeeDetailContent.gameObject:SetActive(false)
		self.SeeDetailButton.gameObject:SetActive(true);
		self.closeDetailBtn.gameObject:SetActive(false);
	end)

	--属性列表
	self.topAttLayout=self:AddComponent(UIBaseContainer,"SeeDetailContent/top");
	local count=self.topAttLayout.transform.childCount;
	self.topAttList={};
	for i = 1, count do
		local tempObj=self.topAttLayout:AddComponent(UIBaseContainer,i-1);
		local nameText=tempObj:AddComponent(UIText,"attName");
		local valueText=tempObj:AddComponent(UIText,"attValue");
		local arrowObj=tempObj:AddComponent(UIImage,"defArrow");
		local upValueText=tempObj:AddComponent(UIText,"upValue");
		table.insert(self.topAttList,{nameTxt=nameText,valueTxt=valueText,arrowImg=arrowObj,upValueTxt=upValueText});
	end
	self.bottomAttLayout=self:AddComponent(UIBaseContainer,"SeeDetailContent/bottom");
	count=self.bottomAttLayout.transform.childCount;
	self.bottomAttList={};
	for i = 1, count do
		local tempObj=self.bottomAttLayout:AddComponent(UIBaseContainer,i-1);
		local nameText=tempObj:AddComponent(UIText,"attName");
		local valueText=tempObj:AddComponent(UIText,"attValue");
		table.insert(self.bottomAttList,{nameTxt=nameText,valueTxt=valueText});
	end
end

--显示数据
local function ShowUI(self)
	self.SeeDetailButton.gameObject:SetActive(true);
	self.closeDetailBtn.gameObject:SetActive(false);
	self.SeeDetailContent.gameObject:SetActive(false)
	self:OnRefresh()
end

local function OnEnable(self)
	base.OnEnable(self)
	if(NationCtrlManager:GetInstance():GetLoginNationStatus()==NationDefine.LOGIN_NATION_ST.DATA_OK) then
		ShowUI(self);
	end
end

--设置国战属性
local function SetNationAtt(self)
	for i, v in ipairs(self.topAttList) do
		v.nameTxt:SetText(self.model.topAttr[i].name);
		v.valueTxt:SetText(self.model.topAttr[i].value)
		v.arrowImg:SetActive(self.model.topAttr[i].addValue~=0)
		v.upValueTxt:SetActive(self.model.topAttr[i].addValue~=0)
		v.upValueTxt:SetText(self.model.topAttr[i].addValue);
	end

	for i, v in ipairs(self.bottomAttList) do
		v.nameTxt:SetText(self.model.bottomAttr[i].name);
		v.valueTxt:SetText(self.model.bottomAttr[i].value)
	end
end

local function OnRefresh(self)
	-- 各组件刷新
	self.controlsLevelText:SetText(self.model.dominanceLevel)
	self.controlsrNum:SetText(string.format("%s/%s",self.model.dominanceExp,self.model.dominanceMaxExp));
	self.soulEnergyNum:SetText(string.format("%s/%s",self.model.army,self.model.armyMax));
	self.proActiveNum:SetText(self.model.ap.."/"..self.model.apMax)
	self.controlsLevelImg:SetFillVal(self.model.dominanceExp/self.model.dominanceMaxExp);
	self.soulEnergyImg:SetFillVal(self.model.army/self.model.armyMax);
	self.proActiveImg:SetFillVal(self.model.ap/self.model.apMax);
	--国战属性
	SetNationAtt(self);
	self:SetNationSkillData()
	
end

---设置在线礼包列表
local function SetNationSkillData(self)
	self.skill_data=self.model.skill_data
	if self.skill_data ~= nil and #self.skill_data > 0 then
		self.nationCard_scroll_view_content:SetLength(3)
		self.nationCard_scroll_view_content:ResetToBeginning()
	else
		self.nationCard_scroll_view_content:SetLength(0)
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_CARD_DETAIL_ON_CLOSE, self.CloseSelf)
	self:AddUIListener(UIMessageNames.UI_CARD_HERO_CHANGE_SON,self.OnRefresh)
	self:AddUIListener(UIMessageNames.NATION_CARD_REQUEST_DATA_SUCCESS,ShowUI);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	self:RemoveUIListener(UIMessageNames.UI_CARD_DETAIL_ON_CLOSE, self.CloseSelf)
	self:RemoveUIListener(UIMessageNames.UI_CARD_HERO_CHANGE_SON,self.OnRefresh)
	self:RemoveUIListener(UIMessageNames.NATION_CARD_REQUEST_DATA_SUCCESS,ShowUI);
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UINationCardDetailView.OnCreate = OnCreate
UINationCardDetailView.SetNationSkillData=SetNationSkillData
UINationCardDetailView.OnEnable = OnEnable
UINationCardDetailView.OnRefresh = OnRefresh
UINationCardDetailView.OnAddListener = OnAddListener
UINationCardDetailView.OnRemoveListener = OnRemoveListener
UINationCardDetailView.OnDestroy = OnDestroy
UINationCardDetailView.CloseSelf=CloseSelf
return UINationCardDetailView
