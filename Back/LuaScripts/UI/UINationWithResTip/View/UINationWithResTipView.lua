local UINationWithResTipView = BaseClass("UINationWithResTipView", UIBaseView)
local base = UIBaseView

local UINationResourceItem = require "UI.UINationWithResTip.Component.UINationResourceItem"

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.maskButton = self:AddComponent(UIButton, "maskBtn")
    self.maskButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.closeButton = self:AddComponent(UIButton, "panel/exitBtn")
    self.closeButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.cancelBtn_Text = self:AddComponent(UIText, "panel/cancelBtn/cancelText")
    self.cancelBtn_Text:SetText(DataUtil.GetClientText(200007))
    self.cancelButton = self:AddComponent(UIButton, "panel/cancelBtn")
    self.cancelButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.confirmBtn_Text = self:AddComponent(UIText, "panel/confirmBtn/confirmText")
    self.confirmBtn_Text:SetText(DataUtil.GetClientText(200006))
    self.confirmButton = self:AddComponent(UIButton, "panel/confirmBtn")
    self.confirmButton:SetOnClick(function()
        self.ctrl:ConfirmButtonClick()
    end)

    self.title1_UIText = self:AddComponent(UIText, "panel/title1Text")
    self.title1_UIText:SetText(DataUtil.GetClientText(200333))
    self.title2_UIText = self:AddComponent(UIText, "panel/title2Text")
    self.Des_UIText = self:AddComponent(UIText, "panel/DesText")

    self.resItemList = {}
    for i = 1, 6 do
        self.resItemList[i] = UINationResourceItem.New(self, "panel/ResPanel/ResItem" .. i)
        self.resItemList[i]:OnCreate()
        self.resItemList[i].gameObject:SetActive(false)
    end

    self.armyGroupSwitchGameObj = UIUtil.FindTrans(self.transform,"panel/ModeTwo").gameObject
    self.cropIcon1_UIImage = self:AddComponent(UIImage, "panel/ModeTwo/cropGroup1/cropIcon1",AtlasConfig.DynamicTex)
    self.cropName1_UIText = self:AddComponent(UIText, "panel/ModeTwo/cropGroup1/cropName1")

    self.cropIcon2_UIImage = self:AddComponent(UIImage, "panel/ModeTwo/cropGroup2/cropIcon2",AtlasConfig.DynamicTex)
    self.cropName2_UIText = self:AddComponent(UIText, "panel/ModeTwo/cropGroup2/cropName2")
end

local function OnEnable(self)
    base.OnEnable(self)

    if self.model.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.DOWN_FORMATION then
        self.armyGroupSwitchGameObj:SetActive(false)
        self.Des_UIText:SetText(self.model.content_text)
        self.title2_UIText:SetText(self.model.content_title) -- "返回资源"

    elseif self.model.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.ARMY_GROUP_SWITCH then
        self.armyGroupSwitchGameObj:SetActive(true)
        self.Des_UIText:SetText(self.model.content_text)
        self.title2_UIText:SetText(self.model.content_title) -- "转换军团"
        self.cropIcon1_UIImage:SetSpriteName(self.model.myParams.sourceArmyGroupIcon)
        self.cropName1_UIText:SetText(self.model.myParams.sourceArmyGroupName)
        self.cropIcon2_UIImage:SetSpriteName(self.model.myParams.targetArmyGroupIcon)
        self.cropName2_UIText:SetText(self.model.myParams.targetArmyGroupName)
    elseif self.model.type == NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.RECRUIT_RETURN then
        self.armyGroupSwitchGameObj:SetActive(false)
        self.Des_UIText:SetText(self.model.content_text)
        self.title2_UIText:SetText(self.model.content_title) -- "返回资源"
    end

    for i, v in ipairs(self.model.showResItems) do
        self.resItemList[i]:OnRefresh(v)
        self.resItemList[i].gameObject:SetActive(true)
    end
end

local function OnRefresh(self)

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

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)

end

UINationWithResTipView.OnCreate = OnCreate
UINationWithResTipView.OnEnable = OnEnable
UINationWithResTipView.OnDisable = OnDisable
UINationWithResTipView.OnRefresh = OnRefresh
UINationWithResTipView.OnAddListener = OnAddListener
UINationWithResTipView.OnRemoveListener = OnRemoveListener
UINationWithResTipView.OnDestroy = OnDestroy

return UINationWithResTipView