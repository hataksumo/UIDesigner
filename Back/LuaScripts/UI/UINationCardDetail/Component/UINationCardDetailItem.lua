--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UINationCardDetailItem = BaseClass("UINationCardDetailItem", UIWrapComponent)
local base = UIWrapComponent
local function OnItemClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if self.index+1<=self.skillHaveNumber then
        --[[local selfSkill = SkillData:GetInstance().nationSkills[self.data.id]
        if selfSkill ~= nil then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSkillInfo, self.data.id,3, self.data.cardId)
        else
            --UIManager:GetInstance():OpenWindow(UIWindowNames.UILearnSkill, self.view.model.cardId, self.m_data.blankPosition)
        end]]
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSkillInfo, self.data.id,3, self.data.cardId)
    else
        UISpecial:GetInstance():UITipText("未解锁")
        return
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.skillObj=UIUtil.FindTrans(self.transform,"SkilObj");
    self.name_text = self:AddComponent(UIText, "SkilObj/skillName_UIText")
    self.description_text = self:AddComponent(UIText,"SkilObj/skillDetailText_UIText")
    self.skillImageIcon=self:AddComponent(UIImage,"SkilObj/skillImageIcon_UIImage",AtlasConfig.DynamicTex)
    self.lockObj=UIUtil.FindTrans(self.transform,"LockObj");
    self.condeitionTxt=self:AddComponent(UIText,"LockObj/ConditionTxt");
    self._btn= self:AddComponent(UIButton, "")
    self._btn:SetOnClick(self, OnItemClick)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.index=real_index
    self.skillHaveNumber=table.count(self.view.skill_data)
    local index=real_index+1
    local talentLevel=self.view.model.talentLevels[index];
    self.lockObj.gameObject:SetActive(talentLevel==0);
    self.skillObj.gameObject:SetActive(talentLevel~=0);
    self.data=self.view.skill_data[real_index+1]
    self.name_text:SetText(self.data.name)
    self.description_text:SetText(self.data.description[1])
    self.skillImageIcon:SetSpriteName(self.data.icon)
    self.condeitionTxt:SetText(string.format("统御Lv.%s解锁",self.view.model.talentUnlockLevel[index]));
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end
UINationCardDetailItem.OnCreate = OnCreate
UINationCardDetailItem.OnRefresh = OnRefresh
UINationCardDetailItem.OnAddListener=OnAddListener
UINationCardDetailItem.OnRemoveListener=OnRemoveListener
return UINationCardDetailItem