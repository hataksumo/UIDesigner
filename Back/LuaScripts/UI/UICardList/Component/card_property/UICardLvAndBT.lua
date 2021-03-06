---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/5/6 11:35
---
local UICardLvAndBT = BaseClass("UICardLvAndBT", UIBaseContainer)
local base = UIBaseContainer
local UICardLvPage = require "UI.UICardList.Component.card_property.UICardLvPage"
local UICardBTPage = require "UI.UICardList.Component.card_property.UICardBTPage"
local UICardRelationPage = require "UI.UICardList.Component.card_property.UICardRelation"
local ResourceBarComponentManager = require("UI.UIResourceBar.ResourceBarComponentManager");
local function SwitchPage(self,index)
    self.page=index
    if index == 1 then
        self.lv_game:SetActive(true)
        self.break_game:SetActive(false)
        self.fosrter_game:SetActive(false)
        self.relationPanel:SetActive(false)
        self.Btn1_img:SetSpriteName("ui_t_c2_001")
        self.Btn2_img:SetSpriteName("ui_t_c2_002")
        self.Btn3_img:SetSpriteName("ui_t_c2_002")
        self.Btn1_text:SetColor32(21,24,30,255)
        self.Btn2_text:SetColor32(52,52,52,255)
        self.Btn3_text:SetColor32(52,52,52,255)
        self.card_lv_page:OnRefresh(self.card_data)
    elseif index == 2 then
        self.lv_game:SetActive(false)
        self.relationPanel:SetActive(false)
        if self.hero_type then
            self.break_game:SetActive(false)
            self.fosrter_game:SetActive(true)
        else
            self.break_game:SetActive(true)
            self.fosrter_game:SetActive(false)
            self.card_bt_page:OnRefresh(self.card_data)
        end
        self.Btn1_img:SetSpriteName("ui_t_c2_002")
        self.Btn2_img:SetSpriteName("ui_t_c2_001")
        self.Btn3_img:SetSpriteName("ui_t_c2_002")
        self.Btn1_text:SetColor32(52,52,52,255)
        self.Btn2_text:SetColor32(21,24,30,255)
        self.Btn3_text:SetColor32(52,52,52,255)
    else
        self.break_game:SetActive(false)
        self.fosrter_game:SetActive(false)
        self.relationPanel:SetActive(false)
        self.lv_game:SetActive(false)
        self.relationPanel:SetActive(true)
        self.Btn1_img:SetSpriteName("ui_t_c2_002")
        self.Btn2_img:SetSpriteName("ui_t_c2_002")
        self.Btn3_img:SetSpriteName("ui_t_c2_001")
        self.Btn1_text:SetColor32(52,52,52,255)
        self.Btn2_text:SetColor32(52,52,52,255)
        self.Btn3_text:SetColor32(21,24,30,255)
        self.card_relation_page:OnRefresh(self.card_data)
    end
end

local function OnCreate(self,parent)
    base.OnCreate(self)
    self.page=1
    self.parent=parent
    self.Btn1 = self:AddComponent(UIButton,"Page/lvPage")
    self.Btn1:SetOnClick(self,SwitchPage,1)
    self.Btn1_img = self:AddComponent(UIImage,"Page/lvPage",AtlasConfig.DynamicTex)
    self.Btn1_text = self:AddComponent(UIText,"Page/lvPage/name1")
    self.btn1_red=UIUtil.FindTrans(self.transform,"Page/lvPage/redpoint_lv")
    self.btn2_red=UIUtil.FindTrans(self.transform,"Page/breakPage/redpoint_bk")
    self.Btn2 = self:AddComponent(UIButton,"Page/breakPage")
    self.Btn2:SetOnClick(self,SwitchPage,2)
    self.Btn2_img = self:AddComponent(UIImage,"Page/breakPage",AtlasConfig.DynamicTex)
    self.Btn2_text = self:AddComponent(UIText,"Page/breakPage/name2")
    self.Btn3 = self:AddComponent(UIButton,"Page/relationPage")
    self.Btn3:SetOnClick(self,SwitchPage,3)
    self.Btn3_img = self:AddComponent(UIImage,"Page/relationPage",AtlasConfig.DynamicTex)
    self.Btn3_text = self:AddComponent(UIText,"Page/relationPage/name3")

    self.lv_game = UIUtil.FindTrans(self.transform,"levelUpPanel").gameObject
    self.break_game = UIUtil.FindTrans(self.transform,"breakPanel").gameObject
    self.fosrter_game=UIUtil.FindTrans(self.transform,"fosterPanel").gameObject
    self.relationPanel = UIUtil.FindTrans(self.transform,"relationPanel").gameObject
    self.card_lv_page = UICardLvPage.New(self,"levelUpPanel")
    self.card_lv_page:OnCreate(self)
    self.card_bt_page = UICardBTPage.New(self,"breakPanel")
    self.card_bt_page:OnCreate(self)
    self.card_relation_page = UICardRelationPage.New(self,"relationPanel")
    self.card_relation_page:OnCreate(self)
    --todo 后续补充 培养
    self:OnRefresh()
end

local function OnRefresh(self)
    self.hero_type=self.parent.model.hero_type
    if  self.hero_type then
        self.Btn1_text:SetText("属性")
        self.Btn3_text:SetText("缘分")
        self.Btn2.gameObject:SetActive(false)
        --self.Btn2_text:SetText("培养")
        self.btn1_red.gameObject:SetActive(false)
        self.btn2_red.gameObject:SetActive(false)
    else
        self.Btn1_text:SetText("升级")
        self.Btn2_text:SetText("突破")
        self.Btn3_text:SetText("缘分")
        self.btn1_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.parent.model.select_card_id).."_1_1"))
        self.btn2_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.parent.model.select_card_id).."_1_2"))
        if not self.Btn2.gameObject.activeInHierarchy then
            self.Btn2.gameObject:SetActive(true)
        end

        ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UICardList,ResourceBarType.SHL_LEVEL_UP)
    end
    self.card_data =CardData:GetInstance().cards[self.parent.model.select_card_id]
    if self.card_data ==nil then
        Logger.Log("self.card_data Is nil"..self.parent.model.select_card_id)
    end
    --todo  区分 是发协议回来的刷新  和进入界面的刷新
    if not self.card_lv_page.canBtn  then
        self.card_lv_page:OnRefresh(self.card_data)
    elseif not self.card_bt_page.canBtn then
        self.card_bt_page:OnRefresh(self.card_data)
        --有培养后续补上
    else
        if self.card_id~=self.parent.model.select_card_id then
            self.btn=1
            self.card_id=self.parent.model.select_card_id
        end
        if self.slect_card_id~=self.parent.model.select_card_id then
            self.page=1
        end
        SwitchPage(self, self.page)
    end
    self.slect_card_id=self.parent.model.select_card_id
end
local  function OnDisable(self)
    self.page=1
end
local function OnDestroy(self)
    --主界面DesTory 触发

end
UICardLvAndBT.OnDestroy= OnDestroy
UICardLvAndBT.OnDisable= OnDisable
UICardLvAndBT.SwitchPage = SwitchPage
UICardLvAndBT.OnRefresh = OnRefresh
UICardLvAndBT.OnCreate = OnCreate
return UICardLvAndBT