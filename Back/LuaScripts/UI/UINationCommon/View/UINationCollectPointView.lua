--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationCollectPointView = BaseClass("UINationCollectPointView", UIBaseView)
local base = UIBaseView
local utf8 = require("Common.Tools.utf8")

local function OnClickEnsure(self)
    local str = self.inputField:GetText()
    if isNilOrEmpty(str) then
        str = self.model.placeholderText
    else
        if utf8.charactersLength(str) > self.model.textLimit then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200187))
            return
        elseif string.match(str, "%s+") then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200188))
            return
        end
    end
    self.ctrl:OnClickCollect(str)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.exitBtnUIButton = self:AddComponent(UIButton, "top/exitBtn_UIButton")
    self.exitBtnUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.maskBtn = self:AddComponent(UIButton, "maskBtn")
    self.maskBtn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.titleUIText = self:AddComponent(UIText, "top/title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200189))
    self.title1UIText = self:AddComponent(UIText, "panel/title1_UIText")
    self.title1UIText:SetText(DataUtil.GetClientText(200190))
    self.title2UIText = self:AddComponent(UIText, "panel/title2_UIText")
    self.title2UIText:SetText(DataUtil.GetClientText(200191))
    self.contentUIText = self:AddComponent(UIText, "panel/content_UIText")

    self.inputField = self:AddComponent(UIInput, "panel/InputField")
    self.inputField_placeholder = self:AddComponent(UIText, "panel/InputField/Placeholder")

    self.buttonUIText = self:AddComponent(UIText, "panel/Button/button_UIText")
    self.button = self:AddComponent(UIButton, "panel/Button")
    self.button:SetOnClick(function()
        OnClickEnsure(self)
    end)
end

local function OnEnable(self)
    base.OnEnable(self)

    self.inputField:SetText("")
    self.contentUIText:SetText(self.model.buildStr)
    self.inputField_placeholder:SetText(self.model.placeholderText)
    self.inputField:SetCharacterLimit(self.model.textLimit)
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

UINationCollectPointView.OnCreate = OnCreate
UINationCollectPointView.OnEnable = OnEnable
UINationCollectPointView.OnRefresh = OnRefresh
UINationCollectPointView.OnAddListener = OnAddListener
UINationCollectPointView.OnRemoveListener = OnRemoveListener
UINationCollectPointView.OnDestroy = OnDestroy

return UINationCollectPointView
