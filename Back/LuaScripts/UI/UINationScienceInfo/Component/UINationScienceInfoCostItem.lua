local UINationScienceInfoCostItem = BaseClass("UINationScienceInfoCostItem", UIWrapComponent)
local base = UIWrapComponent

local function OnCreate(self)
    base.OnCreate(self)

    self.icon = self:AddComponent(UIImage, "icon", AtlasConfig.DynamicTex)
    self.countText = self:AddComponent(UIText, "countText")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.icon:SetSpriteName(data.icon)
    self.countText:SetText(data.countText)
end

UINationScienceInfoCostItem.OnCreate = OnCreate
UINationScienceInfoCostItem.OnRefresh = OnRefresh

return UINationScienceInfoCostItem