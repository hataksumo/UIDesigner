
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIWuLingJiActiveView = BaseClass("UIWuLingJiActiveView", UIBaseView)
local base = UIBaseView
local skilldata = DataUtil.GetData("skill")


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
	self._frameUIImage = self:AddComponent(UIImage, "ParentLayout/infoParent/ItemGroup/Item/FrameSkill_UIImage",AtlasConfig.DynamicTex)
    
	self._iconUIImage = self:AddComponent(UIImage, "ParentLayout/infoParent/ItemGroup/Item/IconSkill_UIImage",AtlasConfig.DynamicTex)
    
	self._skilltypeImage = self:AddComponent(UIImage, "ParentLayout/infoParent/ItemGroup/Item/OtherSkill_UIImage",AtlasConfig.Language)
    
	self._nameUIText = self:AddComponent(UIText, "ParentLayout/infoParent/ItemGroup/Item/Name_UIText")
    
	self._featureUIText = self:AddComponent(UIText, "ParentLayout/infoParent/ItemGroup/Item/Feature_UIText")
    
	self._desUIText = self:AddComponent(UIText, "ParentLayout/infoParent/ItemGroup/Item/Des_UIText")

	self.BgCloseBtn=self:AddComponent(UIButton,"BgBtn")
	self.BgCloseBtn:SetOnClick(function()
		if self.can_back then
			LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIWuLingJiActive)
			if GuideGroup:GetInstance().Runing  then
				DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
			end
		else
			self.can_back=true
			self.eff.gameObject:SetActive(false)
			self.ani:Play("FX_UICommGetRewards_bg_stand")
		end
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	if self.model.skillid == nil then
		return
	end
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_02")
	self.eff.gameObject:SetActive(true)
	self.can_back=false
	TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		self.can_back=true
	end,nil,true)
	local skillinfo = skilldata[self.model.skillid]
	self._iconUIImage:SetSpriteName(skillinfo.Icon)
	self._nameUIText:SetText("<color=#FEC200>"..skillinfo.Name.."</color>")
	if skillinfo.ShowFireType==2 or skillinfo.ShowFireType==3then
		self._skilltypeImage.gameObject:SetActive(true)
		self._skilltypeImage:SetSpriteName(SpriteDefine:GetSkillFireByFireType(skillinfo.ShowFireType))
	else
		self._skilltypeImage.gameObject:SetActive(false)
	end
	self._frameUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(skillinfo.Quality))
	local keyStr = "";
	for i = 1, #skillinfo.FeatureWords do
		keyStr = keyStr.."["..skillinfo.FeatureWords[i].."]"
	end
	self._featureUIText:SetText(keyStr);
	self._desUIText:SetText(skillinfo.SkillSketchDes);

end


local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIWuLingJiActiveView.OnCreate = OnCreate
UIWuLingJiActiveView.OnEnable = OnEnable
UIWuLingJiActiveView.OnDestroy = OnDestroy

return UIWuLingJiActiveView
