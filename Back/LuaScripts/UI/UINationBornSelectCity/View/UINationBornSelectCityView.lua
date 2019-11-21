--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationBornSelectCityView = BaseClass("UINationBornSelectCityView", UIBaseView)
local base = UIBaseView

local UINationAreaItem = require "UI.UINationBornSelectCity.Component.UINationAreaItem"

local function OnUIMsgRefreshAreaItem(self)
    for k, v in ipairs(self.model.bornCityList) do
        self.cityList[k]:OnRefresh(v, k)
    end
end

local function OnClickOneAreaItem(self, index)
    local data = self.model.bornCityList[index]
    self.curSelectCity = index
    self.curSelectCityName = data.name
    self.cityUIText:SetText(data.name)
    self.desUIText:SetText(data.des)
    self.stateUIText:SetText(data.stateText)
    self.stateUIImage:SetSpriteName(data.stateImage)
    OnUIMsgRefreshAreaItem(self)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.grayMat = self:AddComponent(UIImage, "grayMat"):GetMat()
    self.lightMat = self:AddComponent(UIImage, "lightMat"):GetMat()
    self.closeUIButton = self:AddComponent(UIButton, "close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl:DoCloseView()
    end)

    self.ackUIButton = self:AddComponent(UIButton, "Bottom/Ack_UIButton")
    self.ackUIButton:SetOnClick(function()
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200029), DataUtil.GetClientText(200401)
                .. self.curSelectCityName .. DataUtil.GetClientText(200402),
                DataUtil.GetClientText(200007), DataUtil.GetClientText(200006),
                function()
                    UIManager:GetInstance():CloseTip()
                end, function()
                    self.ctrl:SendMsgAckSelectBornCity(self.curSelectCity)
                end)
    end)

    self.titleUIText = self:AddComponent(UIText, "Top/Title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200403))
    self.ackButtonUIText = self:AddComponent(UIText, "Bottom/AckButton_UIText")
    self.ackButtonUIText:SetText(DataUtil.GetClientText(200006))

    self.stateUIText = self:AddComponent(UIText, "Bottom/State_UIText")
    self.desUIText = self:AddComponent(UIText, "Bottom/Des_UIText")
    self.cityUIText = self:AddComponent(UIText, "Bottom/City_UIText")
    self.stateUIImage = self:AddComponent(UIImage, "Bottom/State_UIImage", AtlasConfig.DynamicTex)

    self.cityList = {}
    for i = 1, 7 do
        self.cityList[i] = UINationAreaItem.New(self, "MapPanel/AreaItem" .. i)
        self.cityList[i]:OnCreate()
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    OnClickOneAreaItem(self, self.model.default)

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

local function OnDisable(self)
    base.OnDisable(self)

    self.curSelectCity = nil
    self.curSelectCityName = nil
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationBornSelectCityView.OnCreate = OnCreate
UINationBornSelectCityView.OnEnable = OnEnable
UINationBornSelectCityView.OnRefresh = OnRefresh
UINationBornSelectCityView.OnAddListener = OnAddListener
UINationBornSelectCityView.OnRemoveListener = OnRemoveListener
UINationBornSelectCityView.OnDisable = OnDisable
UINationBornSelectCityView.OnDestroy = OnDestroy
UINationBornSelectCityView.OnClickOneAreaItem = OnClickOneAreaItem

return UINationBornSelectCityView
