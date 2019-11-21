---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/5/6 11:57
---
local UICardLvPage = BaseClass("UICardLvPage", UIBaseContainer)
local base = UIBaseContainer
local UIMatButton = require "UI.UIComm.Component.UIMatButton"
local property = DataUtil.GetData("property")
local function OnCreate(self,holder)
    base.OnCreate(self)
    self.holder=holder

    --静态赋值
    self.fight_property=self:AddComponent(UIText,"propertyPanel/battle/tip_1/fightTip")
    self.fight_property:SetText("战斗属性")
    self.base_property=self:AddComponent(UIText,"propertyPanel/base/tip/baseTip")
    self.base_property:SetText("基础属性")
    self.levelInfoUIText = self:AddComponent(UIText, "level/levelInfo_UIText")
    self.level_name=self:AddComponent(UIText,"level")
    self.level_name:SetText("等级")
    self.hpName = self:AddComponent(UIText, "propertyPanel/base/hp/hpName")
    self.hpNowNum = self:AddComponent(UIText, "propertyPanel/base/hp/hpNowNum")
    self.hpArrow=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"propertyPanel/base/hp/hpArrow");
    self.hpAfterNum = self:AddComponent(UIText, "propertyPanel/base/hp/hpArrow/hpAfterNum")

    self.atkName = self:AddComponent(UIText, "propertyPanel/base/atk/atkName")
    self.atkArrow=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"propertyPanel/base/atk/atkArrow");
    self.atkNowNum = self:AddComponent(UIText, "propertyPanel/base/atk/atkNowNum")
    self.atkAfterNum = self:AddComponent(UIText, "propertyPanel/base/atk/atkArrow/atkAfterNum")

    self.defName = self:AddComponent(UIText, "propertyPanel/base/defence/defName")
    self.defArrow=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"propertyPanel/base/defence/defArrow");
    self.defNowNum = self:AddComponent(UIText, "propertyPanel/base/defence/defNowNum")
    self.defAfterNum = self:AddComponent(UIText, "propertyPanel/base/defence/defArrow/defAfterNum")

    self.critName = self:AddComponent(UIText, "propertyPanel/battle/crit")
    self.critName:SetText(property[104].CnName)
    self.critValue = self:AddComponent(UIText, "propertyPanel/battle/crit/critNum")
    self.critRateName = self:AddComponent(UIText, "propertyPanel/battle/critRate")
    self.critRateName:SetText(property[105].CnName)
    self.critRateValue = self:AddComponent(UIText, "propertyPanel/battle/critRate/critRateNum")
    self.effectHitName = self:AddComponent(UIText, "propertyPanel/battle/effectHit")
    self.effectHitName:SetText(property[106].CnName)
    self.effectHitValue = self:AddComponent(UIText, "propertyPanel/battle/effectHit/effectHitNum")
    self.effectResistName = self:AddComponent(UIText, "propertyPanel/battle/effectResist")
    self.effectResistName:SetText(property[107].CnName)
    self.effectResistValue = self:AddComponent(UIText, "propertyPanel/battle/effectResist/effectResistNum")
    self.blockName = self :AddComponent(UIText,"propertyPanel/battle/block")
    self.blockName:SetText(property[114].CnName)
    self.blockValue = self :AddComponent (UIText,"propertyPanel/battle/block/blockNum")
    self.pierceName = self :AddComponent(UIText,"propertyPanel/battle/pierce")
    self.pierceName:SetText(property[115].CnName)
    self.pierceValue = self :AddComponent (UIText,"propertyPanel/battle/pierce/pierceNum")
    self.jlrContent=self:AddComponent(UIText,"propertyPanel/contnet")--UIUtil.FindTrans(self.transform,"");
    self.jlrContent:SetText("寄灵人等级和玩家等级相同")
    self.shlContent=UIUtil.FindTrans(self.transform,"propertyPanel/btnparent");
    self.shlMaxObj=self:AddComponent(UIText,"propertyPanel/maxcontnet")--UIUtil.FindTrans(self.transform,"propertyPanel/maxcontnet");
    self.shlMaxObj:SetText("已达到最大等级")
    self.lv1Btn = UIMatButton.New(self,"propertyPanel/btnparent/level1Btn")
    self.lv1Btn:OnCreate()
    self.lv3Btn = UIMatButton.New(self,"propertyPanel/btnparent/level3Btn")
    self.lv3Btn:OnCreate()
    self.goBtn_text=self:AddComponent(UIText,"propertyPanel/btnparent/goBtn/name")
    self.goBtn_text:SetText("前往突破")
    self.goBtn = self:AddComponent(UIButton,"propertyPanel/btnparent/goBtn")
    self.goBtn:SetOnClick(function()
        holder:SwitchPage(2)
    end)
    self.anim_group = {}
    self.canBtn=true
    self.hpName:SetText(property[113].CnName)
    self.atkName:SetText(property[111].CnName)
    self.defName:SetText(property[112].CnName)
    self.activeText = self:AddComponent(UIText,"propertyPanel/relationPanel/bg/activeText")
    self.relationText=self:AddComponent(UIText,"propertyPanel/relationPanel/bg/relationText")
    self.relationText:SetText("缘分")
    self.relationPanel = UIUtil.FindTrans(self.transform,"propertyPanel/relationPanel")
    self.gridObj=self:AddComponent(UIBaseContainer,"propertyPanel/relationPanel/relationGrid")
    self.objList={}
    local count=self.gridObj.transform.childCount
    for i = 0, count-1 do
        local tempItem=self.gridObj:AddComponent(UIBaseContainer,i)
        local activeObj=tempItem:AddComponent(UIImage,"activeObj")
        local noActiveObj=tempItem:AddComponent(UIImage,"noActiveObj")
        local name=tempItem:AddComponent(UIText,"relationNameText")
        table.insert(self.objList,{obj=tempItem,active=activeObj,noActive=noActiveObj,nameText=name})
    end
end
local function PlayUpPowerAni(self,_transform,index)
    _transform.gameObject:SetActive(true)
    local rightCurPos=Vector3.New(-260,0,0);
    _transform.anchoredPosition3D=rightCurPos
    local rightTargetPos= Vector3.New(rightCurPos.x,rightCurPos.y+40,rightCurPos.z)

    if self.anim_group[index] ~= nil then
        LuaTweener.StopTweener(self.anim_group[index])
        self.anim_group[index]=nil
    end

    self.anim_group[index] = LuaTweener.UIMoveTo(_transform,rightCurPos,rightTargetPos,1,EaseFormula.OutQuad,function ()
        _transform.gameObject:SetActive(false)
        self.anim_group[index] = nil
    end)
end
local function UpLvAniPlay(self,card_data)
    --self.canbtn=true
    --赋值 TODO
    self.hpAfterNum:SetText( card_data.upproperty[103])
    self.atkAfterNum:SetText(card_data.upproperty[101])
    self.defAfterNum:SetText(card_data.upproperty[102])


    PlayUpPowerAni(self,self.hpArrow,1)
    PlayUpPowerAni(self,self.atkArrow,2)
    PlayUpPowerAni(self,self.defArrow,3)
end

local function OnLevelUpBtnClick(self, upLevel)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if self.canBtn then
        self.canBtn=false
        self.holder.parent.ctrl:OnLevelUpBtnClick(self.card_id,self.cur_lv,upLevel)
    else
        UISpecial:GetInstance():UITipText("系统繁忙")
    end

end

local function SetRelationInfo(self)
    local activeNum = 0
    local relationData = CardData:GetInstance():GetRelationDataForCardId(self.card_id)
    if relationData == nil or #relationData <= 0 then
        return
    end
    for i, v in ipairs(self.objList) do
        if relationData[i] == nil then
            v.obj.transform.gameObject:SetActive(false)
        else
            v.obj.transform.gameObject:SetActive(true)
            local num = 0
            for _, m in ipairs(relationData[i].RelationIds) do
                if CardData:GetInstance():GetCardDataById(tonumber(m)) ~= nil then
                    num = num + 1
                end
            end
            activeNum = num == #relationData[i].RelationIds and activeNum + 1 or activeNum
            v.active.gameObject:SetActive(num == #relationData[i].RelationIds)
            v.noActive.gameObject:SetActive(num ~= #relationData[i].RelationIds)
            v.nameText:SetText(num == #relationData[i].RelationIds and "<color=#FCB904>"..relationData[i].Name.."</color>" or "<color=#EFEADD>"..relationData[i].Name.."</color>")
        end
    end
    CardData:GetInstance().cardActiveInfo = "已激活  "..activeNum.."/"..#relationData
    self.activeText:SetText(CardData:GetInstance().cardActiveInfo)
end

local function OnRefresh(self,data)
    self.hpArrow.gameObject:SetActive(false)
    self.atkArrow.gameObject:SetActive(false)
    self.defArrow.gameObject:SetActive(false)
    self.shlMaxObj.gameObject:SetActive(false)
    self.data=data
    if self.canBtn then
        --直接刷数据
        self.hpNowNum:SetText(math.floor(data.finalProperty[103]))
        self.atkNowNum:SetText(math.floor(data.finalProperty[101]))
        self.defNowNum:SetText(math.floor(data.finalProperty[102]))
        if self.base_eff~=nil then
            self.base_eff.effect.gameObject:SetActive(false)
            end
        if self.fight_eff~=nil then
            self.fight_eff.effect.gameObject:SetActive(false)
            end
    else
        self.canBtn=true
        --加动画
        if not self.holder.hero_type then
            if  data.maxLevelByHell == data.level then
                if data.level<data.maxLevel then
                    self.holder:SwitchPage(2)
                end
            else
                LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_01")
                self.hpNowNum:SetText(data.finalProperty[103],true,38)
                self.atkNowNum:SetText(data.finalProperty[101],true,38)
                self.defNowNum:SetText(data.finalProperty[102],true,38)
                if self.base_eff~=nil then
                    self.base_eff.effect.gameObject:SetActive(false)
                    self.base_eff.effect.gameObject:SetActive(true)
                else
                    self.base_eff = self:AddComponent(UIEffect, "propertyPanel/base/tip", 1, EffectConfig.UICardUpLightHandler)
                end
                if self.fight_eff~=nil then
                    self.fight_eff.effect.gameObject:SetActive(false)
                    self.fight_eff.effect.gameObject:SetActive(true)
                else
                    self.fight_eff = self:AddComponent(UIEffect, "propertyPanel/battle/tip_1", 1, EffectConfig.UICardUpLightHandler)
                end
            end
        end

        --UpLvAniPlay(self,data)
    end
    if self.holder.hero_type then
        self.levelInfoUIText:SetText( tostring(math.floor(data.level))  )
        self.jlrContent.gameObject:SetActive(true)
        self.shlContent.gameObject:SetActive(false)
    else
        self.levelInfoUIText:SetText( tostring(math.floor(data.level)) .. "/" .. tostring(math.floor(data.maxLevelByHell)))
        self.jlrContent.gameObject:SetActive(false)
        self.shlContent.gameObject:SetActive(true)
    end

    self.critValue:SetText(tostring(math.floor(data.finalProperty[104] * 100)) .. "%")

    self.critRateValue:SetText(tostring(math.floor(data.finalProperty[105] * 100)) .. "%")

    self.effectHitValue:SetText(tostring(math.floor(data.finalProperty[106] * 100)) .. "%")

    self.effectResistValue:SetText(tostring(math.floor(data.finalProperty[107] * 100)) .. "%")

    self.blockValue :SetText(tostring(math.floor(data.finalProperty[114] * 100)).. "%")

    self.pierceValue:SetText(tostring(math.floor(data.finalProperty[115]* 100)).. "%")

    self.cur_lv = data.level
    self.card_id = data.id


    if not self.holder.hero_type then
        if  data.maxLevelByHell == data.level then
            self.lv1Btn.gameObject:SetActive(false)
            self.lv3Btn.gameObject:SetActive(false)
            if data.level==data.maxLevel then
                --达到最大等级
                self.shlMaxObj.gameObject:SetActive(true)
                self.goBtn.gameObject:SetActive(false)
            else
                self.goBtn.gameObject:SetActive(true)

            end
        else
            self.goBtn.gameObject:SetActive(false)
            self.lv1Btn.gameObject:SetActive(true)
            self.lv3Btn.gameObject:SetActive(true)
            self.lv1Btn:OnInitBtn("升 级",Bind(self,OnLevelUpBtnClick,1),CoinDefine.GuardExp,
                    DataUtil.GetCardLevelUpNeedExp(data.level, data.level + 1, data.quality))
            self.lv1Btn:UpdateCurrency()
            local num=self:GetOneKeyLv()
            if num > 0 then
                self.lv3Btn:OnInitBtn("一键升级",Bind(self,OnLevelUpBtnClick,num))
                self.lv3Btn:UpdateButtonState(1)
            else
                self.lv3Btn:OnInitBtn("一键升级")
                self.lv3Btn:UpdateButtonState(2,"")
            end


        end
    end

    SetRelationInfo(self)
end
local function GetOneKeyLv(self)
    local have_num=BackpackData:GetInstance():GetItemNumById(CoinDefine.GuardExp)
    local max_lv=self.data.maxLevelByHell -self.data.level
    if max_lv <= 0 then
        return 0
    else
        for i = max_lv, 1,-1 do
            local cost_num=DataUtil.GetCardLevelUpNeedExp(self.data.level, self.data.level+i, self.data.quality)
            if have_num >= cost_num then
                return i
            end
        end
    end
    return 0
end
UICardLvPage.GetOneKeyLv = GetOneKeyLv
UICardLvPage.OnRefresh = OnRefresh
UICardLvPage.OnCreate = OnCreate
return UICardLvPage