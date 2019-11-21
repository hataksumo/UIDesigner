--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UITrainingCampView = BaseClass("UITrainingCampView", UIBaseView)
local base = UIBaseView
local UIModeTypeItem = require "UI.UITrainingCamp.Component.UIModeTypeItem"
local UIModeTypeSubItem = require "UI.UITrainingCamp.Component.UIModeTypeSubItem"

local function RefreshSubItemLayer(self)
    local subItemDataTab = self.view.model:GetCurPassListSubItemData()
    if subItemDataTab ~= nil then
        self.subItem_wrapgroup:SetLength(#subItemDataTab)
        self.subItem_wrapgroup:SetGridPositionByIndex(self.model.curSubIndex)
    else
        self.subItem_wrapgroup:SetLength(0)
    end
end

local function OnSelectModeTypeItem(self, dataIndex)
    if dataIndex < 0 then
        return
    end

    if self.curSelectItem ~= nil then
        self.curSelectItem.select:SetActive(false)
    end
    self.curSelectItem = self.item_wrapgroup:GetComponentByIndex(dataIndex)
    self.curSelectItem.select:SetActive(true)
    RefreshSubItemLayer(self)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.curSelectItem = nil
    self.item_wrapgroup = self:AddComponent(UIWrapGroup3D, "Parent/Left/ScrollView1/Grid1", UIModeTypeItem)
    self.subItem_wrapgroup = self:AddComponent(UIWrapGroup3D, "Parent/Right/ScrollView2/Grid2", UIModeTypeSubItem)
    self.resourceBarParent=UIUtil.FindTrans(self.transform,"Parent/resourceBarParent")
    UIUtil.CreatCloseBtnComponent(self,self.resourceBarParent,function(go) self.closeComponent=go end,function()
        self.ctrl.CloseSelf()
    end,function() UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE, "UITrainingCamp") end ,"集训营",true,10)
end

local function OnEnable(self)
    base.OnEnable(self)

    local itemDataTab = self.model.passTagList
    if itemDataTab ~= nil then
        self.item_wrapgroup:SetLength(#itemDataTab)
        self.item_wrapgroup:SetGridPositionByIndex(self.model.curIndex)
    else
        self.item_wrapgroup:SetLength(0)
    end

    RefreshSubItemLayer(self)

    self.curSelectItem = self.item_wrapgroup:GetComponentByIndex(self.model.curIndex)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UITRAININGCAMP_ON_SELECTITEM, OnSelectModeTypeItem)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UITRAININGCAMP_ON_SELECTITEM, OnSelectModeTypeItem)
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.curSelectItem ~= nil then
        self.curSelectItem.select:SetActive(false)
    end
    self.curSelectItem = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UITrainingCampView.OnCreate = OnCreate
UITrainingCampView.OnEnable = OnEnable
UITrainingCampView.OnRefresh = OnRefresh
UITrainingCampView.OnAddListener = OnAddListener
UITrainingCampView.OnRemoveListener = OnRemoveListener
UITrainingCampView.OnDisable = OnDisable
UITrainingCampView.OnDestroy = OnDestroy

return UITrainingCampView
