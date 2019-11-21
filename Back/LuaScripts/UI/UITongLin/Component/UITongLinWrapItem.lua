---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/2/22 9:34
local UITongLingNeedItem = require "UI.UITongLin.Component.UITongLingNeedItem"
--local UITongLingSkillItem=require  "UI.UITongLin.Component.UITongLingSkillItem"
local UITongLinWrapItem=BaseClass("UITongLinWrapItem",UIWrapComponent)
local base = UIWrapComponent
local tagdata = DataUtil.GetData("card_tag")
local card_data=DataUtil.GetData("card")
local card_call_list=DataUtil.GetData("card_channeling")
local function OnClickCanGetBtn(self)
   -- NetManger.SendMessage(msg_id 消息号
  --  msg_obj 消息对象
   -- callbackFunc 回调函数)
    self.view.ctrl.ClickGetBtn(self,self.index)
end
local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.title_text = self:AddComponent(UIText, "title_UIText")

    self.role_img = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),"CardBig/CardBigHead")

    self.frame_img = self:AddComponent(UIImage, "CardBig/Frame",AtlasConfig.DynamicTex)

    self.name_text = self:AddComponent(UIText, "CardBig/name");

    self.role_bg_img=self:AddComponent(UIImage, "CardBig/CardBigBG",AtlasConfig.DynamicTex)

    self.ssr_img = self:AddComponent(UIImage, "CardBig/QualityImg",AtlasConfig.DynamicTex)

    --self.role_type_text = self:AddComponent(UIText, "role/title1_UIText")

    self.role_lv_text = self:AddComponent(UIText, "CardBig/Crystal/CrystalNum")

    self.role_qua_bg=UIUtil.FindTrans(self.transform,"CardBig/cry_bg")

    self.role_cry_img = self :AddComponent(UIImage,"CardBig/Crystal",AtlasConfig.DynamicTex)

    --self.role_name_text=self:AddComponent(UIText,"name")

    --self.role_local_text=self:AddComponent(UIText,"dinweiContent")

    --self.can_get_obj = UIUtil.FindTrans(self.transform,"clickbg")
    --self.itemPressEff_cmp = self:AddComponent(UIBaseComponent, "clickbg")
    --self.itemPress_eff = self:AddComponent(UIEffect, "clickbg", 1, EffectConfig.UICardTongLingHandler)
    --对can_get_btn True False    直接can_get_bt.gameobj:SetActive(true)
    self.can_get_btn=self:AddComponent(UIButton,"clickbg")
    self.can_get_img=self:AddComponent(UIImage,"clickbg")
    self.gray=self.can_get_img:GetMat()
    self.can_get_btn:SetOnClick(self,OnClickCanGetBtn)
    self.can_btn_text=self:AddComponent(UIText,"clickbg/des")
    self.can_btn_textout=self:AddComponent(UIOutlineEx,"clickbg/des")
    self.info_btn=self:AddComponent(UIButton,"Info")
    self.info_btn:SetOnClick(self,function ()
        --打开详情界面
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UITonglingCardInfo,self.data.CardId)
        UISpecial:GetInstance():UITipText("敬请期待...")
    end)
    --[[
    self.skill_items={}
    for i = 1, 2 do
        self.skill_items[i] = UITongLingSkillItem.New(self,"tianfugrid/skill"..i)
        self.skill_items[i]:OnCreate()
    end
--]]
    --通灵条件加


    self.need_items = {}
    self.wrapitemParent=self:AddComponent(UIBaseComponent,"grid")
    local count=self.wrapitemParent.transform.childCount
    for i = 0, count-1 do
        local son=self.wrapitemParent.transform:GetChild(i).gameObject
        self.need_items[i+1] = UITongLingNeedItem.New(self,son)
        self.need_items[i+1]:OnCreate()
    end
end


local function GetDwDes (self,info_data)
    local strDes=""
    for i = 1, #info_data do
        if i == 1 then
            strDes=tagdata[info_data[i]].Name
        else
            strDes=strDes.."  "..tagdata[info_data[i]].Name
        end
    end
    return strDes
end
local function FindID(self,cardID)

    for  value,data in pairs(card_call_list) do
        if card_call_list[value].CardId==cardID then
            return data.ID
        end
    end
end
local function OnRefresh(self,real_index)
    --刷新
    --[[
    for i = 1, 2 do
        self.skill_items[i].gameObject:SetActive(false)
    end
    --]]
    for i = 1, 3 do
        self.need_items[i].gameObject:SetActive(false)
    end
    self.data = self.view.model.tonglingList[real_index+1];
    self.index= FindID(self,self.data.CardId)
    local hero_data=nil
    if self.data~=nil then
         hero_data=card_data[self.data.CardId]
    end
    if hero_data ~= nil then
        self.title_text:SetText(hero_data.NickName..hero_data.Name)
        local imagePath= "Art/UI_3D/Textures/"..hero_data.KPKM..".png"
        ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
            self.role_img.texture = texture
        end)
        self.name_text:SetText(hero_data.Name)
        self.ssr_img:SetSpriteName(SpriteDefine:GetQuaIconByType(hero_data.Quality))
        self.role_qua_bg.gameObject:SetActive(hero_data.Quality>=4)
        self.frame_img:SetSpriteName(SpriteDefine: GetCardPoorByIDQuality(hero_data.Quality))
        self.role_bg_img:SetSpriteName(SpriteDefine:GetCardBGByQua(hero_data.Quality))
        if hero_data.Type==1 then
            --self.role_type_text:SetText("寄灵人")
            --self.role_lv_text.gameObject:SetActive(false)
        else
            --self.role_type_text:SetText("守护灵")
            --self.role_lv_text.gameObject:SetActive(true)
            if hero_data.CallCost>0 then
                self.role_cry_img.gameObject:SetActive(true)
                self.role_lv_text:SetText(math.floor(hero_data.CallCost))
                self.role_cry_img :SetSpriteName(SpriteDefine: GetCrystalIconByType(hero_data.CrystalType))
            else
                self.role_cry_img.gameObject:SetActive(false)
            end
        end

        --self.role_name_text:SetText(hero_data.Name)
        --self.role_local_text:SetText(GetDwDes(self,hero_data.Tag))
        --这种做法可能会有问题应该把数据都放到M层 先这样
        --给技能赋值
        --[[
        for i = 1, #hero_data.Skill do
            self.skill_items[i].gameObject:SetActive(true)
            self.skill_items[i]:SetSkillData(hero_data.Skill[i],hero_data.CrystalType)
        end
        --]]
        for i = 1, #self.data.NeedCardIds do
            self.need_items[i].gameObject:SetActive(true)
            self.need_items[i]:SetNeedData(self.data.NeedCardIds[i],self.data.CardCondition[i])
        end
        --判断是否打开了点击按钮
        local canopen=true
        for i = 1, #self.data.NeedCardIds do
            local card_data_my=CardData:GetInstance():GetCardDataById(self.data.NeedCardIds[i])
            if card_data_my~=nil then
                for j = 1, #self.data.CardCondition[i] do
                    if self.data.CardCondition[i][j].Con==1 then
                        --判断物品等级
                        if  card_data_my.level<self.data.CardCondition[i][j].Param then
                            --不满足条件
                            canopen=false
                            break
                        end
                    elseif self.data.CardCondition[i][j].Con==2 then
                        --判断物品星
                        if  card_data_my.starlv<self.data.CardCondition[i][j].Param  then
                            --不满足条件
                            canopen=false
                            break
                        end
                    end
                end
            else
                canopen=false
                break
            end
        end
        if  canopen then
            self.can_get_img:SetMat(nil)
            self.can_get_btn:SetInteractable(true)
            self.can_btn_text:SetColor32(239,234,222,255)
            self.can_btn_textout:SetColor32(5,5,5,255)

        else
            self.can_get_img:SetMat(self.gray)
            self.can_get_btn:SetInteractable(false)
            self.can_btn_text:SetColor32(21,24,30,255)
            self.can_btn_textout:SetColor32(84,83,83,255)
        end
    else
        Logger.Log("没有信息")
    end
end

        UITongLinWrapItem.OnCreate = OnCreate
        UITongLinWrapItem.OnClickCanGetBtn=OnClickCanGetBtn
        UITongLinWrapItem.OnRefresh=OnRefresh

        return UITongLinWrapItem