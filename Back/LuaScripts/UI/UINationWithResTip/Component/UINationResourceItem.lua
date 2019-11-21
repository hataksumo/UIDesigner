
local UINationResourceItem = BaseClass("UINationResourceItem", UIBaseContainer)
local base = UIBaseContainer
local ItemInfo = DataUtil.GetData("item")

local function OnCreate(self)
    base.OnCreate(self)
    self.icon = self:AddComponent(UIImage, "ResIcon", AtlasConfig.DynamicTex)
    self.countText = self:AddComponent(UIText, "ResText")
end

local function OnEnable(self)
    base.OnEnable(self)

end

--刷新
local function OnRefresh(self, data)
    self.icon:SetSpriteName(ItemInfo[data.type].Icon)
    self.countText:SetText(data.value)
end

UINationResourceItem.OnCreate = OnCreate
UINationResourceItem.OnEnable = OnEnable
UINationResourceItem.OnRefresh = OnRefresh

return UINationResourceItem