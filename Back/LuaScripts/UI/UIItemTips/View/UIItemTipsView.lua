
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIItemTipsView = BaseClass("UIItemTipsView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.frameUIImage = self:AddComponent(UIImage, "BgPanel/grayImg/blackImg/frame_UIImage",AtlasConfig.DynamicTex)
    
	self.iconUIImage = self:AddComponent(UIImage, "BgPanel/grayImg/blackImg/icon_UIImage",AtlasConfig.DynamicTex)
    
	self.nameUIText = self:AddComponent(UIText, "BgPanel/grayImg/blackImg/name_UIText")
    
	self.typeUIText = self:AddComponent(UIText, "BgPanel/grayImg/blackImg/type_UIText")
    
	self.has_numUIText = self:AddComponent(UIText, "BgPanel/grayImg/blackImg/has_num_UIText")
    
	self.infoUIText = self:AddComponent(UIText, "BgPanel/grayImg/blackImg/info_UIText")
    
	self.bgBtn=self:AddComponent(UIButton,"BgPanel");
	self.bgBtn:SetOnClick(function() UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)  end);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.item_data = self.model.item_single_data
	if self.item_data == nil then
        Logger.LogError("物品Tips出错了")
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		return
	end

	self.frameUIImage:SetSpriteName(self.item_data.frame)
	self.iconUIImage:SetSpriteName(self.item_data.icon)
	self.nameUIText:SetText(self.item_data.name)
	self.typeUIText:SetText(self.item_data.type_name)
	self.has_numUIText:SetText(self.item_data.have_num)
	self.infoUIText:SetText(self.item_data.des)
	local layer =  UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
	self.half_width =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta.x/2
	self.tip = UIUtil.FindTrans(self.transform,"BgPanel/grayImg")
	self.tip_pos=UIUtil.FindComponent(self.tip,typeof(CS.UnityEngine.RectTransform))
	self.mouse_down_pos=CS.UnityEngine.Input.mousePosition.x
	if self.view.mouse_down_pos<=self.half_width then
		--按下的位置 小于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos+100-self.half_width+280,0,0)
	else
		--按下的位置 大于屏幕一半
		self.tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos-self.half_width-100-280,0,0)
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

UIItemTipsView.OnCreate = OnCreate
UIItemTipsView.OnEnable = OnEnable
UIItemTipsView.OnRefresh = OnRefresh
UIItemTipsView.OnAddListener = OnAddListener
UIItemTipsView.OnRemoveListener = OnRemoveListener
UIItemTipsView.OnDestroy = OnDestroy

return UIItemTipsView
