--[[
-- added by wsh @ 2017-12-01
-- UILogin视图层
-- 注意：
-- 1、成员变量最好预先在__init函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UICommItemUseView = BaseClass("UICommItemUseView", UIBaseView)
local base = UIBaseView
local selectNum = 1
local sliderValue = 0
local selectItemData = nil
local changeByBtn = false

-- 各个组件路径
local icon_img_path = "panel/item/icon"
local frame_img_path = "panel/item/frame"
local name_txt_path = "panel/name"
local haveNum_txt_path = "panel/haveNum/haveNumTxt"
local selectNum_txt_path = "panel/selectNum/selectNumTxt"
local _slider_path = "panel/slider"
local add_btn_path = "panel/addBtn"
local subtract_btn_path = "panel/subtractBtn"
local confirm_btn_path = "panel/confirmBtn"
local exit_btn_path = "panel/exitBtn"
local mask_btn_path = "maskBtn"




--local function ClickOnLoginBtn(self)
--	local name = self.account_input:GetText()
--	local password = self.password_input:GetText()
--	self.ctrl:LoginServer(name, password)
--end

-- 点击确认按钮
local function OnConfirmBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if selectItemData.backPackType ==5 then
        if selectNum > selectItemData.canOverlap then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100046))
            return
        end
        self.ctrl:OnSellBtnClick(self.model.itemDataId,selectNum)
    end
    if selectItemData.backPackType ==2 then
        self.ctrl:OpenCardPool(1)
    end
    if selectItemData.backPackType ==3 then
        self.ctrl:OpenCardPool(2)
    end
    self.ctrl:CloseSelf()
end
-- 点击增加按钮
local function OnAddBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    local num = selectItemData.haveNum
    if num > selectItemData.canOverlap then
        num = selectItemData.canOverlap
    else
        num = selectItemData.haveNum
    end
    selectNum = math.min(num, selectNum + 1)
    changeByBtn = true
    self:OnRefresh()
end
-- 点击减少按钮
local function OnSubtractBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    selectNum = math.max(1, selectNum - 1)
    changeByBtn = true
    self:OnRefresh()
end
-- 退出按钮
local function OnExitBtnClick(self)

    self.ctrl:CloseSelf()
end
-- 滑动条发生改变
local function OnSliderValueChange(self,val)
    sliderValue = self._slider:GetValue()
    if not changeByBtn then
        local afterChangeNum = math.floor(sliderValue * selectItemData.haveNum)
        afterChangeNum = math.max(1, afterChangeNum)
        afterChangeNum = math.min(afterChangeNum, selectItemData.haveNum)
        if afterChangeNum ~= selectNum then
            if afterChangeNum > selectItemData.canOverlap then
                selectNum = selectItemData.canOverlap
            else
                selectNum = afterChangeNum
            end

        end
    end
    self:OnRefresh()
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.icon_img = self:AddComponent(UIImage, icon_img_path, AtlasConfig.DynamicTex)
    self.frame_img = self:AddComponent(UIImage, frame_img_path, AtlasConfig.DynamicTex)
    self.name_txt = self:AddComponent(UIText, name_txt_path)
    self.haveNum_txt = self:AddComponent(UIText, haveNum_txt_path)
    self.selectNum_txt = self:AddComponent(UIText, selectNum_txt_path)
    self._slider = self:AddComponent(UISlider, _slider_path)
    self._slider:SetValue(0)
    self._slider:SetOnValueChange(self,OnSliderValueChange)

    self.add_btn = self:AddComponent(UIButton, add_btn_path)
    self.add_btn:SetOnClick(self, OnAddBtnClick)
    self.subtract_btn = self:AddComponent(UIButton, subtract_btn_path)
    self.subtract_btn:SetOnClick(self, OnSubtractBtnClick)
    self.confirm_btn = self:AddComponent(UIButton, confirm_btn_path)
    self.confirm_btn:SetOnClick(self, OnConfirmBtnClick)
    self.exit_btn = self:AddComponent(UIButton, exit_btn_path)
    self.exit_btn:SetOnClick(self, OnExitBtnClick)
    self.mask_btn = self:AddComponent(UIButton, mask_btn_path)
    self.mask_btn:SetOnClick(self, OnExitBtnClick)
    -- 关于层级的部分
end

-- 每次打开刷新界面
local function OnRefresh(self)
    -- 各组件刷新
    if selectItemData ~= nil then
        self.haveNum_txt:SetText(tostring(math.floor(selectItemData.haveNum)))
        self.selectNum_txt:SetText(tostring(math.floor(selectNum)))
        self.icon_img:SetSpriteName(selectItemData.icon)
        if selectItemData.quality == 1 then
            self.frame_img:SetSpriteName(SpriteDefine.Quality_Frame_Item_N)
        elseif selectItemData.quality == 2 then
            self.frame_img:SetSpriteName(SpriteDefine.Quality_Frame_Item_R)
        elseif selectItemData.quality == 3 then
            self.frame_img:SetSpriteName(SpriteDefine.Quality_Frame_Item_SR)
        elseif selectItemData.quality == 4 then
            self.frame_img:SetSpriteName(SpriteDefine.Quality_Frame_Item_SSR)
        end
        self._slider:SetValue(selectNum / selectItemData.haveNum)
        self.name_txt:SetText(tostring(selectItemData.name))
    end
    changeByBtn = false
end

local function OnEnable(self)
    base.OnEnable(self)
    selectNum = 1
    selectItemData = BackpackData:GetInstance():GetItemDataById(self.model.itemDataId)
    if selectItemData ~= nil then
        self._slider:SetValue(selectNum / selectItemData.haveNum)
    end
    self:OnRefresh()
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
    base.OnDestroy(self)
end

UICommItemUseView.OnCreate = OnCreate
UICommItemUseView.OnEnable = OnEnable
UICommItemUseView.OnRefresh = OnRefresh
UICommItemUseView.OnAddListener = OnAddListener
UICommItemUseView.OnRemoveListener = OnRemoveListener
UICommItemUseView.OnDestroy = OnDestroy

return UICommItemUseView