local UIAreaItem = BaseClass("UIAreaItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    if self.id == self.view.model.curSelectArea then
        return
    end
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    self.select:SetEnabled(true)
    self.name_text:SetColor32(239, 234, 222)
    self.view.ctrl:OnClickSwitchOneAreaByAreaNumber(self.id)
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.name_text = self:AddComponent(UIText, "Text")
    self.select = self:AddComponent(UIImage, "select")
    self.item_btn = self:AddComponent(UIButton, "Image")
    self.item_btn:SetOnClick(self, OnItemClick)
    self.select:SetEnabled(false)
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.AreaList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.name_text:SetText(itemData.Name)
    if self.view.model.curSelectArea == itemData.ID then
        self.select:SetEnabled(true)
        self.name_text:SetColor32(239, 234, 222)
    else
        --未选中
        self.select:SetEnabled(false)
        self.name_text:SetColor32(49, 49, 50)
    end
end

UIAreaItem.OnCreate = OnCreate
UIAreaItem.OnRefresh = OnRefresh
return UIAreaItem