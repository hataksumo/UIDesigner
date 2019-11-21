--[[
-- added by xupeng @ 2019-7-24
-- 该模块UICarnivalView窗口中活动信息
--]]
local UICarnivalDayWrapItem = BaseClass("UICarnivalDayWrapItem", UIWrapComponent)
local base = UIWrapComponent

local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.day_btn = self:AddComponent(UIButton, "dayBtn1");
    self.day_img = self:AddComponent(UIImage, "dayBtn1", AtlasConfig.DynamicTex);
    self.grayMat = self.day_img:GetMat();
    self.day_text = self:AddComponent(UIText, "dayBtn1/dayName1");
    self.day_outline = self:AddComponent(UIOutlineEx, "dayBtn1/dayName1");
    self.day_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        self.view:SwitchDay(self.realIndex)
    end);
    self.red_img = self:AddComponent(UIImage, "dayBtn1/dayRedImg1");
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    self.realIndex=real_index + 1;
    local itemData = self.view.model.dayNameData[self.realIndex]

    self.day_text:SetText(itemData);
    if self.view.dayRedState[self.realIndex] == true then
        self.red_img.gameObject:SetActive(true);
    else
        self.red_img.gameObject:SetActive(false);
    end

    if self.realIndex == self.view.chooseDay then
        self.day_img:SetSpriteName("ui_t_c2_380");
        self.day_img:SetMat(nil);
        self.day_text:SetColor32(239,234,222,255);
        self.day_outline:SetColor32(5,5,5,255);
    else
        if self.realIndex <= self.view.model.now_day then
            self.day_img:SetSpriteName("ui_t_c2_379");
            self.day_img:SetMat(nil);
            self.day_text:SetColor32(21,24,30,255);
            self.day_outline:SetColor32(38,74,89,255);
        else
            self.day_img:SetSpriteName("ui_t_c2_379");
            self.day_img:SetMat(self.grayMat);
            self.day_text:SetColor32(21,24,30,255);
            self.day_outline:SetColor32(84,83,83,255);
        end
    end
end

UICarnivalDayWrapItem.OnCreate = OnCreate
UICarnivalDayWrapItem.OnRefresh = OnRefresh

return UICarnivalDayWrapItem
