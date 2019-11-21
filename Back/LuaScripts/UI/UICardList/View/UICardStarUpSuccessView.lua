---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/5/8 11:35
---
local UICardStarUpSuccessView = BaseClass("UICardStarUpSuccessView", UIBaseView)
local base = UIBaseView
local UIteachItem= require("UI.UICardList.View.TeachTipItem")

local function OnCreate(self)
    base.OnCreate(self)
    self.parent=UIUtil.FindTrans(self.transform,"boardAni")
    self.hero_img=UIUtil.FindTrans(self.transform,"boardAni/hero_img")
    self.titletext=self:AddComponent(UIText,"boardAni/texAni/titletext1")
    self.titletext1=self:AddComponent(UIText,"boardAni/texAni/titletext2")
    self.Scroll=self:AddComponent(UIScrollRect,"boardAni/TeachObj/Scroll View")
    self.desContent= self:AddComponent(UIBaseComponent,"boardAni/TeachObj/Scroll View/Image")
    self.teachObj=UIUtil.FindTrans(self.transform,"boardAni/TeachObj").gameObject
    self.StarObj=UIUtil.FindTrans(self.transform,"boardAni/StarObj").gameObject
    self.successStarGroup=self:AddComponent(UIBaseContainer,"boardAni/StarObj/curStarObj");
    self.successNextStarGroup=self:AddComponent(UIBaseContainer,"boardAni/StarObj/nextStarObj");
    self.successAddGroup=self:AddComponent(UIBaseContainer,"boardAni/StarEffect");
    self.successShareGroup=self:AddComponent(UIBaseContainer,"boardAni/StarAttr");
    self.layoutTrans=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"boardAni");
    self.teachDes={}
    for i = 1, 4 do
        self.teachDes[i]=UIteachItem.New(self,"boardAni/TeachObj/Scroll View/Image/Pre"..i)
        self.teachDes[i]:OnCreate()
    end
    self.successCloseBtn=self:AddComponent(UIButton,"boardAni/Close_Des_Btn");
    self.successCloseBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        UIManager:GetInstance():CloseWindow(UIWindowNames.UICardStarUpSuccess);
    end)

    self.CloseBtn=self:AddComponent(UIButton,"");
    self.CloseBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
        UIManager:GetInstance():CloseWindow(UIWindowNames.UICardStarUpSuccess);
    end)
    self.successStarList={};
    local count=self.successStarGroup.transform.childCount;
    for i = 0, count-1 do
        local singleStarImg=self.successStarGroup:AddComponent(UIImage,i,AtlasConfig.DynamicTex);
        table.insert(self.successStarList,singleStarImg);
    end
    self.successNextStarList={};
    count=self.successNextStarGroup.transform.childCount;
    for i = 0, count-1 do
        local singleStarImg=self.successNextStarGroup:AddComponent(UIImage,i,AtlasConfig.DynamicTex);
        table.insert(self.successNextStarList,singleStarImg);
    end

    self.successAddAttGroup={};
    for i = 0, 3 do
        local tempItem=self.successAddGroup:AddComponent(UIBaseContainer,i);
        local curValText=tempItem:AddComponent(UIText,"addValue");
        local nextValText=tempItem:AddComponent(UIText,"nextAddValue");
        local nameText=tempItem:AddComponent(UIText,"addName");
        local Gameobj=tempItem:AddComponent(UIBaseContainer,"");
        local bgObj = tempItem:AddComponent(UIImage,"bg");
        table.insert(self.successAddAttGroup,{obj=Gameobj, curValTxt=curValText,nextValTxt=nextValText,nameTxt=nameText,bg = bgObj});
    end
    self.successShareAttGroup={};
    for i = 0, 2 do
        local tempItem=self.successShareGroup:AddComponent(UIBaseContainer,i);
        local curValText=tempItem:AddComponent(UIText,"attValue");
        local nextValText=tempItem:AddComponent(UIText,"nextAttValue");
        local nameText=tempItem:AddComponent(UIText,"attName");
        table.insert(self.successShareAttGroup,{curValTxt=curValText,nextValTxt=nextValText,nameTxt=nameText});
    end
end


local function OnEnable(self)
    base.OnEnable(self);
    --self.layoutTrans.localScale=Vector3.New(0,0,0)
    --LuaTweener.UIScaleTo(self.layoutTrans.transform,Vector3.New(0,0,0),Vector3.New(1,1,1),0.2,EaseFormula.Linear)
    if self.model._type==1 then
        self.parent.localPosition=Vector3.New(0,0,0)
        self.hero_img.gameObject:SetActive(false)
        self.titletext:SetText("突破")
        self.titletext1:SetText("成功")
        self.successAddGroup.gameObject:SetActive(true)
        self.StarObj:SetActive(false)
        self.teachObj:SetActive(false)
        self.successAddGroup.transform.anchoredPosition=Vector3.New(18,128,0)
        --self.successAddGroup.transform.anchoredPosition=Vector3.New(10,80,0)
        for i, v in ipairs(self.successAddAttGroup) do
            if self.model.ProData[i]~=nil then
                v.obj.gameObject:SetActive(true)
                v.nameTxt:SetText(self.model.ProData[i].name);
                v.curValTxt:SetText(self.model.ProData[i].before);
                v.nextValTxt:SetText(self.model.ProData[i].before);
                v.nextValTxt:SetText(self.model.ProData[i].after,true);
                v.bg.gameObject:SetActive(i%2 ~= 0)
            else
                v.obj.gameObject:SetActive(false)
            end
        end
    elseif self.model._type==2 then
        self.parent.localPosition=Vector3.New(0,0,0)
        self.hero_img.gameObject:SetActive(false)
       -- self.successAddGroup.transform.anchoredPosition=Vector3.New(10,45,0)
        self.titletext:SetText("升星")
        self.titletext1:SetText("成功")
        self.successAddGroup.gameObject:SetActive(true)
        self.StarObj:SetActive(true)
        self.teachObj:SetActive(false)
        self:LoadStarEffect()
        self.successAddGroup.transform.anchoredPosition=Vector3.New(18,72.5,0)
        UIUtil.SetHeroStar(self.model.curStar,self.successStarList);
        UIUtil.SetHeroStar(self.model.nextStar,self.successNextStarList);
        --升星加成
        for i, v in ipairs(self.successAddAttGroup) do
            if self.model.effectList[i]~=nil then
                v.obj.gameObject:SetActive(true)
                v.nameTxt:SetText(self.model.effectList[i]);
                v.curValTxt:SetText(self.model.curAddValue);
                --v.nextValTxt:SetText(self.model.curAddValue);
                v.nextValTxt:SetText(self.model.nextAddValue);
                v.bg.gameObject:SetActive(i%2 == 0)
            else
                v.obj.gameObject:SetActive(false)
            end
        end
    elseif self.model._type==3 then
        --教学提示
        self.parent.localPosition=Vector3.New(100,0,0)
        self.hero_img.gameObject:SetActive(true)
        self.titletext:SetText("教学")
        self.titletext1:SetText("提示")
        self.successAddGroup.gameObject:SetActive(false)
        self.StarObj:SetActive(false)
        self.teachObj:SetActive(true)
        local num=#self.model.teachInfo
        local str="啊哈哈哈哈啊哈哈哈哈哈哈哈哈啊是大啊是大"
        self.AllRow=0
        for i = 1, num do
            self.teachDes[i].gameObject:SetActive(true)
            if i==1 then
                self.teachDes[i].transform.localPosition=Vector3.New(0,-10,0)
                self.teachDes[i]:OnRefresh(self.model.teachInfo[i],true)
                self.AllRow=self.AllRow+ self.teachDes[i].Row
            else
                self.teachDes[i].transform.localPosition=Vector3.New(0,-self.teachDes[i-1].Row*46-10,0)
                self.teachDes[i]:OnRefresh(self.model.teachInfo[i],self.teachDes[i-1].nextbase)
                self.AllRow=self.AllRow+ self.teachDes[i].Row
            end
        end
        self.desContent.rectTransform.sizeDelta=Vector2.New(self.desContent.rectTransform.sizeDelta.x,self.AllRow*46)
        self.desContent.rectTransform.anchoredPosition = Vector3.New(0,150,0)
        self.Scroll:SetVerticalScrolling(self.AllRow>=6)
        for i =  num+1, #self.teachDes do
            self.teachDes[i].gameObject:SetActive(false)
        end
    end

    --[[
    --升星共享属性加成
    self.successShareGroup.transform.gameObject:SetActive(self.model.cardType==1);
    if self.model.cardType==1 then
        self.layoutTrans.sizeDelta=Vector2.New(1320,661)
        for i, v in ipairs(self.successShareAttGroup) do
            if self.model.shareAttList[i]~=nil then
                v.nameTxt:SetText(self.model.shareAttList[i].name);
                v.curValTxt:SetText(self.model.shareAttList[i].curVal);
                v.nextValTxt:SetText(self.model.shareAttList[i].nextVal);
            end
        end
    else
        self.layoutTrans.sizeDelta=Vector2.New(900,661)
    end
--]]
end
local function LoadStarEffect(self)
    if self.UpStarEffect~=nil then
        self.UpStarEffect.transform:SetParent(self.successNextStarList[self.model.nextStar].transform)
        self.UpStarEffect.transform.localPosition=Vector3.New(0,0,0);
        self.UpStarEffect.transform.localEulerAngles=Vector3.New(0,0,0);
        self.UpStarEffect.transform.localScale=Vector3.New(0.5,0.5,0.5);
        self.UpStarEffect.gameObject:SetActive(false)
        self.UpStarEffect.gameObject:SetActive(true)
        self:AniPlay()
    else
        GameObjectPool:GetInstance():GetGameObjectAsync("Effect/Prefab/UI/FX_ui_c_star_LV up.prefab",function(go)
            --self.mask_obj.gameObject:SetActive(false);
            if IsNull(go) then
                return;
            end
            go.transform:SetParent(self.successNextStarList[self.model.nextStar].transform)
            self.UpStarEffect=go
            self.UpStarEffect_Ani= self.UpStarEffect.transform:GetChild(0):GetComponent(typeof(CS.UnityEngine.Animator))
            go.transform.localPosition=Vector3.New(0,0,0);
            go.transform.localEulerAngles=Vector3.New(0,0,0);
            go.transform.localScale=Vector3.New(0.5,0.5,0.5);

            self:AniPlay()
        end)
    end
end
local function AniPlay(self)
    local animInfo = self.UpStarEffect_Ani:GetCurrentAnimatorStateInfo(0)
    coroutine.start(function()
        local until_func = function()
            if self.UpStarEffect_Ani.isActiveAndEnabled then
                animInfo = self.UpStarEffect_Ani:GetCurrentAnimatorStateInfo(0)
                if animInfo:IsName("FX_ui_c_LV up") then
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
        self.UpStarEffect.gameObject:SetActive(false)
    end)
end
local function OnDisable(self)
    base.OnDisable(self)
end
local function OnDesrory(self)
    base.OnDestroy(self)
    if self.UpStarEffect~=nil then
        GameObjectPool:GetInstance():RecycleGameObject("Effect/Prefab/UI/FX_ui_c_star_LV up.prefab",self.UpStarEffect.gameObject)
    end
end
UICardStarUpSuccessView.OnDisable = OnDisable
UICardStarUpSuccessView.OnCreate = OnCreate;
UICardStarUpSuccessView.OnEnable=OnEnable;
UICardStarUpSuccessView.LoadStarEffect= LoadStarEffect
UICardStarUpSuccessView.OnDesrory = OnDesrory
UICardStarUpSuccessView.AniPlay = AniPlay
return UICardStarUpSuccessView;