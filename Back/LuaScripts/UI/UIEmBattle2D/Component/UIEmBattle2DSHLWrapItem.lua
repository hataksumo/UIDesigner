--[[
-- added by xupeng @ 2019-7-16
-- 该模块UIEmBattle2DView窗口中自己阵容中守护灵卡牌的可复用Item
--]]
local UIEmBattle2DSHLWrapItem = BaseClass("UIEmBattle2DSHLWrapItem", UIWrapComponent)
local base = UIWrapComponent

local btn_path = "UIEmBattleSHLCardItem"
local level_bg_path = "UIEmBattleSHLCardItem/levelbg";
local level_txt_path = "UIEmBattleSHLCardItem/levelbg/level";
local bottom_bg_path = "UIEmBattleSHLCardItem/diBg";
local top_bg_path = "UIEmBattleSHLCardItem/topBg";
local quality_icon_path = "UIEmBattleSHLCardItem/quality";
local card_icon_path = "UIEmBattleSHLCardItem/icon";
local crystal_path = "UIEmBattleSHLCardItem/crystal";
local star_bg_path = "UIEmBattleSHLCardItem/startBgImage";
local star_group_path = "UIEmBattleSHLCardItem/starGroup";
local crystal_Num_path = "UIEmBattleSHLCardItem/crystal/costSoulImg";
local add_btn_path = "CardHead/addBtn";
local card_head_path = "CardHead";
local name_text_path = "UIEmBattleSHLCardItem/name";
local down_tip_path = "FX_ui_Battle2D_CardGroup_SHL_Tip";

local Input = CS.UnityEngine.Input;
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType;
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger;

local glowEffectPath = "Effect/Prefab/UI/FX_ui_Battle2D_CardGroup_SHL_Glow.prefab"

--按下
local function OnItemDown(self, base_event)
    self.initMousePos = Input.mousePosition;
    self.isDrag = false;
end
--抬起
local function OnUp(self, base_event)
    if self.isDrag == true then
        self.view:BattleCheckDrag(nil);
        self.canvas_group.alpha = 1;
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
                self.view:BattleCheckDrag(self.itemData, self._index);
                self.isDrag = true;
                if self.btn.gameObject.activeInHierarchy then
                    self.canvas_group.alpha = 0;
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
        self.view:BattleCheckDrag(nil);
        self.isDrag = false;
        self.canvas_group.alpha = 1;
    end
end

local function OnPointClick(self, base_event)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UIEMBATTLE2D_ON_CLICK_SINGLE_CARD,self.itemData);
    if self.isGameReady then
        return
    end
    self.view:ShowSHLChoose(self._index, true);
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
    self.add_btn = self:AddComponent(UIButton, add_btn_path);
    self.add_btn:SetOnClick(function()
        if self.isGameReady then
            return
        end
        self.view:ShowSHLChoose(self._index, true);
    end)
    self.cardHead = self:AddComponent(UIText, card_head_path);
    self.btn = UIUtil.FindTrans(self.transform, btn_path);
    self.levelBgImg = self:AddComponent(UIImage, level_bg_path, AtlasConfig.DynamicTex);
    self.level_txt = self:AddComponent(UIText, level_txt_path);
    self.name_text = self:AddComponent(UIText, name_text_path);
    self.canvas_group = UIUtil.FindComponent(self.btn, typeof(CS.UnityEngine.CanvasGroup));
    self.bottom_bg = self:AddComponent(UIImage, bottom_bg_path, AtlasConfig.DynamicTex);
    self.top_bg = self:AddComponent(UIImage, top_bg_path, AtlasConfig.DynamicTex);
    self.quality_icon = self:AddComponent(UIImage, quality_icon_path, AtlasConfig.DynamicTex);

    self.cardIcon = self:AddComponent(UIImage, card_icon_path, AtlasConfig.DynamicTex);
    self.crystalObj = UIUtil.FindTrans(self.transform, crystal_path);
    self.crystalImg = self:AddComponent(UIImage, crystal_path, AtlasConfig.DynamicTex);
    self.crystalNumImg = self:AddComponent(UIText, crystal_Num_path);
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

    self.cardHead.gameObject:SetActive(false);
    self.btn.gameObject:SetActive(false);
    self.isGameReady = false;
    self.index = 0;
end



-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, itemData, isShow)
    self.itemData = itemData;
    if itemData ~= nil then
        self.cardHead.gameObject:SetActive(true);
        self.btn.gameObject:SetActive(true);
        self.name_text:SetActive(false);
        self.levelBgImg.gameObject:SetActive(itemData.cardXlsxData.level > 0);
        self.level_txt:SetText(string.format("%s", math.modf(itemData.cardXlsxData.level)));
        self.levelBgImg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.cardXlsxData.quality))
        self.top_bg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(itemData.cardXlsxData.quality));
        self.quality_icon.gameObject:SetActive(true);
        self.quality_icon:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.cardXlsxData.quality));
        self.cardIcon:SetSpriteName(itemData.cardXlsxData.icon);
        self.crystalObj.gameObject:SetActive(itemData.cardXlsxData.type == 2);
        if itemData.cardXlsxData.type == 2 then
            self.crystalImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(itemData.cardXlsxData.crystalType));
            self.crystalNumImg:SetText(math.floor(itemData.cardXlsxData.callCost));
        end
        self.starGroup.gameObject:SetActive(itemData.cardXlsxData.starlv > 0);
        self.starBgObj.gameObject:SetActive(itemData.cardXlsxData.starlv > 0);
        UIUtil.SetHeroStar(itemData.cardXlsxData.starlv, self.starList);
        if not self._isSelf and self.view.arrayType ~= BattleEnum.BattleType.PVP then -- and self.view.arrayType ~= BattleEnum.BattleType.SOLO_ARENA
            self.quality_icon.gameObject:SetActive(false);
            self.name_text.gameObject:SetActive(true);
            self.name_text:SetText(itemData.cardXlsxData.name)
        end
    else
        self.cardHead.gameObject:SetActive(isShow);
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
                go.transform.localPosition = Vector3.New(0, 0, 0)
                go.transform.localScale = Vector3.New(1,1,1)
                self.downTipEffect = go
            end
        end)
        self.dragGlowEffect = UIUtil.FindTrans(self.transform, down_tip_path);
        --self.downTipEffect = UIUtil.FindTrans(self.transform, drag_glow_path);
    end
end

-- 游戏是否准备，卡牌不可拖拽
local function OnGameReady(self, isReady)
    self.isGameReady = isReady;
    self.cardHead.gameObject:SetActive(self.itemData ~= nil);
    if self.isGameReady then
        self:ShowDragGlowEffect(false);
    end
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
    self.cardIcon:SetColor32(color, color, color, 255);
    self.top_bg:SetColor32(color, color, color, 255);
    self.quality_icon:SetColor32(color, color, color, 255);
    self.levelBgImg:SetColor32(color, color, color, 255);
    self.level_txt:SetColor32(color, color, color, 255);
    self.name_text:SetColor32(color, color, color, 255);
    self.crystalImg:SetColor32(color, color, color, 255);
    self.crystalNumImg:SetColor32(color, color, color, 255);
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(color, color, color, 255);
    end
end

UIEmBattle2DSHLWrapItem.OnCreate = OnCreate
UIEmBattle2DSHLWrapItem.OnRefresh = OnRefresh
UIEmBattle2DSHLWrapItem.OnDestroy = OnDestroy
UIEmBattle2DSHLWrapItem.OnSetIndex = OnSetIndex
UIEmBattle2DSHLWrapItem.OnGameReady = OnGameReady
UIEmBattle2DSHLWrapItem.ShowDragGlowEffect = ShowDragGlowEffect
UIEmBattle2DSHLWrapItem.ShowDownTipEffect = ShowDownTipEffect
UIEmBattle2DSHLWrapItem.ShowVirtualCard = ShowVirtualCard

return UIEmBattle2DSHLWrapItem
