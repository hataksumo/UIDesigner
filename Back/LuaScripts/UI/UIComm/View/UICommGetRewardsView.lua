--[[
-- added by wsh @ 2017-12-01
-- UILogin视图层
-- 注意：
-- 1、成员变量最好预先在__init函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UICommGetRewardsWrapItem = require "UI.UIComm.Component.UICommGetRewardsWrapItem"
local UICommGetRewardsView = BaseClass("UICommGetRewardsView", UIBaseView)
local base = UIBaseView

-- 各个组件路径

local gxhd_bg = "bg"
local mask_btn_path = "maskBtn"
local grid1_path="ItemgridLayout/grid1";
local grid2_path="ItemgridLayout/grid2";
local scroll_path="ItemgridLayout";

--local function ClickOnLoginBtn(self)
--	local name = self.account_input:GetText()
--	local password = self.password_input:GetText()
--	self.ctrl:LoginServer(name, password)
--end

-- 退出按钮
local function OnExitBtnClick(self)
    if self.can_back then
        UIManager:GetInstance():CloseWindow(self.__name)
        if GuideGroup:GetInstance().Runing  then
            DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
        end
        local oldLv=UserData:GetInstance().oldLv;
        local curLv=UserData:GetInstance().pLevel;
        if UserData:GetInstance().isShowLvPanel and not self.model.forbid_level  then
            --新手特殊处理  探险后装备不会主城
            local state=UnlockData:GetInstance():CheckNewOpenFunList(true);
            if state~=0 then--开启新功能
                if UnlockData:GetInstance().newOpenFunList[1].id==313then

                else
                    UIUtil.BackHomeMain();
                    return
                end
            end
            UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelUnlockTip,oldLv,curLv);
            UserData:GetInstance().isShowLvPanel=false;
        else
            if GuideGroup:GetInstance().Runing  then
                DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_TXOverEvent)
            end
        end
        if self.model.callback ~= nil then
            self.model.callback()
        end
    else
        self.can_back=true
        self.ani:Play("FX_UICommGetRewards_bg_stand")
        self.effect_obj2.gameObject:SetActive(false)
    end
end

--初始化卡牌显示
local function InitCardShow(self)
    self.cardShow = self:AddComponent(UIBaseContainer,"UICardPreItem")
    self.cardShow.transform.gameObject:SetActive(false)
    self.cardShowBG=self.cardShow:AddComponent(UIImage,"frame",AtlasConfig.DynamicTex);
    self.cardShowIcon = UIUtil.FindComponent(self.cardShow.transform,typeof(CS.UnityEngine.UI.RawImage),"frame/icon")
    self.cardShowFrame=self.cardShow:AddComponent(UIImage,"frame/Iconbg",AtlasConfig.DynamicTex);
    self.cardShowQuabg=UIUtil.FindTrans(self.cardShow.transform,"frame/cry_bg").gameObject
    self.cardShowQualityImg=self.cardShow:AddComponent(UIImage,"frame/quality",AtlasConfig.DynamicTex);
    self.cardShowCrystalImg=self.cardShow:AddComponent(UIImage,"frame/cry_Image",AtlasConfig.DynamicTex);
    self.cardshow_cryaddImg=UIUtil.FindTrans(self.cardShow.transform,"frame/cry_Image/cryAddImg").gameObject
    self.cardShowCryNumImg=self.cardShow:AddComponent(UIText,"frame/cry_Image/cryNum_text");
    self.cardShowNameText=self.cardShow:AddComponent(UIText,"frame/name");
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    InitCardShow(self);
    self.ani=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"bg")
    self.effect_obj1=UIUtil.FindTrans(self.transform,"bg/Image (3)")
    self.effect_obj2=UIUtil.FindTrans(self.transform,"bg/UICommGetRewards_Efc")
    --local rectTrans=UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/NormalLayer").transform,typeof(CS.UnityEngine.RectTransform))
    --self.sceen_width =rectTrans.sizeDelta.x
    self.bg_img=self:AddComponent(UIImage,"bg/BgImage")
    self.bg_img.rectTransform.anchoredPosition=Vector3.zero
    self.bg_img.rectTransform.sizeDelta=Vector2.New(2340,600)
    self.skillShow = UIUtil.FindTrans(self.transform,"SkillShow")
    self.skillShow.gameObject:SetActive(false)
    self.scrollview=UIUtil.FindTrans(self.transform,scroll_path);
    self.bg = UIUtil.FindTrans(self.transform,gxhd_bg)
    self.mask_btn = self:AddComponent(UIButton, mask_btn_path)
    self.mask_btn:SetOnClick(self, OnExitBtnClick)
    -- 关于层级的部分
    self.grid1Obj=self:AddComponent(UIBaseContainer,grid1_path);
    self.grid2Obj=self:AddComponent(UIBaseContainer,grid2_path);
    self.rewardList={};
    local count=self.grid1Obj.transform.childCount;
    for i = 0, count-1 do
        local tempItem=self.grid1Obj:AddComponent(UIBaseContainer,i);
        local tempFrame=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
        local tempIcon=tempItem:AddComponent(UIImage,"mask/icon",AtlasConfig.DynamicTex);
        local tempText=tempItem:AddComponent(UIText,"num");
        local iconPress=tempItem:AddComponent(UIEventTrigger,"mask/icon")
        iconPress:SetOnLongPress(function()
            local costid=self.model.rewards[i+1].id;
            local costType=self.model.rewards[i+1].type;
            if costid then
                if costType==20 or costType==21 then
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UICardEquipmentProp,0,costid,true);
                else
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,costid)
                end
            end
        end,(function()
            local costType=self.model.rewards[i+1].type;
            if costType==20 or costType==21 then
                UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentProp)
            else
                UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
            end

        end),true)
        table.insert(self.rewardList,{obj=tempItem,frame=tempFrame,icon=tempIcon,numText=tempText});
    end
    count=self.grid2Obj.transform.childCount;
    for i = 0, count-1 do
        local tempItem=self.grid2Obj:AddComponent(UIBaseContainer,i);
        local tempFrame=tempItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
        local tempIcon=tempItem:AddComponent(UIImage,"mask/icon",AtlasConfig.DynamicTex);
        local tempText=tempItem:AddComponent(UIText,"num");
        local iconPress=tempItem:AddComponent(UIEventTrigger,"mask/icon")
        iconPress:SetOnLongPress(function()
            local costid=self.model.rewards[i+6].id;
            local costType=self.model.rewards[i+6].type;
            if costid then
                if costType==20 or costType==21then
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UICardEquipmentProp,0,costid,true);
                else
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,costid)
                end

            end
        end,(function()
            local costType=self.model.rewards[i+6].type;
            if costType==20 or costType==21then
                UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentProp)
            else
                UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
            end
        end),true)
        table.insert(self.rewardList,{obj=tempItem,frame=tempFrame,icon=tempIcon,numText=tempText});
    end
end

local function ShowCardData(self)
    if self.model.rewards[1]~=nil then
        local AllCardData=DataUtil.GetData("card");
        local id=self.model.rewards[1].id;
        local cardData=AllCardData[id];
        self:LoadRawImg(cardData.KPKM)
        self.cardShowBG:SetSpriteName(SpriteDefine:GetCardBGByQua(cardData.Quality));
        self.cardShowFrame:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(cardData.Quality));
        self.cardShowQualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(cardData.Quality));
        self.cardShowQuabg:SetActive(cardData.Quality>=4)
        self.cardshow_cryaddImg:SetActive(cardData.Type==1)
        --self.cardShowCrystalImg.transform.gameObject:SetActive(cardData.Type==2);
        self.cardShowCrystalImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData.CrystalType));
        self.cardShowCryNumImg.gameObject:SetActive(cardData.Type==2)
        self.cardShowCryNumImg:SetText(cardData.CallCost);
        local nameColor = "FFFFFF"
        self.itemData=CardData:GetInstance().cards[id]
        if self.itemData and  self.itemData.hellNameColor ~= nil then
            nameColor = self.itemData.hellNameColor
        end
        self.cardShowNameText:SetText("<color=#"..nameColor..">"..cardData.Name.."</color>")
    end
end
local sprite_type = typeof(CS.UnityEngine.Texture)
local function LoadRawImg(self,path)
    local imagePath= "Art/UI_3D/Textures/"..path..".png"
    ResourcesManager:GetInstance():LoadAsync(imagePath, sprite_type, function(texture)
        self.cardShowIcon.texture=texture
    end)
end
-- 每次打开刷新界面
local function OnRefresh(self)
    -- 各组件刷新
    local dataLength = 0
    if self.model.rewards ~= nil then
        dataLength = #self.model.rewards
    end
    if dataLength <=0 then
        --self.bg.gameObject:SetActive(false)
        self.scrollview.gameObject:SetActive(false)
        return
    end
    for i, v in ipairs(self.rewardList) do
        v.obj.transform.gameObject:SetActive(false);
    end
    self.downTimer= TimerManager:GetInstance():SimpleTimerArgs(0.2,function()
        coroutine.start(function ()
            if self.model.type==11 then
                self.grid1Obj.gameObject:SetActive(false)
                self.grid2Obj.gameObject:SetActive(false)
                self.cardShow.gameObject:SetActive(true)
                ShowCardData(self);
            else
                self.grid1Obj.gameObject:SetActive(dataLength>0)
                self.grid2Obj.gameObject:SetActive(dataLength>5)
                self.cardShow.gameObject:SetActive(false)
                for i, v in ipairs(self.rewardList) do
                    if self.model.rewards[i]~=nil then
                        v.obj.transform.gameObject:SetActive(true);
                        v.icon:SetSpriteName(self.model.rewards[i].icon);
                        v.frame:SetSpriteName(SpriteDefine:GetCircleFrameByType(self.model.rewards[i].quality));
                        v.numText:SetText(math.floor(self.model.rewards[i].num));
                        LuaTweener.UIScaleTo(v.obj.transform.gameObject.transform,Vector3.New(1.8,1.8,1.8),Vector3.New(1,1,1),0.1,EaseFormula.InOutSine,function()
                        end)
                        if self.can_back then

                        else
                            coroutine.waitforseconds(0.1);
                        end
                    end
                end
            end
            coroutine.yieldbreak();
        end)
    end,nil,true)

   -- self.bg.gameObject:SetActive(true)
    self.scrollview.gameObject:SetActive(true)
end

local function OnEnable(self)
    base.OnEnable(self)

    if self.cardShow.gameObject.activeInHierarchy then
        self.cardShow.gameObject:SetActive(false)
    end
    self.can_back=false
    UIUtil.SetEffectLayer(self.effect_obj1,self.base_order)
    UIUtil.SetEffectLayer(self.effect_obj2,self.base_order)
    if not self.effect_obj2.gameObject.activeInHierarchy then
        self.effect_obj2.gameObject:SetActive(true)
    end
    LJAudioManger:GetInstance():PlayVoice("UI_Reward_01")
    TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
        self.can_back=true
    end,nil,true)
    self:OnRefresh()
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
end

local function OnDestroy(self)
    base.OnDestroy(self)
    if self.downTimer~=nil then
        TimerManager:GetInstance():SimpleTimerStop(self.downTimer);
    end
end

UICommGetRewardsView.OnCreate = OnCreate
UICommGetRewardsView.OnEnable = OnEnable
UICommGetRewardsView.OnRefresh = OnRefresh
UICommGetRewardsView.OnAddListener = OnAddListener
UICommGetRewardsView.OnRemoveListener = OnRemoveListener
UICommGetRewardsView.OnDestroy = OnDestroy
UICommGetRewardsView.LoadRawImg =  LoadRawImg
return UICommGetRewardsView