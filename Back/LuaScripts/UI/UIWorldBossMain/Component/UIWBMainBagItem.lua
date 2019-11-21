local UIWBMainBagItem = BaseClass("UIWBMainBagItem", UIWrapComponent)
local base = UIWrapComponent

local function OnClickItemBtn(self)
    --使用物品
end

local function OnCreate(self)
    base.OnCreate(self)

    self.itemBtn = self:AddComponent(UIButton, "")
    self.itemBtn:SetOnClick(function()
        OnClickItemBtn(self)
    end)

    self.icon = self:AddComponent(UIImage, "Icon", AtlasConfig.DynamicTex)
    self.nameText = self:AddComponent(UIText, "name")
    self.countText = self:AddComponent(UIText, "count")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.bagItemList[real_index + 1]
    if itemData == nil then
        return
    end
    self.ID = itemData.ID

    self.icon:SetSpriteName(itemData.Icon)
    self.nameText:SetText(itemData.Name)
    self.countText:SetText(itemData.Count)
end

local function OnDestroy(self)
    base.OnDestroy(self)

end

UIWBMainBagItem.OnCreate = OnCreate
UIWBMainBagItem.OnRefresh = OnRefresh
UIWBMainBagItem.OnDestroy = OnDestroy

return UIWBMainBagItem