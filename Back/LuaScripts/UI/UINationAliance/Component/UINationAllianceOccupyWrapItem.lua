local UINationAllianceOccupyWrapItem = BaseClass("UINationEnterAlianceWrapItem", UIWrapComponent)
local base = UIWrapComponent

local NationUtil = require "GameLogic.Nation.NationUtil"

local function OnCreate(self)
    base.OnCreate(self)
    self.bg = self:AddComponent(UIImage, "")
    self.name_Text = self:AddComponent(UIText, "name")
    self.type_Text = self:AddComponent(UIText, "type")
    self.domain_Text = self:AddComponent(UIText, "domain")
    self.name_UIButton = self:AddComponent(UIButton, "name")
    self.name_UIButton:SetOnClick(function()
        local data = self.view.model.holdBuildings[self.index]
        NationUtil.TurnToOnePositionByPointData(data.posID, 0, 0)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1
    local data = self.view.model.holdBuildings[self.index]
    self.bg:SetEnabled((real_index + 1) % 2 == 0)
    self.name_Text:SetText(data.name)
    self.type_Text:SetText(data.type)
    self.domain_Text:SetText(data.region)
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    base.OnDestroy(self)
end

UINationAllianceOccupyWrapItem.OnCreate = OnCreate
UINationAllianceOccupyWrapItem.OnRefresh = OnRefresh
UINationAllianceOccupyWrapItem.OnDestroy = OnDestroy
UINationAllianceOccupyWrapItem.OnDisable = OnDisable
return UINationAllianceOccupyWrapItem