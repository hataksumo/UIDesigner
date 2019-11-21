--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationAlianceDetailView = BaseClass("UINationAlianceDetailView", UIBaseView)
local base = UIBaseView
local utf8 = require("Common.Tools.utf8")--csf
--local title_text_path="Bg/title_UIText";
local close_btn_path = "Root/close_UIButton";
local mask_btn_path = "maskImg";
local aliance_name_path = "Root/AlianceName";
local lv_text_path = "Root/InfoPanel/AlianceLv";--*
local aliance_lv_num = "Root/InfoPanel/AlianceLvNum"--*
local mengzhu_text_path = "Root/InfoPanel/mengzhuName";
local mengzhu_text_line = "Root/InfoPanel/mengzhuName/mengzhuLine";--*
local member_num_path = "Root/InfoPanel/memberNum";
local have_manor_text_path = "Root/InfoPanel/haveManorNum";
local area_name_text_path = "Root/InfoPanel/arenaName";
local shili_value_text_path = "Root/InfoPanel/shiliValue";
local notice_text_path = "Root/noticeObj/NoticeText";
local one_condition_text_path = "Root/OneConditionText";
local two_condition_text_path = "Root/TwoConditionText";
local apply_btn_path = "Root/ApplyBtn";
local slider_lvbg = "Root/InfoPanel/LvBg"--
local slider_img_path = "Root/InfoPanel/LvBg/FillArea/Fill";--
local slider_exp_text_path = "Root/InfoPanel/LvBg/Exp";

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    --	self.titleUIText = self:AddComponent(UIText,title_text_path);
    self.maskBtn = self:AddComponent(UIButton, mask_btn_path)
    self.maskBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:CloseSelf()
    end)
    self.closeUIButton = self:AddComponent(UIButton, close_btn_path)
    self.closeUIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        self.ctrl:CloseSelf()
    end)

    self.alianceNameText = self:AddComponent(UIText, aliance_name_path);
    self.lvTitle_Text = self:AddComponent(UIText, lv_text_path);
    self.lvTitle_Text:SetText(DataUtil.GetClientText(200057))
    self.lvText = self:AddComponent(UIText, aliance_lv_num);
    self.mengzhuText = self:AddComponent(UIText, mengzhu_text_path);
    self.memberNumText = self:AddComponent(UIText, member_num_path);
    self.haveManorText = self:AddComponent(UIText, have_manor_text_path);
    self.areaNmaeText = self:AddComponent(UIText, area_name_text_path);
    self.shiliValueText = self:AddComponent(UIText, shili_value_text_path);
    self.noticeText = self:AddComponent(UIText, notice_text_path);
    self.oneConditionText = self:AddComponent(UIText, one_condition_text_path);
    self.twoConditionText = self:AddComponent(UIText, two_condition_text_path);
    self.mengzhu_Button = self:AddComponent(UIButton, "Root/InfoPanel/mengzhuName/mengzhu_Button");

    self.mengzhu_name_line = self:AddComponent(UIText, mengzhu_text_line)--*
    self.lv_Slider = self:AddComponent(UISlider, slider_lvbg)--*
    --self.lvValueText = self:AddComponent(UIText, slider_exp_text_path)--
    self.mengzhu_Button:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --打开盟主界面
        self.ctrl:OnMengZhuBtnClick()
    end)

    self.applyBtn = self:AddComponent(UIButton, apply_btn_path);
    self.applyBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:CloseSelf()
    end)
    self.sliderImg = self:AddComponent(UIImage, slider_img_path, AtlasConfig.DynamicTex);
    self.lvExpText = self:AddComponent(UIText, slider_exp_text_path);
    --self.applyBtn.gameObject:SetActive(false)

end

local function OnEnable(self)
    base.OnEnable(self)

    self.alianceNameText:SetText(self.model.alianceData.name);
    self.lvText:SetText(string.format("<color=#294d5d>%s</color>", self.model.alianceData.level));
    self.mengzhuText:SetText(self.model.alianceData.leaderName);
    self.memberNumText:SetText(string.format("%s/%s", self.model.alianceData.members, self.model.alianceData.currentNationalUnionLevelData.Member));
    self.haveManorText:SetText(self.model.alianceData.citys);
    self.areaNmaeText:SetText(self.model.alianceData.regionData.Name);
    self.shiliValueText:SetText(self.model.alianceData.force);
    self.noticeText:SetText(self.model.alianceData.notice);
    self.lvExpText:SetText(string.format("%d/%d", self.model.alianceData.exp, self.model.alianceData.maxExp))--
    self.lv_Slider:SetValue(self.model.alianceData.exp / self.model.alianceData.maxExp)--
    --if self.model.alianceData.isApply then
    --	self.conditionText:SetText("申请条件 :"..self.model.alianceData.conditionStr);
    --	--self.cancelBtn.gameObject:SetActive(true);--取消申请
    --else
    --	if self.model.alianceData.apply == NationDefine.NATION_UNION_APPLY_SETTING.CLOSE_APPLY then
    --		--self.canNotApplyText.gameObject:SetActive(true);--不可申请文字
    --
    --	elseif self.model.alianceData.apply == NationDefine.NATION_UNION_APPLY_SETTING.ANY_PERSON  then
    --
    --		--self.enterBtn.gameObject:SetActive(true); -- 加入
    --	else
    --		--self.applyBtn.gameObject:SetActive(true);--申请
    --	end
    --end
    --csf
    --显示名字下面的横线
    local nameLen = utf8.charactersLength(self.model.alianceData.leaderName)
    local lineStr = ""
    for i = 1, nameLen do
        lineStr = lineStr .. "_"
    end
    self.mengzhu_name_line:SetText(lineStr)
    --csf

    self.oneConditionText:SetText(self.model.alianceData.conditionStrOne)
    self.twoConditionText:SetText(self.model.alianceData.conditionStrTwo)
    self.sliderImg:SetFillVal(self.model.alianceData.exp / self.model.alianceData.maxExp)
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_DETAIL_USER_UNION_FLUSH, self.OnNationUnionDetailUserUnionFlush)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_DETAIL_USER_UNION_FLUSH, self.OnNationUnionDetailUserUnionFlush)
end

local function OnNationUnionDetailUserUnionFlush(self, unionId)
    if unionId ~= nil and unionId ~= 0 then
        return
    else
        self.ctrl:EnterNationUnionLogic()
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationAlianceDetailView.OnNationUnionDetailUserUnionFlush = OnNationUnionDetailUserUnionFlush
UINationAlianceDetailView.OnCreate = OnCreate
UINationAlianceDetailView.OnEnable = OnEnable
UINationAlianceDetailView.OnAddListener = OnAddListener
UINationAlianceDetailView.OnRemoveListener = OnRemoveListener
UINationAlianceDetailView.OnDestroy = OnDestroy

return UINationAlianceDetailView
