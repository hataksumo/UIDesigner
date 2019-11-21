--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]


local UINationRecordEventView = BaseClass("UINationRecordEventView", UIBaseView)
local base = UIBaseView
local UIActiveItem = require "UI.UINationRecordEvent.Component.UIActiveItem"

local EnumButton = {
    RecordEvent = 1,        --国战纪事
    CompetitionSeason = 2,  --赛季
}

local function OnClickRecordEvent(self)
    if self.curSelectBtn == EnumButton.RecordEvent then
        return
    end
    self.curSelectBtn = EnumButton.RecordEvent
    self.selectBtnObj:SetParent(self.recordEventBtn.transform)
    self.selectBtnObj.transform.localPosition = Vector3.zero
    self.selectBtn_UIText_one:SetText(DataUtil.GetClientText(200295))
    self.selectBtn_UIText_two:SetText(DataUtil.GetClientText(200306))
    self.record_event_text_one:SetText(DataUtil.GetClientText(200295))
    self.record_event_text_two:SetText(DataUtil.GetClientText(200306))
    self:OnRefresh()
end

local function OnClickCompetitionSeason(self)
    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200308))
    --if self.curSelectBtn == EnumButton.CompetitionSeason then
    --    return
    --end
    --return
    --self.curSelectBtn = EnumButton.CompetitionSeason
    --self.selectBtnObj:SetParent(self.competitionSeasonBtn.transform)
    --self.selectBtnObj.transform.localPosition = Vector3.zero
    --self.selectBtn_UIText:SetText("赛季")
    --self.titleUIText:SetText("赛季")
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.TitleBar = UIUtil.FindTrans(self.transform, "TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        self.ctrl:CloseSelf()
    end, function()
        self.ctrl:CloseSelf()
    end, "", false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationRecordEvent, ResourceBarType.NATION_MAIN, self)

    self.titleUIText = self:AddComponent(UIText, "Title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200307))
    self.selectBtnObj = UIUtil.FindTrans(self.transform, "bg/rightBtnPanel/SelectBtn")
    self.selectBtn_UIText_one = self:AddComponent(UIText, "bg/rightBtnPanel/SelectBtn/SelectText1")
    self.selectBtn_UIText_two = self:AddComponent(UIText, "bg/rightBtnPanel/SelectBtn/SelectText2")

    self.record_event_text_one=self:AddComponent(UIText,"bg/rightBtnPanel/FuncBtn/RecordEventBtn/AllText1")
    self.record_event_text_two=self:AddComponent(UIText,"bg/rightBtnPanel/FuncBtn/RecordEventBtn/AllText2")
    self.recordEventBtn = self:AddComponent(UIButton, "bg/rightBtnPanel/FuncBtn/RecordEventBtn")
    self.recordEventBtn:SetOnClick(function()
        OnClickRecordEvent(self)
    end)

    self.competitionSeasonBtn = self:AddComponent(UIButton, "bg/rightBtnPanel/FuncBtn/CompetitionSeasonBtn")
    self.competitionSeasonBtn:SetOnClick(function()
        OnClickCompetitionSeason(self)
    end)

    self.active_WrapGroup = self:AddComponent(UIWrapGroup3D, "RecordEventPanel/AllMailScrollRect/AllMailScrollContent", UIActiveItem)

    self.curSelectBtn = nil
end

local function __OnEnableInit(self)
    self.curSelectBtn = EnumButton.RecordEvent

    self.selectBtnObj:SetParent(self.recordEventBtn.transform)
    self.selectBtnObj.transform.localPosition = Vector3.zero
    self.selectBtn_UIText_one:SetText(DataUtil.GetClientText(200295))
    self.selectBtn_UIText_two:SetText(DataUtil.GetClientText(200306))
    self.record_event_text_one:SetText(DataUtil.GetClientText(200295))
    self.record_event_text_two:SetText(DataUtil.GetClientText(200306))

    local activeTab = self.model.activeList
    if #activeTab > 0 then
        self.active_WrapGroup:SetLength(#activeTab)
        self.active_WrapGroup:SetGridPositionByIndex(self.model.curDoingActiveID - 1)
    else
        self.active_WrapGroup:SetLength(0)
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    self:__OnEnableInit()
end
local function __OnNationEventViewRefresh(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新
    local activeTab = self.model.activeList
    if #activeTab > 0 then
        self.active_WrapGroup:SetLength(#activeTab)
        self.active_WrapGroup:SetGridPositionByIndex(self.model.curDoingActiveID - 1)
    else
        self.active_WrapGroup:SetLength(0)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_EVENT_VIEW_REFRESH, self.__OnNationEventViewRefresh);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_EVENT_VIEW_REFRESH, self.__OnNationEventViewRefresh);
end

local function OnDisable(self)
    base.OnDisable(self)

    self.curSelectBtn = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationRecordEvent)
end


UINationRecordEventView.OnCreate = OnCreate
UINationRecordEventView.OnEnable = OnEnable
UINationRecordEventView.OnRefresh = OnRefresh
UINationRecordEventView.OnAddListener = OnAddListener
UINationRecordEventView.OnRemoveListener = OnRemoveListener
UINationRecordEventView.OnDisable = OnDisable
UINationRecordEventView.OnDestroy = OnDestroy
UINationRecordEventView.__OnNationEventViewRefresh = __OnNationEventViewRefresh
UINationRecordEventView.__OnEnableInit = __OnEnableInit



return UINationRecordEventView
