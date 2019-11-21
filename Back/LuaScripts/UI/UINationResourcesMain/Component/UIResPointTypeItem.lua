local UIResPointTypeItem = BaseClass("UIResPointTypeItem", UIWrapComponent)
local base = UIWrapComponent
local NationUtil = require "GameLogic.Nation.NationUtil"

local function OnSliderValueChange(self)
    self.count = math.modf(self.slider:GetCurrentValue())
    if self.count == self.minLevel - 1 then
        self.level_text:SetText("Lv.<color=#3E793F>" .. 0 .. "</color>/" .. self.maxLevel)
    else
        self.level_text:SetText("Lv.<color=#3E793F>" .. self.count .. "</color>/" .. self.maxLevel)
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SELECT_ResPoint, self.type, self.count, self.id)
end

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self, num)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")

    self.count = self.count + num
    if self.count < self.minLevel - 1 then
        self.count = self.minLevel - 1
    elseif self.count > self.maxLevel then
        self.count = self.maxLevel
    end
    self.slider:SetRealValue(self.count)
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.name_text = self:AddComponent(UIText, "Name")
    self.level_text = self:AddComponent(UIText, "Level")
    self.icon_image = self:AddComponent(UIImage, "Icon", AtlasConfig.DynamicNationTex)
    self.slider = self:AddComponent(UISlider, "Slider")
    --self.slider:SetOnValueChange(self, OnSliderValueChange)
    self.add_btn = self:AddComponent(UIButton, "Add")
    self.sub_btn = self:AddComponent(UIButton, "Sub")
    self.add_btn:SetOnClick(self, OnItemClick, 1)
    self.sub_btn:SetOnClick(self, OnItemClick, -1)

    self.count = nil
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    --按怪的种类来算item个数的
    local itemData = self.view.model.ResPointTypeTab[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID
    self.type = itemData.Type
    self.maxLevel = itemData.maxLevel
    self.minLevel = itemData.minLevel

    if self.count == nil then
        self.count = self.minLevel - 1
    end

    self.slider:SetMaxAndMinValue(itemData.maxLevel, itemData.minLevel - 1)
    self.name_text:SetText(NationUtil.GetResNameByType(itemData.Type))
    self.icon_image:SetSpriteName(itemData.ResImage)
    if self.view.model.curSearchRes ~= nil and self.view.model.curSearchRes.ID == self.id then
        if self.view.model.curSearchRes.Level == self.minLevel - 1 then
            self.level_text:SetText("Lv.<color=#3E793F>" .. 0 .. "</color>/" .. self.maxLevel)
        else
            self.level_text:SetText("Lv.<color=#3E793F>" .. self.view.model.curSearchRes.Level .. "</color>/" .. self.maxLevel)
        end

        self.slider:SetRealValue(self.view.model.curSearchRes.Level)
    else
        self.slider:RemoveAllOnValueChange()
        self.level_text:SetText("Lv.<color=#3E793F>0</color>/" .. self.maxLevel)
        self.count = self.minLevel - 1
        self.slider:SetRealValue(self.count)
        self.slider:SetOnValueChange(self, OnSliderValueChange)
    end
end

UIResPointTypeItem.OnCreate = OnCreate
UIResPointTypeItem.OnRefresh = OnRefresh
return UIResPointTypeItem