--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationPunitiveMainView = BaseClass("UINationPunitiveMainView", UIBaseView)
local base = UIBaseView
local UIAreaItem = require "UI.UINationPunitiveMain.Component.UIAreaItem"
local UIMonsterTypeItem = require "UI.UINationPunitiveMain.Component.UIMonsterTypeItem"
local UIMonsterItem = require "UI.UINationPunitiveMain.Component.UIMonsterItem"

local function MarkOneResPoint(self)
    local pos = self.outlawUITab[self.model.findTarget.subPosID + 1].transform.localPosition

    self.ArrowImageTrans.localPosition = Vector3.New(pos.x, pos.y + 110, 0)
    self.ArrowImageTrans.gameObject:SetActive(true)

    local offsetY = 0
    local value = 5
    local function timerCallBack(self)
        offsetY = offsetY + value
        self.ArrowImageTrans.localPosition = Vector3.New(pos.x, pos.y + 110 + offsetY, 0)
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

local function RefreshAreaItemData(self)
    for i = 1, NationDefine.NATION_PUNITIVE_EVERY_MAXCOUNT do
        self.outlawUITab[i]:OnRefresh(self.model.OutlawMonsterList[i])
    end
end

local function RefreshArrowUIBtn(self, tempNum)
    if self.model.maxAreaCount == 1 then
        self.leftArrowUIButton.gameObject:SetActive(false)
        self.rightArrowUIButton.gameObject:SetActive(false)
    elseif tempNum == 1 then
        self.leftArrowUIButton.gameObject:SetActive(false)
        self.rightArrowUIButton.gameObject:SetActive(true)
    elseif tempNum == self.model.maxAreaCount then
        self.leftArrowUIButton.gameObject:SetActive(true)
        self.rightArrowUIButton.gameObject:SetActive(false)
    else
        self.leftArrowUIButton.gameObject:SetActive(true)
        self.rightArrowUIButton.gameObject:SetActive(true)
    end
end

local function OnUIMsgRefreshSearchPanel(self)
    self.item_group:RefreshGrid()
end

local function OnUIMsgSelectAreaItem(self)
    local tempNum = self.model.curSelectArea
    self.tagText:SetText(tempNum .. DataUtil.GetClientText(200071))
    if self.curSelectAreaUI ~= nil and self.curSelectAreaUI.id ~= tempNum then
        self.curSelectAreaUI.select:SetEnabled(false)
        self.curSelectAreaUI.name_text:SetColor32(49, 49, 50)
    end
    self.curSelectAreaUI = self.item_group:GetComponentByIndex(tempNum - 1)

    RefreshArrowUIBtn(self, tempNum)
end

--选中一个逃犯，打开开始战斗界面
local function OnClickOutlawItem(self, index)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    CloseMarkImage(self)
    if self.outlawUITab[index].id == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200151))
        return
    end
    self.ctrl:OpenPunitiveTargetInfo(self.outlawUITab[index].id, index - 1)
end

local function OnClickCloseOrOpenAreaPanel(self, isOpen)
    if isOpen then
        self.area_Arrow_Image.transform.localRotation = Quaternion.Euler(0, 0, 180)
        self.subAreaPanel:SetActive(true)
    else
        self.subAreaPanel:SetActive(false)
        self.searchInputField:SetText()
        self.area_Arrow_Image.transform.localRotation = Quaternion.Euler(0, 0, 0)
    end
end

local function OnCreateSearchPanel(self)
    self.searchPanelText = self:AddComponent(UIText, "Root/SearchPanel/SearchPanelText")
    self.searchPanelText:SetText(DataUtil.GetClientText(200146))
    self.monsterType_group = self:AddComponent(UIWrapGroup3D, "Root/SearchPanel/ScrollView/Content", UIMonsterTypeItem)
    self.searchPanel_maskBtn = self:AddComponent(UIButton, "Root/SearchPanel/maskButton")
    self.searchPanel_maskBtn:SetOnClick(function()
        self.searchPanel:SetActive(false)
    end)
    self.searchPanel_closeBtn = self:AddComponent(UIButton, "Root/SearchPanel/close")
    self.searchPanel_closeBtn:SetOnClick(function()
        self.searchPanel:SetActive(false)
    end)
    self.startSearchBtnText = self:AddComponent(UIText, "Root/SearchPanel/searchButton/searchButtonText")
    self.startSearchBtnText:SetText(DataUtil.GetClientText(200146))
    self.startSearchBtn = self:AddComponent(UIButton, "Root/SearchPanel/searchButton")
    self.startSearchBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if self.model.curSearchMonster == nil or self.model.curSearchMonster.Level == self.model.outlawMonsterTypeList[self.model.curSearchMonster.Type].MinLevel - 1 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200145))
            return
            --当前没有符合条件的目标
        end
        --给服务器发消息，查找
        self.ctrl:SearchOneOutlawPoint()
        self.searchPanel:SetActive(false)
    end)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.TitleBar = UIUtil.FindTrans(self.transform, "Root/TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        CloseMarkImage(self)
        self.ctrl:CloseSelf()
    end, function()
        CloseMarkImage(self)
        self.ctrl:CloseSelf()
    end, "", false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "Root/resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationPunitiveMain, ResourceBarType.NATION_MAIN, self)

    self.titleUIText = self:AddComponent(UIText, "Root/title_UIText")
    self.ArrowImageTrans = UIUtil.FindTrans(self.transform, "Root/ArrowImage")
    self.ArrowImageTrans.gameObject:SetActive(false)

    --选分区弹窗
    self.subAreaPanel = UIUtil.FindTrans(self.transform, "Root/SubAreaPanel").gameObject
    self.item_group = self:AddComponent(UIWrapGroup3D, "Root/SubAreaPanel/ScrollView/Grid", UIAreaItem)
    self.searchInputField = self:AddComponent(UIInput, "Root/SubAreaPanel/InputField")
    self.searchInputFieldPlaceholder = self:AddComponent(UIText, "Root/SubAreaPanel/InputField/Placeholder")
    self.searchInputFieldPlaceholder:SetText(DataUtil.GetClientText(200147))
    self.ensureSearchButton = self:AddComponent(UIButton, "Root/SubAreaPanel/ensureSearchButton")
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

    self.tagText = self:AddComponent(UIText, "Root/TagBtn/Text")
    self.area_Arrow_Image = self:AddComponent(UIImage, "Root/TagBtn/ArrowImage")
    self.tagBtn = self:AddComponent(UIButton, "Root/TagBtn")
    self.tagBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        CloseMarkImage(self)
        --选择分区
        if self.subAreaPanel.activeInHierarchy then
            OnClickCloseOrOpenAreaPanel(self, false)
        else
            self.item_group:SetGridPositionByIndex(self.model.curSelectArea - 1)
            self.curSelectAreaUI = self.item_group:GetComponentByIndex(self.model.curSelectArea - 1)
            OnClickCloseOrOpenAreaPanel(self, true)
            self.searchPanel:SetActive(false)
        end
    end)

    --搜索面板
    self.searchPanel = UIUtil.FindTrans(self.transform, "Root/SearchPanel").gameObject
    OnCreateSearchPanel(self)
    self.searchBtnText = self:AddComponent(UIText, "Root/SearchBtn/SearchBtnText")
    self.searchBtnText:SetText(DataUtil.GetClientText(200146))
    self.searchBtn = self:AddComponent(UIButton, "Root/SearchBtn")
    self.searchBtn:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.searchPanel:SetActive(true)
    end)

    --左右切换分区按钮
    self.leftArrowUIButton = self:AddComponent(UIButton, "Root/leftArrow_UIButton")
    self.leftArrowUIButton:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.ctrl:OnClickArrowBtn(-1)
    end)
    self.rightArrowUIButton = self:AddComponent(UIButton, "Root/rightArrow_UIButton")
    self.rightArrowUIButton:SetOnClick(function()
        CloseMarkImage(self)
        OnClickCloseOrOpenAreaPanel(self, false)
        self.ctrl:OnClickArrowBtn(1)
    end)

    self.outlawUITab = {}
    for i = 1, NationDefine.NATION_PUNITIVE_EVERY_MAXCOUNT do
        self.outlawUITab[i] = UIMonsterItem.New(self, "Root/OutlawPanel/OutlawItem" .. i)
        self.outlawUITab[i]:OnCreate()
    end

    self.curSelectAreaUI = nil
end

local function OnEnable(self)
    base.OnEnable(self)

    --关闭场景雾效
    CS.UnityEngine.RenderSettings.fog = false

    self.titleUIText:SetText(self.model.buildName)

    local itemDataTab = self.model.AreaList
    if table.length(itemDataTab) > 0 then
        self.item_group:SetLength(#itemDataTab)
        self.item_group:SetGridPositionByIndex(self.model.curSelectArea - 1)
    else
        self.item_group:SetLength(0)
    end

    local monsterItemTab = self.model.outlawMonsterTypeList
    if table.length(monsterItemTab) > 0 then
        self.monsterType_group:SetLength(#monsterItemTab)
        self.monsterType_group:SetGridPositionByIndex(0)
    else
        self.monsterType_group:SetLength(0)
    end

    self.searchPanel:SetActive(false)
    self.subAreaPanel:SetActive(false)
    --RefreshAreaItemData(self)

    OnUIMsgSelectAreaItem(self)

    self.curSelectAreaUI = self.item_group:GetComponentByIndex(self.model.curSelectArea - 1)

    if self.model.findTarget ~= nil then
        MarkOneResPoint(self)
    end

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_OUTLAW_REFRESH, RefreshAreaItemData)
    self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_SELECT_AREA, OnUIMsgSelectAreaItem)
    self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_REFRESH_SEARCH, OnUIMsgRefreshSearchPanel)
    --self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_SEARCH_MONSTER, OnUIMsgFindOneOutlaw)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_OUTLAW_REFRESH, RefreshAreaItemData)
    self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_SELECT_AREA, OnUIMsgSelectAreaItem)
    self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_REFRESH_SEARCH, OnUIMsgRefreshSearchPanel)
    --self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_SEARCH_MONSTER, OnUIMsgFindOneOutlaw)
end

local function OnDisable(self)
    base.OnDisable(self)
    self.curSelectAreaUI = nil

    --打开场景雾效
    CS.UnityEngine.RenderSettings.fog = true
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf()
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationPunitiveMain)

    for i = 1, NationDefine.NATION_PUNITIVE_EVERY_MAXCOUNT do
        self.outlawUITab[i]:OnDestroy()
    end
end

UINationPunitiveMainView.OnCreate = OnCreate
UINationPunitiveMainView.OnEnable = OnEnable
UINationPunitiveMainView.OnRefresh = OnRefresh
UINationPunitiveMainView.OnAddListener = OnAddListener
UINationPunitiveMainView.OnRemoveListener = OnRemoveListener
UINationPunitiveMainView.OnDisable = OnDisable
UINationPunitiveMainView.OnDestroy = OnDestroy
UINationPunitiveMainView.OnClickOutlawItem = OnClickOutlawItem

return UINationPunitiveMainView
