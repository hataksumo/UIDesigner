
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIHellItemTipsView = BaseClass("UIHellItemTipsView", UIBaseView)
local base = UIBaseView

local title_path="BgPanel/grayImg/name_UIText";
local info_path = "BgPanel/grayImg/has_num_UIText";
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.titleText=self:AddComponent(UIText,title_path);
	self.infoText=self:AddComponent(UIText,info_path);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.titleText:SetText(self.model.data.title);
	self.infoText:SetText(self.model.data.info);
	self.tip = UIUtil.FindTrans(self.transform,"BgPanel/grayImg")
	self.tip_pos=UIUtil.FindComponent(self.tip,typeof(CS.UnityEngine.RectTransform))

	local layer =  UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
	self.half_width =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta.x/2
	self.mouse_down_pos=CS.UnityEngine.Input.mousePosition.x
	if self.view.mouse_down_pos<=self.half_width then
		--按下的位置 小于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos+100-self.half_width+280,0,0)
	else
		--按下的位置 大于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos-self.half_width-100-280,0,0)
	end
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

UIHellItemTipsView.OnCreate = OnCreate
UIHellItemTipsView.OnEnable = OnEnable
UIHellItemTipsView.OnRefresh = OnRefresh
UIHellItemTipsView.OnAddListener = OnAddListener
UIHellItemTipsView.OnRemoveListener = OnRemoveListener
UIHellItemTipsView.OnDestroy = OnDestroy

return UIHellItemTipsView
