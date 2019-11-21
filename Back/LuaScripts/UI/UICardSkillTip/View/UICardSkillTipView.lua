
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardSkillTipView = BaseClass("UICardSkillTipView", UIBaseView)
local base = UIBaseView
local skillitem=require "UI.UICardList.Component.card_skill.UICardSkillWrap"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.name=self:AddComponent(UIText, "bg/skilltitle_bg/skill_name")
	self.type=self:AddComponent(UIText, "bg/skilltype_bg/skill_lv")
	self.des=self:AddComponent(UIText, "bg/skill_bg/skill_des")
	self.skillinfo =skillitem.New(self,"bg/SkillIcon")
	local layer =  UIManager:GetInstance():GetLayer(UILayers.TipLayer.Name)
	self.half_width =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta.x/2
	self.skillinfo:OnCreate(self)
end

local function OnEnable(self)
	base.OnEnable(self)
	Logger.Log("打开技能")
	self:OnRefresh()
	self.mouse_down_pos=CS.UnityEngine.Input.mousePosition.x
	self.tip = UIUtil.FindTrans(self.transform,"bg")
	self.tip_pos=UIUtil.FindComponent(self.tip,typeof(CS.UnityEngine.RectTransform))
	if self.mouse_down_pos<=self.half_width then
		--按下的位置 小于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.mouse_down_pos+100-self.half_width+280,0,0)
	else
		--按下的位置 大于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.mouse_down_pos-self.half_width-100-280,0,0)
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

UICardSkillTipView.OnCreate = OnCreate
UICardSkillTipView.OnEnable = OnEnable
UICardSkillTipView.OnRefresh = OnRefresh
UICardSkillTipView.OnAddListener = OnAddListener
UICardSkillTipView.OnRemoveListener = OnRemoveListener
UICardSkillTipView.OnDestroy = OnDestroy

return UICardSkillTipView
