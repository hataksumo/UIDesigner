local UILandTypeItem = BaseClass("UILandTypeItem", UIWrapComponent)
local base = UIWrapComponent

local function OnValueChangedByToggle(self, value)
    local itemData = self.view.model.landTypeList[self.index + 1]
    if value == itemData.isSelect then
        return
    end

    if value then
        itemData.isSelect = true
    else
        itemData.isSelect = false
    end
    self.view.ctrl:ShowLandBySelectType()
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.label_UIText = self:AddComponent(UIText, "Label_UIText")
    self.count_UIText = self:AddComponent(UIText, "Count_UIText")

    self.toggle = self:AddComponent(UIToggle, "")
    self.toggle:SetValueChanged(function(value)
        OnValueChangedByToggle(self, value)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.landTypeList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.count_UIText:SetText(itemData.count)
    if itemData.type == self.view.model.EnumLandType.WarCell then
        self.label_UIText:SetText(DataUtil.GetClientText(200192) .. "Lv." .. itemData.level)
    elseif itemData.type == self.view.model.EnumLandType.ResPoint then
        self.label_UIText:SetText(DataUtil.GetClientText(200193) .. "Lv." .. itemData.level)
    end

    if itemData.isSelect then
        self.toggle:SetIsOn(true)
    else
        self.toggle:SetIsOn(false)
    end
end

UILandTypeItem.OnCreate = OnCreate
UILandTypeItem.OnRefresh = OnRefresh
return UILandTypeItem