local UINationLineItem = BaseClass("UINationLineItem", UIBaseContainer)
local base = UIBaseContainer

local function OnCreate(self, type)
    base.OnCreate(self)
    self.lineImage = self:AddComponent(UIImage, "", AtlasConfig.DynamicNationTex)

    self.type = type  --type 1,直线，2，拐角
end

local function OnRefresh(self, isActive)
    if isActive then
        if self.type == 1 then
            self.lineImage:SetSpriteName("ui_t_c2_577")
        else
            self.lineImage:SetSpriteName("ui_t_c2_574")
        end
    else
        if self.type == 1 then
            self.lineImage:SetSpriteName("ui_t_c2_576")
        else
            self.lineImage:SetSpriteName("ui_t_c2_573")
        end
    end
end

local function OnDisable(self)
    base.OnDisable(self)

end

UINationLineItem.OnCreate = OnCreate
UINationLineItem.OnRefresh = OnRefresh
UINationLineItem.OnDisable = OnDisable

return UINationLineItem