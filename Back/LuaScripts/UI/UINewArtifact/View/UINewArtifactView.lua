---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/6/5 11:08
---


local UINewArtifactView = BaseClass("UINewArtifactView", UIBaseView)
local base = UIBaseView
local UINewArtifactItem = require "UI.UINewArtifact.Component.UINewArtifactItem"
local PassNewArtifactItem = require "UI.UINewArtifact.Component.PassNewArtifactItem"
local ArtifactBodyItem = require "UI.UINewArtifact.Component.ArtifactBodyItem"
local ArtifactPropertyItem = require "UI.UINewArtifact.Component.ArtifactPropertyItem"
local ArtifactEffectItem = require "UI.UINewArtifact.Component.ArtifactEffectItem"
local data --升级材料数据


--设置显示单个技能的选择
local function SetItemParent(self,child,parent)
    child.transform:SetParent(parent)
    child.localScale=Vector3.New(1,1,1)
    child.anchoredPosition=Vector2.New(0,0)
    child.gameObject:SetActive(true)
    child:SetAsFirstSibling()
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    --动画
    self.artifactAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactPanel/ArtifactGroupPanel")
    self.nameBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactBaseInfoBG/Image")
    self.nameTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactName_UIText")
    self.effectBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactEffectPanel/ArtifactEffectTitleBG")
    self.effectTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactEffectPanel/ArtifactEffectTitleBG/ArtifactEffectTitle_UIText")
    self.artifactIconAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactPanel/ArtifactGroupPanel/Artifact/ArtifactIcon_UIImage")
    self.artifactBtn = self:AddComponent(UIButton,"ArtifactPanel/ArtifactGroupPanel/Artifact/ArtifactIcon_UIImage")
    self.artifactBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.bodyItemObj.gameObject:SetActive(false)
        self.artifactSelectObj.gameObject:SetActive(true)
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_ARTIFACT_RESET_BODY_DATA)
    end)
    self.artifactSelectObj = UIUtil.FindTrans(self.transform,"ArtifactPanel/ArtifactGroupPanel/Artifact/artifactSelectObj")
    self.titleBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactPanel/ArtifactGroupPanel/ArtifactTitle")
    self.titleTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactPanel/ArtifactGroupPanel/ArtifactTitle/ArtifactTitle_UIText")
    --self.proTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"ArtifactPanel/ArtifactGroupPanel/ArtifactTitle/ArtifactProperty_UIButton/ArtifactProperty_UIText")

    self.scroll_view_content = self:AddComponent(UIWrapGroup3D,"ArtifactPanel/ArtifactListPanel/ScrollRect/Content",UINewArtifactItem)
    self.allProperty_UIButton = self:AddComponent(UIButton,"ArtifactPanel/ArtifactGroupPanel/ArtifactTitle/ArtifactProperty_UIButton")
    self.allProperty_UIButton:SetOnClick(function ()
        self.allPropertyObj.gameObject:SetActive(true)
    end)
    self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
    self.TitleBar=UIUtil.FindTrans(self.transform,"TitleBar")
    UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
        self:ResetBodyPanel()
        self.ctrl:CloseSelf()
    end,function ()
        self:ResetBodyPanel()
        LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
        self.backMainCityAnim:Play("ef_ui_UINewArtifact back")
        TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
            UIUtil.BackHomeMain()
        end,nil,true)
    end ,"神器",true,6,true)

    self.artifactTitle_UIText = self:AddComponent(UIText,"ArtifactPanel/ArtifactGroupPanel/ArtifactTitle/ArtifactTitle_UIText")
    self.artifactIcon_UIImage = self:AddComponent(UIImage,"ArtifactPanel/ArtifactGroupPanel/Artifact/ArtifactIcon_UIImage",AtlasConfig.DynamicTex)
    self.artifactFrame_UIImage = self:AddComponent(UIImage,"ArtifactPanel/ArtifactGroupPanel/Artifact/ArtifactIconBG1")
    self.img_gray = self.artifactIcon_UIImage:GetMat()
    self.lvObj = UIUtil.FindTrans(self.transform,"ArtifactPanel/ArtifactGroupPanel/Artifact/Artifact_Level")
    self.artifact_Level_UIText = self:AddComponent(UIText,"ArtifactPanel/ArtifactGroupPanel/Artifact/Artifact_Level/Artifact_Level_UIText")
    self.lockObj = UIUtil.FindTrans(self.transform,"ArtifactPanel/ArtifactGroupPanel/Artifact/Artifact_Locked")
    self.artifact_group=self:AddComponent(UIBaseContainer,"ArtifactPanel/ArtifactGroupPanel/Artifact_Subassembly")
    self.artifactImg = UIUtil.FindTrans(self.transform,"ArtifactPanel/ArtifactGroupPanel/bodySelect")
    self.artifactImg.gameObject:SetActive(false)
    local artifactCount=self.artifact_group.transform.childCount
    self.artifactPrbList={}
    for i = 0, artifactCount-1 do
        local singleTrans=self.artifact_group.transform:GetChild(i)
        local pass=PassNewArtifactItem.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.artifactPrbList,pass)
    end

    self.selectObj = UIUtil.FindTrans(self.transform,"ArtifactPanel/ArtifactListPanel/ScrollRect/BgSleect")

    self.bodyItemObj = UIUtil.FindTrans(self.transform,"SubassemblyPropertyPanel_UIButton")
    self.bodyItemObj = ArtifactBodyItem.New(self,self.bodyItemObj.gameObject)
    self.bodyItemObj:OnArtifactBodyCreate()
    self.bodyItemObj.gameObject:SetActive(false)
    self.artifactSelectObj.gameObject:SetActive(true)
    self.allPropertyObj = UIUtil.FindTrans(self.transform,"ArtifactPropertyPanel_UIButton")
    self.allPropertyPanel = ArtifactPropertyItem.New(self,self.allPropertyObj.gameObject)
    self.allPropertyPanel:OnPropertyCreate()
    self.allPropertyObj.gameObject:SetActive(false)

    --右侧组件获取
    self.bodyIcon = self:AddComponent(UIImage,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactIconBG/ArtifactIcon",AtlasConfig.DynamicTex)
    self.bodyFrame = self:AddComponent(UIImage,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactIconBG",AtlasConfig.DynamicTex)
    self.bodyName = self:AddComponent(UIText,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactName_UIText")
    self.bodyNowLv = self:AddComponent(UIText,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactLevel_UIText/ArtifactLevel_Num")
    self.bodyMaxLv = self:AddComponent(UIText,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactLevel_UIText/ArtifactLevel_Max")
    self.bodyLvDes = self:AddComponent(UIText,"ArtifactEffectPanel/ArtifactBaseInfo/ArtifactLevelExplain_UIText")
    --self.bodyEffectGrid = self:AddComponent(UIWrapGroup3D,"ArtifactEffectPanel/ArtifactEffectScrollRect/ArtifactEffectGrid",ArtifactEffectItem)
    self.gridObj=self:AddComponent(UIBaseContainer,"ArtifactEffectPanel/ArtifactEffectScrollRect/ArtifactEffectGrid")
    self.objList={}
    local count=self.gridObj.transform.childCount
    for i = 0, count-1 do
        local tempItem=self.gridObj:AddComponent(UIBaseContainer,i)
        local name=tempItem:AddComponent(UIText,"")
        table.insert(self.objList,{obj=tempItem,nameText=name})
    end

    self.propGrid = self:AddComponent(UIBaseContainer,"ArtifactEffectPanel/ArtifactPropEffectScrollRect/ArtifactPropEffectGrid")
    self.propList = {}
    local count=self.propGrid.transform.childCount
    for i = 0, count-1 do
        local item = self.propGrid:AddComponent(UIBaseContainer,i)
        local addNameText = item:AddComponent(UIText,"addName")
        local addValueText = item:AddComponent(UIText,"addValue")
        local nextAddValueText = item:AddComponent(UIText,"nextAddValue")
        local tempStateImg = item:AddComponent(UIImage,"")
        local bg = item:AddComponent(UIImage,"bg")
        table.insert(self.propList,{addName=addNameText, addValue=addValueText, nextAddValue = nextAddValueText, tempState = tempStateImg, bg = bg })
    end
    ---资源条相关
    self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UINewArtifact,ResourceBarType.ARTIFACT,self)
end

local function ResetBodyPanel(self)
    self.bodyItemObj.gameObject:SetActive(false)
    self.isFirstSetData = false
    self.artifactImg.gameObject:SetActive(false)
end

local function LoadEffectObj(self)
    if self.TemptalentTitle_eff~=nil then
        self.TemptalentTitle_eff.effect.gameObject:SetActive(false)
        self.TemptalentTitle_eff.effect.gameObject:SetActive(true)
    else
        self.TemptalentTitle_eff = self:AddComponent(UIEffect, "ArtifactPanel/ArtifactGroupPanel/Artifact/ArtifactIconBG1", 1, EffectConfig.UIArtifactEffectShow)
    end
end

local function PlayArtifactAnim(self)
    self.artifactAnim:Rebind()
    self.artifactAnim:Play("ef_ui_ArtifactGroupPanel_switch")
    self.nameBgAnim:Rebind()
    self.nameBgAnim:Play("ef_ui_generic_switchpage_bar")
    self.nameTextAnim:Rebind()
    self.nameTextAnim:Play("ef_ui_generic_switchpage_text")
    TimerManager:GetInstance():SimpleTimerArgs(0.1,function()
        self.effectBgAnim:Rebind()
        self.effectBgAnim:Play("ef_ui_generic_switchpage_bar")
        self.effectTextAnim:Rebind()
        self.effectTextAnim:Play("ef_ui_generic_switchpage_text")
        self.titleBgAnim:Rebind()
        self.titleBgAnim:Play("ef_ui_generic_switchpage_bar")
        self.titleTextAnim:Rebind()
        self.titleTextAnim:Play("ef_ui_generic_switchpage_text")
        --self.proTextAnim:Rebind()
        --self.proTextAnim:Play("ef_ui_generic_switchpage_text")
    end,nil,true)
end


---设置单个神器部件组的数据
local function SetBodyDataList(self,my_trans,_data,isClick)
    self.bodyList = _data.art_fact_bodyList
    self.artifact_alone_data = _data
    self.artifactId = _data.art_id
    if isClick then
        self.nowLv = nil
        self.bodyItemData = nil
        PlayArtifactAnim(self)
        self:ResetBodyPanel()
    end
    SetItemParent(self,self.selectObj,my_trans)
    for i, v in ipairs(self.artifactPrbList) do
        if self.bodyList[i]~=nil then
            v.gameObject:SetActive(true)
            v:Refresh(self.bodyList[i],#self.bodyList,self.bodyItemData)
        else
            v.gameObject:SetActive(false)
        end
    end
    self.artifactIcon_UIImage:SetSpriteName(_data.art_icon)
    self.lockObj.gameObject:SetActive(false)
    self.lvObj.gameObject:SetActive(true)
    if _data.art_now_level == 0 then
        self.allProperty_UIButton.gameObject:SetActive(false)
        self.artifactIcon_UIImage:SetMat(self.img_gray)
        self.artifactFrame_UIImage:SetMat(self.img_gray)
        self.artifactIconAnim.enabled = false
    else
        self.allProperty_UIButton.gameObject:SetActive(true)
        self.artifactIcon_UIImage:SetMat(nil)
        self.artifactFrame_UIImage:SetMat(nil)
        self.artifactIconAnim.enabled = true
    end
    self.artifact_Level_UIText:SetText("等级:".._data.art_now_level)
    self.artifactTitle_UIText:SetText(_data.art_name)
    self.bodyIcon:SetSpriteName(_data.art_icon)
    self.bodyFrame:SetSpriteName(_data.art_frame)
    self.bodyName:SetText(_data.art_name)
    local propArtifactData = ArtifactsData:GetInstance():GetArtFactDataByLvAndId(_data.art_id,_data.art_now_level)
    for i, v in ipairs(self.propList) do
        if propArtifactData.art_next_level_info[i]~=nil then
            v.tempState.gameObject:SetActive(true)
            v.addName:SetText(propArtifactData.art_next_level_info[i].name)
            v.addValue:SetText(propArtifactData.art_next_level_info[i].nowPro)
            v.nextAddValue:SetText(propArtifactData.art_next_level_info[i].nextPro)
            v.bg.gameObject:SetActive(i %2 ~= 0)
        else
            v.tempState.gameObject:SetActive(false)
        end
    end
    self.bodyNowLv:SetText(_data.art_now_level.."/".._data.art_max_level)
    if _data.art_now_level == 0 then
        --self.bodyNowLv:SetText("未激活")
        self.bodyMaxLv.gameObject:SetActive(false)
    else
        if self.nowLv ~= nil and _data.art_now_level > self.nowLv  then
            LoadEffectObj(self)
            self.ctrl:OpenArtifactShow(_data.art_id,_data.art_now_level)
        end
        self.bodyMaxLv.gameObject:SetActive(_data.art_now_level == _data.art_max_level)
    end
    self.nowLv = _data.art_now_level

    data = ArtifactsData:GetInstance():GetArtifactInfoByIdAndLevel(_data.art_id,_data.art_now_level,false)
    self.level_Info_List=data.artifact_level_info
    for i, v in ipairs(self.objList) do
        if self.level_Info_List[i] == nil then
            v.obj.transform.gameObject:SetActive(false)
        else
            v.obj.transform.gameObject:SetActive(true)
            v.nameText:SetText(self.level_Info_List[i].name)
        end
    end
    self.allPropertyPanel:OnPropertyRefresh(data.artifact_now_infoList)
    self.artifactImg.gameObject:SetActive(false)
end

---设置单个神器部件的数据
local function SetBodySingleItemData(self,_data,_isUpdate,_trans)
    if not self.isFirstSetData then
        self.bodyItemObj.gameObject:SetActive(true)
        self.artifactSelectObj.gameObject:SetActive(false)
    end
    data = ArtifactsData:GetInstance():GetArtifactInfoByIdAndLevel(_data.artifact_id,_data.artifact_level_now,true)
    self.bodyItemObj:OnArtifactBodyRefresh(_data,data,_isUpdate,self.isFirstSetData,_trans)
    self.isFirstSetData = true
    SetItemParent(self,self.artifactImg,_trans)
end

---获取神器列表
local function GetArtifactList(self)
    self.artifact_data = self.model.artifactList
    if self.artifact_data ~= nil and #self.artifact_data > 0 then
        self.scroll_view_content:SetLength(table.count(self.artifact_data))
        self.scroll_view_content:SetGridPositionByIndex(0)
        if self.artifactId == nil then
            local trans = self.scroll_view_content:GetComponentByIndex(0)
            if trans == nil then
                return
            end
            self:SetBodyDataList(trans.transform,self.artifact_data[1])
        else
            for i, v in ipairs(self.artifact_data) do
                if self.artifactId == v.art_id then
                    local trans = self.scroll_view_content:GetComponentByIndex(i-1)
                    if trans == nil then
                        return
                    end
                    self:SetBodyDataList(trans.transform,self.artifact_data[i])
                end
            end
        end
    else
        self.scroll_view_content:SetLength(0)
    end

end

local function OnEnable(self)
    base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
    self.isFirstSetData = false
    GetArtifactList(self)
    if self.TemptalentTitle_eff~=nil then
        self.TemptalentTitle_eff.effect.gameObject:SetActive(false)
    end
end

local function OnRefresh(self)
    -- 各组件刷新
    --self.building_title_text:SetText(self.model.cellName)

end

local function OnSendLvUp(self,_data,_award,_num,_trans)
    self.bodyItemData = _data
    self.ctrl:SendRequestLevelUp(2,self.artifact_alone_data,_data,_award,_num,_trans)
end

local function OnDataUpdate(self,_trans)
    GetArtifactList(self)
    SetBodySingleItemData(self,self.bodyItemData,true,_trans)

end

local function SetSelectImgHide(self)
    self.artifactImg.gameObject:SetActive(false)
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_ARTIFACT_BODY_LV_UP_DATA, OnSendLvUp)
    self:AddUIListener(UIMessageNames.UI_ARTIFACT_LV_UP_UPDATE,OnDataUpdate)
    self:AddUIListener(UIMessageNames.UI_ARTIFACT_RESET_BODY_DATA, ResetBodyPanel)
    self:AddUIListener(UIMessageNames.UI_ARTIFACT_IMG_HIDE,SetSelectImgHide)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_ARTIFACT_BODY_LV_UP_DATA, OnSendLvUp)
    self:RemoveUIListener(UIMessageNames.UI_ARTIFACT_LV_UP_UPDATE,OnDataUpdate)
    self:RemoveUIListener(UIMessageNames.UI_ARTIFACT_RESET_BODY_DATA, ResetBodyPanel)
    self:RemoveUIListener(UIMessageNames.UI_ARTIFACT_IMG_HIDE,SetSelectImgHide)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.closeComponent~=nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINewArtifact);

end

UINewArtifactView.OnCreate = OnCreate
UINewArtifactView.OnEnable = OnEnable
UINewArtifactView.OnRefresh = OnRefresh
UINewArtifactView.OnAddListener = OnAddListener
UINewArtifactView.OnRemoveListener = OnRemoveListener
UINewArtifactView.OnDestroy = OnDestroy
UINewArtifactView.SetBodyDataList = SetBodyDataList
UINewArtifactView.SetBodySingleItemData = SetBodySingleItemData
UINewArtifactView.ResetBodyPanel = ResetBodyPanel

return UINewArtifactView
