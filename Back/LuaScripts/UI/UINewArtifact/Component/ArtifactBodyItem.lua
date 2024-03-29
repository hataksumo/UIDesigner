---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/6/10 11:11
---
local ArtifactBodyItem = BaseClass("ArtifactBodyItem", UIBaseContainer)
local base = UIBaseContainer


local function OnArtifactBodyCreate(self)
    base.OnCreate(self)
    self.selfObj = UIUtil.FindTrans(self.transform,"")
    self.icon = self:AddComponent(UIImage,"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyIconBG/SubassemblyIcon",AtlasConfig.DynamicTex)
    self.frame = self:AddComponent(UIImage,"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyIconBG",AtlasConfig.DynamicTex)
    self.name = self:AddComponent(UIText,"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyName_UIText")
    self.nowLv = self:AddComponent(UIText,"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyLevel_UIText/SubassemblyLevel_Num")
    self.maxLv = self:AddComponent(UIText,"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyLevel_UIText/SubassemblyLevel_Max")
    self.lvImg = self:AddComponent(UIImage,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton")
    self.gray = self.lvImg:GetMat()
    self.lvUpBtn = self:AddComponent(UIButton,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton")
    self.lvUpBtn:SetOnClick(function ()
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_ARTIFACT_BODY_LV_UP_DATA,self.singleData,self.takeData.artifact_level_itemList,self.takeData.artifact_take_num,self.trans)
    end)
    self.maxObj = UIUtil.FindTrans(self.transform,"SubassemblyPropertyBG/Subassembly_MaxLevel_UIText")
--[[    self.selfCloseBtn = self:AddComponent(UIButton,"SubassemblyPropertyBG/selfCloseBtn")
    self.selfCloseBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.selfObj.gameObject:SetActive(false)
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_ARTIFACT_RESET_BODY_DATA)
    end)]]
    self.tipText = self:AddComponent(UIText,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton/tip")
    self.costNumText = self:AddComponent(UIText,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton/costparent/costNum")
    self.costIconImg = self:AddComponent(UIImage,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton/costparent/costIcon",AtlasConfig.DynamicTex)
    self.costObj = UIUtil.FindTrans(self.transform,"SubassemblyPropertyBG/SubassemblyCost/SubassemblyLevelUp_UIButton/costparent")
    self.lvUpEffectGrid = self:AddComponent(UIBaseContainer,"SubassemblyPropertyBG/SubassemblyEffectScrollRect/SubassemblyEffectGrid")
    self.lvUpEffectList = {}
    local count=self.lvUpEffectGrid.transform.childCount
    for i = 0, count-1 do
        local item = self.lvUpEffectGrid:AddComponent(UIBaseContainer,i)
        local addNameText = item:AddComponent(UIText,"addName")
        local addValueText = item:AddComponent(UIText,"addValue")
        local nextAddValueText = item:AddComponent(UIText,"nextAddValue")
        local tempStateImg = item:AddComponent(UIImage,"")
        local bg = item:AddComponent(UIImage,"bg")
        table.insert(self.lvUpEffectList,{addName=addNameText, addValue=addValueText, nextAddValue = nextAddValueText, tempState = tempStateImg, bg = bg })
    end

    self.itemGrid = self:AddComponent(UIBaseContainer,"SubassemblyPropertyBG/SubassemblyCost/ItemGroup")
    self.itemList = {}
    local count = self.itemGrid.transform.childCount
    for i = 0, count-1 do
        local item = self.itemGrid:AddComponent(UIBaseContainer,i)
        local frameImg = item:AddComponent(UIImage,"",AtlasConfig.DynamicTex)
        local iconImg = item:AddComponent(UIImage,"Icon",AtlasConfig.DynamicTex)
        local btn = item:AddComponent(UIButton,"")
        local chipNumText = item:AddComponent(UIText,"chipNum")
        table.insert(self.itemList,{frame = frameImg, icon = iconImg, btn = btn, chipNum = chipNumText})
    end
    self.nameBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyBaseInfoBG/ImageBlue")
    self.nameTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyName_UIText")
    self.lvUpBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyEffectTitleBG")
    self.lvUpTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyEffectTitleBG/SubassemblyEffectTitle_UIText")
    self.needBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyCost/SubassemblyCostTitleBG")
    self.needTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"SubassemblyPropertyBG/SubassemblyCost/SubassemblyCostTitleBG/SubassemblyCostTitle_UIText")
end

local function LoadEffectObj(self)
    LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_01")
    if self.TemptalentTitle_eff~=nil then
        self.TemptalentTitle_eff.effect.gameObject:SetActive(false)
        self.TemptalentTitle_eff.effect.gameObject:SetActive(true)
    else
        self.TemptalentTitle_eff = self:AddComponent(UIEffect, "SubassemblyPropertyBG/SubassemblyEffectTitleBG/SubassemblyEffectTitle_UIText", 1, EffectConfig.UIArtifactLvUpShow)
    end
    if self.TemptalentSkill_eff~=nil then
        self.TemptalentSkill_eff.effect.gameObject:SetActive(false)
        self.TemptalentSkill_eff.effect.gameObject:SetActive(true)
    else
        self.TemptalentSkill_eff = self:AddComponent(UIEffect, "SubassemblyPropertyBG/SubassemblyCost/SubassemblyCostTitleBG/SubassemblyCostTitle_UIText", 1, EffectConfig.UIArtifactLvUpShow)
    end
    if self.TemptalentSkillUp_eff~=nil then
        self.TemptalentSkillUp_eff.effect.gameObject:SetActive(false)
        self.TemptalentSkillUp_eff.effect.gameObject:SetActive(true)
    else
        self.TemptalentSkillUp_eff = self:AddComponent(UIEffect, "SubassemblyPropertyBG/SubassemblyBaseInfo/SubassemblyIconBG/SubassemblyIcon", 1, EffectConfig.UIArtifactSkillLvUpShow)
    end
end

---切換播放特效
local function PlayExchangeData(self)
    self.nameBgAnim:Rebind()
    self.nameBgAnim:Play("ef_ui_generic_switchpage_bar")
    self.nameTextAnim:Rebind()
    self.nameTextAnim:Play("ef_ui_generic_switchpage_text")
    self.lvUpBgAnim:Rebind()
    self.lvUpBgAnim:Play("ef_ui_generic_switchpage_bar")
    self.lvUpTextAnim:Rebind()
    self.lvUpTextAnim:Play("ef_ui_generic_switchpage_text")
    self.needBgAnim:Rebind()
    self.needBgAnim:Play("ef_ui_generic_switchpage_bar")
    self.needTextAnim:Rebind()
    self.needTextAnim:Play("ef_ui_generic_switchpage_text")
end

--刷新
local function OnArtifactBodyRefresh(self,_data,_dataList,_isUpdate,isFirst,_trans)
    if _data == nil then
        return
    end
    self.trans = _trans
    self.tipText.gameObject:SetActive(false)
    self.singleData = _data
    self.takeData = _dataList
    self.icon:SetSpriteName(_data.artifact_icon)
    self.frame:SetSpriteName(_data.artifact_frame)
    self.name:SetText(_data.artifact_name)
    self.nowLv:SetText(_data.artifact_level_now.."/".._data.artifact_level_max)
    if _data.artifact_level_now == 0 then
        --self.nowLv:SetText("未激活")
        self.maxObj.gameObject:SetActive(false)
        self.maxLv.gameObject:SetActive(false)
        self.lvImg.gameObject:SetActive(true)
    else
        if _data.artifact_level_now ==_data.artifact_level_max then
            self.maxObj.gameObject:SetActive(true)
            self.lvImg.gameObject:SetActive(false)
        else
            self.maxObj.gameObject:SetActive(false)
            self.lvImg.gameObject:SetActive(true)
        end
        self.maxLv.gameObject:SetActive(_data.artifact_level_now == _data.artifact_level_max)
    end

    for i, v in ipairs(self.lvUpEffectList) do
        if _dataList.artifact_next_infoList[i]~=nil then
            v.tempState.gameObject:SetActive(true)
            v.addName:SetText(_dataList.artifact_next_infoList[i].name)
            v.addValue:SetText(_dataList.artifact_next_infoList[i].nowPro)
            v.nextAddValue:SetText(_dataList.artifact_next_infoList[i].nextPro)
            v.bg.gameObject:SetActive(i %2 ~= 0)
        else
            v.tempState.gameObject:SetActive(false)
        end
    end
    if _dataList.artifact_level_up_num == "" then
        self.costObj.gameObject:SetActive(false)
    else
        self.costObj.gameObject:SetActive(true)
    end
    self.costIconImg:SetSpriteName(_dataList.artifact_take_icon)
    self.costNumText:SetText(_dataList.artifact_level_up_num)
    if BackpackData:GetInstance():GetItemNumById(_dataList.artifact_take_id) < _dataList.artifact_take_num then
        self.lvImg:SetMat(self.gray)
    else
        self.lvImg:SetMat(nil)
    end

    for i, v in ipairs(self.itemList) do
        if _dataList.artifact_level_itemList[i]~=nil then
            v.frame.gameObject:SetActive(true)
            v.frame:SetSpriteName(_dataList.artifact_level_itemList[i].quality)
            v.icon:SetSpriteName(_dataList.artifact_level_itemList[i].icon)
            v.chipNum:SetText(_dataList.artifact_level_itemList[i].numDes)
            v.btn:SetOnClick(function ()
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,_dataList.artifact_level_itemList[i].id)
            end)
        else
            v.frame.gameObject:SetActive(false)
        end
    end
    if _isUpdate then
        LoadEffectObj(self)
    else
        if self.TemptalentTitle_eff~=nil then
            self.TemptalentTitle_eff.effect.gameObject:SetActive(false)
        end
        if self.TemptalentSkill_eff~=nil then
            self.TemptalentSkill_eff.effect.gameObject:SetActive(false)
        end
        if self.TemptalentSkillUp_eff~=nil then
            self.TemptalentSkillUp_eff.effect.gameObject:SetActive(false)
        end
    end
    if not _isUpdate and isFirst then
        PlayExchangeData(self)
    end
end
ArtifactBodyItem.OnArtifactBodyCreate = OnArtifactBodyCreate
ArtifactBodyItem.OnArtifactBodyRefresh = OnArtifactBodyRefresh
return ArtifactBodyItem