--[[
-- added by xupeng @ 2019-7-16
-- 该模块UIEmBattle2DView窗口中下方卡牌列表的可复用Item
--]]
local UIEmBattle2DDragWrapItem = BaseClass("UIEmBattle2DDragWrapItem", UIWrapComponent)
local base = UIWrapComponent

local btn_path = "UIEmBattleCardItem";
local level_bg_path = "UIEmBattleCardItem/levelbg";
local level_txt_path = "UIEmBattleCardItem/levelbg/level";
local _name_txt_path="UIEmBattleCardItem/name";
local battle_obj_path="UIEmBattleCardItem/GoIntoBattleObj";
local battle_obj_tip_path="UIEmBattleCardItem/GoIntoBattleObj/chooseTip";
local bottom_bg_path="UIEmBattleCardItem/diBg";
local top_bg_path="UIEmBattleCardItem/topBg";
local quality_icon_path="UIEmBattleCardItem/quality";
local card_icon_path="UIEmBattleCardItem/icon";
local crystal_path="UIEmBattleCardItem/crystal";
local crystal_Num_path="UIEmBattleCardItem/crystal/costSoulImg";
local crystal_add_path="UIEmBattleCardItem/crystal/cryAddImg";
local star_group_path="UIEmBattleCardItem/starGroup";

local Input=CS.UnityEngine.Input;
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType;
local EventTrigger=CS.UnityEngine.EventSystems.EventTrigger;

--显示卡牌黑色遮罩
local function ShowCardMast(self, isShow)
    local color = isShow and 130 or 255
    self.name_text:SetColor32(color, color, color, 255);
    self.levelBgImg:SetColor32(color, color, color, 255);
    self.level_txt:SetColor32(color, color, color, 255);
    self.cardIcon.material = isShow and self.view.grayMat or nil;
    self.quality_icon:SetColor32(color, color, color, 255);
    self.crystalImg:SetColor32(color, color, color, 255);
    self.crystalNumImg:SetColor32(color, color, color, 255);
    self.crystalAddImg:SetColor32(color, color, color, 255);
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(color, color, color, 255);
    end
end

--按下
local function OnItemDown(self,base_event)
    self.initMousePos = Input.mousePosition;
    self.isDrag = false;
    if self.canDrag then
        self.rectTrans.localScale=Vector3.New(0.8,0.8,1);
    end
end
--抬起
local function OnUp(self,base_event)
    if self.isDrag==true then
        ShowCardMast(self, false)
        self.view:BattleCheckDrag(nil);
    end
    self.isDrag = false;
    self.rectTrans.localScale=Vector3.New(0.7,0.7,1);
end
--拖拽
local function OnDrag(self,base_event)
    -- 非多人boss以上阵则不能拖拽  多人BOSS同一队伍不能拖拽
    if not self.canDrag then
        return
    end
    if self.isDrag==false then
        self.view.jlr_scrollRect:OnDrag(base_event);
        if Mathf.Abs(Input.mousePosition.y-self.initMousePos.y)>50 then
            if self.itemData~=nil then
                self.view:BattleCheckDrag(self.itemData, 0);
                self.isDrag=true;
                ShowCardMast(self, true)
                self.rectTrans.localScale=Vector3.New(0.7,0.7,1);
            end
        end
    else
        self.view:UpdateCardPos();
    end
end
--开始拖拽
local function OnBeginDrag(self,base_event)
    if self.isDrag==false then
        self.view.jlr_scrollRect:OnBeginDrag(base_event);
    end

end
--結束拖拽
local function OnEndDrag(self,base_event)
    if self.isDrag==false then
        self.view.jlr_scrollRect:OnEndDrag(base_event);
    else
        ShowCardMast(self, false)
        self.view:BattleCheckDrag(nil);
        self.isDrag=false;
    end
end

local function OnPointClick(self,base_event)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UIEMBATTLE2D_ON_CLICK_SINGLE_CARD,self.itemData);
end
--注册事件
local function RegesterAction(self,eventId,fun)
    local eventEntry=EventTrigger.Entry();
    eventEntry.eventID=eventId;
    eventEntry.callback:AddListener(Bind(self,fun));
    self.trigger.triggers:Add(eventEntry);
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.crystalBgObj = UIUtil.FindTrans(self.transform, "UIEmBattleCardItem/cry_bg");
    self.btn =UIUtil.FindTrans(self.transform,btn_path);
    self.rectTrans = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),btn_path);
    self.levelBgImg = self:AddComponent(UIImage, level_bg_path, AtlasConfig.DynamicTex);
    self.level_txt = self:AddComponent(UIText, level_txt_path);
    self.name_text=self:AddComponent(UIText,_name_txt_path);
    self.canvas_group=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.CanvasGroup));
    self.goIntoBattleObj=UIUtil.FindTrans(self.transform,battle_obj_path);
    self.goIntoBattleText=self:AddComponent(UIText, battle_obj_tip_path);
    self.goIntoBattleText:SetText(DataUtil.GetClientText(100177));
    self.bottom_bg=self:AddComponent(UIImage,bottom_bg_path,AtlasConfig.DynamicTex);
    self.top_bg=self:AddComponent(UIImage,top_bg_path,AtlasConfig.DynamicTex);
    self.quality_icon=self:AddComponent(UIImage,quality_icon_path,AtlasConfig.DynamicTex);

    self.cardIcon=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),card_icon_path)
    self.crystalObj=UIUtil.FindTrans(self.transform,crystal_path);
    self.crystalImg=self:AddComponent(UIImage,crystal_path,AtlasConfig.DynamicTex);
    self.crystalNumImg=self:AddComponent(UIText,crystal_Num_path);
    self.crystalAddImg=self:AddComponent(UIImage,crystal_add_path);
    self.starGroup=self:AddComponent(UIBaseContainer,star_group_path);
    self.starList={};
    local starCount=self.starGroup.transform.childCount;
    for i = 0, starCount-1 do
        local singleStarImg=self.starGroup:AddComponent(UIImage,i,AtlasConfig.DynamicTex);
        table.insert(self.starList,singleStarImg);
    end

    self.initMousePos=0;
    self.isClick = true;
    self.isDrag = false;
    self.canDrag = true;
    self.trigger= self.btn.gameObject:AddComponent(typeof(EventTrigger));
    RegesterAction(self,EventTriggerType.PointerDown,OnItemDown);
    RegesterAction(self,EventTriggerType.PointerUp,OnUp);
    RegesterAction(self,EventTriggerType.Drag,OnDrag);
    RegesterAction(self,EventTriggerType.BeginDrag,OnBeginDrag);
    RegesterAction(self,EventTriggerType.EndDrag,OnEndDrag);
    RegesterAction(self,EventTriggerType.PointerClick,OnPointClick);
end

-- 设置卡牌数据
local function OnSetData(self, itemData)
    if itemData ~= nil then
        self.canDrag = true
        if self.itemData.teamId == 0 and self.itemData.isUpArray == 1 then
            self.canDrag = false
        end
        if self.itemData.teamId ~= 0 and self.itemData.teamId == self.view.curTeam and self.itemData.isUpArray == 1 then
            self.canDrag = false
        end
        self.nameColor = "FFFFFF"
        if itemData.cardXlsxData.hellNameColor ~= nil then
            self.nameColor = itemData.cardXlsxData.hellNameColor
        end
        self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."</color>")
        if itemData.cardXlsxData.hellSmallLevel > 0 then
            self.name_text:SetText("<color=#"..self.nameColor..">"..itemData.cardXlsxData.name.."+"..math.floor(itemData.cardXlsxData.hellSmallLevel).."</color>")
        end
        self.level_txt:SetText(Mathf.Floor(itemData.cardXlsxData.level));
        self.level_txt:SetColor32(255, 255, 255, 255);
        self.levelBgImg:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.cardXlsxData.quality))
        self.top_bg:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(itemData.cardXlsxData.quality))
        self.bottom_bg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.cardXlsxData.quality))
        self.quality_icon:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.cardXlsxData.quality))
        self.crystalBgObj.gameObject:SetActive(itemData.cardXlsxData.quality>=4)
        local imagePath= "Art/UI_3D/Textures/"..itemData.cardXlsxData.kpkm..".png"
        ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
            self.cardIcon.texture = texture
        end)
        self.crystalImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(itemData.cardXlsxData.crystalType));
        if itemData.cardXlsxData.type == 2 then
            self.crystalNumImg:SetText(math.floor(itemData.cardXlsxData.callCost));
        end
        UIUtil.SetHeroStar(itemData.cardXlsxData.starlv,self.starList);
        self.goIntoBattleObj.gameObject:SetActive(itemData.isUpArray==1);
        if itemData.isUpArray == 1 and itemData.teamId ~= nil then
            if itemData.teamId == 1 then
                self.goIntoBattleText:SetText("队伍一")
            elseif itemData.teamId == 2 then
                self.goIntoBattleText:SetText("队伍二")
            elseif itemData.teamId == 3 then
                self.goIntoBattleText:SetText("队伍三")
            end
        end
        ShowCardMast(self, itemData.isUpArray==1);
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

UIEmBattle2DDragWrapItem.OnCreate = OnCreate
UIEmBattle2DDragWrapItem.OnRefresh = OnRefresh
UIEmBattle2DDragWrapItem.OnSetData = OnSetData

return UIEmBattle2DDragWrapItem
