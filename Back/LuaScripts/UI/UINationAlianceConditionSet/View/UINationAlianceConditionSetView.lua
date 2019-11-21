--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationAlianceConditionSetView = BaseClass("UINationAlianceConditionSetView", UIBaseView)
local base = UIBaseView

local title_text_path = "Top/Title"
local close_btn_path = "Top/CloseButton"
local close_bg_btn_path = "BgClose"
local close_apply_toggle_path = "ParentLayout/closeApplyToggle"
local any_can_join_toggle_path = "ParentLayout/AnyOneCanJoinToggle"
local need_accept_toggle_path = "ParentLayout/needAcceptToggle"
local center_btn_path = "ParentLayout/centerBtn"

----设置toggle选中状态
--local function SetToggleShow(self)
--    self.toggleGroup.allowSwitchOff = false
--    self.anyCanJoinToggle:SetEnabled(true)
--    self.needAcceptToggle:SetEnabled(true)
--    self.needAcceptToggle:SetIsOn(true)
--end
--
----其他置空
--local function OtherToggleClear(self)
--    self.toggleGroup.allowSwitchOff = true
--    self.anyCanJoinToggle:SetIsOn(false)
--    self.needAcceptToggle:SetIsOn(false)
--    self.anyCanJoinToggle:SetEnabled(false)
--    self.needAcceptToggle:SetEnabled(false)
--    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_CONDITION_SET, 0)
--end

--关闭toggle点击
local function OnCloseApplyToggleValueChange(self, value)
    if value then
        self.viewApply = NationDefine.NATION_UNION_APPLY_DEFINE.CLOSE
        --OtherToggleClear(self)
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_CONDITION_SET, 0)
    else
        --SetToggleShow(self)
    end
end

--任何人可加入toggle点击
local function OnAnyCanJoinToggleValueChange(self, value)
    if value then
    --    CLOSE = 0, -- 关闭申请
    --    NO_CONDITION_APPLY = 1, --任何人申请即加入
    --NEED_APPROVE = 2, --申请审批 需要审批
        self.viewApply = NationDefine.NATION_UNION_APPLY_DEFINE.NO_CONDITION_APPLY
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_CONDITION_SET, 1)
    end
end

--申请后，需要接受才可加入toogle点击
local function OnNeedAcceptToggleValueChange(self, value)
    if value then
        self.viewApply = NationDefine.NATION_UNION_APPLY_DEFINE.NEED_APPROVE
        --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_CONDITION_SET, 2)
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.titleUIText = self:AddComponent(UIText, title_text_path)
    self.titleUIText:SetText(DataUtil.GetClientText(200220))
    self.titleUIText2 = self:AddComponent(UIText, "ParentLayout/titleText2")
    self.titleUIText2:SetText(DataUtil.GetClientText(200221))

    self.closeBtn = self:AddComponent(UIButton, close_btn_path)
    self.closeBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:OnSubmit(self.viewApply)
    end)

    self.closeBgBtn = self:AddComponent(UIButton, close_bg_btn_path)
    self.closeBgBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:OnSubmit(self.viewApply)
    end)

    self.centerBtnText = self:AddComponent(UIText, "ParentLayout/centerBtn/centerBtnText")
    self.centerBtnText:SetText(DataUtil.GetClientText(200006))
    self.centerBtn = self:AddComponent(UIButton, center_btn_path)
    self.centerBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:OnSubmit(self.viewApply)
    end)

    self.toggleGroup = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ToggleGroup), any_can_join_toggle_path)
    self.toggleGroup.allowSwitchOff = false

    self.closeApplyToggleText = self:AddComponent(UIText, "ParentLayout/closeApplyToggle/closeApplyToggleLabel")
    self.closeApplyToggleText:SetText(DataUtil.GetClientText(200222))
    self.closeApplyToggle = self:AddComponent(UIToggle, close_apply_toggle_path)
    self.closeApplyToggle:SetValueChanged(BindCallback(self, OnCloseApplyToggleValueChange))

    self.anyCanJoinToggleText = self:AddComponent(UIText, "ParentLayout/AnyOneCanJoinToggle/AnyOneCanJoinToggleLabel")
    self.anyCanJoinToggleText:SetText(DataUtil.GetClientText(200223))
    self.anyCanJoinToggle = self:AddComponent(UIToggle, any_can_join_toggle_path)
    self.anyCanJoinToggle:SetValueChanged(BindCallback(self, OnAnyCanJoinToggleValueChange))

    self.needAcceptToggleText = self:AddComponent(UIText, "ParentLayout/needAcceptToggle/needAcceptToggleLabel")
    self.needAcceptToggleText:SetText(DataUtil.GetClientText(200224))
    self.needAcceptToggle = self:AddComponent(UIToggle, need_accept_toggle_path)
    self.needAcceptToggle:SetValueChanged(BindCallback(self, OnNeedAcceptToggleValueChange))
    self.viewApply = NationDefine.NATION_UNION_APPLY_DEFINE.CLOSE
end

local function OnEnable(self)
    base.OnEnable(self)
    self.viewApply = self.model.apply
    if self.viewApply == NationDefine.NATION_UNION_APPLY_DEFINE.CLOSE then
        self.closeApplyToggle:SetIsOn(true)
        self.anyCanJoinToggle:SetIsOn(false)
        self.needAcceptToggle:SetIsOn(false)
        --OtherToggleClear(self)
    elseif self.viewApply ==  NationDefine.NATION_UNION_APPLY_DEFINE.NO_CONDITION_APPLY then
        self.closeApplyToggle:SetIsOn(false)
        self.anyCanJoinToggle:SetIsOn(true)
        self.needAcceptToggle:SetIsOn(false)
    elseif self.viewApply ==  NationDefine.NATION_UNION_APPLY_DEFINE.NEED_APPROVE then
        self.closeApplyToggle:SetIsOn(false)
        self.anyCanJoinToggle:SetIsOn(false)
        self.needAcceptToggle:SetIsOn(true)
    end
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

local function OnDisable(self)
    base.OnDisable(self)
    --self.toggleGroup.allowSwitchOff = false
    --self.anyCanJoinToggle:SetEnabled(true)
    --self.needAcceptToggle:SetEnabled(true)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationAlianceConditionSetView.OnCreate = OnCreate
UINationAlianceConditionSetView.OnEnable = OnEnable
UINationAlianceConditionSetView.OnRefresh = OnRefresh
UINationAlianceConditionSetView.OnAddListener = OnAddListener
UINationAlianceConditionSetView.OnRemoveListener = OnRemoveListener
UINationAlianceConditionSetView.OnDisable = OnDisable
UINationAlianceConditionSetView.OnDestroy = OnDestroy

return UINationAlianceConditionSetView
