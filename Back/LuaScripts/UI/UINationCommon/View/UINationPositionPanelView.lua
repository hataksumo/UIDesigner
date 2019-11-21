--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationPositionPanelView = BaseClass("UINationPositionPanelView", UIBaseView)
local base = UIBaseView
local UINationPosItem = require "UI.UINationCommon.Component.UINationPosItem"

local function OnUIMsgRefreshPosList(self)
    local posTab = self.model.posList
    if #posTab > 0 then
        self.posPanelGroupWrap:SetLength(#posTab)
        self.posPanelGroupWrap:SetGridPositionByIndex(0)
    else
        self.posPanelGroupWrap:SetLength(0)
    end

    self.Count_UIText:SetText(string.format(DataUtil.GetClientText(200185), self.model.count))
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.close_UIButton = self:AddComponent(UIButton, "close_UIButton")
    self.close_UIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.maskBtn = self:AddComponent(UIButton, "maskBtn")
    self.maskBtn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.posPanelGroupWrap = self:AddComponent(UIWrapGroup3D, "ScrollView/Viewport/Content", UINationPosItem)
    self.posPanelTitleText = self:AddComponent(UIText, "Title_UIText")
    self.posPanelTitleText:SetText(DataUtil.GetClientText(200186))

    self.Count_UIText = self:AddComponent(UIText, "Count_UIText")
end

local function OnEnable(self)
    base.OnEnable(self)

    OnUIMsgRefreshPosList(self)

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_NATION_POS_PANEL_REFRESH, OnUIMsgRefreshPosList)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_POS_PANEL_REFRESH, OnUIMsgRefreshPosList)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationPositionPanelView.OnCreate = OnCreate
UINationPositionPanelView.OnEnable = OnEnable
UINationPositionPanelView.OnRefresh = OnRefresh
UINationPositionPanelView.OnAddListener = OnAddListener
UINationPositionPanelView.OnRemoveListener = OnRemoveListener
UINationPositionPanelView.OnDestroy = OnDestroy

return UINationPositionPanelView
