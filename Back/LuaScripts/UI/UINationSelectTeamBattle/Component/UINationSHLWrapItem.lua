local UINationSHLWrapItem = BaseClass("UINationSHLWrapItem", UIWrapComponent)
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
    self.unDeployText = self:AddComponent(UIText, "CardHead/DeployText")
    self.unDeployText:SetText(DataUtil.GetClientText(200125))

    --卡牌信息
    self.CardObj = UIUtil.FindTrans(self.transform, "Card").gameObject

    self.bottomImg = self:AddComponent(UIImage, "Card/diBg", AtlasConfig.DynamicTex)
    self.IconImg = self:AddComponent(UIImage, "Card/Icon", AtlasConfig.DynamicTex)
    self.frameImg = self:AddComponent(UIImage, "Card/topBg", AtlasConfig.DynamicTex)
    self.qualityImg = self:AddComponent(UIImage, "Card/QualityImg", AtlasConfig.DynamicTex)
    self.lvText = self:AddComponent(UIText, "Card/Level")

    self.hunImg = self:AddComponent(UIImage, "Card/Crystal", AtlasConfig.DynamicTex)
    self.hunTextImg = self:AddComponent(UIImage, "Card/Crystal/costSoulImg", AtlasConfig.DynamicTex)

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

        self.IconImg:SetSpriteName(itemData.icon)
        self.bottomImg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.quality))
        self.qualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.quality))
        self.frameImg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(itemData.quality))
        self.lvText:SetText(string.format("Lv:%s", itemData.lvText))
        self.fight_num:SetText(itemData.fight_num)
        self.move_num:SetText(itemData.move_num)
        self.slider_fight:SetValue(itemData.slider_fight_value)
        self.slider_move:SetValue(itemData.slider_move_value)
        UIUtil.SetHeroStar(itemData.starlv, self.starList)
        self.hunImg:SetSpriteName(itemData.hunImg)
        self.hunTextImg:SetSpriteName(itemData.hunTextImg)

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
    self.IconImg:SetColor32(color, color, color, 255)
    self.frameImg:SetColor32(color, color, color, 255)
    self.qualityImg:SetColor32(color, color, color, 255)
    self.lvText:SetColor32(color, color, color, 255)
    self.hunImg:SetColor32(color, color, color, 255)
    self.hunTextImg:SetColor32(color, color, color, 255)
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(255, 255, 255, color)
    end
end

local function SetCardPosLocked(self, isLocked)
    if isLocked then
        self.unDeployText.gameObject:SetActive(false)
    else
        self.unDeployText.gameObject:SetActive(true)
    end
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

UINationSHLWrapItem.OnCreate = OnCreate
UINationSHLWrapItem.OnRefresh = OnRefresh
UINationSHLWrapItem.OnDisable = OnDisable
UINationSHLWrapItem.ShowVirtualCard = ShowVirtualCard
UINationSHLWrapItem.SetCardPosLocked = SetCardPosLocked

return UINationSHLWrapItem
