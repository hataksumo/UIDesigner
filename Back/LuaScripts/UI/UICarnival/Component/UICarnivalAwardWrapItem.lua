--[[
-- added by xupeng @ 2019-7-24
-- 该模块UICarnivalView窗口中活动信息
--]]
local UICarnivalAwardWrapItem = BaseClass("UICarnivalAwardWrapItem", UIWrapComponent)
local base = UIWrapComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.scoreBg_img = self:AddComponent(UIImage, "scoreBgImg");
    self.award_btn = self:AddComponent(UIButton, "awardBtn");
    self.award_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        if self.itemData.status == 0 then
            UISpecial:GetInstance():UITipText("需达到积分才可领取")
            return
        end
        CarnivalData:GetInstance():SendGetScoreAwardRequest(self.itemData.id);
    end);
    self.award_img = self:AddComponent(UIImage, "awardBtn");
    self.grayMat = self.award_img:GetMat();
    self.score_text = self:AddComponent(UIText, "scoreBgImg/ScoreText");
    self.red_img = self:AddComponent(UIImage, "awardRedImg");

    self.frame_Img =self:AddComponent(UIImage,"Image",AtlasConfig.DynamicTex)
    self.icon_Img = self:AddComponent(UIImage,"Image/icon",AtlasConfig.DynamicTex)
    self.count_Text = self:AddComponent(UIText,"Image/num")
    self.info_iconPress=self:AddComponent(UIEventTrigger,"awardBtn")
    self.info_iconPress:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.itemData.rewards[1].id)
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.itemData=data;
    if self.itemData == nil then
        self.trans.gameObject:SetActive(false);
        return
    end
    self.trans.gameObject:SetActive(true);
    self.score_text:SetText(math.floor(CarnivalData:GetInstance().now_score).."/"..self.itemData.score);
    if CarnivalData:GetInstance().now_score > self.itemData.score then
        self.score_text:SetText(self.itemData.score.."/"..self.itemData.score);
    end

    self.count_Text:SetText(self.itemData.rewards[1].num)
    self.icon_Img:SetSpriteName(self.itemData.rewards[1].icon)
    if self.itemData.type == 20 or self.itemData.type == 21 then
        self.frame_Img:SetSpriteName(SpriteDefine:GetCircleFrameByType(self.itemData.rewards[1].quality))
    else
        self.frame_Img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.itemData.rewards[1].quality))
    end
    self.red_img.gameObject:SetActive(false);
    self.scoreBg_img.gameObject:SetActive(true);
    if self.itemData.status ~= 1 then
        self.award_img:SetMat(nil)
        self.frame_Img:SetMat(nil)
        self.icon_Img:SetMat(nil)
        self.count_Text:SetColor32(255,255,255,255);
        self.score_text:SetColor32(255,255,255,255);
        if self.itemData.status == -1 then
            self.scoreBg_img.gameObject:SetActive(false);
            self.red_img.gameObject:SetActive(true);
        end
    else
        self.award_img:SetMat(self.grayMat)
        self.frame_Img:SetMat(self.grayMat)
        self.icon_Img:SetMat(self.grayMat)
        self.count_Text:SetColor32(144,144,144,255);
        self.score_text:SetColor32(144,144,144,255);
        self.score_text:SetText(self.itemData.score);
        self.scoreBg_img.gameObject:SetActive(false);
    end
end

UICarnivalAwardWrapItem.OnCreate = OnCreate
UICarnivalAwardWrapItem.OnRefresh = OnRefresh

return UICarnivalAwardWrapItem
