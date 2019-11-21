--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationResourcesMainView = BaseClass("UINationResourcesMainView", UIBaseView)
local base = UIBaseView
local UIResItem = require "UI.UINationResourcesMain.Component.UIResItem"
local UIResAreaItem = require "UI.UINationResourcesMain.Component.UIResAreaItem"
local UIResPointTypeItem = require "UI.UINationResourcesMain.Component.UIResPointTypeItem"

local function MarkOneResPoint(self, index)
    self:CloseMarkImage()
    local pos = self.resourceUITab[index].transform.localPosition

    self.ArrowImageTrans.localPosition = Vector3.New(pos.x, pos.y + 160, 0)
    self.ArrowImageTrans.gameObject:SetActive(true)

    local offsetY = 0
    local value = 5
    local function timerCallBack(self)
        offsetY = offsetY + value
        self.ArrowImageTrans.localPosition = Vector3.New(pos.x, pos.y + 160 + offsetY, 0)
        if offsetY >= 30 then
            value = -5
        elseif offsetY <= 0 then
            value = 5
        end
    end
    self.markTimer = TimerManager:GetInstance():SimpleTimerArgs(0.05, timerCallBack, self, false, false)
end

local function CloseMarkImage(self)
    if self.markTimer ~= nil then
        self.ArrowImageTrans.gameObject:SetActive(false)
        TimerManager:GetInstance():SimpleTimerStop(self.markTimer)
        self.markTimer = nil
    end
end

local function RefreshArrowUIBtn(self, tempNum)
    if self.model.maxAreaCount == 1 then
        self.left_arrowsUIButton.gameObject:SetActive(false)
        self.right_arrowsUIButton.gameObject:SetActive(false)
    elseif tempNum == 1 then
        self.left_arrowsUIButton.gameObject:SetActive(false)
        self.right_arrowsUIButton.gameObject:SetActive(true)
    elseif tempNum == self.model.maxAreaCount then
        self.left_arrowsUIButton.gameObject:SetActive(true)
        self.right_arrowsUIButton.gameObject:SetActive(false)
    else
        self.left_arrowsUIButton.gameObject:SetActive(true)
        self.right_arrowsUIButton.gameObject:SetActive(true)
    end
end

local function OnUIMsgSelectAreaItem(self)
    self.area_text:SetText(self.model.curSelectArea .. DataUtil.GetClientText(200071))
    if self.curSelectAreaUI ~= nil and self.curSelectAreaUI.id ~= self.model.curSelectArea then
        self.curSelectAreaUI.select:SetEnabled(false)
        self.curSelectAreaUI.name_text:SetColor32(49, 49, 50)
    end
    self.curSelectAreaUI = self.item_group:GetComponentByIndex(self.model.curSelectArea - 1)

    RefreshArrowUIBtn(self, self.model.curSelectArea)
end

--刷新当前分区内各个资源点的状态等
local function OnUIMsgRefreshResPointPanel(self)
    local data = nil
    for i = 1, NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT do
        data = self.model.ResourcesPointList[i + (self.model.curSelectArea - 1) * 9]
        self.resourceUITab[i]:OnRefresh(data)
    end
end

--点击,一个资源点，打开资源点详情界面
local function OnClickResPointItem(self, posID)
    CloseMarkImage(self)
    local temp = self.model.ResourcesPointList[posID]
    self.ctrl:OpenResourcesTargetInfo(temp.PosID, temp.ID, temp.State)
end

local function OnUIMsgRefreshSearchPanel(self)
    self.resPointType_group:WrapContent(true)
end

local function OnClickCloseOrOpenAreaPanel(self, isOpen)
    if isOpen then
        self.area_Arrow_Image.transform.localRotation = Quaternion.Euler(0, 0, 180)
        self.areaPanel:SetActive(true)
    else
        self.areaPanel:SetActive(false)
        self.searchInputField:SetText()
        self.area_Arrow_Image.transform.localRotation = Quaternion.Euler(0, 0, 0)
    end
end

--初始化，搜索面板
local function OnCreateSearchPanel(self)
    self.resPointType_group = self:AddComponent(UIWrapGroup3D, "BottomRoot/SearchPanel/ScrollView/Content", UIResPointTypeItem)
    self.searchPanel_maskBtn = self:AddComponent(UIButton, "BottomRoot/SearchPanel/maskButton")
    self.searchPanel_maskBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.searchPanel:SetActive(false)
    end)
    self.searchPanel_closeBtn = self:AddComponent(UIButton, "BottomRoot/SearchPanel/close")
    self.searchPanel_closeBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.searchPanel:SetActive(false)
    end)
    self.searchPanelTitle = self:AddComponent(UIText, "BottomRoot/SearchPanel/SearchPanelTitle")
    self.searchPanelTitle:SetText(DataUtil.GetClientText(200146))
    self.startSearchBtn_UIText = self:AddComponent(UIText, "BottomRoot/SearchPanel/searchButton/searchButtonText")
    self.startSearchBtn_UIText:SetText(DataUtil.GetClientText(200146))
    self.startSearchBtn = self:AddComponent(UIButton, "BottomRoot/SearchPanel/searchButton")
    self.startSearchBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if self.model.curSearchRes == nil or self.model.curSearchRes.Level == self.model.ResPointTypeTab[self.model.curSearchRes.Type].minLevel - 1 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200145))
            return
        end
        self.ctrl:SearchOneResourcesPoint()
        self.searchPanel:SetActive(false)
    end)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.TitleBar = UIUtil.FindTrans(self.transform, "TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        CloseMarkImage(self)
        self.ctrl:CloseSelf()
    end, function()
        CloseMarkImage(self)
        self.ctrl:CloseSelf()
    end, "", false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationResourcesMain, ResourceBarType.NATION_MAIN, self)

    self.titleText = self:AddComponent(UIText, "InfoRoot/Title")
    self.ArrowImageTrans = UIUtil.FindTrans(self.transform, "InfoRoot/ArrowImage")
    self.ArrowImageTrans.gameObject:SetActive(false)

    --选分区弹窗
    self.item_group = self:AddComponent(UIWrapGroup3D, "BottomRoot/SubAreaPanel/ScrollView/Grid", UIResAreaItem)
    self.areaPanel = UIUtil.FindTrans(self.transform, "BottomRoot/SubAreaPanel").gameObject

    self.searchInputField = self:AddComponent(UIInput, "BottomRoot/SubAreaPanel/InputField")
    self.searchInputFieldPlaceholder = self:AddComponent(UIText, "BottomRoot/SubAreaPanel/InputField/Placeholder")
    self.searchInputFieldPlaceholder:SetText(DataUtil.GetClientText(200147))
    self.ensureSearchButton = self:AddComponent(UIButton, "BottomRoot/SubAreaPanel/ensureSearchButton")
    self.ensureSearchButton:SetOnClick(function()
        local target = self.searchInputField:GetText()
        target = tonumber(target)
        if self.model.AreaList[target] == nil then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200148))
            return
        end
        OnClickCloseOrOpenAreaPanel(self, false)
        self.view.ctrl:OnClickSwitchOneAreaByAreaNumber(target)
    end)

    self.area_text = self:AddComponent(UIText, "BottomRoot/area_UIButton/Text")
    self.area_Arrow_Image = self:AddComponent(UIImage, "BottomRoot/area_UIButton/ArrowImage")
    self.areaUIButton = self:AddComponent(UIButton, "BottomRoot/area_UIButton")
    self.areaUIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        CloseMarkImage(self)
        --选择分区
        if self.areaPanel.activeInHierarchy then
            OnClickCloseOrOpenAreaPanel(self, false)
        else
            self.item_group:SetGridPositionByIndex(self.model.curSelectArea - 1)
            self.curSelectAreaUI = self.item_group:GetComponentByIndex(self.model.curSelectArea - 1)
            OnClickCloseOrOpenAreaPanel(self, true)
            self.searchPanel:SetActive(false)
        end
    end)

    self.searchPanel = UIUtil.FindTrans(self.transform, "BottomRoot/SearchPanel").gameObject
    OnCreateSearchPanel(self)
    self.searchBtnText = self:AddComponent(UIText, "BottomRoot/search_UIButton/searchBtnText")
    self.searchBtnText:SetText(DataUtil.GetClientText(200146))
    self.searchUIButton = self:AddComponent(UIButton, "BottomRoot/search_UIButton")
    self.searchUIButton:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.searchPanel:SetActive(true)
    end)

    self.left_arrowsUIButton = self:AddComponent(UIButton, "InfoRoot/left_arrows_UIButton")
    self.left_arrowsUIButton:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.ctrl:OnClickArrowBtn(-1)
    end)
    self.right_arrowsUIButton = self:AddComponent(UIButton, "InfoRoot/right_arrows_UIButton")
    self.right_arrowsUIButton:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.ctrl:OnClickArrowBtn(1)
    end)

    self.occupyBtnText = self:AddComponent(UIText, "BottomRoot/occupy_UIButton/occupyBtnText")
    self.occupyBtnText:SetText(DataUtil.GetClientText(200149))
    self.occupyUIButton = self:AddComponent(UIButton, "BottomRoot/occupy_UIButton")
    self.occupyUIButton:SetOnClick(function()
        self.ctrl:OpenOccupiedResLandPanel()
    end)

    self.resourceUITab = {}
    for i = 1, NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT do
        self.resourceUITab[i] = UIResItem.New(self, "InfoRoot/ResPointPanel/ResItem" .. i)
        self.resourceUITab[i]:OnCreate()
    end
    self.curSelectAreaUI = nil
end

local function OnEnable(self)
    base.OnEnable(self)

    self.titleText:SetText(self.model.buildName)

    local itemDataTab = self.model.AreaList
    if itemDataTab ~= nil then
        self.item_group:SetLength(table.length(itemDataTab))
        self.item_group:SetGridPositionByIndex(self.model.curSelectArea - 1)
    else
        self.item_group:SetLength(0)
    end

    local ResTypeItemTab = self.model.ResPointTypeTab
    if ResTypeItemTab ~= nil then
        self.resPointType_group:SetLength(table.length(ResTypeItemTab))
        self.resPointType_group:SetGridPositionByIndex(0)
    else
        self.resPointType_group:SetLength(0)
    end

    self.searchPanel:SetActive(false)
    self.areaPanel:SetActive(false)

    if self.model.findTarget ~= nil then
        MarkOneResPoint(self, self.model.findTarget)
    end

    OnUIMsgSelectAreaItem(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA_REFRESH, OnUIMsgSelectAreaItem)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_ResPoint_REFRESH, OnUIMsgRefreshResPointPanel)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_REFRESH_SEARCH, OnUIMsgRefreshSearchPanel)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_FIND_ONE_RES, MarkOneResPoint)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA_REFRESH, OnUIMsgSelectAreaItem)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_ResPoint_REFRESH, OnUIMsgRefreshResPointPanel)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_REFRESH_SEARCH, OnUIMsgRefreshSearchPanel)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_FIND_ONE_RES, MarkOneResPoint)
end

local function OnDisable(self)
    base.OnDisable(self)

    self.curSelectAreaUI = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf()
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationResourcesMain)
end

UINationResourcesMainView.OnCreate = OnCreate
UINationResourcesMainView.OnEnable = OnEnable
UINationResourcesMainView.OnRefresh = OnRefresh
UINationResourcesMainView.OnAddListener = OnAddListener
UINationResourcesMainView.OnRemoveListener = OnRemoveListener
UINationResourcesMainView.OnDisable = OnDisable
UINationResourcesMainView.OnDestroy = OnDestroy
UINationResourcesMainView.OnClickResPointItem = OnClickResPointItem
UINationResourcesMainView.CloseMarkImage = CloseMarkImage

return UINationResourcesMainView
