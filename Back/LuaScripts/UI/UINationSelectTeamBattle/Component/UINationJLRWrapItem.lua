local UINationJLRWrapItem = BaseClass("UINationJLRWrapItem", UIWrapComponent)
local base = UIWrapComponent

local function HandleCountDownTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.timeText:SetText(UIUtil.GetFinialTime(countDown))
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
            self:ShowVirtualCard(false)
            return
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    --未配置的显示信息
    self.unDeployText = self:AddComponent(UIText, "diImage/DeployText")
    self.unDeployText:SetText(DataUtil.GetClientText(200125))

    --卡牌信息
    self.CardObj = UIUtil.FindTrans(self.transform, "Card").gameObject

    self.nameText = self:AddComponent(UIText, "Card/name")

    self.IconImg = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.RawImage), "Card/Icon")
    self.frameImg = self:AddComponent(UIImage, "Card/topBg", AtlasConfig.DynamicTex)
    self.bottomImg = self:AddComponent(UIImage, "Card/diBg", AtlasConfig.DynamicTex)

    self.lvText = self:AddComponent(UIText, "Card/levelbg/level")
    self.lvImage = self:AddComponent(UIImage, "Card/levelbg", AtlasConfig.DynamicTex)
    self.hunImg = self:AddComponent(UIImage, "Card/Crystal", AtlasConfig.DynamicTex)
    self.crystalBGImg = self:AddComponent(UIImage, "Card/Cry_bg", AtlasConfig.DynamicTex)
    self.crystalBGImg.gameObject:SetActive(false)
    self.crystalAddImg = self:AddComponent(UIImage, "Card/Crystal/Image", AtlasConfig.DynamicTex)

    self.starGroup = self:AddComponent(UIBaseContainer, "Card/starGroup")
    self.starList = {}
    local starCount = self.starGroup.transform.childCount
    for i = 0, starCount - 1 do
        local singleStarImg = self.starGroup:AddComponent(UIImage, i, AtlasConfig.DynamicTex)
        table.insert(self.starList, singleStarImg)
    end

    self.slider_fight = self:AddComponent(UISlider, "Card/fighting_num")
    self.slider_move = self:AddComponent(UISlider, "Card/moving_num")
    self.fight_num = self:AddComponent(UIText, "Card/fighting_num/fighting_numText")
    self.move_num = self:AddComponent(UIText, "Card/moving_num/moving_numText")

    self.stateObj = UIUtil.FindTrans(self.transform, "Card/State").gameObject
    self.stateObj:SetActive(false)
    self.stateText = self:AddComponent(UIText, "Card/State/Text")
    self.timeText = self:AddComponent(UIText, "Card/State/timeText")
    self.timeText:SetText("")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, itemData)
    if itemData ~= nil and itemData.id ~= 0 then
        self.CardObj:SetActive(true)
        self:LoadRawImg(itemData.kpkm)

        --守护灵不显示
        self.nameText:SetText("<color=#" .. itemData.hellNameColor .. ">" .. itemData.name .. "</color>")
        if itemData.hellSmallLevel > 0 then
            self.nameText:SetText("<color=#" .. itemData.hellNameColor .. ">" .. itemData.name .. "+" .. math.floor(itemData.hellSmallLevel) .. "</color>")
        end

        self.crystalBGImg.gameObject:SetActive(itemData.quality >= 4)
        self.bottomImg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.quality))
        self.frameImg:SetSpriteName(SpriteDefine:GetCardPoorByIDQuality(itemData.quality))
        self.lvImage:SetSpriteName(SpriteDefine:GetLevelBgQualityByType(itemData.quality))
        self.lvText:SetText(itemData.lvText)
        self.fight_num:SetText(itemData.fight_num)
        self.move_num:SetText(itemData.move_num)
        self.slider_fight:SetValue(itemData.slider_fight_value)
        self.slider_move:SetValue(itemData.slider_move_value)
        UIUtil.SetHeroStar(itemData.starlv, self.starList)
        self.hunImg:SetSpriteName(itemData.hunImg)

        if itemData.countDownTime > 0 then
            self:ShowVirtualCard(true)
            self.stateText:SetText(itemData.maskText)
            self.timeText:SetText(UIUtil.GetFinialTime(itemData.countDownTime))
            HandleCountDownTimer(self, itemData.countDownTime)
        else
            self:ShowVirtualCard(false)
        end
    else
        --self:ShowVirtualCard(false)
        self.CardObj:SetActive(false)
    end
end

-- 显示虚化卡牌
local function ShowVirtualCard(self, isVirtual)
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end

    if isVirtual then
        self.stateObj:SetActive(true)
    else
        self.stateObj:SetActive(false)
    end

    local color = isVirtual and 130 or 255
    self.bottomImg:SetColor32(color, color, color, 255)
    self.IconImg.material = isVirtual and self.view.grayMat or nil
    self.frameImg:SetColor32(color, color, color, 255)
    self.lvText:SetColor32(color, color, color, 255)
    self.nameText:SetColor32(color, color, color, 255)
    self.lvImage:SetColor32(color, color, color, 255)
    self.hunImg:SetColor32(color, color, color, 255)
    self.crystalAddImg:SetColor32(color, color, color, 255)
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(255, 255, 255, color)
    end
end

local function LoadRawImg(self, path)
    if path == nil then
        return
    end
    local imagePath = "Art/UI_3D/Textures/" .. path .. ".png"
    ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
        self.IconImg.texture = texture
    end)
end

local function SetCardPosLocked(self, isLocked)
    if isLocked then
        self.unDeployText.gameObject:SetActive(false)
    else
        self.unDeployText.gameObject:SetActive(true)
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

UINationJLRWrapItem.OnCreate = OnCreate
UINationJLRWrapItem.OnRefresh = OnRefresh
UINationJLRWrapItem.OnDisable = OnDisable
UINationJLRWrapItem.LoadRawImg = LoadRawImg
UINationJLRWrapItem.ShowVirtualCard = ShowVirtualCard
UINationJLRWrapItem.SetCardPosLocked = SetCardPosLocked

return UINationJLRWrapItem
