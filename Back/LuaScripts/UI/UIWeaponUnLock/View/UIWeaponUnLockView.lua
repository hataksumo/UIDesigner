
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIWeaponUnLockView = BaseClass("UIWeaponUnLockView", UIBaseView)
local base = UIBaseView
local UILvPointItem = require "UI.UICardList.Component.card_weapon.UILvPointItem"
local allCardData = DataUtil.GetData("card")
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	--local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
	--self.sceen_width =rectTrans.sizeDelta.x

	self.ani=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ParentLayout/bg")
	self.eff=UIUtil.FindTrans(self.transform,"ParentLayout/bg/UICommGetRewards_Efc")
	self.bg_img=self:AddComponent(UIImage,"ParentLayout/bg/BgImage")
	self.bg_img.rectTransform.anchoredPosition=Vector3.zero
	self.bg_img.rectTransform.sizeDelta=Vector2.New(2340,600)

	self.weaponIconImg = self:AddComponent(UIImage, "ParentLayout/infoParent/commonPanel/weaponIcon", AtlasConfig.DynamicTex)
	self.weaponIconbg1 = self:AddComponent(UIImage, "ParentLayout/infoParent/commonPanel/bg2")
	self.weaponIconbg2 = self:AddComponent(UIImage, "ParentLayout/infoParent/commonPanel/bg3")
	--self.weaponIconAnim=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"commonPanel/weaponIcon")
	self.weaponLvImg = self:AddComponent(UIImage,"ParentLayout/infoParent/commonPanel/weaponBg")
	self.lvGroup=self:AddComponent(UIBaseContainer,"ParentLayout/infoParent/commonPanel/weaponLvParent")
	local lvCount=self.lvGroup.transform.childCount
	self.lvPrbList={}
	for i = 0, lvCount-1 do
		local singleTrans=self.lvGroup.transform:GetChild(i)
		local pass=UILvPointItem.New(self,singleTrans.gameObject)
		pass:OnCreate()
		table.insert(self.lvPrbList,pass)
	end
	self.nameUIText = self:AddComponent(UIText, "ParentLayout/infoParent/commonPanel/name_UIText")
	self.curUIText = self:AddComponent(UIText, "ParentLayout/infoParent/commonPanel/parent/cur_UIText")
	self.nextUIText = self:AddComponent(UIText, "ParentLayout/infoParent/commonPanel/parent/next_UIText")
	self.BgCloseBtn=self:AddComponent(UIButton,"BgBtn")
	self.BgCloseBtn:SetOnClick(function()
		if self.can_back then
			LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIWeaponUnLock)
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
	self.cardId = self.model.select_card_id
	self.weaponData = WeaponData:GetInstance().weapons[self.cardId]
	local curunseal = self.weaponData.unsealTimes
	if self.weaponData.unsealEffect[curunseal].type==1 then
		self.curUIText:SetText("激活效果 ："..self.weaponData.unsealEffect[curunseal].name.."+"..self.weaponData.unsealEffect[curunseal].value)
	else
		self.curUIText:SetText("激活效果 ："..self.weaponData.unsealEffect[curunseal].name)--"+"..self.weaponData.unsealEffect[curunseal].value)
	end

	if self.weaponData.unsealEffect[curunseal+1] ~= nil then
		if self.weaponData.unsealEffect[curunseal+1].type==1 then
			self.nextUIText:SetText("下级激活效果 ："..self.weaponData.unsealEffect[curunseal+1].name.."+"..self.weaponData.unsealEffect[curunseal+1].value)
		else
			self.nextUIText:SetText("下级激活效果 ："..self.weaponData.unsealEffect[curunseal+1].name)--.."+"..self.weaponData.unsealEffect[curunseal+1].value)
		end
	else
		self.nextUIText:SetText("")
	end
	local heigth=self.curUIText:GetPreferredHeight()
	self.nextUIText.rectTransform.anchoredPosition=Vector3.New(self.curUIText.rectTransform.anchoredPosition.x,self.curUIText.rectTransform.anchoredPosition.y-heigth-20,0)
	local float = self.weaponData.unsealTimes / self.weaponData.maxUnsealTimes
	self.weaponLvImg:SetFillVal(float)
	self.infoDes = self.weaponData.unsealEffect
	for i, v in ipairs(self.lvPrbList) do
		if  self.infoDes[i]~=nil then
			v.gameObject:SetActive(true)
			v:Refresh(self.infoDes[i],i,self)
		else
			v.gameObject:SetActive(false)
		end
	end
	self.weaponIconImg:SetSpriteName(self.weaponData.icon)
	self.nameUIText:SetText(self.weaponData.name)

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

UIWeaponUnLockView.OnCreate = OnCreate
UIWeaponUnLockView.OnEnable = OnEnable
UIWeaponUnLockView.OnRefresh = OnRefresh
UIWeaponUnLockView.OnAddListener = OnAddListener
UIWeaponUnLockView.OnRemoveListener = OnRemoveListener
UIWeaponUnLockView.OnDestroy = OnDestroy

return UIWeaponUnLockView
