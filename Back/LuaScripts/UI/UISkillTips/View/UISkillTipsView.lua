
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UISkillTipsView = BaseClass("UISkillTipsView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
	self.sceen_width =rectTrans.sizeDelta.x

	self.team_rect =UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "BgPanel")
	self.frameUIImage = self:AddComponent(UIImage, "BgPanel/blackImg/frame_UIImage",AtlasConfig.DynamicTex)
    
	self.iconUIImage = self:AddComponent(UIImage, "BgPanel/blackImg/icon_UIImage",AtlasConfig.DynamicTex)
    
	self.colorUIImage = self:AddComponent(UIImage, "BgPanel/blackImg/color_UIImage",AtlasConfig.DynamicTex)
	self.colorUIImage.gameObject:SetActive(false)
	self.nameUIText = self:AddComponent(UIText, "BgPanel/blackImg/name_UIText")
    
	self.typeUIText = self:AddComponent(UIText, "BgPanel/blackImg/type_UIText")
    
	self.has_numUIText = self:AddComponent(UIText, "BgPanel/blackImg/has_num_UIText")
    self.exp = self:AddComponent(UIText,"BgPanel/blackImg/exp")
	self.infoUIText = self:AddComponent(UIText, "BgPanel/blackImg/info_UIText")
	self.skillType = self:AddComponent(UIImage,"BgPanel/blackImg/skillType",AtlasConfig.DynamicTex)
	self.closeBtn = self:AddComponent(UIButton,"BgPanel")
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	local layer =  UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
	self.half_width =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta.x/2
	--self.tip = UIUtil.FindTrans(self.transform,"BgPanel/grayImg")
	--self.tip_pos=UIUtil.FindComponent(self.tip,typeof(CS.UnityEngine.RectTransform))

end

local function OnEnable(self)
	base.OnEnable(self)
	if self.model.is_right then
		self.team_rect.anchoredPosition3D = Vector3.New(self.sceen_width/4,0,0)
	else
		self.team_rect.anchoredPosition3D = Vector3.New(-self.sceen_width/4,0,0)
	end
	self:OnRefresh()
	self.skillData = self.model.skill_single_data
	if self.skillData == nil then
		return
	end
	--self.frameUIImage:SetSpriteName(self.skillData.name)
	self.iconUIImage:SetSpriteName(self.skillData.icon)
	--self.colorUIImage:SetSpriteName(self.skillData.name)
	self.nameUIText:SetText(self.skillData.name)
	self.typeUIText:SetText(self.skillData.type_name)
	self.has_numUIText:SetText(self.model.lv)
	self.infoUIText:SetText(self.skillData.des)
	if self.skillData.showFireType==2 or self.skillData.showFireType==3 then
		self.skillType.gameObject:SetActive(true)
		self.skillType:SetSpriteName(SpriteDefine:GetSkillFireByFireType(self.skillData.showFireType))
	else
		self.skillType.gameObject:SetActive(false)
	end
	self.frameUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.skillData.quality))
	self.mouse_down_pos=CS.UnityEngine.Input.mousePosition.x
	self.exp.gameObject:SetActive(self.skillData.isExp)
	if self.view.mouse_down_pos<=self.half_width then
		--按下的位置 小于屏幕一半
		--self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos+100-self.half_width+280,0,0)
	else
		--按下的位置 大于屏幕一半
		--self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos-self.half_width-100-280,0,0)
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

UISkillTipsView.OnCreate = OnCreate
UISkillTipsView.OnEnable = OnEnable
UISkillTipsView.OnRefresh = OnRefresh
UISkillTipsView.OnAddListener = OnAddListener
UISkillTipsView.OnRemoveListener = OnRemoveListener
UISkillTipsView.OnDestroy = OnDestroy

return UISkillTipsView
