local UIDropItem = BaseClass("UIDropItem", UIWrapComponent)
local base = UIWrapComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.count_text = self:AddComponent(UIText, "Count")
    self.icon_image = self:AddComponent(UIImage, "Icon", AtlasConfig.DynamicTex)
    self.quality_image = self:AddComponent(UIImage, "Quality", AtlasConfig.DynamicTex)

    self.info_iconPress = self:AddComponent(UIEventTrigger, "")
    self.info_iconPress:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips, self.id)
    end, (function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end), true)
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.dropItemList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.count_text:SetText(itemData.Count)
    self.icon_image:SetSpriteName(itemData.ResImage)
    self.quality_image:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData.Quality))
end

UIDropItem.OnCreate = OnCreate
UIDropItem.OnRefresh = OnRefresh
return UIDropItem