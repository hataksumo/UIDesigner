--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationPositionShareView = BaseClass("UINationPositionShareView", UIBaseView)
local base = UIBaseView
local UINationChannelItem = require "UI.UINationCommon.Component.UINationChannelItem"

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.maskBtn = self:AddComponent(UIButton, "maskBtn")
    self.maskBtn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.closeUIButton = self:AddComponent(UIButton, "close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.titleUIText = self:AddComponent(UIText, "Title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200184))

    self.channelItemGroupWrap = self:AddComponent(UIWrapGroup3D, "ScrollView/Viewport/Content", UINationChannelItem)
end

local function OnEnable(self)
    base.OnEnable(self)

    local posTab = self.model.channelList
    self.channelItemGroupWrap:SetLength(#posTab)
    self.channelItemGroupWrap:SetGridPositionByIndex(0)

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationPositionShareView.OnCreate = OnCreate
UINationPositionShareView.OnEnable = OnEnable
UINationPositionShareView.OnRefresh = OnRefresh
UINationPositionShareView.OnAddListener = OnAddListener
UINationPositionShareView.OnRemoveListener = OnRemoveListener
UINationPositionShareView.OnDestroy = OnDestroy

return UINationPositionShareView
