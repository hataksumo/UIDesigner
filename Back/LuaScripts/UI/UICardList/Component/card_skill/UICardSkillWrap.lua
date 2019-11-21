---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/5/10 15:45
local UICardSkillWrap = BaseClass("UICardSkillWrap", UIBaseContainer);
local base = UIBaseContainer
local skill_data=DataUtil.GetData("skill")
local allCardData = DataUtil.GetData("card")
local function OnCreate(self,parent)
    base.OnCreate(self);
    self.parent=parent
    self.lock=UIUtil.FindTrans(self.transform,"lock");
    self.frame=self:AddComponent(UIImage,"Skill_Bg",AtlasConfig.DynamicTex)
    self.icon=self:AddComponent(UIImage,"Skill_Bg/Skill_Icon",AtlasConfig.DynamicTex)
    self.skilltype=self:AddComponent(UIImage,"Skill_PassiveSkill",AtlasConfig.Language)
    self.cry_bg=UIUtil.FindTrans(self.transform,"Skill_Crystal");
    self.cry_img=self:AddComponent(UIImage,"Skill_Crystal/Skill_Cost_Icon",AtlasConfig.DynamicTex)
    self.cry_text=self:AddComponent(UIText,"Skill_Crystal/Skill_Cost_Num")
    --[[
    self.info_iconPress = self:AddComponent(UIEventTrigger,"Skill_Bg/Skill_Icon")
    self.info_iconPress:SetOnLongPress(function()
        if self.skillId then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UISkillTips,self.skillId,self.skillLv)
        end
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UISkillTips)
    end),true)
    --]]

end
local function OnRefresh(self,skillID,level,cardID)
    local selfSkill = skill_data[skillID]

    if selfSkill ~= nil then
        self.skillId=skillID;
        self.skillLv = level
        self.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(selfSkill.Quality))
        self.icon:SetSpriteName(selfSkill.Icon)
        if selfSkill.ShowFireType==2 or selfSkill.ShowFireType==3 then
            self.skilltype.gameObject:SetActive(true)
            self.skilltype:SetSpriteName(SpriteDefine:GetSkillFireByFireType(selfSkill.ShowFireType))
        else
            self.skilltype.gameObject:SetActive(false)
        end
        if selfSkill.DoubleHit>0 then
            self.skilltype.gameObject:SetActive(true)
            self.skilltype:SetSpriteName("ui_dtex_Quality_040")
        else
            self.skilltype.gameObject:SetActive(false)
        end
        if selfSkill.CrystalCount>0 and selfSkill.FireType ~= 2 then
            self.cry_bg.gameObject:SetActive(true)
            local cardData = allCardData[cardID]
            self.cry_img:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData.CrystalType))
            local skill_data=SkillData:GetInstance():GetSkillItemByCardIDAndSkillID(cardID,skillID)
            if skill_data then
                self.cry_text:SetText(math.floor(skill_data.crystalCost))
            else
                self.cry_text:SetText(math.floor(selfSkill.CrystalCount))
            end

        else
            self.cry_bg.gameObject:SetActive(false)
        end
        if not self.parent.canbtn then
            if self.effectObj~=nil then
                self.effectObj.effect.gameObject:SetActive(false)
                self.effectObj.effect.gameObject:SetActive(true)
            else
                self.effectObj = self:AddComponent(UIEffect, "", 1, EffectConfig.UICardIconShow)
            end
            self.parent.canbtn=true
        else
            if self.effectObj ~= nil  then
                self.effectObj.effect.gameObject:SetActive(false)
            end
        end
    end

end
UICardSkillWrap.OnCreate = OnCreate;
UICardSkillWrap.OnRefresh = OnRefresh;
return  UICardSkillWrap