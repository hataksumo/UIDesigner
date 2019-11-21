---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/4/27 10:44
---
local UINationAlianceMemberWrapItem = BaseClass("UINationAlianceMemberWrapItem", UIWrapComponent)
local base = UIWrapComponent
local back_image_path = "bgImage";
local select_image_path = "selectBg"
local member_frame_path = "frame";
local member_icon_path = "frame/icon";
local name_text_path = "AlianceName";
local total_contribute_text_path = "AlianceLv";
local week_contribute_text_path = "AlianceLv (1)";
local week_fight_contribute_text_path = "AlianceLv (2)";
local area_text_path = "AlianceLv (3)";
local shili_value_path = "AlianceLv (4)";
local pos_text_path = "AlianceLv (5)";
local set_btn_path = "button";
local info_btn_path = "PlayerInfoButton"

local function ShowTween(self, curCount, loop)
    local tweenPlayCount = curCount
    if tweenPlayCount >= loop then
        return
    end
    tweenPlayCount = tweenPlayCount + 1
    LuaTweener.UIFadeTo(self.selectBgImg, 1, 0, 0.2, EaseFormula.Linear, function()
        LuaTweener.UIFadeTo(self.selectBgImg, 0, 1, 0.2, EaseFormula.Linear, function()
            ShowTween(self, tweenPlayCount, loop)
        end)
    end)
end

local function OnCreate(self)
    base.OnCreate(self)
    self.bgImg = self:AddComponent(UIImage, back_image_path)
    self.selectBgImg = self:AddComponent(UIImage, select_image_path, AtlasConfig.DynamicTex)
    self.memberIcon = self:AddComponent(UIImage, member_icon_path, AtlasConfig.DynamicTex)
    self.memberFrame = self:AddComponent(UIImage, member_frame_path, AtlasConfig.DynamicTex)
    self.nameText = self:AddComponent(UIText, name_text_path)
    self.totalContributeText = self:AddComponent(UIText, total_contribute_text_path);
    self.weekContributeText = self:AddComponent(UIText, week_contribute_text_path);
    self.weekFightContributeText = self:AddComponent(UIText, week_fight_contribute_text_path);
    self.areaText = self:AddComponent(UIText, area_text_path);
    self.shiliText = self:AddComponent(UIText, shili_value_path);
    self.posText = self:AddComponent(UIText, pos_text_path);
    self.setBtn = self:AddComponent(UIButton, set_btn_path);
    self.setBtn:SetOnClick(function()
        self.view.ctrl:MemberSetBtnClick(self.index)
    end)
    self.infoBtn = self:AddComponent(UIButton, info_btn_path)
    self.infoBtn:SetOnClick(function()
        self.view.ctrl:OnMemberNameBtnPressed(self.data.uid)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.bgImg:SetEnabled((real_index + 1) % 2 == 0)
    self.index = real_index + 1
    self.data = self.view.model.members[self.index]
    self.memberFrame:SetSpriteName(self.data.headFrame)
    self.memberIcon:SetSpriteName(self.data.headIcon)
    self.nameText:SetText(self.data.name)
    self.totalContributeText:SetText(self.data.contribution)
    self.weekContributeText:SetText(self.data.contributionWeek)
    self.weekFightContributeText:SetText(self.data.militaryExploits)
    self.areaText:SetText(self.data.region)
    self.shiliText:SetText(self.data.force)
    self.posText:SetText(self.data.positionData.OrderName)

    if self.view.model.myUnionMember.position < self.data.position or self.view.model.myUnionMember.uid == self.data.uid then
        self.setBtn:SetActive(true)
    else
        self.setBtn:SetActive(false)
    end

    if self.data.isMine then
        self.selectBgImg:SetActive(true)
        if self.view.allLayoutList[self.view.model.MAIN_FUNC_INDEX.MEMBER_LIST].script.isShowTween then
            ShowTween(self, 0, 3)
        end
    else
        self.selectBgImg:SetActive(false)
    end
end

UINationAlianceMemberWrapItem.OnCreate = OnCreate
UINationAlianceMemberWrapItem.OnRefresh = OnRefresh
return UINationAlianceMemberWrapItem