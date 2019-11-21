---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/3/13 20:33
---
local UICardShowView = BaseClass("UICardShowView", UIBaseView)
local base = UIBaseView;

local card_icon_path="ParentLayout/Icon";
local card_quality_img_path="ParentLayout/quality";
local card_name_path="ParentLayout/nameObj/firstName";
local slogan_img_path="ParentLayout/TipImg";
local close_btn_path="ParentLayout/Bg";

local function OnCreate(self)
    base.OnCreate(self)

    self.cardIcon=self:AddComponent(UIImage,card_icon_path,AtlasConfig.DynamicTex);
    self.qualityImg=self:AddComponent(UIImage,card_quality_img_path,AtlasConfig.DynamicTex);
    self.cardName=self:AddComponent(UIText,card_name_path);
    self.sloganImg=self:AddComponent(UIImage,slogan_img_path,AtlasConfig.Language);
    self.closeBtn=self:AddComponent(UIButton,close_btn_path);
    self.closeBtn:SetOnClick(function() UIManager:GetInstance():CloseWindow(UIWindowNames.UICardShow)
        UIManager:GetInstance():Broadcast(UIMessageNames.UIGACHA_SET_NIUDAN_CAM_ACTIVE,true);
        UIManager:GetInstance():Broadcast(UIMessageNames.UIGACHA_SET_RESULT_MASK_ACTIVE,false);
    end);
end

local function OnEnable(self)
    base.OnEnable(self);
    self.cardIcon.transform.gameObject:SetActive(false);
    if self.cardIcon.sprite_name==self.model.cardData.Painting then
        self.cardIcon.transform.gameObject:SetActive(true);
    end
    self.cardIcon:SetSpriteName(self.model.cardData.Painting,false,nil,function() self.cardIcon.transform.gameObject:SetActive(true);  end);
    self.cardIcon.transform.localScale = Vector3.New(1.15,1.15,1.15)
    self.cardIcon:SetNativeSize()
    self.qualityImg:SetSpriteName(SpriteDefine:GetQualityIconByType(self.model.cardData.Quality));
    self.cardName:SetText(self.model.cardData.Name);
    self.sloganImg:SetSpriteName(self.model.cardData.GachaDialogue);
end

UICardShowView.OnCreate = OnCreate;
UICardShowView.OnEnable = OnEnable;

return UICardShowView