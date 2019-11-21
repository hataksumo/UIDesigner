--[[
-- added by wsh @ 2018-01-11
-- UILNoticeTip视图层
--]]

local UILNoticeTipView = BaseClass("UILNoticeTipView", UIBaseView)
local base = UIBaseView

local function OnCreate(self)
	base.OnCreate(self)
	self.exit=self:AddComponent(UIButton,"BgRoot/Mask/MaskBtn")
	self.exit:SetOnClick(function ()
		--UIManager:GetInstance():CloseTip()
	end)
	self.cs_obj = CS.UINoticeTip.Instance
	self.cs_obj.UIGameObject = self.gameObject
end

local function OnEnable(self)
	base.OnEnable(self)
	
	self.model.cs_func(self.cs_obj, SafeUnpack(self.model.args))
end

local function OnDestroy(self)
	self.cs_obj:DestroySelf()
	base.OnDestroy(self)
end

UILNoticeTipView.OnCreate = OnCreate
UILNoticeTipView.OnEnable = OnEnable
UILNoticeTipView.OnDestroy = OnDestroy

return UILNoticeTipView