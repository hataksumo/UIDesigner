local UINationAreaItem = BaseClass("UINationAreaItem", UIWrapComponent)
local base = UIWrapComponent

local function OnClickOneCity(self)
    local data = self.data
    if data.born == self.view.model.EnumCityState.UnSelect then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200404))
        return
    elseif data.state == self.view.model.EnumCityState.Full then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200405))
        return
    elseif data.state == self.view.model.EnumCityState.UnActive then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200406))
        return
    elseif data.state == self.view.model.EnumCityState.UnStart then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200312))
        return
    end

    self.view:OnClickOneAreaItem(self.index)
end

local function OnCreate(self)
    base.OnCreate(self)

    self.name = self:AddComponent(UIText, "Name")
    self.bg = self:AddComponent(UIImage, "")
    self.state_UIImage = self:AddComponent(UIImage, "State", AtlasConfig.DynamicTex)
    self.button = self:AddComponent(UIButton, "Bg")
    self.button:SetOnClick(function()
        OnClickOneCity(self)
    end)
end

local function OnRefresh(self, data, index)
    self.data = data
    self.index = index

    self.name:SetText(data.name)
    if data.born == self.view.model.EnumCityState.UnSelect then
        self.state_UIImage:SetMat(self.view.grayMat)
    elseif data.state == self.view.model.EnumCityState.UnStart then
        self.state_UIImage:SetMat(self.view.grayMat)
    else
        self.state_UIImage:SetSpriteName(data.stateImage)
    end

    if self.view.curSelectCity == self.index then
        self.bg:SetEnabled(true)
        --self.bg:SetMat(self.view.lightMat)
    else
        self.bg:SetEnabled(false)
        --self.bg:SetMat()
    end
end

UINationAreaItem.OnCreate = OnCreate
UINationAreaItem.OnRefresh = OnRefresh
return UINationAreaItem