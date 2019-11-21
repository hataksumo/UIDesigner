local UINationPosItem = BaseClass("UINationPosItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    local itemData = self.view.model.posList[self.index + 1]
    self.view.ctrl:TurnToOnePosition(itemData.posID, itemData.subPosID, itemData.areaID)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化

    self.icon_img = self:AddComponent(UIImage, "Icon_UIImage", AtlasConfig.DynamicTex)
    self.delete_UIButton = self:AddComponent(UIButton, "delete_UIButton")
    self.delete_UIButton:SetOnClick(function()
        local itemData = self.view.model.posList[self.index + 1]
        self.view.ctrl:DeleteOnePosItem(itemData.ID)
    end)

    self.reName_UIButton = self:AddComponent(UIButton, "reName_UIButton")
    self.reName_UIButton:SetOnClick(function()
        local itemData = self.view.model.posList[self.index + 1]
        local nameTab = {}
        nameTab.name = itemData.name
        nameTab.ID = itemData.ID
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, itemData.posID, itemData.subInfoID, itemData.subPosID, itemData.areaID, nameTab)
    end)

    self.name_UIText = self:AddComponent(UIText, "Name_UIText")
    self.pos_UIText = self:AddComponent(UIText, "Name_UIText/Pos_UIText")

    self.bg = self:AddComponent(UIImage, "bg")
    self.itemButton = self:AddComponent(UIButton, "")
    self.itemButton:SetOnClick(function()
        OnItemClick(self)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local itemData = {}
    itemData = self.view.model.posList[real_index + 1]
    self.bg:SetEnabled((real_index + 1) % 2 ~= 0)
    if itemData == nil then
        return
    end
    self.index = real_index
    self.ID = itemData.ID

    self.name_UIText:SetText(itemData.name)
    self.pos_UIText:SetText(itemData.posStr)
    --self.icon_img:SetSpriteName(itemData.icon)
end

UINationPosItem.OnCreate = OnCreate
UINationPosItem.OnRefresh = OnRefresh

return UINationPosItem