--[[
-- added by xupeng @ 2019-7-16
-- 该模块用于不可拖拽的卡牌信息，包括 拖拽出来的寄灵人和守护灵预设，守护灵列表中的卡牌
--]]
local UIDRBossEmBattleTeamItem = BaseClass("UIDRBossEmBattleTeamItem", UIWrapComponent)
local base = UIWrapComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.name_text=self:AddComponent(UIText,"Text");
    self.none_text = self:AddComponent(UIText, "none");
    self.bottom_bg=self:AddComponent(UIImage,"diBg",AtlasConfig.DynamicTex);
    self.top_bg=self:AddComponent(UIImage,"topBg",AtlasConfig.DynamicTex);
    self.cardIcon=self:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
    self.battleText = self:AddComponent(UIText,"battleValue");
    self.actionText = self:AddComponent(UIText,"actionValue");
    self.hpText = self:AddComponent(UIText,"hpValue");
    self.chooseImg = self:AddComponent(UIImage,"chooseImage");
    self.chooseImg.gameObject:SetActive(false);
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.itemData = data;
    if self.itemData ~= nil then
        self.none_text.gameObject:SetActive(self.itemData.cardId == 0)
        self.bottom_bg.gameObject:SetActive(self.itemData.cardId ~= 0)
        self.top_bg.gameObject:SetActive(self.itemData.cardId ~= 0)
        self.cardIcon.gameObject:SetActive(self.itemData.cardId ~= 0)
        self.battleText.gameObject:SetActive(self.itemData.cardId ~= 0)
        self.actionText.gameObject:SetActive(self.itemData.cardId ~= 0)
        self.hpText.gameObject:SetActive(self.itemData.cardId ~= 0)
        if self.itemData.cardId ~= 0 then
            local cardData = CardData:GetInstance():GetCardDataById(self.itemData.cardId)
            self.bottom_bg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(cardData.quality))
            self.top_bg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(cardData.quality))
            self.cardIcon:SetSpriteName(cardData.icon)
            self.battleText:SetText("战力："..Mathf.Floor(self.itemData.power))
            self.actionText:SetText("行动力："..self.itemData.action)
            self.hpText:SetText("生命值："..self.itemData.hp)
        end
    end
end

-- 选中队伍
local function ChooseTeam(self, isChoose)
    self.chooseImg.gameObject:SetActive(isChoose);
end

UIDRBossEmBattleTeamItem.OnCreate = OnCreate
UIDRBossEmBattleTeamItem.OnRefresh = OnRefresh
UIDRBossEmBattleTeamItem.ChooseTeam = ChooseTeam

return UIDRBossEmBattleTeamItem
