--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationRecordEventShowItemView = BaseClass("UINationRecordEventShowItemView", UIBaseView)
local base = UIBaseView

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.closeUIButton = self:AddComponent(UIButton, "maskBtn")
    self.closeUIButton:SetOnClick(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UINationRecordEventShowItem)
    end)

    self.itemText = self:AddComponent(UIText, "panel/name")
    self.itemIcon = self:AddComponent(UIImage, "panel/item/icon", AtlasConfig.DynamicTex)
end

local function OnEnable(self)
    base.OnEnable(self)

    local tab = self.model.tab

    self.itemText:SetText(tab.text)
    self.itemIcon:SetSpriteName(tab.icon)

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

UINationRecordEventShowItemView.OnCreate = OnCreate
UINationRecordEventShowItemView.OnEnable = OnEnable
UINationRecordEventShowItemView.OnRefresh = OnRefresh
UINationRecordEventShowItemView.OnAddListener = OnAddListener
UINationRecordEventShowItemView.OnRemoveListener = OnRemoveListener
UINationRecordEventShowItemView.OnDestroy = OnDestroy

return UINationRecordEventShowItemView
