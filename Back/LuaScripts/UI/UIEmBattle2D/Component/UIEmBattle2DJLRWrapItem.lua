--[[
-- added by xupeng @ 2019-7-16
-- 该模块UIEmBattle2DView窗口中自己阵容中寄灵人卡牌的可复用Item
--]]
local UIEmBattle2DJLRWrapItem = BaseClass("UIEmBattle2DJLRWrapItem", UIWrapComponent)
local base = UIWrapComponent

local btn_path = "UIEmBattleCardItem";
local level_bg_path = "UIEmBattleCardItem/levelbg";
local level_txt_path = "UIEmBattleCardItem/levelbg/level";
local name_text_path = "UIEmBattleCardItem/name";
local bottom_bg_path = "UIEmBattleCardItem/diBg";
local top_bg_path = "UIEmBattleCardItem/topBg";
local quality_icon_path = "UIEmBattleCardItem/quality";
local card_icon_path = "UIEmBattleCardItem/icon";
local crystal_bg_path = "UIEmBattleCardItem/cry_bg";
local crystal_path = "UIEmBattleCardItem/crystal";
local star_bg_path = "UIEmBattleCardItem/startBgImage";
local star_group_path = "UIEmBattleCardItem/starGroup";
local stop_img_path = "diImage/stopImage";
local crystal_Num_path = "UIEmBattleCardItem/crystal/costSoulImg";
local crystal_add_path = "UIEmBattleCardItem/crystal/cryAddImg";
local tip_text_path = "diImage/tipText";
local battle_img_path = "FX_ui_UIEmBattle2D_sealFight";
local down_tip_path = "FX_ui_Battle2D_CardGroup_JLR_Tip";
local attribute_bg_path = "UIEmBattleCardItem/attributebg";
local attribute_icon_path = "UIEmBattleCardItem/attributebg/attributeImg";
local attribute_boss_path = "UIEmBattleCardItem/attributebg/bossText"

local Input = CS.UnityEngine.Input;
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType;
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger;

local glowEffectPath = "Effect/Prefab/UI/FX_ui_Battle2D_CardGroup_JLR_Glow.prefab"

--按下
local function OnItemDown(self, base_event)
    self.initMousePos = Input.mousePosition;
    self.isDrag = false;
end
--抬起
local function OnUp(self, base_event)
    if self.isDrag == true then
        self:ShowVirtualCard(false);
        self.view:BattleCheckDrag(nil);
        --self.canvas_group.alpha = 1;
    end
    self.isDrag = false;
end
--拖拽
local function OnDrag(self, base_event)
    if self.isGameReady then
        return
    end
    if self.isDrag == false then
        if Mathf.Abs(Input.mousePosition.x - self.initMousePos.x) > 20 or Mathf.Abs(Input.mousePosition.y - self.initMousePos.y) > 20 then
            if self.itemData ~= nil then
                self:ShowVirtualCard(true);
                self.view:BattleCheckDrag(self.itemData, self._index);
                self.isDrag = true;
                if self.btn.gameObject.activeInHierarchy then
                    --self.canvas_group.alpha = 0;
                end
            end
        end
    else
        self.view:UpdateCardPos();
    end
end
--开始拖拽
local function OnBeginDrag(self, base_event)

end
--結束拖拽
local function OnEndDrag(self, base_event)
    if self.isDrag then
        self:ShowVirtualCard(false);
        self.view:BattleCheckDrag(nil);
        self.isDrag = false;
        --self.canvas_group.alpha = 1;
    end
end

local function OnPointClick(self, base_event)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UIEMBATTLE2D_ON_CLICK_SINGLE_CARD,self.itemData);

end
--注册事件
local function RegesterAction(self, eventId, fun)
    local eventEntry = EventTrigger.Entry();
    eventEntry.eventID = eventId;
    eventEntry.callback:AddListener(Bind(self, fun));
    self.trigger.triggers:Add(eventEntry);
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.stop_img = self:AddComponent(UIImage, stop_img_path);
    self.tip_Text = self:AddComponent(UIText, tip_text_path);
    self.tip_Text:SetText(DataUtil.GetClientText(100176));
    self.btn = UIUtil.FindTrans(self.transform, btn_path);
    self.levelBgImg = self:AddComponent(UIImage, level_bg_path, AtlasConfig.DynamicTex);
    self.level_txt = self:AddComponent(UIText, level_txt_path);
    self.name_text=self:AddComponent(UIText,name_text_path);
    self.canvas_group = UIUtil.FindComponent(self.btn, typeof(CS.UnityEngine.CanvasGroup));
    self.bottom_bg = self:AddComponent(UIImage, bottom_bg_path, AtlasConfig.DynamicTex);
    self.top_bg = self:AddComponent(UIImage, top_bg_path, AtlasConfig.DynamicTex);
    self.quality_icon = self:AddComponent(UIImage, quality_icon_path, AtlasConfig.DynamicTex);
    self.battle_img = self:AddComponent(UIImage, battle_img_path);

    self.cardIcon = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),card_icon_path)
    self.crystalObj = UIUtil.FindTrans(self.transform, crystal_path);
    self.crystalBgObj = UIUtil.FindTrans(self.transform, crystal_bg_path);
    self.crystalImg = self:AddComponent(UIImage, crystal_path, AtlasConfig.DynamicTex);
    self.crystalNumImg = self:AddComponent(UIText, crystal_Num_path);
    self.crystalAddImg = self:AddComponent(UIImage,crystal_add_path);
    self.starBgObj = UIUtil.FindTrans(self.transform, star_bg_path);
    self.starGroup = self:AddComponent(UIBaseContainer, star_group_path);
    self.starList = {};
    local starCount = self.starGroup.transform.childCount;
    for i = 0, starCount - 1 do
        local singleStarImg = self.starGroup:AddComponent(UIImage, i, AtlasConfig.DynamicTex);
        table.insert(self.starList, singleStarImg);
    end

    self.initMousePos = 0;
    self.isClick = true;
    self.isDrag = false;
    self.trigger = self.btn.gameObject:AddComponent(typeof(EventTrigger));
    RegesterAction(self, EventTriggerType.PointerDown, OnItemDown);
    RegesterAction(self, EventTriggerType.PointerUp, OnUp);
    RegesterAction(self, EventTriggerType.Drag, OnDrag);
    RegesterAction(self, EventTriggerType.BeginDrag, OnBeginDrag);
    RegesterAction(self, EventTriggerType.EndDrag, OnEndDrag);
    RegesterAction(self, EventTriggerType.PointerClick, OnPointClick);

    self.btn.gameObject:SetActive(false);
    self.stop_img.gameObject:SetActive(false);
    self.tip_Text.gameObject:SetActive(true);
    self.crystalNumImg.gameObject:SetActive(false);
    self.crystalAddImg.gameObject:SetActive(true);
    self.isGameReady = false;
    self._index = 0;
end



-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, itemData)
    self.itemData = itemData;
    if itemData ~= nil then
        self.nameColor = "FFFFFF"
        if itemData.cardXlsxData.hellNameColor ~= nil then
            self.nameColor = itemData.cardXlsxData.hellNameColor
        end
        self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."</color>")
        if itemData.cardXlsxData.hellSmallLevel > 0 then
            self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."+"..math.floor(itemData.cardXlsxData.hellSmallLevel).."</color>")
        end
        self.btn.gameObject:SetActive(true);
        self.levelBgImg.gameObject:SetActive(itemData.cardXlsxData.level > 0);
        self.level_txt:SetText(Mathf.Floor(itemData.cardXlsxData.level));
        self.levelBgImg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.cardXlsxData.quality))
        self.top_bg:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(itemData.cardXlsxData.quality))
        self.bottom_bg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.cardXlsxData.quality))
        self.quality_icon.gameObject:SetActive(self._isSelf or self.view.arrayType == BattleEnum.BattleType.PVP)-- or self.view.arrayType == BattleEnum.BattleType.SOLO_ARENA
        self.quality_icon:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.cardXlsxData.quality))
        if itemData.cardXlsxData.kpkm ~= nil then
            local imagePath= "Art/UI_3D/Textures/"..itemData.cardXlsxData.kpkm..".png"
            ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
                self.cardIcon.texture = texture
            end)
        end
        self.crystalObj.gameObject:SetActive(itemData.cardXlsxData.crystalType > 0);
        self.crystalBgObj.gameObject:SetActive(itemData.cardXlsxData.quality>=4);
        self.crystalImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(itemData.cardXlsxData.crystalType));
        self.starGroup.gameObject:SetActive(itemData.cardXlsxData.starlv > 0);
        self.starBgObj.gameObject:SetActive(itemData.cardXlsxData.starlv > 0);
        UIUtil.SetHeroStar(itemData.cardXlsxData.starlv, self.starList);
        if not self._isSelf and self.view.arrayType ~= BattleEnum.BattleType.PVP and self.view.arrayType ~= BattleEnum.BattleType.SOLO_ARENA then
            self.attributeBossText.gameObject:SetActive(itemData.cardXlsxData.monsterType == 3);
            self.attributeBg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.cardXlsxData.quality))
            self.attributeIcon:SetSpriteName(SpriteDefine:GetMonsterTypeIconByType(itemData.cardXlsxData.monsterType))
            self.attributeBg.gameObject:SetActive(true);
        elseif self.attributeBg ~= nil then
            self.attributeBg.gameObject:SetActive(false);
        end
    else
        self.btn.gameObject:SetActive(false);
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.downTipEffect ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(glowEffectPath,self.downTipEffect);
        self.downTipEffect = nil
    end
end

-- 设置位置,是否是自己的卡牌
local function OnSetIndex(self, index, isSelf)
    self._index = index;
    self._isSelf = isSelf;
    if self._isSelf then
        GameObjectPool:GetInstance():GetGameObjectAsync(glowEffectPath,function(go)
            if not IsNull(go) then
                go.gameObject:SetActive(false)
                go.transform:SetParent(self.transform)
                go.transform.localPosition = Vector3.New(6, -25, 0)
                go.transform.localScale = Vector3.New(1,1,1)
                self.downTipEffect = go
            end
        end)
        self.dragGlowEffect = UIUtil.FindTrans(self.transform, down_tip_path);
    else
        self.attributeBg = self:AddComponent(UIImage, attribute_bg_path, AtlasConfig.DynamicTex);
        self.attributeIcon = self:AddComponent(UIImage, attribute_icon_path, AtlasConfig.DynamicTex);
        self.attributeBossText = self:AddComponent(UIText, attribute_boss_path);
    end
end

-- 游戏是否准备，卡牌不可拖拽
local function OnGameReady(self, isReady)
    self.stop_img.gameObject:SetActive(isReady);
    self.tip_Text.gameObject:SetActive(not isReady);
    self.isGameReady = isReady;
    if self.isGameReady then
        self:ShowDragGlowEffect(false);
    end
end

-- 显示出战标志
local function ShowBattleImg(self, isShow)
    self.battle_img.gameObject:SetActive(self.itemData ~= nil and isShow);
end

-- 显示拖拽提示框特效
local function ShowDragGlowEffect(self, isShow)
    if self.dragGlowEffect ~= nil then
        self.dragGlowEffect.gameObject:SetActive(isShow);
    end
end

-- 显示卡牌放下特效
local function ShowDownTipEffect(self, isShow)
    if isShow == false and self.downTipEffect ~= nil then
        self.downTipEffect.gameObject:SetActive(false);
        return
    end
    if self.downTipEffect ~= nil then
        self.downTipEffect.gameObject:SetActive(false);
        self.downTipEffect.gameObject:SetActive(true);
    end
end

-- 显示虚化卡牌
local function ShowVirtualCard(self, isVirtual)
    if self.itemData == nil then
        return
    end
    local color = isVirtual and 130 or 255;
    self.bottom_bg:SetColor32(color, color, color, 255);
    self.cardIcon.material = isVirtual and self.view.grayMat or nil;
    self.top_bg:SetColor32(color, color, color, 255);
    self.quality_icon:SetColor32(color, color, color, 255);
    self.level_txt:SetColor32(color, color, color, 255);
    self.name_text:SetColor32(color, color, color, 255);
    self.levelBgImg:SetColor32(color, color, color, 255);
    self.crystalImg:SetColor32(color, color, color, 255);
    self.crystalAddImg:SetColor32(color, color, color, 255);
    self.crystalNumImg:SetColor32(color, color, color, 255);
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(color, color, color, 255);
    end
end

UIEmBattle2DJLRWrapItem.OnCreate = OnCreate
UIEmBattle2DJLRWrapItem.OnRefresh = OnRefresh
UIEmBattle2DJLRWrapItem.OnDestroy = OnDestroy
UIEmBattle2DJLRWrapItem.OnSetIndex = OnSetIndex
UIEmBattle2DJLRWrapItem.OnGameReady = OnGameReady
UIEmBattle2DJLRWrapItem.ShowDragGlowEffect = ShowDragGlowEffect
UIEmBattle2DJLRWrapItem.ShowDownTipEffect = ShowDownTipEffect
UIEmBattle2DJLRWrapItem.ShowVirtualCard = ShowVirtualCard
UIEmBattle2DJLRWrapItem.ShowBattleImg = ShowBattleImg

return UIEmBattle2DJLRWrapItem
