---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by diyigeng.
--- DateTime: 2019/6/19 10:55
---


local UINationAllianceManagerPanel = BaseClass("UINationAllianceManagerPanel", UIBaseContainer)
local base = UIBaseContainer

local UINationAlianceManagerWrapItem = require "UI.UINationAliance.Component.UINationAlianceManagerWrapItem"

--管理界面
local function OnCreate(self, view)
    base.OnCreate(self)
    self.view = view
    self.model = view.model
    self.ctrl = view.ctrl

    self.memberTitle_UIText = self:AddComponent(UIText, "TitleObj/memberTitle_UIText");
    self.memberTitle_UIText:SetText(DataUtil.GetClientText(200058))
    self.regionTitle_UIText = self:AddComponent(UIText, "TitleObj/regionTitle_UIText");
    self.regionTitle_UIText:SetText(DataUtil.GetClientText(200059))
    self.forceTitle_UIText = self:AddComponent(UIText, "TitleObj/forceTitle_UIText");
    self.forceTitle_UIText:SetText(DataUtil.GetClientText(200063))

    self.ConditionSetBtn_UIButton = self:AddComponent(UIButton, "ConditionSetBtn_UIButton");
    self.ConditionSetBtn_UIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        self.ctrl:OnConditionSetBtn_UIButton()
    end)
    self.conText_UIText = self:AddComponent(UIText, "ConditionSetBtn_UIButton/conText_UIText");
    self.conText_UIText:SetText(DataUtil.GetClientText(200220))

    self.ApplyTab_UIButton = self:AddComponent(UIButton, "ManagerLayoutRight/ApplyTab_UIButton");
    self.ApplyTab_UIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        self.ctrl:OnMannagerTabPressed(self.ApplyTab_UIButton.subFuncIndex)
    end)
    self.ApplyTab_UIButton.subFuncIndex = self.model.SUB_MANAGER_TAB_FUNC_INDEX.APPLY_MANAGE
    self.ApplyTab_UIButton.btnName = self:AddComponent(UIText, "ManagerLayoutRight/ApplyTab_UIButton/ApplyTab_UIText");
    self.ApplyTab_UIButton.btnName:SetText(DataUtil.GetClientText(200270))

    self.InviteTab_UIButton = self:AddComponent(UIButton, "ManagerLayoutRight/InviteTab_UIButton");
    self.InviteTab_UIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        self.ctrl:OnMannagerTabPressed(self.InviteTab_UIButton.subFuncIndex)
    end)
    self.InviteTab_UIButton.subFuncIndex = self.model.SUB_MANAGER_TAB_FUNC_INDEX.INVITE_MANAGE
    self.InviteTab_UIButton.btnName = self:AddComponent(UIText, "ManagerLayoutRight/InviteTab_UIButton/InviteTab_UIText");
    self.InviteTab_UIButton.btnName:SetText(DataUtil.GetClientText(200271))

    self.ManagerSelectBtnObj = self:AddComponent(UIBaseContainer, "ManagerSelectBtn");
    self.ManagerSelect_UIText = self.ManagerSelectBtnObj:AddComponent(UIText, "ManagerSelect_UIText");

    self.emptyObj = UIUtil.FindTrans(self.transform, "Scrollrect/Empty").gameObject
    self.emptyText = self:AddComponent(UIText, "Scrollrect/Empty/Text")
    self.emptyText:SetText(DataUtil.GetClientText(200272))

    self.wrapGroup = self:AddComponent(UIWrapGroupDragEvent, "Scrollrect/Grid", UINationAlianceManagerWrapItem)
    self.wrapGroup:SetDragOffsetValue(-10)
    self.wrapGroup:SetOnDragCustomBeginEndEvent(self, self.__OnDragCustomBeginEndEvent)
    self.wrapGroup:SetOnDragCustomFlushEvent(self, self.__OnDragCustomFlushEvent)

    self.allTopBtnList = {}
    table.insert(self.allTopBtnList, self.ApplyTab_UIButton)
    table.insert(self.allTopBtnList, self.InviteTab_UIButton)

    self.dyTopBtnList = {} --动态按钮列表
end

local function __OnDragCustomBeginEndEvent(self, isPressedOrUp)
end

local function __OnDragCustomFlushEvent(self)
    if self.model.tabIndex ~= self.model.MAIN_FUNC_INDEX.MANAGER_TAB then
        return
    end
    if self.model.subFuncIndex == self.model.SUB_MANAGER_TAB_FUNC_INDEX.APPLY_MANAGE then
    else
        self.ctrl:OnDragAddUnionInviteRecommendRequest(self.model.inviteManagePageIndex + 1)
    end
end

local function GetDynaimcFunctionIndexByAbsSubIndex(self, absTabIndex)
    for i, v in ipairs(self.model.subManagerTabIndexs) do
        if v == absTabIndex then
            return i
        end
    end
    return -1
end

--刷新动态页签数据
local function ReflushDynamicTabs(self)
    self.dyTopBtnList = {}
    for i, v in ipairs(self.model.subManagerTabIndexs) do
        table.insert(self.dyTopBtnList, self.allTopBtnList[v])
    end

    for i, v1 in ipairs(self.allTopBtnList) do
        local found = false
        for j, v2 in ipairs(self.allTopBtnList) do
            if v1 == v2 then
                found = true
                break
            end
        end
        if found then
            v1.gameObject:SetActive(true)
        else
            v1.gameObject:SetActive(false)
        end
    end
    self.ConditionSetBtn_UIButton.gameObject:SetActive(self.model.hasManagerSetLimit)
end

local function OnEnable(self)
    base.OnEnable(self)

    self:OnAddListener()
end

local function OnDisable(self)
    base.OnDisable(self)

    self:OnRemoveListener()
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

local function DoChangeSubTab(self, subFuncIndex)
    local dyIndex = self:GetDynaimcFunctionIndexByAbsSubIndex(subFuncIndex)
    if dyIndex == -1 then
        self.ManagerSelectBtnObj:SetActive(false)
        return
    end
    self.ManagerSelectBtnObj:SetActive(true)
    self.ManagerSelectBtnObj.transform:SetParent(self.dyTopBtnList[dyIndex].transform)
    self.ManagerSelectBtnObj.localScale = Vector3.New(1, 1, 1)
    self.ManagerSelectBtnObj.rectTransform.anchoredPosition = Vector3.New(0, 0, 0)
    self.ManagerSelect_UIText:SetText(self.dyTopBtnList[dyIndex].btnName:GetText())
end

--切换页签（申请管理，邀请）
local function __OnTabTargetByIndex(self, __lastSelectIndex, sendParams)
    if self.model.tabIndex == self.model.MAIN_FUNC_INDEX.MANAGER_TAB then
        self:ReflushDynamicTabs()
        self:DoChangeSubTab(self.model.subFuncIndex)
        --是否为nil
        if self.model.subFuncIndex == self.model.SUB_MANAGER_TAB_FUNC_INDEX.APPLY_MANAGE then
            if #self.view.model.managerDataMemberList <= 0 then
                self.emptyObj:SetActive(true)
            else
                self.emptyObj:SetActive(false)
            end
        else
            self.emptyObj:SetActive(false)
        end

        if sendParams.switchType == self.model.SUB_MANAGER_TAB_SWITCH_TYPE.BY_TAB then
            self.wrapGroup:SetLength(#self.view.model.managerDataMemberList)
            self.wrapGroup:ResetToBeginning()
        else
            self.wrapGroup:SetLength(#self.view.model.managerDataMemberList)
            self.wrapGroup:WrapContent(true)
        end
    end
end

local function OnNationUnionManagerSubTabReflush(self)
    self.wrapGroup:SetLength(#self.view.model.managerDataMemberList)
    self.wrapGroup:WrapContent(true)
end

local function OnAddListener(self)
    ---- UI消息注册
    self.func = {}
    self.func[1] = Bind(self, self.OnNationUnionManagerSubTabReflush)
    UIManager:GetInstance():AddListener(UIMessageNames.ON_NATION_UNION_MANAGER_SUB_TAB_REFLUSH,
            self.func[1])
end

local function OnRemoveListener(self)
    ---- UI消息注销
    UIManager:GetInstance():RemoveListener(UIMessageNames.ON_NATION_UNION_MANAGER_SUB_TAB_REFLUSH,
            self.func[1])
    self.func = nil
end

UINationAllianceManagerPanel.OnNationUnionManagerSubTabReflush = OnNationUnionManagerSubTabReflush
UINationAllianceManagerPanel.ReflushDynamicTabs = ReflushDynamicTabs
UINationAllianceManagerPanel.GetDynaimcFunctionIndexByAbsSubIndex = GetDynaimcFunctionIndexByAbsSubIndex
UINationAllianceManagerPanel.DoChangeSubTab = DoChangeSubTab
UINationAllianceManagerPanel.__OnTabTargetByIndex = __OnTabTargetByIndex

UINationAllianceManagerPanel.OnCreate = OnCreate
UINationAllianceManagerPanel.OnEnable = OnEnable
UINationAllianceManagerPanel.OnDisable = OnDisable
UINationAllianceManagerPanel.OnAddListener = OnAddListener
UINationAllianceManagerPanel.OnRemoveListener = OnRemoveListener
UINationAllianceManagerPanel.OnDestroy = OnDestroy

UINationAllianceManagerPanel.__OnDragCustomBeginEndEvent = __OnDragCustomBeginEndEvent
UINationAllianceManagerPanel.__OnDragCustomFlushEvent = __OnDragCustomFlushEvent

return UINationAllianceManagerPanel