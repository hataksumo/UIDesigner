--[[
-- added by xupeng @ 2019-7-16
-- 该模块用于不可拖拽的卡牌信息，包括 拖拽出来的寄灵人和守护灵预设，守护灵列表中的卡牌
--]]
local UIEmBattle2DCardWrapItem = BaseClass("UIEmBattle2DCardWrapItem", UIWrapComponent)
local base = UIWrapComponent

local btn_path = "UIEmBattleCardItem";
local level_bg_path = "UIEmBattleCardItem/levelbg";
local level_txt_path = "UIEmBattleCardItem/levelbg/level";
local _name_txt_path="UIEmBattleCardItem/name";
local battle_obj_path="UIEmBattleCardItem/goIntoBattleObj";
local battle_obj_tip_path="UIEmBattleCardItem/goIntoBattleObj/chooseTip";
local bottom_bg_path="UIEmBattleCardItem/diBg";
local top_bg_path="UIEmBattleCardItem/topBg";
local quality_icon_path="UIEmBattleCardItem/quality";
local card_icon_path="UIEmBattleCardItem/icon";
local crystal_path="UIEmBattleCardItem/crystal";
local crystal_Num_path="UIEmBattleCardItem/crystal/costSoulImg";
local crystal_add_path="UIEmBattleCardItem/crystal/cryAddImg";
local star_group_path="UIEmBattleCardItem/starGroup";

local function OnPointClick(self)
    if not self.isCanClick then
        return
    end
    if self.view.curListType == 2 then
        --以上阵则下阵
        if (self.itemData.teamId == 0 and self.itemData.isUpArray == 1) or (self.itemData.teamId ~= 0 and self.itemData.isUpArray == 1 and self.itemData.teamId == self.view.curTeam) then
            self.view:SetSHLData(nil);
        else
            self.view:SetSHLData(self.itemData);
        end
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.btn = self:AddComponent(UIButton,btn_path);
    self.btn:SetOnClick(function ()
        OnPointClick(self);
    end);
    self.name_text=self:AddComponent(UIText,_name_txt_path);
    self.levelBgImg = self:AddComponent(UIImage, level_bg_path, AtlasConfig.DynamicTex);
    self.level_txt = self:AddComponent(UIText, level_txt_path);
    self.canvas_group=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.CanvasGroup));
    self.goIntoBattleObj=UIUtil.FindTrans(self.transform,battle_obj_path);
    self.goIntoBattleText=self:AddComponent(UIText, battle_obj_tip_path);
    self.goIntoBattleText:SetText(DataUtil.GetClientText(100178));
    self.bottom_bg=self:AddComponent(UIImage,bottom_bg_path,AtlasConfig.DynamicTex);
    self.top_bg=self:AddComponent(UIImage,top_bg_path,AtlasConfig.DynamicTex);
    self.quality_icon=self:AddComponent(UIImage,quality_icon_path,AtlasConfig.DynamicTex);
    self.crystalBgObj = UIUtil.FindTrans(self.transform, "UIEmBattleCardItem/cry_bg");
    self.cardIcon=self:AddComponent(UIImage,card_icon_path,AtlasConfig.DynamicTex);
    self.crystalObj=UIUtil.FindTrans(self.transform,crystal_path);
    self.crystalImg=self:AddComponent(UIImage,crystal_path,AtlasConfig.DynamicTex);
    self.crystalNumImg=self:AddComponent(UIText,crystal_Num_path);
    self.crystalAddImg = self:AddComponent(UIImage,crystal_add_path);
    self.starGroup=self:AddComponent(UIBaseContainer,star_group_path);
    self.starList={};
    local starCount=self.starGroup.transform.childCount;
    for i = 0, starCount-1 do
        local singleStarImg=self.starGroup:AddComponent(UIImage,i,AtlasConfig.DynamicTex);
        table.insert(self.starList,singleStarImg);
    end

    --是否触发点击事件
    self.isCanClick = true;
    --是否显示上阵
    self.isShowBattle = true;
end

-- 设置卡牌数据
local function OnSetData(self, itemData)
    if itemData ~= nil then
        self.level_txt:SetText(Mathf.Floor(itemData.cardXlsxData.level));
        self.quality_icon:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.cardXlsxData.quality))
        if self.crystalBgObj then
            self.crystalBgObj.gameObject:SetActive(itemData.cardXlsxData.quality>=4)
        end

        self.nameColor = "FFFFFF"
        if itemData.cardXlsxData.hellNameColor ~= nil then
            self.nameColor = itemData.cardXlsxData.hellNameColor
        end
        self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."</color>")
        if itemData.cardXlsxData.hellSmallLevel > 0 then
            self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."+"..math.floor(itemData.cardXlsxData.hellSmallLevel).."</color>")
        end
        if self.isJLR then
            self.name_text.gameObject:SetActive(true)
            self.bottom_bg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.cardXlsxData.quality))
            self.levelBgImg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.cardXlsxData.quality))
            self.top_bg:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(itemData.cardXlsxData.quality))
            local imagePath= "Art/UI_3D/Textures/"..itemData.cardXlsxData.kpkm..".png"
            ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
                self.cardIcon.texture = texture
            end)
        else
            self.name_text.gameObject:SetActive(false)
            self.cardIcon:SetSpriteName(itemData.cardXlsxData.cardFace);
            self.top_bg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(itemData.cardXlsxData.quality))
        end
        self.crystalImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(itemData.cardXlsxData.crystalType));
        if itemData.cardXlsxData.type == 2 then
            self.cardIcon:SetSpriteName(itemData.cardXlsxData.icon);
            self.crystalNumImg:SetText(math.floor(itemData.cardXlsxData.callCost));
            self.crystalAddImg.gameObject:SetActive(false)
            self.crystalNumImg.gameObject:SetActive(true)
        else
            self.crystalAddImg.gameObject:SetActive(true)
            self.crystalNumImg.gameObject:SetActive(false)
        end
        UIUtil.SetHeroStar(itemData.cardXlsxData.starlv,self.starList);
        if self.isShowBattle then
            self.name_text.gameObject:SetActive(true)
            self.goIntoBattleObj.gameObject:SetActive(itemData.isUpArray==1);
            if itemData.isUpArray == 1 then
                self.quality_icon:SetColor32(130, 130, 130, 255);
                self.crystalImg:SetColor32(130, 130, 130, 255);
                self.crystalNumImg:SetColor32(130, 130, 130, 255);
                for i = 1, #self.starList do
                    self.starList[i]:SetColor32(130, 130, 130, 255);
                end
                if itemData.teamId ~= nil then
                    if itemData.teamId == 1 then
                        self.goIntoBattleText:SetText("队伍一")
                    elseif itemData.teamId == 2 then
                        self.goIntoBattleText:SetText("队伍二")
                    elseif itemData.teamId == 3 then
                        self.goIntoBattleText:SetText("队伍三")
                    end
                end
            else
                self.quality_icon:SetColor32(255, 255, 255, 255);
                self.crystalImg:SetColor32(255, 255, 255, 255);
                self.crystalNumImg:SetColor32(255, 255, 255, 255);
                for i = 1, #self.starList do
                    self.starList[i]:SetColor32(255, 255, 255, 255);
                end
            end
        else
            self.goIntoBattleObj.gameObject:SetActive(false);
        end
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    self.realIndex=real_index + 1;
    local itemData = self.view.jlrlist[real_index + 1]
    if self.view.curListType == 2 then
        itemData = self.view.shlChooseList[real_index + 1]
    end
    self.itemData=itemData;
    OnSetData(self, self.itemData);
end

-- 设置卡牌牌是否可以点击，是否是寄灵人，是否显示出站标志
local function OnSetCardAtr(self, isJLR, canClick)
    self.isCanClick = canClick;
    self.isShowBattle = false;
    self.isJLR = isJLR;
    -- 寄灵人和守护灵卡面图片格式不一样
    if self.isJLR then
        self.cardIcon = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),card_icon_path)
    end
end

UIEmBattle2DCardWrapItem.OnCreate = OnCreate
UIEmBattle2DCardWrapItem.OnRefresh = OnRefresh
UIEmBattle2DCardWrapItem.OnSetCardAtr = OnSetCardAtr
UIEmBattle2DCardWrapItem.OnSetData = OnSetData

return UIEmBattle2DCardWrapItem
