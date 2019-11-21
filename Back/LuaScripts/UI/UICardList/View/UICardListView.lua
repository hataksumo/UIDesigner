--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardListView = BaseClass("UICardListView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager = require("UI.UIResourceBar.ResourceBarComponentManager");
local show_timeline = "Art/Roles/rol_%s/Animations/%s_show.playable"--1101011_show
local yj_gostTest = "Art/Roles/rol_1102015/Pefabs/model_yj_1102015_p_GostTest.prefab"
local des_static=DataUtil.GetData("words")

local skillItem=require("UI.UICardList.Component.card_list.UICardSkillItem")
--列表
local UICardContainer = require "UI.UICardList.Component.card_list.UICardContainer"
--属性  升级 突破
local UICardshlLV = require "UI.UICardList.Component.card_property.UICardLvAndBT"
--武器
local UICardOnlyWeapon = require "UI.UICardList.Component.card_weapon.UICardOnlyWeapon"
--技能
local UICardSkillScr=require "UI.UICardList.Component.card_skill.UICardNewSkill"
--升星
local UICardStarScr=require "UI.UICardList.Component.card_star.UICardStarUpComponent"
--天赋
local UICardTalentScr=require "UI.UICardList.Component.card_talent.UICardTalentComponent"
--国战属性
local UICardNationProperty=require "UI.UICardList.Component.card_nation.UICardNationProperty"
--攻略 定位
local UICardGLDingWei = require "UI.UICardList.Component.card_gonglue.UICardGLDingWei"
--攻略 寄灵人 技能详解
local UICardGLAoYiJLR = require "UI.UICardList.Component.card_gonglue.UICardGLAoYiJLR"
--攻略 守护灵 绝技详解
local UICardGLAoYiSHL = require "UI.UICardList.Component.card_gonglue.UICardGLAoYiSHL"
--攻略 推荐武灵技
local UICardGLSHLWlj = require "UI.UICardList.Component.card_gonglue.UICardGLSHLWlj"
--传记
local UICardGLZhuanJi = require "UI.UICardList.Component.card_gonglue.UICardGLZhuanJi"
--攻略 推荐阵容
local UICardGLTuiJian = require "UI.UICardList.Component.card_gonglue.UICardGLTuiJian"
local StaticCardData = DataUtil.GetData("card")
local battle_role_config=DataUtil.GetData("battle_role_config")
local role_prefab_path="UI/Prefabs/Other/Map_RolesDisplay_Root.prefab";
local role_model_parent="UI/Prefabs/Common/Empty.prefab"
local Input=CS.UnityEngine.Input;
local select_havecard_index = 1
local function Update(self)
    if self.isDrag then
        if math.abs(Input.mousePosition.x-self.initMouseX)>1then
            local val=Input.mousePosition.x-self.initMouseX;
            self.curRoleModelInfo[1].obj.transform.localEulerAngles=Vector3.New(self.roleEuler.x,self.roleEuler.y-val,self.roleEuler.z);
        else
            --Logger.Log("---------------------------")
        end
    end

end
local function OnDown(self,base_event)
    self.isDrag = true;
    self.initMouseX = Input.mousePosition.x;
    self.roleEuler=self.curRoleModelInfo[1].obj.transform.localEulerAngles;
    self.initClickTime=Time.time;
end
--抬起
local function OnUp(self,base_event)
    self.isDrag = false;
end
local function OnClick(self,base_event)
    if Time.time-self.initClickTime<0.2 then
        LJAudioManger:GetInstance():PlayVoice(battle_role_config[self.showCardId].UITouchAudio)
        self.peopleAnim:Play(battle_role_config[self.showCardId].UITouchAction)
    end
end
local function ChangeMaskState(self,state)
    self.center_mask:SetActive(state)
end
local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.center_mask=UIUtil.FindTrans(self.transform,"Center/Mask").gameObject
    local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/BackgroudLayer").transform,typeof(CS.UnityEngine.RectTransform))
    self.sceen_width =rectTrans.sizeDelta.x
    self.sceen_height = rectTrans.sizeDelta.y
    self.FXTop=UIUtil.FindTrans(self.transform,"Right/FXTop")
    self.FXTop.localPosition=Vector3.New(-self.sceen_width/2,0,0)
    self.TempImg=UIUtil.FindTrans(self.transform,"RightTemp/TempImg").gameObject
    self.yellowImg=UIUtil.FindTrans(self.transform,"Right/Bg/AniImage").gameObject
    self.LeftObj=UIUtil.FindTrans(self.transform,"Left").gameObject
    self.TopLeftObj=UIUtil.FindTrans(self.transform,"TopLeft").gameObject
    self.LeftAnchorsObj=UIUtil.FindTrans(self.transform,"LeftAnchors").gameObject
    self.ButtomLeftObj=UIUtil.FindTrans(self.transform,"ButtomLeft").gameObject
    self.TopRightObj=UIUtil.FindTrans(self.transform,"TopRight").gameObject

    self.equipBtn=self:AddComponent(UIButton,"BtnParent/BL/equipBtn");
    self.equip_text=self:AddComponent(UIText,"BtnParent/BL/equipBtn/Image (1)/equip_text")
    self.equip_text:SetText("装备")
    self.equipBtn:SetOnClick(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardEquipment,self.model.select_card_id);
    end);

    UIUtil.CreatCloseBtnComponent(self,self.TopLeftObj.transform,function(go) self.closeComponent=go end,function()
        if self.model.nowselect_type~=1 then
            LJAudioManger:GetInstance():PlayVoice("UI_Panel_02")
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 1)
        else
            self:LoadLeaveEffect()
        end
    end,function()
        if self.model.nowselect_type~=1 then
            LJAudioManger:GetInstance():PlayVoice("UI_Panel_02")
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 1)
            TimerManager:GetInstance():SimpleTimerArgs(0.65,function()
                self:LoadLeaveEffect(true)
            end,nil,true)
        else
            self:LoadLeaveEffect(true)
        end

    end,self.model.titleName,false,2,true)

    self.skillGroup={}
    for i = 1, 3 do
        self.skillGroup[i] = skillItem.New(self,"LeftAnchors/skillparent/SkillSlotItem"..i,i)
        self.skillGroup[i]:OnCreate(self)
    end


    self.dragEventTrigger=self:AddComponent(UIEventTrigger,"Left/RoleDragPanel");
    self.dragEventTrigger:SetOnPointerDown(self,OnDown);
    self.dragEventTrigger:SetOnPointerUp(self,OnUp);
    --self.dragEventTrigger:SetOnPointerClick(self,OnClick);

    self.TitleInfo={{name="卡牌列表",help=1},{name="卡牌等级",help=1},{name="卡牌技能",help=1},{name="卡牌升星",help=1},{name="专属武器",help=1},{name="卡牌天赋",help=1},
                    {name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="传记",help=1}}
    self.card_item_nickname=self:AddComponent(UIImage, "Left/contentparent/card_item_nickname_img",AtlasConfig.Language)
    self.card_item_name=self:AddComponent(UIImage, "Left/contentparent/card_item_name_img",AtlasConfig.Language)
    self.card_item_qua=self:AddComponent(UIImage, "Left/contentparent/card_item_qua_UIImage",AtlasConfig.DynamicTex)
    self.card_item_star=self:AddComponent(UIImage, "Left/contentparent/star_image",AtlasConfig.DynamicTex)
    self.cardCrybg=UIUtil.FindTrans(self.transform,"Left/contentparent/card_item_cry_bg")
    self.cardCryImg=self:AddComponent(UIImage, "Left/contentparent/card_item_cry_bg/card_item_cry_img",AtlasConfig.DynamicTex)
    self.cardCryText=self:AddComponent(UIText, "Left/contentparent/card_item_cry_bg/card_item_cry_text")
    self.cardCryAdd = UIUtil.FindTrans(self.transform,"Left/contentparent/card_item_cry_bg/card_item_cry_add")
    self.cardfight_name=self:AddComponent(UIText,"Left/contentparent/card_fight_bg/card_item_fight")
    self.cardfight_name:SetText("战力")
    self.cardfighttext=self:AddComponent(UIText, "Left/contentparent/card_fight_bg/card_item_fight_UIText")
    self.cardfightbg=UIUtil.FindTrans(self.transform,"Left/contentparent/card_fight_bg")

    self.cost_img_obj=UIUtil.FindTrans(self.transform,"Left/contentparent/card_costImage").gameObject
    self.cost_text=self:AddComponent(UIText,"Left/contentparent/card_costImage/costText")

    self.info_parent = UIUtil.FindTrans(self.transform, "Left/contentparent")


    self.leftbtn =self:AddComponent(UIButton,"Left/moveparent/left")
    self.leftbtn:SetOnClick(function()
        if self.CanClickLeftAndRight then
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
            select_havecard_index=self.model.select_havecard_index
            if select_havecard_index - 1 == 0 then
                select_havecard_index = #self.model.haveList
            else
                select_havecard_index = select_havecard_index - 1
            end
            local id= self.model.haveList[select_havecard_index].id
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_LEFTRIGHT_FUN, id)--
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end

    end)

    self.rightbtn =self:AddComponent(UIButton,"Left/moveparent/right")
    self.rightbtn:SetOnClick(function()
        if self.CanClickLeftAndRight then
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
            select_havecard_index=self.model.select_havecard_index
            if select_havecard_index + 1 > #self.model.haveList then
                select_havecard_index = 1
            else
                select_havecard_index = select_havecard_index + 1
            end
            local id= self.model.haveList[select_havecard_index].id
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_LEFTRIGHT_FUN, id)--
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end

    end)

    self.funBtnParent=UIUtil.FindTrans(self.transform,"BtnParent")
    self.getUIButton = self:AddComponent(UIButton, "BtnParent/BL/get_UIButton")
    self.get_text=self:AddComponent(UIText,"BtnParent/BL/get_UIButton/Image (1)/get_text")
    self.get_text:SetText("海报")
    self.getUIButton:SetOnClick(function()
        if self.model.select_card_id then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICardShow,self.model.select_card_id)
        else
            Logger.LogError("No Slect Card In CardList")
        end

    end)
    self.biographyUIButton = self:AddComponent(UIButton, "BtnParent/BR/biographyUIButton")
    self.biography_text=self:AddComponent(UIText,"BtnParent/BR/biographyUIButton/Image (1)/biography_text")
    self.biography_text:SetText("传记")
    self.biographyUIButton:SetOnClick(function()
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 14)
    end)
    self.biographyUIButton.gameObject:SetActive(false)
    self.strategyUIButton = self:AddComponent(UIButton, "BtnParent/BR/strategy_UIButton")
    self.strategy_text=self:AddComponent(UIText,"BtnParent/BR/strategy_UIButton/Image (1)/strategy_text")
    self.strategy_text:SetText("攻略")
    self.strategyUIButton.transform.gameObject:SetActive(false);
    self.strategyUIButton:SetOnClick(function()
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 8)
    end)
    self.strategyUIButton.gameObject:SetActive(false)
    self.evolveUIButton = self:AddComponent(UIButton, "BtnParent/BL/evolve_UIButton")
    self.evolve_red=UIUtil.FindTrans(self.transform,"BtnParent/BL/evolve_UIButton/redpoint")
    self.evolve_text=self:AddComponent(UIText,"BtnParent/BL/evolve_UIButton/Image/evolve_text")
    self.evolve_text:SetText("养成")
    --self.eqp_red=UIUtil.FindTrans(self.transform,"BtnParent/BL/equipBtn/eqp_redpoint")
    self.evolveUIButton:SetOnClick(function()
        for i = 1, 4 do
            self.BtnGroup[i].red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.model.select_card_id).."_"..i))
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 2)
    end)


    self.resourceBarParent = UIUtil.FindTrans(self.transform, "TopRight");

    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UICardList, ResourceBarType.MAIN_CITY, self);
    self.resourceBar_type=ResourceBarType.MAIN_CITY
    self.PreParent = self:AddComponent(UIBaseComponent, "Right/UICardAniRoot")
    self.ConParent = self:AddComponent(UIBaseComponent, "Right/UICardBackAniRoot")
    self.TempParent=self:AddComponent(UIBaseComponent,"Right/TempParent")
    self.EffParent = self:AddComponent(UIBaseComponent, "Right/FXRoot")
    self.InAndLeaveParent=self:AddComponent(UIBaseComponent, "Right/FXTop")
    self.Right = self:AddComponent(UIBaseComponent,"Right")
    self.anim = self.Right.transform:GetComponent(typeof(CS.UnityEngine.Animator))
    --存放 按键事件 和名字的方法
    self.BtnParent = UIUtil.FindTrans(self.transform, "TopRight/BtnParent");
    self.BtnGroup = {}
    for i = 1, 5 do
        table.insert(self.BtnGroup, { btn = self:AddComponent(UIButton, "TopRight/BtnParent/Grid/Button" .. i),
                                      text = self:AddComponent(UIText, "TopRight/BtnParent/Grid/Button" .. i .. "/Text" .. i),
                                      outline=self:AddComponent(UIOutlineEx,"TopRight/BtnParent/Grid/Button" .. i .. "/Text" .. i),
                                      img = self:AddComponent(UIImage, "TopRight/BtnParent/Grid/Button" .. i,AtlasConfig.DynamicTex),
                                      red=self:AddComponent(UIBaseComponent,"TopRight/BtnParent/Grid/Button" .. i.."/redpoint"..i)
        })
    end
    for i = 1, 5 do
        self.BtnGroup[i].btn:SetOnClick(function ()
            if not self:CheckCanBtn(i) then
                UISpecial:GetInstance():UITipText(self.lockDataGroup[i].des)
                return
            end
            if self.canClickBtn then
                if i<4 then
                    if self.model.nowselect_type~=i+1 then
                        if self.model.nowselect_type~=i+1 then
                            self.canClickBtn=false
                        end
                        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, i+1)
                    end
                elseif i == 4 then
                    if self.model.hero_type then
                        --天赋
                        if self.model.nowselect_type~=6 then
                            self.canClickBtn=false
                        end
                        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 6)
                    else
                        --武器
                        if self.model.nowselect_type~=5 then
                            self.canClickBtn=false
                        end
                        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 5)
                    end
                elseif i == 5 then
                    --国战
                    if self.model.nowselect_type ~= 7 then
                        if self.model.nowselect_type ~= 7 then
                            self.canClickBtn = false
                        end
                        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 7)
                    end
                end
            else
                UISpecial:GetInstance():UITipText("操作频繁")
            end
        end)
    end


    --攻略相关按钮
    self.GLBtnParent = UIUtil.FindTrans(self.transform, "TopRight/GLBtnParent");
    self.GLBtnGroup = {}
    for i = 1, 4 do
        table.insert(self.GLBtnGroup, { btn = self:AddComponent(UIButton, "TopRight/GLBtnParent/GLButton" .. i),
                                        text1 = self:AddComponent(UIText, "TopRight/GLBtnParent/GLButton" .. i .. "/GLText" .. i .. "_1"),
                                        text2 = self:AddComponent(UIText, "TopRight/GLBtnParent/GLButton" .. i .. "/GLText" .. i .. "_2"),
                                        outline1=self:AddComponent(UIOutlineEx,"TopRight/GLBtnParent/GLButton" .. i .. "/GLText" .. i .. "_1"),
                                        outline2=self:AddComponent(UIOutlineEx,"TopRight/GLBtnParent/GLButton" .. i .. "/GLText" .. i .. "_2"),
                                        img = self:AddComponent(UIImage, "TopRight/GLBtnParent/GLButton" .. i,AtlasConfig.DynamicTex)
        })
    end
    self.GLBtnGroup[1].btn:SetOnClick(function  ()
        if self.canClickBtn then
            if self.model.nowselect_type~= 8 then
                self.canClickBtn=false
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 8)
            end
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end
    end)
    self.GLBtnGroup[2].btn:SetOnClick(function  ()
        if self.canClickBtn then
            if self.model.hero_type then
                --技能详解
                if self.model.nowselect_type~=9 then
                    self.canClickBtn=false
                end
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 9)
            else
                --绝技详解
                if self.model.nowselect_type~=10 then
                    self.canClickBtn=false
                end
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 10)
            end
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end
    end)
    self.GLBtnGroup[3].btn:SetOnClick(function  ()
        if self.canClickBtn then
            if self.model.hero_type then
                --推荐阵容
                if self.model.nowselect_type~=11 then
                    self.canClickBtn=false
                end
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 11)
            else
                --推荐武灵技
                if self.model.nowselect_type~=12 then
                    self.canClickBtn=false
                end
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 12)
            end
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end
    end)
    self.GLBtnGroup[4].btn:SetOnClick(function  ()
        if self.canClickBtn then
            if not self.model.hero_type then
                --推荐阵容
                if self.model.nowselect_type~=13 then
                    self.canClickBtn=false
                end
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, 13)
            end
        else
            UISpecial:GetInstance():UITipText("操作频繁")
        end
    end)

    self.jlrGLBtnContent = {{"角色","定位"},{"技能","详解"},{"推荐","阵容"}}
    self.shlGLBtnContent = {{"角色","定位"},{"绝技","详解"},{"推荐","武灵技"},{"推荐","阵容"}}
    self.ZjContent = { "传记","羁绊","收集","其他" }
    self.BtnGroupContent = {}
    --self.jlrBtnContent = { "属性", "升星", "技能", "天赋" }
    --self.shlBtnContent = { "属性", "升星", "技能", "武器" }
    self.jlrBtnContent = { "属性","技能","升星","天赋", "国战"}
    self.shlBtnContent = { "属性","绝技","升星","武器", "国战"}
    table.insert(self.BtnGroupContent, 1, 0)
    table.insert(self.BtnGroupContent, 2, 1)--养成 属性
    table.insert(self.BtnGroupContent, 3, 2)--养成 技能
    table.insert(self.BtnGroupContent, 4, 3)--养成 升星
    table.insert(self.BtnGroupContent, 5, 4)--养成 天赋
    table.insert(self.BtnGroupContent, 6, 4)--养成 武器
    table.insert(self.BtnGroupContent, 7, 5)--养成 国战
    table.insert(self.BtnGroupContent, 8, 1)--攻略 定位
    table.insert(self.BtnGroupContent, 9, 2)--攻略 技能详解
    table.insert(self.BtnGroupContent, 10, 2)--攻略 绝技详解
    table.insert(self.BtnGroupContent, 11, 3)--攻略 推荐阵容
    table.insert(self.BtnGroupContent, 12, 3)--攻略 推荐武灵技
    table.insert(self.BtnGroupContent, 13, 4)--攻略 推荐阵容
    table.insert(self.BtnGroupContent, 14, 1)--传记
    --存放孩子容器
    self.UIPrefabSon = {}
    --存放孩子位置容器
    self.UIPrefabSonPath = {}
    --存放孩子腳本容器
    self.UIPrefabScript = {}
    --1 card列表

    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardContainer.prefab");
    table.insert(self.UIPrefabScript, UICardContainer)

    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardLvAndBT.prefab");
    table.insert(self.UIPrefabScript, UICardshlLV)
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardNewSkill.prefab");
    table.insert(self.UIPrefabScript, UICardSkillScr)
    table.insert(self.UIPrefabSonPath,"UI/Prefabs/View/UICardNewStar.prefab")
    table.insert(self.UIPrefabScript, UICardStarScr)
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardOnlyWeapon.prefab");
    table.insert(self.UIPrefabScript, UICardOnlyWeapon)
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardTalent.prefab");
    table.insert(self.UIPrefabScript, UICardTalentScr)
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardNationProperty.prefab");
    table.insert(self.UIPrefabScript, UICardNationProperty)

    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLDingWei.prefab");
    table.insert(self.UIPrefabScript, UICardGLDingWei);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLAoYiJLR.prefab");
    table.insert(self.UIPrefabScript, UICardGLAoYiJLR);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLAoYiSHL.prefab");
    table.insert(self.UIPrefabScript, UICardGLAoYiSHL);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLTuiJian.prefab");
    table.insert(self.UIPrefabScript, UICardGLTuiJian);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLSHLWlj.prefab");
    table.insert(self.UIPrefabScript, UICardGLSHLWlj);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLTuiJian.prefab");
    table.insert(self.UIPrefabScript, UICardGLTuiJian);
    table.insert(self.UIPrefabSonPath, "UI/Prefabs/View/UICardGLZhuanJi.prefab");
    table.insert(self.UIPrefabScript, UICardGLZhuanJi);

    self.skill_parent = UIUtil.FindTrans(self.transform, "LeftAnchors/skillparent")
    self.first_skill_name=self:AddComponent(UIText,"LeftAnchors/skillparent/Image/firstskill_name")
    self.other_skill_name=self:AddComponent(UIText,"LeftAnchors/skillparent/Image (1)/otherskill_name")
    self.first_skill_name:SetText("绝技")
    self.other_skill_name:SetText("武灵技")

    self.curRoleModelInfo = {}
end

local function CloseUIFun(self)

    self.cam_brain = self.cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
    self.cam_brain.m_DefaultBlend =CS.Cinemachine.CinemachineBlendDefinition(CS.Cinemachine.CinemachineBlendDefinition.Style.Cut,0)
    if(self.cinemachine~=nil) then
        self.cinemachine.Priority=10;
    end
    --local mainAsset=SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_asset;
    --if not IsNull(mainAsset)  then
    --    CS.SceneDataUtilities.ConfigLitAndShadow(mainAsset,Vector3.New(0,0,0),Vector3.New(0,0,0))
    --end
    --local mainSceneName=SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_name;
    --if not string.isNilOrEmpty(mainSceneName) then
    --    local pos = SceneLoadManager:GetInstance():GetScenePosOffset(mainSceneName)
    --    SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName,pos,Vector3.zero)
    --end
    local mainSceneName=SceneManager:GetInstance():GetCurrentScene().scene_name
    if not string.isNilOrEmpty(mainSceneName) then
        SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName,Vector3.zero,Vector3.zero)
    end

    if SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.NationScene) then
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        if nationProxy ~= nil then
            nationProxy:ReCalcFogDistanceWithDefaultDistance()
        end
        local windowComponent = NationSceneUIManager:GetInstance():GetUIWindowComponent(UIWindowNames.UINationMarchMain, true)
        if windowComponent ~= nil then
            windowComponent:BugFixModel3DWalk()
        end
    else
    end
end

--设置刷新按键

local function RefreshClickBtn(self)
    local isHaveWeaponBtn = true --守护灵是否有武器系统
    if self.BtnGroupContent[self.model.nowselect_type] > 0 then
        local value = self.BtnGroupContent[self.model.nowselect_type]
        --刷新养成相关按钮
        if self.model.nowselect_type <= 7 then
            self.GLBtnParent.gameObject:SetActive(true)
            self.GLBtnParent.gameObject:SetActive(false)
            if not self.BtnParent.activeInHierarchy then
                self.BtnParent.gameObject:SetActive(true)
            end
            local all = #self.BtnGroup
            local num = 0
            if self.model.hero_type then
                num = #self.jlrBtnContent;
            else
                num = #self.shlBtnContent
                if WeaponData:GetInstance().weapons[self.model.select_card_id]==nil or StaticCardData[self.model.select_card_id].Quality <=2 then
                    isHaveWeaponBtn = false
                end
            end
            if num <= all then
                for i = 1, num do
                    if isHaveWeaponBtn == false and i == 4 then
                        self.BtnGroup[i].btn.gameObject:SetActive(false)
                    elseif not self.BtnGroup[i].btn.gameObject.activeInHierarchy then
                        self.BtnGroup[i].btn.gameObject:SetActive(true)
                    end
                    if self.model.hero_type then
                        self.BtnGroup[i].text:SetText(self.jlrBtnContent[i])
                    else
                        self.BtnGroup[i].text:SetText(self.shlBtnContent[i])
                    end
                    if value == i then
                        self.BtnGroup[i].img:SetSpriteName("ui_t_c2_012")
                        self.BtnGroup[i].img:SetColor32(255,255,255,255)
                        self.BtnGroup[i].text:SetColor32(239,234,222,255)
                        self.BtnGroup[i].outline:SetColor32(5,5,5,255)
                    else
                        --在这里判断是否可点击
                        if  not self:CheckCanBtn(i) then
                            --设置不能点击
                            self.BtnGroup[i].img:SetSpriteName("ui_t_c2_013")
                            self.BtnGroup[i].img:SetColor32(149,149,149,255)
                            self.BtnGroup[i].text:SetColor32(21,24,30,255)
                            self.BtnGroup[i].outline:SetColor32(38,74,89,255)
                        else
                            self.BtnGroup[i].img:SetSpriteName("ui_t_c2_013")
                            self.BtnGroup[i].img:SetColor32(255,255,255,255)
                            self.BtnGroup[i].text:SetColor32(21,24,30,255)
                            self.BtnGroup[i].outline:SetColor32(38,74,89,255)
                        end
                    end
                end
                for i = num + 1, all do
                    self.BtnGroup[i].btn.gameObject:SetActive(false)
                end
            else
                Logger.LogError("BugIn   UICardList")
            end
        elseif self.model.nowselect_type == 14 then
            self.GLBtnParent.gameObject:SetActive(false)

        else--刷新攻略相关按钮
            self.GLBtnParent.gameObject:SetActive(true)
            self.BtnParent.gameObject:SetActive(false)
            if not self.GLBtnParent.activeInHierarchy then
                self.GLBtnParent.gameObject:SetActive(true)
            end
            local all = #self.GLBtnGroup
            local num = 0
            if self.model.hero_type then
                num = #self.jlrGLBtnContent
            else
                num = #self.shlGLBtnContent
            end
            if num <= all then
                for i = 1, num do
                    if not self.GLBtnGroup[i].btn.gameObject.activeInHierarchy then
                        self.GLBtnGroup[i].btn.gameObject:SetActive(true)
                    end
                    if self.model.hero_type then
                        self.GLBtnGroup[i].text1:SetText(self.jlrGLBtnContent[i][1])
                        self.GLBtnGroup[i].text2:SetText(self.jlrGLBtnContent[i][2])
                    else
                        self.GLBtnGroup[i].text1:SetText(self.shlGLBtnContent[i][1])
                        self.GLBtnGroup[i].text2:SetText(self.shlGLBtnContent[i][2])
                    end
                    if value == i then
                        self.GLBtnGroup[i].img:SetSpriteName("ui_t_c2_012")
                        self.GLBtnGroup[i].img:SetColor32(255,255,255,255)
                        self.GLBtnGroup[i].text1:SetColor32(239,234,222,255)
                        self.GLBtnGroup[i].text2:SetColor32(239,234,222,255)
                        self.GLBtnGroup[i].outline1:SetColor32(5,5,5,255)
                        self.GLBtnGroup[i].outline2:SetColor32(5,5,5,255)
                    else
                        self.GLBtnGroup[i].img:SetSpriteName("ui_t_c2_013")
                        self.GLBtnGroup[i].img:SetColor32(255,255,255,255)
                        self.GLBtnGroup[i].text1:SetColor32(21,24,30,255)
                        self.GLBtnGroup[i].text2:SetColor32(21,24,30,255)
                        self.GLBtnGroup[i].outline1:SetColor32(38,74,89,255)
                        self.GLBtnGroup[i].outline2:SetColor32(38,74,89,255)
                    end
                end
                for i = num + 1, all do
                    self.GLBtnGroup[i].btn.gameObject:SetActive(false)
                end
            else
                Logger.LogError("BugIn   UICardList")
            end
        end
    else
        if self.BtnParent.gameObject.activeInHierarchy then
            self.BtnParent.gameObject:SetActive(false)
        end
        if self.GLBtnParent.gameObject.activeInHierarchy then
            self.GLBtnParent.gameObject:SetActive(false)
        end
    end

end

--判斷是否有這個模塊
local function JudgePrefabSonHave(self, id)

    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) and v.id == id then
                return true
            end
        end
    end
    return false
end
--新手专用方法  为了移动到物品位置
local function GetGuidePosById(self,id)
    local index = 0
    for i, v in ipairs(self.UIPrefabSon) do
        if v.id == 1 then
            for m, n in ipairs(self.model.showCardList) do
                if n.id == id then
                    index = m-1
                    --v.script.card_wrapgroup:SetGridPositionByIndex(index)
                    break
                end
            end
        end
    end
    return index
end

local function InitCreat(self, index)
    GameObjectPool:GetInstance():GetGameObjectAsync(self.UIPrefabSonPath[index], function(go)
        if not IsNull(go) then
            if index==1 then
                go.transform:SetParent(self.PreParent.transform);
            else
                go.transform:SetParent(self.ConParent.transform);
            end
            local commonBtnObj = self.UIPrefabScript[index].New(self, go);
            commonBtnObj:OnCreate(self);
            table.insert(self.UIPrefabSon, { id = index, obj = go, script = commonBtnObj, path = self.UIPrefabSonPath[index] })
            --commonBtnObj:RefreshRedPoint()
            local rectTrans = UIUtil.FindComponent(commonBtnObj.transform, typeof(CS.UnityEngine.RectTransform));
            rectTrans.localScale = Vector3.New(1, 1, 1);
            rectTrans.anchorMin = Vector2.New(1, 0.5);
            rectTrans.anchorMax = Vector2.New(1, 0.5);
            rectTrans.pivot = Vector2.New(0.5, 0.5);
            rectTrans.anchoredPosition3D = Vector3.New(0, 0, 0);
            rectTrans.sizeDelta = Vector2.New(0, 0);
            local AniStrName=""
            if index==1 then
                AniStrName="FX_UICardList_in"
            else
                AniStrName="FX_UICardList_back"
            end
            self.anim:Play( AniStrName,0,0)
            local animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
            coroutine.start(function()
                local until_func = function()
                    if self.anim.isActiveAndEnabled then
                        animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
                        if animInfo:IsName( AniStrName) then
                            if animInfo.normalizedTime >= 1.0 then
                                return true
                            else
                                return false
                            end
                        else
                            return true
                        end
                    else
                        return false
                    end
                end
                coroutine.waituntil(until_func)
                if self.model.oldselect_type~=nil then
                    for i, v in ipairs(self.UIPrefabSon) do
                        if not IsNull(v.obj) and v.id == self.model.oldselect_type then
                            v.script:OnDisable()
                            v.obj:SetActive(false)
                        end
                    end
                end
                for i, v in ipairs(self.UIPrefabSon) do
                    if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                        v.obj.transform:SetParent(self.TempParent.transform);
                        if GuideGroup:GetInstance().Runing  then
                            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_CardListMoveEvent)
                        end
                    end
                end
                self.canClickBtn=true
            end)
        end

        --若为国战属性页签，需要再第一次加载该Obj时，获得数据
        if self.model.nowselect_type == 7 then
            if NationCtrlManager:GetInstance():GetLoginNationStatus() == NationDefine.LOGIN_NATION_ST.DATA_OK then
                --进入过国战，直接拿，处理数据

                self.ctrl:GetCardNationDataByCardID(false)
            else
                --请求服务器，取数据
                self.ctrl:GetCardNationDataByCardID(true, self.model.select_card_id)
            end
        end
    end)
end
local function playEnd(self)
    if self.peopleAnim and self.idle_ani then
        self.peopleAnim:Play(self.idle_ani,0,0)
    end
end
--创建一个角色模型(posType 1--前面  2--后面)
local function CreatRolePrb(self,_showCardId,posType)
    if  self.curRoleModelInfo[posType]~=nil then
        if not IsNull(self.curRoleModelInfo[posType].obj) then
            GameObjectPool:GetInstance():RecycleGameObject(self.curRoleModelInfo[posType].path,self.curRoleModelInfo[posType].obj);
            self.curRoleModelInfo[posType] = nil
        end
    end
    --设置模型
    local config=battle_role_config[_showCardId];

    if config~=nil then
        local path = config.PrefabUI
        if posType == 2 then
            path = yj_gostTest
        end
        GameObjectPool:GetInstance():GetGameObjectAsync(path,function(go)
            --self.mask_obj.gameObject:SetActive(false);
            if IsNull(go) then
                return;
            end
            if self.model.select_card_weapon ~= nil and self.model.select_card_weapon > 0 then
                RolePartUtil.RolePartLoad(go,self.model.select_card_id,self.model.select_card_weapon)
            end
            self.curRoleModelInfo[posType]={obj=go,path=path};
            if posType == 1 then
                go.transform:SetParent(self.roleParent.transform)
            else
                go.transform:SetParent(self.backParent.transform)
            end
            go.transform.localPosition=Vector3.New(tonumber(config.PrefabUIPos[1]),tonumber(config.PrefabUIPos[2]),tonumber(config.PrefabUIPos[3]));
            go.transform.localEulerAngles=Vector3.New(0,0,0);
            go.transform.localScale=Vector3.New(tonumber(config.PrefabUIScale),tonumber(config.PrefabUIScale),tonumber(config.PrefabUIScale));
            local anim=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.Animator),"");
            self.peopleAnim = anim
            self.idle_ani=config.UIIdleAction
            if self.showCardId ~= 1101043 and self.curRoleModelInfo[1] ~= nil then
                go:SetActive(false)
                ResourcesManager:GetInstance():LoadAsync(string.format(show_timeline,self.showCardId,self.showCardId),typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
                    self.timeLine.playableAsset = asset
                    CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingRoles_Show(self.timeLine,self.curRoleModelInfo[1].obj,nil);
                    --self.timeLine:Stop()
                    self.timeLine:Play()
                    go:SetActive(true)
                    self.CanClickLeftAndRight=true
                end)
                LJAudioManger:GetInstance():PlayOtherVoice(config.UILoginAudio)
            elseif self.showCardId == 1101043 and self.curRoleModelInfo[1] ~= nil and self.curRoleModelInfo[2] ~= nil then
                go:SetActive(false)
                ResourcesManager:GetInstance():LoadAsync(string.format(show_timeline,self.showCardId,self.showCardId),typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
                    self.timeLine.playableAsset = asset
                    CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingRoles_Show(self.timeLine,self.curRoleModelInfo[1].obj,self.curRoleModelInfo[2].obj);
                    --self.timeLine:Stop()
                    self.timeLine:Play()
                    go:SetActive(true)
                    self.CanClickLeftAndRight=true
                end)
            else
                self.CanClickLeftAndRight=true
                anim:Play(config.UILoginAction)
                LJAudioManger:GetInstance():PlayOtherVoice(config.UILoginAudio)
            end

        end)

    end
end
--加载场景
local function CoLoadScene(self,_showCardId)
    --if IsNull( self.asset) or CS.SceneDataUtilities.GetSceneIndex(self.asset.name)< 0 then
    if  string.isNilOrEmpty(self.sceneDataPath) or SceneLoadManager:GetInstance():GetSceneIndex(self.sceneDataPath) < 0 then
        self.sceneDataPath="Art/Scenes/scene_Map_RolesDisplay/scene_Map_RolesDisplay/Map_RolesDisplay_sceneData.asset";
        local function ProgressCallback(co, progress)
            --assert(progress <= 1.0, "What's the fuck!!!")
            return coroutine.yieldcallback(co,  progress )
        end
        SceneLoadManager:GetInstance():CoGenerateScene(self.sceneDataPath,ProgressCallback,true)
        if IsNull(self.camObj) then
            self.camObj=CS.UnityEngine.GameObject("roleCam",typeof(CS.Cinemachine.CinemachineVirtualCamera));
            --local rootObj=CS.SceneDataUtilities.FindSceneRoot(self.asset);
            local rootObj=SceneLoadManager:GetInstance():FindSceneRoot(self.sceneDataPath)
            if not IsNull(rootObj) then
                self.camParent=UIUtil.FindTrans(rootObj.transform,"Environment");
                self.camObj.transform:SetParent(self.camParent);
                self.cinemachine=UIUtil.FindComponent(self.camObj,typeof(CS.Cinemachine.CinemachineVirtualCamera),"");
                --CS.SceneDataUtilities.ConfigBattleCam(self.cinemachine,Vector3.New(1.69,2.71,-12.58),Vector3.New(6,0,0),20,Vector3.New(0,0,0));
                SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(1.69,2.71,-12.58),Vector3.New(6,0,0),20,Vector3.New(0,0,0))
                self.cinemachine.Priority = 60;
                local lens =  self.cinemachine.m_Lens
                lens.FarClipPlane = 100;
                self.cinemachine.m_Lens = lens;
                local _parent=UIUtil.FindTrans(rootObj.transform,"Environment")
                self.backParent = UIUtil.FindTrans(rootObj.transform, "Environment/Back Point");
                if self.backParent == nil then
                    self.backParent = CS.UnityEngine.GameObject("Back Point");
                    self.backParent.transform:SetParent(_parent)
                    self.backParent.transform:SetAsFirstSibling()
                    self.backParent.transform.localScale=Vector3.one
                    self.backParent.transform.localPosition=Vector3.New(-0.83, 0, 1.2)
                    self.backParent.transform.localEulerAngles=Vector3.New(0,171.5,0)
                end
                if _showCardId == 1101043 then
                    CreatRolePrb(self,1102015,2);
                end

                self.roleParent=UIUtil.FindTrans(rootObj.transform,"Environment/Roles Point");
                if self.roleParent == nil then
                    self.roleParent = CS.UnityEngine.GameObject("Roles Point");
                    self.roleParent.transform:SetParent(_parent)
                    self.roleParent.transform:SetAsFirstSibling()
                    self.roleParent.transform.localScale=Vector3.one
                    self.roleParent.transform.localPosition=Vector3.zero
                    self.roleParent.transform.localEulerAngles=Vector3.New(0,171.5,0)
                end
                self.showCardId = _showCardId
                CreatRolePrb(self,_showCardId,1);
                self.timeLine = self.roleParent:AddComponent(typeof(CS.UnityEngine.Playables.PlayableDirector))
                self.timeLine.playOnAwake = false
                self.timeLine:Stop()
                self.timeLine:stopped("+",Bind(self,playEnd))
                local pos = SceneLoadManager:GetInstance():GetScenePosOffset(self.sceneDataPath)
                SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,pos,Vector3.zero,true,4.5)
                --self.bg_anim_jlr=UIUtil.FindComponent(rootObj.transform,typeof(CS.UnityEngine.Animator),"Environment/Map_RolesDisplay/SceneZhanshi_cc");
                self.bg_anim_jlr=UIUtil.FindTrans(rootObj.transform,"Environment/Map_RolesDisplay/SceneZhanshi_cc/SceneZhanshi_01_cc")
                self.bg_anim_shl=UIUtil.FindTrans(rootObj.transform,"Environment/Map_RolesDisplay/SceneZhanshi_cc/SceneZhanshi_02_cc")
                self.bg_anim_jlr.gameObject:SetActive(self.model.hero_type)
                self.bg_anim_shl.gameObject:SetActive(not self.model.hero_type)
                --local bgAnimName=self.model.hero_type and "SceneZhanshi_cc 0" or "SceneZhanshi_cc";
                --local bgAnimName="SceneZhanshi_cc 0"
                --self.bgAnim=UIUtil.FindComponent(rootObj.transform,typeof(CS.UnityEngine.Animator),"Environment/Map_RolesDisplay/SceneZhanshi_cc");
                --self.bgAnim:Play(bgAnimName,0,0);
            end
        end
    end
    return coroutine.yieldbreak();
end
local function CheckCanBtn(self,Index)
    return self.lockDataGroup[Index].state
end
local function InitLockBtn(self)
    self.lockDataGroup={}
    table.insert(self.lockDataGroup,{state=true,des=""})
    local begin=0
    local over=0
    if self.model.hero_type then
        begin=20102
        over=20105
    else
        begin=20202
        over=20205
    end
    for i = begin, over do
        local statedata ,type,des= UnlockData:GetInstance():GetLockDataState(i)
        table.insert(self.lockDataGroup,{state=statedata,des=des})
    end
end
local function OnEnable(self)
    base.OnEnable(self)
    local lockID=0
    if self.model.hero_type then
        lockID=201
    else
        lockID=202
    end
    self.evolve_unlock= UnlockData:GetInstance():GetLockDataState(lockID)
    local lock_equip=313
    self.equip_unlock= UnlockData:GetInstance():GetLockDataState(lock_equip)

    self.TitleInfo={{name=self.model.titleName,help=1},{name="卡牌等级",help=1},{name="",help=1},{name="卡牌升星",help=1},{name="专属武器",help=1},{name="卡牌天赋",help=1},
                    {name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="攻略",help=1},{name="传记",help=1}}
    self:InitLockBtn()
    self.cam_game = CS.UnityEngine.Camera.main.gameObject
    self.cam_brain = self.cam_game:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
    self.cam_brain.m_DefaultBlend =CS.Cinemachine.CinemachineBlendDefinition(CS.Cinemachine.CinemachineBlendDefinition.Style.Cut,0)
    self.canClickBtn=true

    if self.model.hero_type then
        self.skill_parent.gameObject:SetActive(false)
    else
        self.skill_parent.gameObject:SetActive(true)
    end
    self.cost_img_obj:SetActive(false)

    --关闭升级特效
    if self.UpLvEffect then
        self.UpLvEffect.gameObject:SetActive(false)
    end
    self.firstIn=true
    self:LoadInEffect()
    self.playBgAnim=true;
    self:OnRefresh()

end

local function OnRefresh(self, islock, cardid)
    -- 各组件刷新

end

local function SetTopRightAndLeftState(self,state,state2)
    if state2 ~= nil then
        self.LeftObj:SetActive(state2)
    else
        self.LeftObj:SetActive(state)
    end
    self.TopRightObj:SetActive(state)
    self.TopLeftObj:SetActive(state)
    self.LeftAnchorsObj:SetActive(state)
    if state then

        --self.ButtomLeftObj:SetActive(lockdata)
        self.funBtnParent.gameObject:SetActive(self.evolve_unlock)
    else
        --self.ButtomLeftObj:SetActive(state)
        self.funBtnParent.gameObject:SetActive(state)
    end
end
local function GetAniLengthByName(self,Ani,name)
    self.length = 0;
    local clips = Ani.runtimeAnimatorController.animationClips
    for i, v in ipairs(clips) do
        if v.name==name then
            self.length=v.length;
            break
        end
    end
end



local function ShowNewImage(self,_showCardId)
    self.CanClickLeftAndRight=false
    --if not IsNull( self.asset) and not IsNull(self.camObj) then
    if not string.isNilOrEmpty(self.sceneDataPath) and not IsNull(self.camObj) then
        --self.timeLine:Stop()
        self.cinemachine.Priority = 60;
        SceneLoadManager:GetInstance():ConfigBattleCam(self.cinemachine,Vector3.New(1.69,2.71,-12.58),Vector3.New(6,0,0),20,Vector3.New(0,0,0))
        --CS.SceneDataUtilities.ConfigLitAndShadow(self.asset,Vector3.New(0,0,0), Vector3.New(0,0,0))
        local pos = SceneLoadManager:GetInstance():GetScenePosOffset(self.sceneDataPath)
        SceneLoadManager:GetInstance():ConfigLitAndShadow(self.sceneDataPath,pos,Vector3.zero,true,4.5)
        self.showCardId = _showCardId
        if self.backParent ~= nil then
            if _showCardId == 1101043 then
                CreatRolePrb(self,1102015, 2);
            else
                CreatRolePrb(self,0, 2);
            end
        end
        if self.roleParent~=nil then
            CreatRolePrb(self,_showCardId, 1);
        end
        if self.playBgAnim and not string.isNilOrEmpty(self.sceneDataPath) and not IsNull(self.camObj) then
            --local bgAnimName=self.model.hero_type and "SceneZhanshi_cc 0" or "SceneZhanshi_cc";
            --local bgAnimName="SceneZhanshi_cc 0"
                self.bg_anim_jlr.gameObject:SetActive(self.model.hero_type)
                self.bg_anim_shl.gameObject:SetActive(not self.model.hero_type)
        end
    else
        coroutine.start(CoLoadScene,self,_showCardId);
    end
end

local function OnSelectCard(self, _type, cardid)
    --LJAudioManger:GetInstance():PlayVoice("UI_Card_01")
    if self.cardId ~= cardid then
        self.cardId = cardid
        self:ShowNewImage(cardid)
    end
    self:RefreshClickBtn()
    self:CloseBtnBeginMove()
    if cardid == nil or CardData:GetInstance().cards[cardid]==nil then
        self.evolveUIButton.gameObject:SetActive(false)
        self.getUIButton.gameObject:SetActive(false)
        self.equipBtn.gameObject:SetActive(false)
        --self.strategyUIButton.gameObject:SetActive(false)
        --self.biographyUIButton.gameObject:SetActive(false)
        self.info_parent.gameObject:SetActive(false)
        self.skill_parent.gameObject:SetActive(false)
    else
        if self.model.nowselect_type==1 then
            if not self.info_parent.gameObject.activeInHierarchy then
                self.info_parent.gameObject:SetActive(true)
            end
            --未拥有卡牌
            if _type ~= 3 then
                self.evolveUIButton.gameObject:SetActive(true)
                self.getUIButton.gameObject:SetActive(true)
                self.equipBtn.gameObject:SetActive(self.equip_unlock)
            else
                self.evolveUIButton.gameObject:SetActive(false)
                self.getUIButton.gameObject:SetActive(false)
                self.equipBtn.gameObject:SetActive(false)
            end
        end
        if  self.model.nowselect_type>=2  and  self.model.nowselect_type<=6 then
            for i = 1, 4 do
                self.BtnGroup[i].red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(cardid).."_"..i))
            end
        end
        self.evolve_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(cardid)))
        --self.eqp_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(cardid).."_5"))
        --养成红点
        self.selectItemData = CardData:GetInstance().cards[cardid]
        self.staticData = StaticCardData[cardid]
        self:UpdateSkillView()
        if self.selectItemData ~= nil then
            self.card_item_nickname:SetSpriteName(self.staticData.NickNamePic)
            self.card_item_name:SetSpriteName(self.staticData.NamePic)
            self.card_item_qua:SetSpriteName(SpriteDefine:GetQualityIconByType(self.selectItemData.quality),true)

            self.cardCrybg.gameObject:SetActive(true)
            self.cardCryImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(self.selectItemData.crystalType))
            self.cardCryText.gameObject:SetActive(self.selectItemData.callCost ~= 0)
            self.cardCryText:SetText(tostring(math.floor(self.selectItemData.callCost)))
            self.cardCryAdd.gameObject:SetActive(self.selectItemData.callCost == 0)

            self.card_item_star.gameObject:SetActive(true)
            self.cardfightbg.gameObject:SetActive(true)
            self.card_item_star:SetSpriteName(SpriteDefine:GetStarImageByLv(self.selectItemData.starlv))
            self.cardfighttext:SetText(math.floor(self.selectItemData.power))


        else
            self.card_item_nickname:SetSpriteName(self.staticData.NickNamePic)
            self.card_item_name:SetSpriteName(self.staticData.NamePic)
            self.card_item_qua:SetSpriteName(SpriteDefine:GetQualityIconByType(self.staticData.Quality),true)
            if self.model.hero_type then
                self.cardCrybg.gameObject:SetActive(false)
            else
                self.cardCrybg.gameObject:SetActive(true)
                self.cardCryImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(self.staticData.CrystalType))
                self.cardCryText:SetText(tostring(math.floor(self.staticData.CallCost)))
                self.cardCryAdd.gameObject:SetActive(self.selectItemData.callCost == 0)
            end
            self.card_item_star.gameObject:SetActive(false)
            self.cardfightbg.gameObject:SetActive(false)
        end
    end
    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                if self.model.nowselect_type == 7 then
                    if NationCtrlManager:GetInstance():GetLoginNationStatus() == NationDefine.LOGIN_NATION_ST.DATA_OK then
                        --进入过国战，直接拿，处理数据
                        self.ctrl:GetCardNationDataByCardID(false)
                    else
                        --请求服务器，取数据
                        self.ctrl:GetCardNationDataByCardID(true, self.model.select_card_id)
                    end
                else
                    v.script:OnRefresh()
                end
            end
        end
    end

end

--刷新技能
local function UpdateSkillView(self,_id)
    if self.model.hero_type then
        self.skill_parent.gameObject:SetActive(false)
    else
        self.skill_parent.gameObject:SetActive(true)
        local num=#self.model.skillList
        for i = 1, num do
            self.skillGroup[i]:OnRefresh(self.model.skillList[i],i,_id)
        end
        for i = num+1, #self.skillGroup do
            self.skillGroup[i]:OnRefresh()
        end
    end
end

--刷新技能后刷新界面
local function UpdateSkillFun(self,_id)
    self:UpdateSkillView(_id)
    self:RefreshUISon()
end
local function LaodBackEffect(self)
    if self.back_effect==nil then
        GameObjectPool:GetInstance():GetGameObjectAsync("Effect/Prefab/UI/FX_UI_CardInforChange.prefab",
                function(go)
                    if not IsNull(go) then
                        UIUtil.SetUIParent(go.transform,self.EffParent.transform);
                        go.transform.localScale=Vector3.New(1.2,1.2,1.2)
                        self.back_effect=go
                        local anim=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.Animator),"");
                        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
                        coroutine.start(function()
                            local until_func = function()
                                if anim.isActiveAndEnabled then
                                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                                    if animInfo:IsName("FX_UI_CardInforChange") then
                                        if animInfo.normalizedTime >= 1.0 then
                                            return true
                                        else
                                            return false
                                        end
                                    else
                                        return true
                                    end
                                else
                                    return false
                                end
                            end
                            coroutine.waituntil(until_func)
                            self.back_effect.gameObject:SetActive(false)
                            if self.itemPress_eff.effect ~= nil then
                                self.itemPress_eff.effect.gameObject:SetActive(true)
                            end
                        end)
                    end
                end)
    else
        self.back_effect.gameObject:SetActive(true)
        local anim=UIUtil.FindComponent( self.back_effect.transform,typeof(CS.UnityEngine.Animator),"");
        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
        coroutine.start(function()
            local until_func = function()
                if anim.isActiveAndEnabled then
                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                    if animInfo:IsName("FX_UI_CardInforChange") then
                        if animInfo.normalizedTime >= 1.0 then
                            return true
                        else
                            return false
                        end
                    else
                        return true
                    end
                else
                    return false
                end
            end
            coroutine.waituntil(until_func)
            self.back_effect.gameObject:SetActive(false)
            if self.itemPress_eff.effect ~= nil then
                self.itemPress_eff.effect.gameObject:SetActive(true)
            end
        end)
    end
end
local function LoadLeaveEffect(self,returncity)
    self.TempImg:SetActive(false)
    self.yellowImg:SetActive(true)
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_02")
    self.LeftObj.gameObject:SetActive(false)
    if self.itemPress_eff.effect ~= nil then
        self.itemPress_eff.effect.gameObject:SetActive(false)
    end
    self:SetTopRightAndLeftState(false)
    for i, v in ipairs(self.UIPrefabSon) do
        if not IsNull(v.obj) and v.id == self.model.nowselect_type then
            v.obj.transform:SetParent(self.PreParent.transform)
            v.obj.transform.localPosition=Vector3.New(0,0,0)
        end
    end
    self.anim:Play( "FX_UICardList_home",0,0)
    self.levave=true
    if self.GameLeave_effect==nil then
        GameObjectPool:GetInstance():GetGameObjectAsync("Effect/Prefab/UI/FX_UI_MaskCardToHome.prefab",
                function(go)
                    if not IsNull(go) then
                        UIUtil.SetUIParent(go.transform,self.InAndLeaveParent.transform);
                        self.GameLeave_effect=go
                        local anim=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.Animator),"");
                        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
                        coroutine.start(function()
                            local until_func = function()
                                if anim.isActiveAndEnabled then
                                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                                    if animInfo:IsName("FX_UI_MaskCardToHome") then
                                        if animInfo.normalizedTime >= 1.0 then
                                            return true
                                        elseif self.levave and  animInfo.normalizedTime >= 0.4 then
                                            self.levave=false
                                            self:CloseUIFun()
                                        else
                                            return false
                                        end
                                    else
                                        return true
                                    end
                                else
                                    return false
                                end
                            end
                            coroutine.waituntil(until_func)
                            self.GameLeave_effect.gameObject:SetActive(false)
                            if returncity then
                                UIUtil.BackHomeMain();
                            else
                                self.ctrl:CloseSelf()
                            end
                            self.ctrl:CloseSelf()
                            for i, v in ipairs(self.UIPrefabSon) do
                                if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                                    v.obj.transform:SetParent(self.TempParent.transform)
                                    v.obj.transform.localPosition=Vector3.New(0,0,0)
                                    v.obj.gameObject:SetActive(false)
                                end
                            end
                        end)
                    end
                end)
    else

        self.GameLeave_effect.gameObject:SetActive(true)
        local anim=UIUtil.FindComponent( self.GameLeave_effect.transform,typeof(CS.UnityEngine.Animator),"");
        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
        --anim:Play("FX_UI_MaskHomeToCard",0,0)
        coroutine.start(function()
            local until_func = function()
                if anim.isActiveAndEnabled then
                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                    if animInfo:IsName("FX_UI_MaskCardToHome") then
                        if animInfo.normalizedTime >= 1.0 then
                            return true

                        elseif self.levave and  animInfo.normalizedTime >= 0.4then
                            self.levave=false
                            self:CloseUIFun()
                        else
                            return false
                        end
                    else
                        return true

                    end
                else
                    return false
                end
            end
            coroutine.waituntil(until_func)
            self.GameLeave_effect.gameObject:SetActive(false)
            if returncity then
                UIUtil.BackHomeMain();
            else
                self.ctrl:CloseSelf()
            end
            for i, v in ipairs(self.UIPrefabSon) do
                if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                    v.obj.transform:SetParent(self.TempParent.transform)
                    v.obj.transform.localPosition=Vector3.New(0,0,0)
                    v.obj.gameObject:SetActive(false)
                end
            end
        end)
    end

end


local function LoadInEffect(self)
    self:SetTopRightAndLeftState(false)
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_01")
    if self.GameIn_effect==nil then
        GameObjectPool:GetInstance():GetGameObjectAsync("Effect/Prefab/UI/FX_UI_MaskHomeToCard.prefab",
                function(go)
                    if not IsNull(go) then
                        UIUtil.SetUIParent(go.transform,self.InAndLeaveParent.transform);
                        self.GameIn_effect=go
                        local anim=UIUtil.FindComponent(go.transform,typeof(CS.UnityEngine.Animator),"");
                        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
                        coroutine.start(function()
                            local until_func = function()
                                if anim.isActiveAndEnabled then
                                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                                    if animInfo:IsName("FX_UI_MaskHomeToCard") then
                                        if animInfo.normalizedTime >= 1.0 then
                                            return true
                                        elseif animInfo.normalizedTime >0.35 then
                                            if self.firstIn then
                                                self.firstIn=false
                                                self:SetNewModule(true)
                                                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CARDLIST, 1)
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return true
                                    end
                                else
                                    return false
                                end
                            end
                            coroutine.waituntil(until_func)
                            self.GameIn_effect.gameObject:SetActive(false)
                            self.TempImg:SetActive(true)
                            self.yellowImg:SetActive(false)
                            self:SetTopRightAndLeftState(true)
                            if self.itemPress_eff ~= nil then
                                self.itemPress_eff.effect.gameObject:SetActive(true)
                            else
                                self.itemPress_eff = self:AddComponent(UIEffect, "BtnParent/BL/evolve_UIButton/Image", 1, EffectConfig.UICardYangCheng)
                            end

                        end)
                    end
                end)
    else
        self.GameIn_effect.gameObject:SetActive(true)
        local anim=UIUtil.FindComponent(  self.GameIn_effect.transform,typeof(CS.UnityEngine.Animator),"");
        local animInfo = anim:GetCurrentAnimatorStateInfo(0)
        --anim:Play("FX_UI_MaskHomeToCard",0,0)
        coroutine.start(function()
            local until_func = function()
                if anim.isActiveAndEnabled then
                    animInfo = anim:GetCurrentAnimatorStateInfo(0)
                    if animInfo:IsName("FX_UI_MaskHomeToCard") then
                        if animInfo.normalizedTime >= 1.0 then
                            return true
                        elseif animInfo.normalizedTime >0.5 then
                            if self.firstIn then
                                self.firstIn=false

                                self:SetNewModule(true)
                                DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_CARDLIST, 1)
                            end
                        else
                            return false
                        end
                    else
                        return true
                    end
                else
                    return false
                end
            end
            coroutine.waituntil(until_func)
            self.GameIn_effect.gameObject:SetActive(false)
            self.TempImg:SetActive(true)
            self.yellowImg:SetActive(false)
            self:SetTopRightAndLeftState(true)
            if self.itemPress_eff ~= nil then
                self.itemPress_eff.effect.gameObject:SetActive(true)
            else
                self.itemPress_eff = self:AddComponent(UIEffect, "BtnParent/BL/evolve_UIButton/Image", 1, EffectConfig.UICardYangCheng)
            end
        end)
    end
end

--加载模块
--触发 打开新的界面
local function SetNewModule(self,first)
    --播放动画  先不加动
    self.anim:Play("EmptyState")
    local num = #self.UIPrefabSon
    self.closeComponent:SetTitleData(self.TitleInfo[self.model.nowselect_type].name)
    --检查是否有
    local canload = self:JudgePrefabSonHave(self.model.nowselect_type)
    self.cost_img_obj:SetActive(self.model.nowselect_type==7)
    if self.model.nowselect_type~=2 and self.model.nowselect_type~=3 then
        if  self.resourceBar_type~=ResourceBarType.MAIN_CITY then
            ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UICardList,ResourceBarType.MAIN_CITY)
            self.resourceBar_type=ResourceBarType.MAIN_CITY
        end

    elseif self.model.nowselect_type==3 then
        if  self.resourceBar_type~=ResourceBarType.SHL_SKILL then
            ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UICardList,ResourceBarType.SHL_SKILL)
            self.resourceBar_type=ResourceBarType.SHL_SKILL
        end
    elseif self.model.nowselect_type==2   then
        if self.model.hero_type  then
            if  self.resourceBar_type~=ResourceBarType.MAIN_CITY then
                ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UICardList,ResourceBarType.MAIN_CITY)
                self.resourceBar_type=ResourceBarType.MAIN_CITY
            end
        else
            if  self.resourceBar_type~=ResourceBarType.SHL_LEVEL_UP then
                ResourceBarComponentManager:GetInstance():RebindResourceBar(UIWindowNames.UICardList,ResourceBarType.SHL_LEVEL_UP)
                self.resourceBar_type=ResourceBarType.SHL_LEVEL_UP
            end
        end
    end
    if not canload then
        self:InitCreat(self.model.nowselect_type)
        if self.model.nowselect_type==1 and not first then
            if self.itemPress_eff.effect ~= nil then
                self.itemPress_eff.effect.gameObject:SetActive(false)
            end
            self:LaodBackEffect()
        end
    else
        for i = 1, num do
            if self.UIPrefabSon[i].id == self.model.nowselect_type then
                --动画
                local AniStrName=""
                if self.model.nowselect_type==1 and first then
                    self.UIPrefabSon[1].obj.transform:SetParent(self.PreParent.transform);
                    self.UIPrefabSon[1].obj.transform.localPosition=Vector3.New(0,0,0)
                    AniStrName="FX_UICardList_in"
                elseif self.model.nowselect_type==1 and not first then
                    self.UIPrefabSon[i].obj.transform:SetParent(self.ConParent.transform)
                    self.UIPrefabSon[i].obj.transform.localPosition=Vector3.New(0,0,0)
                    AniStrName="FX_UICardList_back"
                    if self.itemPress_eff.effect ~= nil then
                        self.itemPress_eff.effect.gameObject:SetActive(false)
                    end
                    self:LaodBackEffect()
                else
                    self.UIPrefabSon[i].obj.transform:SetParent(self.ConParent.transform)
                    self.UIPrefabSon[i].obj.transform.localPosition=Vector3.New(0,0,0)
                    AniStrName="FX_UICardList_back"
                end
                self.anim:Play(AniStrName,0, 0)
                local animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
                coroutine.start(function()
                    local until_func = function()
                        if self.anim.isActiveAndEnabled then
                            animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
                            if animInfo:IsName(AniStrName) then
                                if animInfo.normalizedTime >= 1.0 then
                                    return true
                                else
                                    return false
                                end
                            else
                                return true
                            end
                        else
                            return false
                        end
                    end
                    coroutine.waituntil(until_func)
                    if self.model.oldselect_type~=nil then
                        for i, v in ipairs(self.UIPrefabSon) do
                            if not IsNull(v.obj) and v.id == self.model.oldselect_type then
                                v.script:OnDisable()
                                v.obj:SetActive(false)
                            end
                        end
                    end
                    for i, v in ipairs(self.UIPrefabSon) do
                        if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                            v.obj.transform:SetParent(self.TempParent.transform);
                            if GuideGroup:GetInstance().Runing  then
                                DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
                            end
                        end
                    end
                    self.canClickBtn=true
                end)
                --若是国战属性
                if self.model.nowselect_type == 7 then
                    if NationCtrlManager:GetInstance():GetLoginNationStatus() == NationDefine.LOGIN_NATION_ST.DATA_OK then
                        --进入过国战，直接拿，处理数据
                        self.ctrl:GetCardNationDataByCardID(false)
                    else
                        --请求服务器，取数据
                        self.ctrl:GetCardNationDataByCardID(true, self.model.select_card_id)
                    end
                else
                    self.UIPrefabSon[i].obj:SetActive(true)
                    self.UIPrefabSon[i].script:OnRefresh()
                end
            end
        end
    end
    self:CloseBtnBeginMove()
    --把按钮设置一下
    self:RefreshClickBtn()
end
local function UpDateInfo(self,single_fight)
    self:InitLockBtn()
    self.selectItemData=CardData:GetInstance().cards[self.model.select_card_id]
    if not single_fight then
        self.card_item_star:SetSpriteName(SpriteDefine:GetStarImageByLv(self.selectItemData.starlv))
    end
    self.cardfighttext:SetText(math.floor(self.selectItemData.power),true,46)
end
local function HeroEffect(self)
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_01")
    if self.UpLvEffect then
        self.UpLvEffect.gameObject:SetActive(false)
        self.UpLvEffect.gameObject:SetActive(true)
    else
        if self.roleParent~=nil then
            GameObjectPool:GetInstance():GetGameObjectAsync("Art/EffectRes/Common/FX_ui_c_Hero LV UP.prefab",function(go)
                --self.mask_obj.gameObject:SetActive(false);
                if IsNull(go) then
                    return;
                end
                go.transform:SetParent(self.roleParent.transform)
                self.UpLvEffect=go
                go.transform.localPosition=Vector3.New(0,0,0);
                go.transform.localEulerAngles=Vector3.New(0,0,0);
                go.transform.localScale=Vector3.New(1,1,1);
            end)
        end
    end
end
local function RefreshUISon(self,type)
    self:UpDateInfo()
    self:RefresnRed()
    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) and v.id == self.model.nowselect_type then
                v.script:OnRefresh()
            end
        end
        if type~=nil then
            if type==1 then
                --升级
                if self.UpLvEffect then
                    self.UpLvEffect.gameObject:SetActive(false)
                    self.UpLvEffect.gameObject:SetActive(true)
                else
                    if self.roleParent~=nil then
                        GameObjectPool:GetInstance():GetGameObjectAsync("Art/EffectRes/Common/FX_ui_c_Hero LV UP.prefab",function(go)
                            --self.mask_obj.gameObject:SetActive(false);
                            if IsNull(go) then
                                return;
                            end
                            go.transform:SetParent(self.roleParent.transform)
                            self.UpLvEffect=go
                            go.transform.localPosition=Vector3.New(0,0,0);
                            go.transform.localEulerAngles=Vector3.New(0,0,0);
                            go.transform.localScale=Vector3.New(1,1,1);
                        end)
                    end
                end
            elseif type==2 then


            end
        end
    end
end

local function RefresnRed(self)
    --那个模块打开？  刷一下？
    if self.model.select_card_id==nil or CardData:GetInstance().cards[self.model.select_card_id]==nil then

    else
        self.evolve_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.model.select_card_id)))
        --self.eqp_red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.model.select_card_id).."_5"))
        if  self.model.nowselect_type>=2  and  self.model.nowselect_type<=6 then
            for i = 1, 4 do
                self.BtnGroup[i].red.gameObject:SetActive(RedPointData:GetInstance():GetRedState(tostring(self.model.select_card_id).."_"..i))
            end
        end

        self:UpdateSkillView()
    end

end

local function OnUIMsgRefreshCardNationPanel(self)
    for i, v in ipairs(self.view.UIPrefabSon) do
        if not IsNull(v.obj) and v.id == 7 then
            v.obj:SetActive(true)
            v.script:OnRefresh()
            break
        end
    end
    self.cost_text:SetText(self.model.role_cost)
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_EXCHANGE_COIN, RefreshUISon)
    self:AddUIListener(UIMessageNames.UI_CARD_POOL_ON_SELECT_CARD, OnSelectCard)
    self:AddUIListener(UIMessageNames.UI_NEWCARD_CHANGE_TYPE, SetNewModule)
    self:AddUIListener(UIMessageNames.UI_NEWCARD_BREAK_SUCCESS, RefreshUISon)
    self:AddUIListener(UIMessageNames.UI_NEWCARD_SKILL_UPDATE, UpdateSkillFun)
    self:AddUIListener(UIMessageNames.UI_NEWCARD_HEROEFFECT,  HeroEffect)
    self:AddUIListener(UIMessageNames.UI_CARD_RED,  RefresnRed)
    self:AddUIListener(UIMessageNames.UI_CARD_UPDATE_POWER_BY_EQUIP,  UpDateInfo)
    self:AddUIListener(UIMessageNames.UI_GET_SKILL_EXP_REFRESH, RefreshUISon)
    self:AddUIListener(UIMessageNames.UI_CARD_NATION_DATA_REFRESH, OnUIMsgRefreshCardNationPanel)
    self:AddUIListener(UIMessageNames.UI_Guide_UpdateUIEvent, RefreshUISon)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_EXCHANGE_COIN, RefreshUISon)
    self:RemoveUIListener(UIMessageNames.UI_CARD_POOL_ON_SELECT_CARD, OnSelectCard)
    self:RemoveUIListener(UIMessageNames.UI_NEWCARD_CHANGE_TYPE, SetNewModule)
    self:RemoveUIListener(UIMessageNames.UI_NEWCARD_BREAK_SUCCESS, RefreshUISon)
    self:RemoveUIListener(UIMessageNames.UI_NEWCARD_SKILL_UPDATE, UpdateSkillFun)
    self:RemoveUIListener(UIMessageNames.UI_NEWCARD_HEROEFFECT,  HeroEffect)
    self:RemoveUIListener(UIMessageNames.UI_CARD_RED,  RefresnRed)
    self:RemoveUIListener(UIMessageNames.UI_CARD_UPDATE_POWER_BY_EQUIP, UpDateInfo)
    self:RemoveUIListener(UIMessageNames.UI_GET_SKILL_EXP_REFRESH, RefreshUISon)
    self:RemoveUIListener(UIMessageNames.UI_CARD_NATION_DATA_REFRESH, OnUIMsgRefreshCardNationPanel)
    self:RemoveUIListener(UIMessageNames.UI_Guide_UpdateUIEvent, RefreshUISon)
end

local function CloseBtnBeginMove(self)
    --关闭按钮 打开 左右
    if self.model.nowselect_type~=1 then
        self.evolveUIButton.gameObject:SetActive(false)
        self.getUIButton.gameObject:SetActive(false)
        self.equipBtn.gameObject:SetActive(false)
        --self.strategyUIButton.gameObject:SetActive(false)
        --self.biographyUIButton.gameObject:SetActive(false)
        self.leftbtn.gameObject:SetActive(true)
        self.rightbtn.gameObject:SetActive(true)
        --local allnum=#self.model.haveList
        --if self.model.select_havecard_index>1 and self.model.select_havecard_index<allnum then
        --    self.leftbtn.gameObject:SetActive(true)
        --    self.rightbtn.gameObject:SetActive(true)
        --elseif allnum==1 then
        --    self.leftbtn.gameObject:SetActive(false)
        --    self.rightbtn.gameObject:SetActive(false)
        --elseif self.model.select_havecard_index==allnum then
        --    self.leftbtn.gameObject:SetActive(true)
        --    self.rightbtn.gameObject:SetActive(false)
        --elseif self.model.select_havecard_index==1 then
        --    self.leftbtn.gameObject:SetActive(false)
        --    self.rightbtn.gameObject:SetActive(true)
        --end
    else
        self.leftbtn.gameObject:SetActive(false)
        self.rightbtn.gameObject:SetActive(false)
        if self.model.select_card_id==nil or CardData:GetInstance().cards[self.model.select_card_id]==nil then
            self.evolveUIButton.gameObject:SetActive(false)
            self.getUIButton.gameObject:SetActive(false)
            self.equipBtn.gameObject:SetActive(false)
            --self.strategyUIButton.gameObject:SetActive(false)
            --  self.biographyUIButton.gameObject:SetActive(false)
        else
            self.evolveUIButton.gameObject:SetActive(true)
            self.getUIButton.gameObject:SetActive(true)
            self.equipBtn.gameObject:SetActive(self.equip_unlock)
            --self.strategyUIButton.gameObject:SetActive(true)
            -- self.biographyUIButton.gameObject:SetActive(true)
            if GuideGroup:GetInstance().Runing  then
                DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
            end
        end
    end
end
local function OnDestroy(self)
    -- 销毁

    base.OnDestroy(self)
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICardList);
    if self.closeComponent~=nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) then
                v.script:OnDestroy()
            end
        end
    end
    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) then
                GameObjectPool:GetInstance():RecycleGameObject(v.path, v.obj);
            end
        end
    end
    if self.roleShowPrb~=nil then
        if not IsNull(self.roleShowPrb) then
            GameObjectPool:GetInstance():RecycleGameObject(role_prefab_path, self.roleShowPrb);
        end
    end
    self.roleShowPrb=nil;
    for k, v in ipairs(self.curRoleModelInfo) do
        if not IsNull(v.obj) then
            GameObjectPool:GetInstance():RecycleGameObject(v.path,self.curRoleModelInfo[k].obj);
        end
    end
    if not IsNull(self.back_effect) then
        GameObjectPool:GetInstance():RecycleGameObject("Effect/Prefab/UI/FX_UI_CardInforChange.prefab",self.back_effect.gameObject)
    end
    if not IsNull(self.GameLeave_effect) then
        GameObjectPool:GetInstance():RecycleGameObject("Effect/Prefab/UI/FX_UI_MaskCardToHome.prefab",self.GameLeave_effect.gameObject)
    end
    if not IsNull(self.GameIn_effect) then
        GameObjectPool:GetInstance():RecycleGameObject("Effect/Prefab/UI/FX_UI_MaskHomeToCard.prefab",self.GameIn_effect.gameObject)
    end
    if not IsNull(self.UpLvEffect) then
        GameObjectPool:GetInstance():RecycleGameObject("Art/EffectRes/Common/FX_ui_c_Hero LV UP.prefab",self.UpLvEffect.gameObject)
    end
    self.curRoleModelInfo={}
    self.roleParentPoint=nil;
    self.cinemachine=nil;
end
local function OnDisable(self)
    base.OnDisable(self)
    self:CloseUIFun()
    self.cardId=nil
    self.TempImg.gameObject:SetActive(false)
    self.BtnParent.gameObject:SetActive(false)
    if self.UIPrefabSon ~= nil then
        for i, v in ipairs(self.UIPrefabSon) do
            if not IsNull(v.obj) then
                v.obj.gameObject:SetActive(false)
            end
        end
    end
    --[[    if self.image_path~=nil and # self.image_path>0 then
            ResourcesManager:GetInstance():UnloadAssetBundle( self.image_path)
        end]]

end
UICardListView.OnCreate = OnCreate
UICardListView.OnEnable = OnEnable
UICardListView.OnDisable=OnDisable
UICardListView.OnRefresh = OnRefresh
UICardListView.OnAddListener = OnAddListener
UICardListView.OnRemoveListener = OnRemoveListener
UICardListView.OnDestroy = OnDestroy
UICardListView.InitCreat = InitCreat
UICardListView.JudgePrefabSonHave = JudgePrefabSonHave
UICardListView.RefreshClickBtn = RefreshClickBtn
UICardListView.SetNewModule = SetNewModule
UICardListView.ShowNewImage = ShowNewImage
UICardListView.CloseBtnBeginMove = CloseBtnBeginMove
UICardListView.RefreshUISon = RefreshUISon
UICardListView.Update=Update;
UICardListView.UpdateSkillView = UpdateSkillView
UICardListView.UpdateSkillFun = UpdateSkillFun
UICardListView.UpDateInfo= UpDateInfo
UICardListView.GetAniLengthByName= GetAniLengthByName
UICardListView.SetTopRightAndLeftState = SetTopRightAndLeftState
UICardListView.LoadInEffect = LoadInEffect
UICardListView.LoadLeaveEffect= LoadLeaveEffect
UICardListView.LaodBackEffect=LaodBackEffect
UICardListView.CloseUIFun = CloseUIFun
UICardListView.CheckCanBtn = CheckCanBtn
UICardListView.InitLockBtn=InitLockBtn
UICardListView.GetGuidePosById = GetGuidePosById
UICardListView.HeroEffect = HeroEffect
UICardListView.RefresnRed = RefresnRed
UICardListView.ChangeMaskState = ChangeMaskState
UICardListView.playEnd = playEnd
return UICardListView
