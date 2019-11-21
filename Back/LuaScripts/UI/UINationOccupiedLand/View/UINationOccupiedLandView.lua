--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationOccupiedLandView = BaseClass("UINationOccupiedLandView", UIBaseView)
local base = UIBaseView
local UILandItem = require "UI.UINationOccupiedLand.Component.UILandItem"
local UILandTypeItem = require "UI.UINationOccupiedLand.Component.UILandTypeItem"

local function OnUIMsgRefreshTypePanel(self)
    local landTypeTab = self.model.landTypeList
    if #landTypeTab > 0 then
        self.landTypeWrapGroup:SetLength(#landTypeTab)
        self.landTypeWrapGroup:SetGridPositionByIndex(0)
    else
        self.landTypeWrapGroup:SetLength(0)
    end
end

local function OnUIMsgRefreshPanel(self)
    local landTab = self.model.landList
    if #landTab > 0 then
        self.emptyText.gameObject:SetActive(false)
        self.landWrapGroup:SetLength(#landTab)
        self.landWrapGroup:SetGridPositionByIndex(0)
    else
        self.landWrapGroup:SetLength(0)
        if self.model.resBuildID ~= nil then
            self.emptyText.gameObject:SetActive(true)
        else
            self.emptyText.gameObject:SetActive(false)
        end
    end

    if self.model.AllSelectTypeState then
        self.allSelect_UIText:SetText(DataUtil.GetClientText(200194))
    else
        self.allSelect_UIText:SetText(DataUtil.GetClientText(200195))
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.maskBtn = self:AddComponent(UIButton, "maskBtn")
    self.maskBtn:SetOnClick(self, function()
        self.ctrl:CloseSelf()
    end)


    self.closeUIButton = self:AddComponent(UIButton, "Root/close_UIButton")
    self.closeUIButton:SetOnClick(self, function()
        self.ctrl:CloseSelf()
    end)

    self.allSelect_UIText = self:AddComponent(UIText, "Root/allSelect_UIButton/Text")
    self.allSelect_UIButton = self:AddComponent(UIButton, "Root/allSelect_UIButton")
    self.allSelect_UIButton:SetOnClick(self, function()
        self.ctrl:SelectAllType(not self.model.AllSelectTypeState)
    end)

    self.titleUIText = self:AddComponent(UIText, "Root/Title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200149))
    self.titleText1 = self:AddComponent(UIText, "Root/TextPanel/titleText1")
    self.titleText1:SetText(DataUtil.GetClientText(200196))
    self.titleText2 = self:AddComponent(UIText, "Root/TextPanel/titleText2")
    self.titleText2:SetText(DataUtil.GetClientText(200197))
    self.titleText3 = self:AddComponent(UIText, "Root/TextPanel/titleText3")
    self.titleText3:SetText(DataUtil.GetClientText(200198))
    self.titleText4 = self:AddComponent(UIText, "Root/TextPanel/titleText4")
    self.titleText4:SetText(DataUtil.GetClientText(200199))
    --self.titleText5 = self:AddComponent(UIText, "TextPanel/titleText5")
    --self.titleText5:SetText(DataUtil.GetClientText(200199))

    self.emptyText = self:AddComponent(UIText, "Root/ScrollView/Empty")
    self.emptyText:SetText(DataUtil.GetClientText(200200))
    self.landWrapGroup = self:AddComponent(UIWrapGroup3D, "Root/ScrollView/Viewport/Content", UILandItem)
    self.landTypeWrapGroup = self:AddComponent(UIWrapGroup3D, "Root/TypeScrollView/Viewport/TypeGridPanel", UILandTypeItem)
end

local function OnEnable(self)
    base.OnEnable(self)

    OnUIMsgRefreshPanel(self)
    OnUIMsgRefreshTypePanel(self)

    self.allSelect_UIText:SetText(DataUtil.GetClientText(200194))

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH, OnUIMsgRefreshPanel)
    self:AddUIListener(UIMessageNames.UI_NATION_OCCUPY_LAND_TYPE_REFRESH, OnUIMsgRefreshTypePanel)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH, OnUIMsgRefreshPanel)
    self:RemoveUIListener(UIMessageNames.UI_NATION_OCCUPY_LAND_TYPE_REFRESH, OnUIMsgRefreshTypePanel)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationOccupiedLandView.OnCreate = OnCreate
UINationOccupiedLandView.OnEnable = OnEnable
UINationOccupiedLandView.OnRefresh = OnRefresh
UINationOccupiedLandView.OnAddListener = OnAddListener
UINationOccupiedLandView.OnRemoveListener = OnRemoveListener
UINationOccupiedLandView.OnDestroy = OnDestroy

return UINationOccupiedLandView
