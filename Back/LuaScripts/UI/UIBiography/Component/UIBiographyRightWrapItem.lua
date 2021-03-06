---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/8/8 11:56
---

local UIBiographyRightWrapItem = BaseClass("UIBiographyRightWrapItem", UIWrapComponent)
local base = UIWrapComponent

local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"
local StaticItemData = DataUtil.GetData("item")
local StaticCardData = DataUtil.GetData("card")

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnEnterBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    local playerLv = math.floor(UserData:GetInstance().pLevel)
    if playerLv < self.data.LvLimit then
        UISpecial:GetInstance():UITipText("玩家等级不足")
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014)
        return
    end
    -- 重置购买次数
    if self.data.HaveTimes <= 0 then
        if BiographyData:GetInstance().isShowCostTip then
            self.view.costTipView:SetData(BiographyData:GetInstance()._data[self.view.selectCardID][self.index])
        else
            self.view.costTipView:OnResetLevelTimes(BiographyData:GetInstance()._data[self.view.selectCardID][self.index])
        end
        return
    end
    if self.index < self.data.PassLevel then
        BiographyData:GetInstance():OnBiographyLevelPass(self.data.Id)
    else
        BiographyData:GetInstance():OnBiographyLevelEnter(self.view.selectLeftIndex, self.index)
    end
end

-- 查看全部奖励按钮
local function OnLookBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    self.view.awardListView:SetData(self.index)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    self.nameText = self:AddComponent(UIText, "Name_UIText")
    self.limitObj = UIUtil.FindTrans(self.transform, "limitCardBg")
    self.limitText = self:AddComponent(UIText, "limitCardBg/TipInfo_UIText")
    self.lockObj = UIUtil.FindTrans(self.transform, "LockImage")
    self.unLockText = self:AddComponent(UIText, "LockImage/NuLock_UIText")
    self.statusText = self:AddComponent(UIText, "StatusInfo_UIText")
    self.dropText = self:AddComponent(UIText, "DropInfo_UIText")
    self.numText = self:AddComponent(UIText, "NumInfo_UIText")
    self.cardIcon = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.RawImage),"Icon")
    self.huanCanvas = UIUtil.FindTrans(self.transform, "huanBg")--self:AddComponent(UICanvas, "huanBg")
    self.huan1Canvas = UIUtil.FindTrans(self.transform, "huanBg (1)")
    self.enterBtn = self:AddComponent(UIButton,"btnButton")
    self.enterImage = self:AddComponent(UIImage, "btnButton")
    self.enterText = self:AddComponent(UIText, "btnButton/Text")
    self.enterBtn:SetOnClick(self,OnEnterBtnClick)
    self.lookBtn = self:AddComponent(UIButton, "lookButton")
    self.lookBtn:SetOnClick(self,OnLookBtnClick)
    self.awardGroup = {};
    for i = 1, 2 do
        self.awardGroup[i] = BattleAwardData.New(self, "awardImg"..i);
        self.awardGroup[i]:OnCreate(self);
        self.awardGroup[i].trans = UIUtil.FindTrans(self.transform, "awardImg"..i);
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1
    self.cardID = self.view.selectCardID
    self.data = BiographyData:GetInstance()._data[self.view.selectCardID][self.index]
    if self.data == nil then
        Logger.LogError("传记副本数据错误")
        return
    end
    self.huanCanvas.gameObject:SetActive(self.index ~= 1)
    self.huan1Canvas.gameObject:SetActive(self.index ~= #BiographyData:GetInstance()._data[self.view.selectCardID])
    local imagePath= "Art/UI_3D/Textures/"..self.data.LevelPic..".png"
    ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
        self.cardIcon.texture = texture
    end)
    self.nameText:SetText(self.data.Name)
    self.statusText:SetText(string.format(DataUtil.GetClientText(100143),self.data.Capability))
    self.numText:SetText(string.format(DataUtil.GetClientText(100144),math.floor(self.data.HaveTimes),self.data.AwardTimes))
    self.enterImage:SetMat(nil)
    -- 关卡状态
    if self.index < self.data.PassLevel then
        self.enterText:SetText(DataUtil.GetClientText(100146))
    else
        self.enterText:SetText(DataUtil.GetClientText(100147))
    end
    if self.data.HaveTimes <= 0 then
        self.enterText:SetText(DataUtil.GetClientText(100145))
        self.enterImage:SetMat(self.view.grayMat)
    end
    -- 关卡是否解锁
    local unLockStr = ""
    if CardData:GetInstance().cards[self.view.selectCardID].level < self.data.LvLimit then
        unLockStr = unLockStr..CardData:GetInstance().cards[self.view.selectCardID].name..string.format(DataUtil.GetClientText(100148),self.data.LvLimit)
    end
    if self.index > 1 and self.index > self.data.PassLevel then
        if unLockStr ~= "" then
            unLockStr = unLockStr.."\n\r"
        end
        unLockStr = unLockStr..string.format(DataUtil.GetClientText(100149),BiographyData:GetInstance()._data[self.cardID][self.index - 1].Name)
    end
    self.unLockText:SetText(unLockStr)
    self.lockObj.gameObject:SetActive(unLockStr ~= "")
    -- 显示限制卡牌名
    local isShow = false
    local nameStr = ""
    for k, v in pairs(self.data.CardLimit) do
        if k == 3 then
            nameStr = nameStr.."\n\r"
        elseif k ~= 1 then
            nameStr = nameStr.."  "
        end
        if BiographyData:GetInstance():IsHasCard(v) then
            nameStr = nameStr.."<color=#3f793f>"..v.."</color>"
        else
            isShow = true
            nameStr = nameStr.."<color=#df4c4c>"..v.."</color>"
        end
    end
    self.limitText:SetText(nameStr)
    self.limitObj.gameObject:SetActive(isShow)
    self.enterBtn.gameObject:SetActive(not isShow)
    self.numText.gameObject:SetActive(not isShow)
    -- 掉落奖励
    for i = 1, 2 do
        if self.data.KeyDropShow ~= nil and i <= #self.data.KeyDropShow then
            self.awardGroup[i].gameObject:SetActive(true);
            self.awardGroup[i]:Refresh({
                id = self.data.KeyDropShow[i].Id,
                num = self.data.KeyDropShow[i].Desc,
                icon = StaticItemData[self.data.KeyDropShow[i].Id].Icon,
                quality = StaticItemData[self.data.KeyDropShow[i].Id].Quality
            });
        else
            self.awardGroup[i].gameObject:SetActive(false);
        end
    end
end

UIBiographyRightWrapItem.OnCreate = OnCreate
UIBiographyRightWrapItem.OnRefresh = OnRefresh

return UIBiographyRightWrapItem