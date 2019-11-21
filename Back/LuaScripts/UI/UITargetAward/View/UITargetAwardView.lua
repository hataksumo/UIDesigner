
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UITargetAwardView = BaseClass("UITargetAwardView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn = self:AddComponent(UIButton,"bg")
	self.closeBtn:SetOnClick(function ()
		self.anim:Play("ef_ui_UITargetAward_pabelImg_out")
		TimerManager:GetInstance():SimpleTimerArgs(0.4,function()
			self.ctrl:CloseSelf()
		end,nil,true)

	end)
	self.costImg = self:AddComponent(UIImage,"panelImg/SkillInfoObj/skillInfoImg/skillIcon",AtlasConfig.DynamicTex)
	self.skillIcon = self:AddComponent(UIImage,"panelImg/SkillInfoObj/skillImg",AtlasConfig.DynamicTex)
	self.skillFrame = self:AddComponent(UIImage,"panelImg/SkillInfoObj/skillFrameImg",AtlasConfig.DynamicTex)
	self.skillInfoImg = self:AddComponent(UIImage,"panelImg/SkillInfoObj/skillInfoImg",AtlasConfig.Language)

	self.personImg = self:AddComponent(UIImage,"panelImg/CardInfoObj/personImg",AtlasConfig.DynamicTex)
	self.qualityImg = self:AddComponent(UIImage,"panelImg/CardInfoObj/qualityImg",AtlasConfig.DynamicTex)
	self.cardSkillFrameImg = self:AddComponent(UIImage,"panelImg/CardInfoObj/cardSkillFrameImg",AtlasConfig.DynamicTex)
	self.cardSkillImg = self:AddComponent(UIImage,"panelImg/CardInfoObj/cardSkillImg",AtlasConfig.DynamicTex)
	self.infoImg = self:AddComponent(UIImage,"panelImg/CardInfoObj/infoImg",AtlasConfig.Language)
	self.typeText = self:AddComponent(UIText,"panelImg/CardInfoObj/typeText")
	self.nameText = self:AddComponent(UIText,"panelImg/CardInfoObj/nameText")
	self.bgImg = self:AddComponent(UIImage,"panelImg/Image",AtlasConfig.Language)
	self.skillInfoText = self:AddComponent(UIText,"panelImg/skillInfo")
	self.cardObj = UIUtil.FindTrans(self.transform,"panelImg/CardInfoObj")
	self.skillObj = UIUtil.FindTrans(self.transform,"panelImg/SkillInfoObj")
	self.num1 = self:AddComponent(UIText,"panelImg/Text")
	self.num2 = self:AddComponent(UIText,"panelImg/Text (1)")
	self.anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"panelImg")
end

local function OnEnable(self)
	base.OnEnable(self)
	local data = self.model.itemData
	if data == nil then
		return
	end
	self.bgImg:SetSpriteName("ui_t_c2_414")
	if data.award[1].type == 11 then
		self.cardObj.gameObject:SetActive(true)
		self.skillObj.gameObject:SetActive(false)
		self.personImg:SetSpriteName(data.haiBao)
		self.qualityImg:SetSpriteName(data.cardQuality)
		self.cardSkillFrameImg:SetSpriteName(data.frame)
		self.cardSkillImg:SetSpriteName(data.icon)
		self.infoImg:SetSpriteName(data.picture)
		self.typeText:SetText(data.cardType)
		self.nameText:SetText(data.cardName)
	elseif data.award[1].type == 13 then
		self.cardObj.gameObject:SetActive(false)
		self.skillObj.gameObject:SetActive(true)
		self.costImg:SetSpriteName(data.cardQuality)
		self.skillIcon:SetSpriteName(data.icon)
		self.cardSkillFrameImg:SetSpriteName(data.frame)
		self.skillInfoImg:SetSpriteName(data.picture)
	end
	self.skillInfoText:SetText(data.des)
	local chapterIndex=(math.floor(data.lvId/100))%100
	local passIndex=(math.floor(data.lvId%100))
	self.num1:SetText(chapterIndex)
	self.num2:SetText(passIndex)
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

UITargetAwardView.OnCreate = OnCreate
UITargetAwardView.OnEnable = OnEnable
UITargetAwardView.OnRefresh = OnRefresh
UITargetAwardView.OnAddListener = OnAddListener
UITargetAwardView.OnRemoveListener = OnRemoveListener
UITargetAwardView.OnDestroy = OnDestroy

return UITargetAwardView
