--[[
-- added by wsh @ 2017-12-11
-- UICardPool模块中卡牌列表的可复用Item
--]]

local UICardPoolWrapItem = BaseClass("UICardPoolWrapItem", UIWrapComponent)
local base = UIWrapComponent
local singleRowNum  ---每行个数
local space         ---高+间隔
local rowSpace      ---宽+间隔
local minR          ---内圈半径（弧度需要）
local topAngle      ---相邻2个item与圆心夹角
local fixOffsetZ    ---z轴修正
local fixOffsetY    ---y轴修正

local function OnItemClick(self)
    --LJAudioManger:GetInstance():PlayVoice("UI_Card_01")
    if self.parent.view.CanClickLeftAndRight then
        if self.itemData == nil then
            return
        end
        if self.itemData.type == 1 then
            self.parent.view.ctrl:SendComposeRequest(self._id)
        else
            if self.parent.view.model.select_card_id~=self._id then
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_UI_CARD_DETAILS_SAVE_INDEX, self._index, self._id,self.itemData.type)--
            end
        end
    else
        UISpecial:GetInstance():UITipText("操作频繁")
    end

end

-- 创建
local function OnCreate(self,parent,mama)
    base.OnCreate(self)
    -- 组件初始化
    self.parent=parent
    self.mama=mama
    --self._animator = self.transform:Find("frame"):GetComponent(typeof(CS.UnityEngine.Animator))
    self._icon_img = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),"frame/icon")
    --self._icon_img = self:AddComponent(UIImage, "frame/icon", AtlasConfig.DynamicTex)
    self._icon_img_bg = self:AddComponent(UIImage, "frame/Iconbg", AtlasConfig.DynamicTex)
    self._quality_img = self:AddComponent(UIImage, "frame/quality", AtlasConfig.DynamicTex)
    self._btn = self:AddComponent(UIButton, "frame")
    self.frame=self:AddComponent(UIImage,"frame",AtlasConfig.DynamicTex)
    self._btn:SetOnClick(self, OnItemClick)
    self._kong_btn = self:AddComponent(UIButton,"kong")
    self._kong_btn:SetOnClick(function()
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100045))
    end)
    self._name = self:AddComponent(UIText, "frame/name")
    self._name_bg=self:AddComponent(UIImage,"frame/nameBg",AtlasConfig.DynamicTex)
    self._level_image = self:AddComponent(UIImage, "frame/levelbg", AtlasConfig.DynamicTex)
    self._level_txt = self:AddComponent(UIText, "frame/levelbg/level")
    self._mask_cmp = self:AddComponent(UIBaseComponent, "frame/mask")
    --self._spbz_cmp = self:AddComponent(UIBaseComponent, "frame/mask/spbz_UIBaseComponent")

    self._djzh_cmp=self:AddComponent(UIImage,"frame/mask/djzh_UIBaseComponent",AtlasConfig.Language)
    self._djzh_cmp:SetSpriteName("ui_t_Card_005")
    --self._djzh_cmp = self:AddComponent(UIBaseComponent, "frame/mask/djzh_UIBaseComponent")
    self._slider = self:AddComponent(UISlider, "frame/mask/Slider")
    self._debrisNum_txt = self:AddComponent(UIText, "frame/mask/num_UIText")
    self.hava_game = self.transform:Find("frame").gameObject
    self.empty_game = self.transform:Find("kong").gameObject

    self.color_Image =self:AddComponent(UIImage,"frame/cry_Image",AtlasConfig.DynamicTex)
    self.color_Num =self:AddComponent(UIText,"frame/cry_Image/cryNum_text")
    self.color_Add = UIUtil.FindTrans(self.transform,"frame/cry_Image/cryAddImg")
    self.star_obj = UIUtil.FindTrans(self.transform, "frame/Obj")
    self.cry_bg_img = self:AddComponent(UIImage,"frame/cry_bg",AtlasConfig.DynamicTex)
    self.star_01_image = self :AddComponent(UIImage,"frame/Obj/Star_1",AtlasConfig.DynamicTex)
    self.star_02_image = self :AddComponent(UIImage,"frame/Obj/Star_2",AtlasConfig.DynamicTex)
    self.star_03_image = self :AddComponent(UIImage,"frame/Obj/Star_3",AtlasConfig.DynamicTex)
    self.star_04_image = self :AddComponent(UIImage,"frame/Obj/Star_4",AtlasConfig.DynamicTex)
    self.star_05_image = self :AddComponent(UIImage,"frame/Obj/Star_5",AtlasConfig.DynamicTex)
    self.stargroup={self.star_01_image,self.star_02_image,self.star_03_image,self.star_04_image,self.star_05_image}
    self.grayMat = self._icon_img.material
    self.red=UIUtil.FindTrans(self.transform,"frame/redpoint")
    self.eff_1=UIUtil.FindTrans(self.transform,"frame/fx_newcard_ssr_back")
    self.eff_2=UIUtil.FindTrans(self.transform,"frame/fx_newcard_ssr_front")
    --self.grayMat = self._icon_img:GetMat()
    end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.itemData = self.parent.model.showCardList[real_index + 1]
    self.slect=UIUtil.FindTrans(self.transform,"frame/Iconbg/Slect");
    self.slect_ani=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"frame/Iconbg/Slect/select to synthesis")
    if real_index~=self.parent.model.select_card_index then
        if self.slect~=nil then
            self.slect.gameObject:SetActive(false)
        end
    else
        if self.slect~=nil then
            self.slect.gameObject:SetActive(true)
            self.slect_ani:Play("FX_ui_c_selectSSR", 0, 0);
            --self.slect_ani:Update(0);
            self.slect_ani.enabled=self.itemData.quality>=4
        else
            self.mama.Slect.gameObject:SetActive(false)
            self.mama.Slect.transform:SetParent(self._icon_img_bg.transform)
            self.mama.Slect.transform.localPosition = Vector3.zero
            self.mama.Slect.transform.localEulerAngles = Vector3.zero
            self.mama.Slect.transform.localScale = Vector3.one
            self.mama.Slect.gameObject:SetActive(true)
            self.mama.slect_ani:Play("FX_ui_c_selectSSR", 0, 0);
            --self.mama.slect_ani:Update(0);
            self.mama.slect_ani.enabled=self.itemData.quality>=4
        end
    end



    if self.itemData ~= nil then
        self.empty_game:SetActive(false)
        self.hava_game:SetActive(true)
       -- self._type_txt:SetText(self.view.model.isShowHost and "寄" or "守")
        self._index = real_index
        self._id = self.itemData.id
        self.frame:SetSpriteName(SpriteDefine:GetCardBGByQua(self.itemData.quality))

        if self.itemData.quality>=4 then
            UIUtil.SetEffectLayer(self.eff_1,self.parent.base_order)
            UIUtil.SetEffectLayer(self.eff_2,self.parent.base_order)
            self.eff_1.gameObject:SetActive(true)
            self.eff_2.gameObject:SetActive(true)
            self.cry_bg_img.gameObject:SetActive(true)
        else
            self.eff_1.gameObject:SetActive(false)
            self.eff_2.gameObject:SetActive(false)
            self.cry_bg_img.gameObject:SetActive(false)
        end
        self._icon_img_bg:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(self.itemData.quality))
        self._quality_img:SetSpriteName(SpriteDefine:GetQuaIconByType(self.itemData.quality))
        self._level_image:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(self.itemData.quality))

        local nameColor = "FFFFFF"
        if self.itemData.hellNameColor ~= nil then
            nameColor = self.itemData.hellNameColor
        end
        self._name:SetText("<color=#"..nameColor..">"..self.itemData.name.."</color>")
        if self.itemData.hellSmallLevel > 0 then
            self._name:SetText("<color=#"..nameColor..">"..self.itemData.name.."+"..math.floor(self.itemData.hellSmallLevel).."</color>")
        end
        local name_bg="ui_dtex_Quality_106"
        if self.itemData.hellNameBg ~= nil then
            name_bg = self.itemData.hellNameBg
        end
        if name_bg then
            self._name_bg:SetSpriteName(name_bg)
        end

        if self.itemData.type == 2 then
            --self._icon_img:SetMat(nil)
            self.red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self._id)))
            self._icon_img.material=nil
            self._icon_img_bg:SetMat(nil)
            self.cry_bg_img:SetMat(nil)
            self.frame:SetMat(nil)
            local cardData = CardData:GetInstance().cards[self.itemData.id]
            --TODO 测试头像
            self._level_image.gameObject:SetActive(true)
            self._level_txt:SetText(tostring(math.floor(cardData.level)))

            --self._icon_img:SetSpriteName(cardData.cardFace)
            self:LoadRawImg(cardData.kpkm)
            self._mask_cmp.gameObject:SetActive(false)
            --星星
            self.star_obj.gameObject:SetActive(true)
            local minobj= math.min(cardData.maxstarlv,#self.stargroup)
            for i = 1, minobj do
                self.stargroup[i].gameObject:SetActive(true)
                if i<=cardData.starlv then
                    self.stargroup[i]:SetSpriteName(SpriteDefine.Card_star_light)
                else
                    self.stargroup[i]:SetSpriteName(SpriteDefine.Card_star_gray)
                end
            end
            for i =minobj+1, #self.stargroup do
                self.stargroup[i].gameObject:SetActive(false)
            end
            --水晶颜色
            self.color_Image.gameObject:SetActive(true)
            self.color_Image:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData.crystalType))
            self.color_Num:SetText(cardData.callCost)
            self.color_Add.gameObject:SetActive(cardData.callCost == 0)
            self.color_Num.gameObject:SetActive(cardData.callCost ~= 0)
        else
            self.eff_1.gameObject:SetActive(false)
            self.eff_2.gameObject:SetActive(false)
            --灰化处理
            --self._icon_img:SetMat(self.grayMat)
            self._icon_img_bg:SetMat(self.grayMat)
            self.cry_bg_img:SetMat(self.grayMat)
            self.frame:SetMat(self.grayMat)
            self._icon_img.material=self.grayMat
            --碎片 1 碎片足够  2   碎片不够
            --self._btn:SetInteractable(self.itemData.type == 1)
            self._mask_cmp.gameObject:SetActive(true)
            self._level_image.gameObject:SetActive(false)
            self.star_obj.gameObject:SetActive(false)
            self.color_Image.gameObject:SetActive(false)
            local cardData = DataUtil.GetData("card")[self.itemData.id]
            if cardData then
                --TODO 测试头像
                --self._icon_img:SetSpriteName(cardData.CardFace)
                self:LoadRawImg(cardData.KPKM)
                self._djzh_cmp.gameObject:SetActive(self.itemData.type == 1)
                self.red.gameObject:SetActive(false)
                --水晶颜色
                self.color_Image.gameObject:SetActive(true)
                self.color_Image:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData.CrystalType))
                self.color_Num:SetText(cardData.CallCost)
                self.color_Num.gameObject:SetActive(cardData.CallCost ~= 0)
                self.color_Add.gameObject:SetActive(cardData.CallCost == 0)
                if self.itemData.type == 1 then
                    if self.cancall~=nil then
                        self.cancall.gameObject:SetActive(true)
                    else
                        GameObjectPool:GetInstance():GetGameObjectAsync("Effect/Prefab/UI/FX_ui_c_select to synthesis.prefab",
                                function(go)
                                    if not IsNull(go) then
                                        self.cancall=go
                                        go.transform:SetParent(self._mask_cmp.transform)
                                        go.transform.localPosition=Vector3.New(0,0,0);
                                        go.transform.localEulerAngles=Vector3.New(0,0,0);
                                        go.transform.localScale=Vector3.New(1,1,1);
                                    end
                                end)
                   end
                end
                self._debrisNum_txt:SetText((self.itemData.type == 3 and "<color=#df4c4cFF>" or "<color=#FFFFFFFF>") .. math.floor(self.itemData.haveNum) .. "</color>/" .. tostring(math.floor(cardData.ComposeNum)))
                self._slider:SetValue(self.itemData.haveNum / cardData.ComposeNum)
            end
        end
    else
        self.empty_game:SetActive(true)
        self.hava_game:SetActive(false)
    end
end
local sprite_type = typeof(CS.UnityEngine.Texture)

local function LoadRawImg(self,path)
        local imagePath= "Art/UI_3D/Textures/"..path..".png"
        ResourcesManager:GetInstance():LoadAsync(imagePath, sprite_type, function(texture)
            self._icon_img.texture=texture
        end)
    end
UICardPoolWrapItem.OnCreate = OnCreate
UICardPoolWrapItem.OnRefresh = OnRefresh
UICardPoolWrapItem.LoadRawImg=LoadRawImg
return UICardPoolWrapItem