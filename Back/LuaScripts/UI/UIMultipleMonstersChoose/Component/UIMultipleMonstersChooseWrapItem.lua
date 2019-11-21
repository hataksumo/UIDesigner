---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/10/17 13:57
---
local UIMultipleMonstersChooseWrapItem = BaseClass("UIMultipleMonstersChooseWrapItem", UIWrapComponent)
local base = UIWrapComponent
local itemData =  DataUtil.GetData("item")

local function OnCreate(self)
    base.OnCreate(self)
    self.bgImg=self:AddComponent(UIImage,"")
    self.lookButton =self:AddComponent(UIButton,"lookButton")
    self.lookButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        -- 打开掉落详情
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAlianceDetail,self.singleData)
    end)
    self.dropInfoText=self:AddComponent(UIText,"DropInfo_UIText")
    self.powerText = self:AddComponent(UIText,"StatusInfo_UIText")
    self.cardIconImg = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),"Icon")
    self.lockObj=UIUtil.FindTrans(self.transform,"LockImage")
    self.nameText=self:AddComponent(UIText,"Name_UIText")
    self.challengeBtn=self:AddComponent(UIButton,"btnButton")
    self.challengeBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view.ctrl:SendMultipleMonstersOpenWind(self.singleData.id)
    end)
    self.kouObj = UIUtil.FindTrans(self.transform, "huanBg")
    self.kou1Obj = UIUtil.FindTrans(self.transform, "huanBg (1)")
    self.frame1Img = self:AddComponent(UIImage,"awardImg1/Image1",AtlasConfig.DynamicTex)
    self.icon1Img = self:AddComponent(UIImage,"awardImg1/Image1/icon1",AtlasConfig.DynamicTex)
    self.num1Text = self:AddComponent(UIText,"awardImg1/Image1/num1")
    self.frame2Img = self:AddComponent(UIImage,"awardImg2/Image2",AtlasConfig.DynamicTex)
    self.icon2Img = self:AddComponent(UIImage,"awardImg2/Image2/icon2",AtlasConfig.DynamicTex)
    self.num2Text = self:AddComponent(UIText,"awardImg2/Image2/num2")
    self.lockText = self:AddComponent(UIText,"LockImage/NuLock_UIText")
    self.info_iconPress=self:AddComponent(UIEventTrigger,"awardImg1/Image1")
    self.info_iconPress:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.singleData.award1Id)
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
    self.info_iconPress2=self:AddComponent(UIEventTrigger,"awardImg2/Image2")
    self.info_iconPress2:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.singleData.award2Id)
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local singleData=self.view.bossData[real_index+1]
    self.singleData = singleData
    self.nameText:SetText(singleData.name)
    local imagePath= "Art/UI_3D/Textures/"..singleData.img..".png"
    ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
        self.cardIconImg.texture = texture
    end)
    self.powerText:SetText(string.format(DataUtil.GetClientText(100143),singleData.power))
    self.kouObj.gameObject:SetActive(real_index ~= 0)
    self.kou1Obj.gameObject:SetActive(real_index ~= #self.view.bossData - 1)
    if itemData[singleData.award1Id] ~= nil then
        self.frame1Img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData[singleData.award1Id].Quality))
        self.icon1Img:SetSpriteName(itemData[singleData.award1Id].Icon)
        self.num1Text:SetText(singleData.award1Num)
    end
    if itemData[singleData.award2Id] ~= nil then
        self.frame2Img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData[singleData.award2Id].Quality))
        self.icon2Img:SetSpriteName(itemData[singleData.award2Id].Icon)
        self.num2Text:SetText(singleData.award2Num)
    end
    self.lockObj.gameObject:SetActive(singleData.state == 2)
    self.lockText:SetText(singleData.openLv.."级并通过上一关解锁")
end

UIMultipleMonstersChooseWrapItem.OnCreate = OnCreate
UIMultipleMonstersChooseWrapItem.OnRefresh = OnRefresh
return UIMultipleMonstersChooseWrapItem