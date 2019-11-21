
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIShenQiActiveView = BaseClass("UIShenQiActiveView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件

	--local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
	--self.sceen_width =rectTrans.sizeDelta.x
	self.bg_img=self:AddComponent(UIImage,"ParentLayout/bg/BgImage")
	self.bg_img.rectTransform.anchoredPosition=Vector3.zero
	self.bg_img.rectTransform.sizeDelta=Vector2.New(2340,600)
	self.ani=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ParentLayout/bg")
	self.eff=UIUtil.FindTrans(self.transform,"ParentLayout/bg/UICommGetRewards_Efc")
	self.artifactIcon_UIImage = self:AddComponent(UIImage,"ParentLayout/infoParent/Artifact/ArtifactIcon_UIImage",AtlasConfig.DynamicTex)
	self.artifactFrame_UIImage = self:AddComponent(UIImage,"ParentLayout/infoParent/Artifact/ArtifactIconBG1")
	self.lvObj = UIUtil.FindTrans(self.transform,"ParentLayout/infoParent/Artifact/Artifact_Level")
	self.artifact_Level_UIText = self:AddComponent(UIText, "ParentLayout/infoParent/Artifact/Artifact_Level/Artifact_Level_UIText")
    
	self.curUIText = self:AddComponent(UIText, "ParentLayout/infoParent/Artifact/cur_UIText")
    
	self.nextUIText = self:AddComponent(UIText, "ParentLayout/infoParent/Artifact/next_UIText")

	self.BgCloseBtn=self:AddComponent(UIButton,"BgBtn")
	self.BgCloseBtn:SetOnClick(function()
		if self.can_back then
			LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIShenQiActive)
		else
			self.eff.gameObject:SetActive(false)
			self.can_back=true
			self.ani:Play("FX_UICommGetRewards_bg_stand")
		end
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_02")
	self.can_back=false
	self.eff.gameObject:SetActive(true)
	TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		self.can_back=true

	end,nil,true)

	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	if self.model.data == nil then
		return
	end
	self.artifactIcon_UIImage:SetSpriteName(self.model.data.Icon)
	self.artifact_Level_UIText:SetText(self.model.data.levelinfo)
	self.curUIText:SetText(self.model.data.curText)
	self.nextUIText:SetText(self.model.data.nextText)
	local heigth=self.curUIText:GetPreferredHeight()
	self.nextUIText.rectTransform.anchoredPosition=Vector3.New(self.curUIText.rectTransform.anchoredPosition.x,self.curUIText.rectTransform.anchoredPosition.y-heigth-20,0)
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

UIShenQiActiveView.OnCreate = OnCreate
UIShenQiActiveView.OnEnable = OnEnable
UIShenQiActiveView.OnRefresh = OnRefresh
UIShenQiActiveView.OnAddListener = OnAddListener
UIShenQiActiveView.OnRemoveListener = OnRemoveListener
UIShenQiActiveView.OnDestroy = OnDestroy

return UIShenQiActiveView
