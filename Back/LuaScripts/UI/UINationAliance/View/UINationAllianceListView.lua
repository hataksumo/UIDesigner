---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/4/22 10:32
---

local UINationAllianceListView = BaseClass("UINationAllianceListView", UIBaseView)
local ResourceBarComponentManager = require("UI.UIResourceBar.ResourceBarComponentManager");
local base = UIBaseView
local aliance_enter_layout_obj = "ParentLayout/EnterAlianceLayout";
local aliance_creat_layout_obj = "ParentLayout/CreatAlianceLayout";
local aliance_invite_layout_obj = "ParentLayout/AlianceInviteLayout";
local close_btn_path = "ParentLayout/TopLeft";--new
local resource_bar_parent_path = "ParentLayout/resourceBarParent";
local select_btn_path = "ParentLayout/SelectBtn";
local right_btns_parent = "ParentLayout/UILayoutRight";
local select_btn_text_path = "ParentLayout/SelectBtn/SelectText";
local searce_btn_path = "ParentLayout/EnterAlianceLayout/SearchBtn";
local no_invite = "ParentLayout/AlianceInviteLayout/AlianceList/Bg/NoInvite"--*
local no_aliance = "ParentLayout/EnterAlianceLayout/NoAliance"--*
--加入联盟
local searce_input_field_path = "ParentLayout/EnterAlianceLayout/AlianceField";
local down_time_text_path = "ParentLayout/EnterAlianceLayout/TitleObj/DownTime";
local UINationEnterAlianceWrapItem = require "UI.UINationAliance.Component.UINationEnterAlianceWrapItem"
local aliance_List_wrap_group_path = "ParentLayout/EnterAlianceLayout/AlianceList/Scrollrect/Grid";

--创建联盟
local aliance_name_input_path = "ParentLayout/CreatAlianceLayout/AlianceNameField";
local aliance_notice_input_path = "ParentLayout/CreatAlianceLayout/AlianceNoticeField";
local apply_request_text_path = "ParentLayout/CreatAlianceLayout/conditionRequest/conditoinText";
local left_btn_path = "ParentLayout/CreatAlianceLayout/conditionRequest/leftBtn";
local right_btn_path = "ParentLayout/CreatAlianceLayout/conditionRequest/rightBtn";
local conditon_parent_path = "ParentLayout/CreatAlianceLayout/conditionLayout/ConditionList";
local creat_aliance_btn_path = "ParentLayout/CreatAlianceLayout/CreatBtn";
--联盟邀请
local aliance_invite_wrap_group_path = "ParentLayout/AlianceInviteLayout/AlianceList/Scrollrect/InviteGrid";
local UINationAlianceInviteWrapItem = require "UI.UINationAliance.Component.UINationAlianceInviteWrapItem"

local function __TabClearByIndex(self, index, force)
    if index == self.model.FUNC_INDEX.UNION_LIST then
        self:DisposeJoinUnionTimer()
    elseif index == self.model.FUNC_INDEX.CREATE_UNION then

    else

    end
    if not force then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_RESET, index)
    end
end

local function __TabTargetByIndex(self, targetIndex, __lastSelectIndex, force)
    if targetIndex == self.model.FUNC_INDEX.UNION_LIST then
        self.searchInputField:SetText("")
        self.downTimeText:SetText("")
        self.alianceListWrapGroup:SetLength(0);
        self.alianceListWrapGroup:ResetToBeginning();
    elseif targetIndex == self.model.FUNC_INDEX.CREATE_UNION then


        self.alianceNameInput:SetText("");
        self.alianceNoticeInput:SetText("");
        self.applyRequestIndex = 1;
        self.applyRequestText:SetText(self.model.applyCondition[self.applyRequestIndex]);
        for i, v in ipairs(self.creatConditonList) do
            v.obj:SetActive(self.model.creatConditon[i] ~= nil);
            if self.model.creatConditon[i] ~= nil then
                v.txt:SetText(self.model.creatConditon[i]);
            end
        end
    else
        self.alianceInviteWrapGroup:SetLength(0);
        self.alianceInviteWrapGroup:ResetToBeginning();
    end

    if not force then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_SWITCH, targetIndex, __lastSelectIndex)
    end
end

---- 功能索引
--local FUNC_INDEX ={
--    UNION_LIST = 1, --现有联盟列表
--    CREATE_UNION = 2, -- 创建联盟
--    INVITE_LIST = 3, -- 邀请列表
--}

local function __ChangeTabBtn(self, index, force)
    Logger.LogVars("__ChangeTabBtn byIndex : ", index)
    local __lastSelectIndex = self.selectBtnText.__lastSelectIndex

    self:__TabClearByIndex(__lastSelectIndex, force)

    for i, v in ipairs(self.layoutGroup) do
        self.layoutGroup[i].gameObject:SetActive(i == index);
    end
    local btnData = self.rightBtnList[index]
    self.selectBtn.transform:SetParent(btnData.btn.transform);
    self.selectBtn.localScale = Vector3.New(1, 1, 1);
    self.selectBtn.anchoredPosition = Vector3.New(0, 0, 0);
    self.selectBtnText:SetText(btnData.btnName:GetText());
    if not IsNull(btnData.redPoint) then
        btnData.redPoint:SetAsLastSibling()
    end
    self.selectBtnText.__lastSelectIndex = index

    self:__TabTargetByIndex(index, __lastSelectIndex, force)
end

--右侧按钮点击
local function OnRightBtnClick(self, index)
    local __lastSelectIndex = self.selectBtnText.__lastSelectIndex
    if __lastSelectIndex == index then
        return
    end
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
    self.__ChangeTabBtn(self, index, false);
end

local function OnCreate(self)
    base.OnCreate(self)
    --[
    self.invite = self:AddComponent(UIImage, no_invite);--*
    self.aliance = self:AddComponent(UIImage, no_aliance);--*
    --  self.invite:SetActive(false)--csf
    self.TitleBar = UIUtil.FindTrans(self.transform, close_btn_path)
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        if self.one_in then
            self.one_in = false
            --  self:CloseAni(true)
            self.ctrl:CloseSelf()
        end
    end, function()
        if self.one_in then
            self.one_in = false
            -- self:CloseAni()
            self.ctrl:CloseSelf()
        end
    end, DataUtil.GetClientText(200055), false, 0, true);
    --]

    self.resourceBarParent = UIUtil.FindTrans(self.transform, resource_bar_parent_path)
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationAllianceList, ResourceBarType.NATION_MAIN, self)

    --公用
    --local FUNC_INDEX ={
    --    UNION_LIST = 1, --现有联盟列表
    --    CREATE_UNION = 2, -- 创建联盟
    --    INVITE_LIST = 3, -- 邀请列表
    --}
    self.layoutGroup = {};
    self.layoutGroup[self.model.FUNC_INDEX.UNION_LIST] = UIUtil.FindTrans(self.transform, aliance_enter_layout_obj);
    self.layoutGroup[self.model.FUNC_INDEX.CREATE_UNION] = UIUtil.FindTrans(self.transform, aliance_creat_layout_obj);
    self.layoutGroup[self.model.FUNC_INDEX.INVITE_LIST] = UIUtil.FindTrans(self.transform, aliance_invite_layout_obj);
    --self.closeBtn=self:AddComponent(UIButton,close_btn_path);
    --self.closeBtn:SetOnClick(function()
    --    LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
    --    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAllianceList);
    --end)

    self.selectBtn = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), select_btn_path);
    self.selectBtnText = self:AddComponent(UIText, select_btn_text_path);
    self.rightBtnParent = self:AddComponent(UIBaseContainer, right_btns_parent);
    self.rightBtnList = {};
    for i = 1, 3 do
        local tempBtn = self.rightBtnParent:AddComponent(UIButton, i - 1);
        tempBtn:SetOnClick(self, OnRightBtnClick, i);
        local btnText = tempBtn:AddComponent(UIText, "Text"..i);
        local redPointTran = UIUtil.FindTrans(tempBtn.transform,"redpoint");
        local btnData = { btn = tempBtn, btnName = btnText}
        if not IsNull(redPointTran) then
            btnData.redPoint = redPointTran
        end
        table.insert(self.rightBtnList,btnData);
    end

    --加入联盟
    self.searchBtn = self:AddComponent(UIButton, searce_btn_path);
    self.searchBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        local searchText = self.searchInputField:GetText()
        self.ctrl:OnClickSearchBtn(searchText)
    end)
    self.searchInputField = self:AddComponent(UIInput, searce_input_field_path);
    self.enter_aliance_text=self:AddComponent(UIText,"ParentLayout/UILayoutRight/EnterAlianceBtn/Text1")

    self.search_tip_text=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/AlianceField/Placeholder1")
    self.search_btn_text=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/SearchBtn/SearchText1")
    self.alliance_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/AllianceTitle")
    self.lv_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/LvTitle")
    self.member_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/MemberTitle")
    self.belong_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/BelongTitle")
    self.hold_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/HoldTitle")
    self.power_title=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/TitleObj/PowerTitle")



    self.downTimeText = self:AddComponent(UIText, down_time_text_path);
    self.alianceListWrapGroup = self:AddComponent(UIWrapGroupDragEvent, aliance_List_wrap_group_path, UINationEnterAlianceWrapItem);
    self.alianceListWrapGroup:SetDragOffsetValue(-5)
    self.alianceListWrapGroup:SetOnDragCustomBeginEndEvent(self, self.__OnDragCustomBeginEndEvent)
    self.alianceListWrapGroup:SetOnDragCustomFlushEvent(self, self.__OnDragCustomFlushEvent)
    --创建联盟
    self.alianceNameInput = self:AddComponent(UIInput, aliance_name_input_path);
    self.alianceNoticeInput = self:AddComponent(UIInput, aliance_notice_input_path);
    self.create_aliance_text=self:AddComponent(UIText,"ParentLayout/UILayoutRight/CreatAlianceBtn/Text2")

    self.applyRequestText = self:AddComponent(UIText, apply_request_text_path);
    self.alliance_name_tltle=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/AlianceNameField/AllianceNameText")
    self.alliance_name_tip=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/AlianceNameField/Placeholder2")
    self.alliance_notice_title=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/AlianceNoticeField/AlianceNoticeText")
    self.alliance_notice_tip=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/AlianceNoticeField/Placeholder3")
    self.condition_req_title=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/conditionRequest/conditionRequestText")
    self.condition_lay_title=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/conditionLayout/conditionLayoutText")
    self.creat_btn_text=self:AddComponent(UIText,"ParentLayout/CreatAlianceLayout/CreatBtn/SearchText")
    --self.applyRequestIndex=1;
    self.leftBtn = self:AddComponent(UIButton, left_btn_path);
    self.leftBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        self.applyRequestIndex = self.applyRequestIndex - 1 < 1 and 2 or 1;
        self.applyRequestText:SetText(self.model.applyCondition[self.applyRequestIndex]);
    end)
    self.rightBtn = self:AddComponent(UIButton, right_btn_path);
    self.rightBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        --self.applyCondition={[self.APPLY_INDEX.EVERY_ONE]="任何人均可加入",[self.APPLY_INDEX.NEED_APPLY]="需要申请待审批后加入"};
        self.applyRequestIndex = self.applyRequestIndex + 1 > 2 and 1 or 2;
        self.applyRequestText:SetText(self.model.applyCondition[self.applyRequestIndex]);
    end)
    self.conditonParent = self:AddComponent(UIBaseContainer, conditon_parent_path);
    self.creatAlianceBtn = self:AddComponent(UIButton, creat_aliance_btn_path);
    self.creatAlianceBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        local name = self.alianceNameInput:GetText()
        local notice = self.alianceNoticeInput:GetText()
        local apply = self.applyRequestIndex
        --name,notice,apply
        self.ctrl:OnClickCreateUnion(name, notice, apply)
    end)
    self.creatConditonList = {};
    local count = self.conditonParent.transform.childCount;
    for i = 1, count do
        local tempItem = self.conditonParent:AddComponent(UIBaseContainer, i - 1);
        table.insert(self.creatConditonList, { obj = tempItem.transform.gameObject, txt = tempItem:AddComponent(UIText, "ConditionText") });
    end
    --联盟邀请
    self.alianceInviteWrapGroup = self:AddComponent(UIWrapGroupDragEvent, aliance_invite_wrap_group_path, UINationAlianceInviteWrapItem);
    self.alianceInviteWrapGroup:SetDragOffsetValue(-10)
    self.aliance_invite_text=self:AddComponent(UIText,"ParentLayout/UILayoutRight/AlianceInviteBtn/Text3")

    self.invite_alliance_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/AllianceName")
    self.invite_lv_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/LvName")
    self.invite_member_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/MemberName")
    self.invite_belong_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/BelongName")
    self.invite_hold_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/HoldName")
    self.invite_power_name=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/TitleObj/PowerName")

    self.no_invite_text=self:AddComponent(UIText,"ParentLayout/AlianceInviteLayout/AlianceList/Bg/NoInvite/NoInviteText")
    self.no_alliance_text=self:AddComponent(UIText,"ParentLayout/EnterAlianceLayout/NoAliance/NoAllianceText")
    --self.alianceListWrapGroup:SetOnDragCustomBeginEndEvent(self,self.__OnDragCustomBeginEndEvent)
    --self.alianceListWrapGroup:SetOnDragCustomFlushEvent(self,self.__OnDragCustomFlushEvent)

end

local function __OnDragCustomBeginEndEvent(self, isPressedOrUp)
    Logger.LogVars("__OnDragCustomBeginEndEvent : ", " isPressedOrUp :  ", isPressedOrUp)
end

local function __OnDragCustomFlushEvent(self)
    Logger.LogVars("__OnDragCustomFlushEvent : ", " run run run")
    if self.model.subFuncIndex == self.model.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE then
        if self.model.unionListPage < self.model.unionListMaxPage then
            self.ctrl:SendAddGetUnionListRequest(self.model.unionListPage + 1)
        else
            self.ctrl:SendAddGetUnionListRequest(self.model.unionListPage)
        end
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self:DisposeJoinUnionTimer()
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationAllianceList);
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
end

--获取第一页数据
local function InitData(self)
    self.searchInputField:SetCharacterLimit(self.ctrl:GetAllianceNameCNLength())
    self.alianceNameInput:SetCharacterLimit(self.ctrl:GetAllianceNameCNLength())
    self.alianceNoticeInput:SetCharacterLimit(self.model.NoticeLimit)

    self.__ChangeTabBtn(self, self.model.FUNC_INDEX.UNION_LIST, true);
    self:__OnRedPointChangedEvent()
    self.searchInputField:SetText("")
    self.downTimeText:SetText("")
    --加入联盟
    self.alianceListWrapGroup:SetLength(table.length(self.model.alianceList));
    self.alianceListWrapGroup:ResetToBeginning();
    self.ctrl:SendAddGetUnionListRequest(self.model.unionListPage)
end

local function DisposeJoinUnionTimer(self)
    if self.joinUnionTimer ~= nil then
        self.joinUnionTimer:Stop()
        self.joinUnionTimer = nil
    end
end

local function DoLogicJoinUnionDownTimer(self)
    local endTime = self.model.joinUnionTimeStamp
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    if endTime - currentTime > 0 then
        self.joinUnionTimer = SyncTimer.New(SyncTimer.MODE_STEP, currentTime,
                500, false, self.OnJoinUnionDownTimerCallback, { endTime = endTime, superSelf = self })
        self.joinUnionTimer:Start()
        local showTime = (endTime - currentTime) / 1000
        if showTime <= 0 then
            showTime = 0
        end
        local formatTime = UIUtil.GetFinialTime(showTime)
        --local formatTime = os.date("%H:%M:%S",math.modf(showTime))
        self.downTimeText:SetText(string.format(DataUtil.GetClientText(200088), formatTime))
    else
        self.downTimeText:SetText("")
    end
end

local function OnJoinUnionDownTimerCallback(selfTimer, obj)
    local superSelf = obj.superSelf
    --local endTimeStamp = selfTimer.timeStamp
    local endTime = tonumber(obj.endTime)
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local showTime = (endTime - currentTime) / 1000
    local formatTime
    if currentTime > endTime then
        showTime = 0
        superSelf:DisposeJoinUnionTimer()
        --formatTime = UIUtil.GetFinialTime(showTime)
        --formatTime = os.date("%H:%M:%S",math.modf(showTime))
        superSelf.downTimeText:SetText("")
        --if superSelf.model.subFuncIndex == superSelf.model.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE then
        --    superSelf.ctrl:SendAddGetUnionListRequest(superSelf.model.unionListPage)
        --else
        --
        --end
    else
        formatTime = UIUtil.GetFinialTime(showTime)
        --formatTime = os.date("%H:%M:%S",math.modf(showTime))
        superSelf.downTimeText:SetText(string.format(DataUtil.GetClientText(200088) ,formatTime))
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    self.one_in = true
    self:InitData()
    ----加入联盟
    --self.alianceListWrapGroup:SetLength(table.length(self.model.alianceList));
    --self.alianceListWrapGroup:ResetToBeginning();
    self.enter_aliance_text:SetText(DataUtil.GetClientText(200032))
    self.search_tip_text:SetText(DataUtil.GetClientText(200053))
    self.search_btn_text:SetText(DataUtil.GetClientText(200054))
--联盟、等级、成员....title
    self.alliance_title:SetText(DataUtil.GetClientText(200055))
    self.lv_title:SetText(DataUtil.GetClientText(200057))
    self.member_title:SetText(DataUtil.GetClientText(200058))
    self.belong_title:SetText(DataUtil.GetClientText(200059))
    self.hold_title:SetText(DataUtil.GetClientText(200062))
    self.power_title:SetText(DataUtil.GetClientText(200063))

    ----创建联盟
    self.create_aliance_text:SetText(DataUtil.GetClientText(200051))
    ------联盟邀请
-----联盟、等级、成员....title
    self.invite_alliance_name:SetText(DataUtil.GetClientText(200055))
    self.invite_lv_name:SetText(DataUtil.GetClientText(200057))
    self.invite_member_name:SetText(DataUtil.GetClientText(200058))
    self.invite_belong_name:SetText(DataUtil.GetClientText(200059))
    self.invite_hold_name:SetText(DataUtil.GetClientText(200062))
    self.invite_power_name:SetText(DataUtil.GetClientText(200063))
    ------加入联盟
    self.alliance_name_tltle:SetText(DataUtil.GetClientText(200092))
    self.alliance_name_tip:SetText("")
    --self.alliance_name_tip:SetText(string.format(DataUtil.GetClientText(200093),self.ctrl:GetAllianceNameCNLength()))
    self.alliance_notice_title:SetText(DataUtil.GetClientText(200094))
    self.alliance_notice_tip:SetText(DataUtil.GetClientText(200095))
    self.condition_req_title:SetText(DataUtil.GetClientText(200096))
    self.condition_lay_title:SetText(DataUtil.GetClientText(200097))
    self.creat_btn_text:SetText(DataUtil.GetClientText(200051))

    --self.alianceInviteWrapGroup:SetLength(table.length(self.model.invitAlianceList));
    --self.alianceInviteWrapGroup:ResetToBeginning();
    self.aliance_invite_text:SetText(DataUtil.GetClientText(200052))
    --self.model:SendAddGetUnionListRequest(self.model.unionListPage)
    self.no_alliance_text:SetText(DataUtil.GetClientText(200101))
    self.no_invite_text:SetText(DataUtil.GetClientText(200100))
end

--红点刷新
local function __OnRedPointChangedEvent(self)
    self.rightBtnList[self.model.FUNC_INDEX.INVITE_LIST].redPoint.gameObject:SetActive(
            RedPointData:GetInstance():GetRedState(
                    RedPointData:GetInstance().RedName.Nation_Union_Invite_Red))
end


local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_FLUSH, self.OnNationUnionJoinUnionListFlush)
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_SEARCH_LIST_FLUSH, self.OnNationUnionSearchModelListFlush)
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_INVITE_UNION_LIST_FLUSH, self.OnNationUnionInviteUnionListFlush)
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_USER_UNION_FLUSH, self.OnNationUnionJoinUnionListUserUnionFlush)
    self:AddUIListener(UIMessageNames.ON_RED_POINT_CHANGE,self.__OnRedPointChangedEvent)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_FLUSH, self.OnNationUnionJoinUnionListFlush)
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_SEARCH_LIST_FLUSH, self.OnNationUnionSearchModelListFlush)
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_INVITE_UNION_LIST_FLUSH, self.OnNationUnionInviteUnionListFlush)
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_USER_UNION_FLUSH, self.OnNationUnionJoinUnionListUserUnionFlush)
    self:RemoveUIListener(UIMessageNames.ON_RED_POINT_CHANGE,self.__OnRedPointChangedEvent)
end

local function OnNationUnionJoinUnionListUserUnionFlush(self)
    if self.model.unionId ~= 0 then
        -- 加入联盟
        self.ctrl:EnterNationUnionLogic()
    else

    end
end

-- 界面刷新
local function OnNationUnionSearchModelListFlush(self)

    Logger.LogVars(" OnNationUnionSearchModelListFlush model.alianceList alianceList ： ", #self.model.alianceList)
    self.alianceListWrapGroup:SetLength(table.length(self.model.alianceList))
    self.alianceListWrapGroup:ResetToBeginning();
    self:DisposeJoinUnionTimer()
    self:DoLogicJoinUnionDownTimer()
    --self.alianceListWrapGroup:WrapContent(true)
    --self.alianceListWrapGroup:
    --self.alianceListWrapGroup:ResetToBeginning();
end

-- 界面刷新
local function OnNationUnionJoinUnionListFlush(self)
    Logger.LogVars(" OnNationUnionJoinUnionListFlush model.alianceList length ： ", #self.model.alianceList)
    self.alianceListWrapGroup:SetLength(table.length(self.model.alianceList))--复位
    self.alianceListWrapGroup:WrapContent(true)--检测
    --self.alianceListWrapGroup:ResetToBeginning();

    self:DisposeJoinUnionTimer()
    self:DoLogicJoinUnionDownTimer()
    --[
    if table.length(self.model.alianceList) >= 1 then
        self.aliance:SetActive(false)
    else
        self.aliance:SetActive(true)
    end
    --]
    --self.alianceListWrapGroup:WrapContent(true)
    --self.alianceListWrapGroup:
    --self.alianceListWrapGroup:ResetToBeginning();
end


-- 邀请列表界面刷新
local function OnNationUnionInviteUnionListFlush(self, needReset)
    Logger.LogVars(" OnNationUnionJoinUnionListFlush invitAlianceList length ： ", #self.model.invitAlianceList)
    self.alianceInviteWrapGroup:SetLength(table.length(self.model.invitAlianceList));
    if needReset then
        self.alianceInviteWrapGroup:ResetToBeginning();
    else
        self.alianceInviteWrapGroup:WrapContent(true);
    end
    --[
    if table.length(self.model.invitAlianceList) >= 1 then
        self.invite:SetActive(false)
    else
        self.invite:SetActive(true)
    end
    --]
end

UINationAllianceListView.OnCreate = OnCreate
UINationAllianceListView.OnEnable = OnEnable
UINationAllianceListView.OnDestroy = OnDestroy
UINationAllianceListView.OnAddListener = OnAddListener
UINationAllianceListView.OnRemoveListener = OnRemoveListener
UINationAllianceListView.OnNationUnionSearchModelListFlush = OnNationUnionSearchModelListFlush
UINationAllianceListView.OnNationUnionJoinUnionListFlush = OnNationUnionJoinUnionListFlush
UINationAllianceListView.OnNationUnionInviteUnionListFlush = OnNationUnionInviteUnionListFlush
UINationAllianceListView.OnNationUnionJoinUnionListUserUnionFlush = OnNationUnionJoinUnionListUserUnionFlush

UINationAllianceListView.__ChangeTabBtn = __ChangeTabBtn
UINationAllianceListView.__OnDragCustomBeginEndEvent = __OnDragCustomBeginEndEvent
UINationAllianceListView.__OnDragCustomFlushEvent = __OnDragCustomFlushEvent
UINationAllianceListView.InitData = InitData
UINationAllianceListView.DisposeJoinUnionTimer = DisposeJoinUnionTimer
UINationAllianceListView.DoLogicJoinUnionDownTimer = DoLogicJoinUnionDownTimer
UINationAllianceListView.OnJoinUnionDownTimerCallback = OnJoinUnionDownTimerCallback
UINationAllianceListView.__TabClearByIndex = __TabClearByIndex
UINationAllianceListView.__TabTargetByIndex = __TabTargetByIndex
UINationAllianceListView.CloseAni = CloseAni--new
UINationAllianceListView.__OnRedPointChangedEvent = __OnRedPointChangedEvent
return UINationAllianceListView