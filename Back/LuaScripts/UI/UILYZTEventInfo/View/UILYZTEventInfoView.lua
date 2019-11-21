
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTEventInfoView = BaseClass("UILYZTEventInfoView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.back_btn = self:AddComponent(UIButton,"Bg")
	self.back_btn:SetOnClick(function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventInfo)
	end)

	self.pic_img = self:AddComponent(UIImage,"Bg/Pic",AtlasConfig.DynamicTex)
	self.desc_text = self:AddComponent(UIText,"Bg/Text")

end

local function OnEnable(self)
	base.OnEnable(self)
	self.pic_img:SetSpriteName(self.model.pic)
	self.desc_text:SetText(self.model.desc)
end


local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UILYZTEventInfoView.OnCreate = OnCreate
UILYZTEventInfoView.OnEnable = OnEnable
UILYZTEventInfoView.OnDestroy = OnDestroy

return UILYZTEventInfoView
