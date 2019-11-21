local UINationChannelItem = BaseClass("UINationChannelItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    self.view.ctrl:SendPosInfoToChatChannel(self.ID)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化

    self.bg = self:AddComponent(UIImage, "bg")
    self.name_UIText = self:AddComponent(UIText, "Name_UIText")

    self.itemButton = self:AddComponent(UIButton, "Btn")
    self.itemButton:SetOnClick(function()
        OnItemClick(self)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local itemData = {}
    itemData = self.view.model.channelList[real_index + 1]
    self.bg:SetEnabled((real_index + 1) % 2 ~= 0)

    if itemData == nil then
        return
    end
    self.index = real_index
    self.ID = itemData.channel

    self.name_UIText:SetText(itemData.text)
end

UINationChannelItem.OnCreate = OnCreate
UINationChannelItem.OnRefresh = OnRefresh

return UINationChannelItem