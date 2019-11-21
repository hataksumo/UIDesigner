local UINationJLRWrapItem = BaseClass("UINationJLRWrapItem", UIWrapComponent)
local base = UIWrapComponent

local Input = CS.UnityEngine.Input
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger

--按下
local function OnItemDown(self, base_event)
    --local curTouch = Input:GetTouch()
    self.initMousePos = Input.mousePosition --Input:GetTouch().position
    self.isDrag = false

    if self.haveScaleZoom then
        self.cardRectTrans.localScale = Vector3.New(0.8, 0.8, 1)
    end
end
--抬起
local function OnUp(self, base_event)
    if self.isDrag == true then
        self:ShowVirtualCard(false)
        --self.view.deployTeamPanel:BattleCheckDrag()
        self.view:BattleCheckDrag()
    end
    self.isDrag = false
    if self.haveScaleZoom then
        self.cardRectTrans.localScale = Vector3.New(0.7, 0.7, 1)
    end
end
--开始拖拽
local function OnBeginDrag(self, base_event)
    if self.isDrag == false then
        if self.parent_scroll_rect ~= nil then
            self.parent_scroll_rect:OnBeginDrag(base_event)
        end
    end
end
--拖拽中
local function OnDrag(self, base_event)
    if self.isDrag == false then
        if self.parent_scroll_rect ~= nil then
            self.parent_scroll_rect:OnDrag(base_event)
        end
        if self.haveScaleZoom and math.abs(Input.mousePosition.y - self.initMousePos.y) > 50 then
            if self.itemData ~= nil then
                --self.view.deployTeamPanel:BattleCheckDrag(self.itemData, self.battlePos)
                self.view:BattleCheckDrag(self.itemData, self.battlePos)
                self.isDrag = true
                self:ShowVirtualCard(true)
                self.cardRectTrans.localScale = Vector3.New(0.7, 0.7, 1)
            end
        elseif self.haveScaleZoom == false and math.abs(Input.mousePosition.x - self.initMousePos.x) > 20 or math.abs(Input.mousePosition.y - self.initMousePos.y) > 20 then
            if self.itemData ~= nil then
                --self.view.deployTeamPanel:BattleCheckDrag(self.itemData, self.battlePos)
                self.view:BattleCheckDrag(self.itemData, self.battlePos)
                self.isDrag = true
                self:ShowVirtualCard(true)
            end
        end
    else
        --self.view.deployTeamPanel:UpdateCardPos()
        self.view:UpdateCardPos()
    end
end
--结束拖拽
local function OnEndDrag(self, base_event)
    if self.isDrag == false then
        if self.parent_scroll_rect ~= nil then
            self.parent_scroll_rect:OnEndDrag(base_event)
        end
    else
        self:ShowVirtualCard(false)
        --self.view.deployTeamPanel:BattleCheckDrag()
        self.view:BattleCheckDrag()
        self.isDrag = false
    end
end

--注册事件
local function RegisterAction(self, eventId, fun)
    local eventEntry = EventTrigger.Entry()
    eventEntry.eventID = eventId
    eventEntry.callback:AddListener(Bind(self, fun))
    self.triggerObj.triggers:Add(eventEntry)
end

local function HandleCountDownTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.timeText:SetText(UIUtil.GetFinialTime(countDown))
        if countDown < 1 then
            --Logger.Log("JLR， time1  11 ")
            if self.UpdateDataTimer then
                TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
                self.UpdateDataTimer = nil
                --Logger.Log("JLR， time1   22")
            end
            self.stateObj:SetActive(false)
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

    self.cardRectTrans = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "Card")
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

    self.jlr_cost_text = self:AddComponent(UIText, "Card/CostText")

    self.starGroup = self:AddComponent(UIBaseContainer, "Card/starGroup")
    self.starList = {}
    local starCount = self.starGroup.transform.childCount
    for i = 0, starCount - 1 do
        local singleStarImg = self.starGroup:AddComponent(UIImage, i, AtlasConfig.DynamicTex)
        table.insert(self.starList, singleStarImg)
    end

    self.stateObj_UIImage = self:AddComponent(UIImage, "Card/State", AtlasConfig.DynamicTex)
    self.stateObj = UIUtil.FindTrans(self.transform, "Card/State").gameObject
    self.stateObj:SetActive(false)
    self.stateText = self:AddComponent(UIText, "Card/State/Text")
    self.timeText = self:AddComponent(UIText, "Card/State/timeText")
    self.timeText:SetText("")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    if self.triggerObj == nil then
        --self.parent_scroll_rect = self.view.deployTeamPanel.JLR_scrollRect
        self.parent_scroll_rect = self.view.JLR_scrollRect
        self:AddDragEventFunc(true)
    end

    self.realIndex = real_index + 1
    local itemData = self.view.model.jlrList[real_index + 1]

    self:OnSetData(itemData)
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end

    if self.dragGlowEffect ~= nil and self.downTipEffect ~= nil then
        self.dragGlowEffect.gameObject:SetActive(false)
        self.downTipEffect.gameObject:SetActive(false)
    end
end

--自己添加的，底层（继承的父类），并不会调用，自己手动调用
local function OnSetData(self, itemData, battlePos)
    self.battlePos = battlePos or 0
    --Logger.Log("JLR， time2  11 ")
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
        --Logger.Log("JLR， time2  22 ")
    end

    self.itemData = itemData
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
        self.lvText:SetText(itemData.level)

        self.jlr_cost_text:SetText(itemData.cardCost)--*

        if self.isHaveArmySlider then
            self.fight_num:SetText(itemData.fight_num)
            self.move_num:SetText(itemData.move_num)
            self.slider_fight:SetValue(itemData.slider_fight_value)
            self.slider_move:SetValue(itemData.slider_move_value)
        end

        UIUtil.SetHeroStar(itemData.starlv, self.starList)
        self.hunImg:SetSpriteName(itemData.hunImg)

        local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
        local countDown = math.floor((itemData.stateEndTime - currentTime) / 1000)
        if countDown > 0 then
            self.stateText:SetText(itemData.maskText)
            self.timeText:SetText(UIUtil.GetFinialTime(countDown))
            HandleCountDownTimer(self, countDown)
            if itemData.state == self.view.model.EnumCardState.Recruit then
                self:ShowVirtualCard(true)
            elseif itemData.state == self.view.model.EnumCardState.Injure then
                self:ShowVirtualCard(false)
            end
            self.stateObj_UIImage:SetSpriteName("ui_t_c2_172")
            self.stateObj:SetActive(true)
        else
            if itemData.teamData.teamText ~= nil then
                self.stateObj_UIImage:SetSpriteName("ui_t_c2_173")
                self.stateText:SetText(itemData.teamData.teamText)
                self.timeText:SetText(itemData.teamData.teamTownText)
                self.stateObj:SetActive(true)
            else
                self.stateObj:SetActive(false)
            end
            self:ShowVirtualCard(false)
        end
    else
        self:ShowVirtualCard(false)
        self.CardObj:SetActive(false)
    end
end

-- 显示虚化卡牌,需要在view层给定灰色的material材质球（self.view.grayMat）
local function ShowVirtualCard(self, isVirtual)
    if isVirtual == false then
        if self.itemData ~= nil and self.itemData.state == self.view.model.EnumCardState.Recruit then
            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            local countDown = math.floor((self.itemData.stateEndTime - currentTime) / 1000)
            if countDown > 0 then
                return
            end
        end
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
        self.starList[i]:SetColor32(color, color, color, color)
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

local function OnCreateArmySlider(self)
    --军力和行动力条
    self.isHaveArmySlider = true
    self.slider_fight = self:AddComponent(UISlider, "Card/fighting_num")
    self.slider_move = self:AddComponent(UISlider, "Card/moving_num")
    self.fight_num = self:AddComponent(UIText, "Card/fighting_num/fighting_numText")
    self.move_num = self:AddComponent(UIText, "Card/moving_num/moving_numText")
end

--设置状态
local function OnSetCardEditState(self, state)
    if state == self.view.EnumSHLState.Lock then
        self.notDeployText.gameObject:SetActive(false)
    elseif state == self.view.EnumSHLState.Edit then
        self.bottomImg:SetRaycastTarget(true)
        self.notDeployText.gameObject:SetActive(true)
    elseif state == self.view.EnumSHLState.Empty then
        self.bottomImg:SetRaycastTarget(false)
        self.notDeployText.gameObject:SetActive(true)
    end
end

--添加，未配置寄灵人卡牌时，底部的文本提示等
local function OnCreateEditText(self)
    self.notDeployText = self:AddComponent(UIText, "diImage/DeployText")
    self.notDeployText:SetText(DataUtil.GetClientText(200125))
end

--添加拖拽功能
local function AddDragEventFunc(self, haveScaleZoom)
    self.initMousePos = 0
    self.isDrag = false

    self.triggerObj = self.CardObj:AddComponent(typeof(EventTrigger))
    self.haveScaleZoom = haveScaleZoom or false

    RegisterAction(self, EventTriggerType.PointerDown, OnItemDown)
    RegisterAction(self, EventTriggerType.PointerUp, OnUp)
    RegisterAction(self, EventTriggerType.Drag, OnDrag)
    RegisterAction(self, EventTriggerType.BeginDrag, OnBeginDrag)
    RegisterAction(self, EventTriggerType.EndDrag, OnEndDrag)
    --RegisterAction(self, EventTriggerType.PointerClick, OnPointClick)
end

--添加卡牌特效
local function OnCreateEffect(self)
    self.dragGlowEffect = UIUtil.FindTrans(self.transform, "FX_ui_Battle2D_CardGroup_JLR_Tip")
    self.downTipEffect = UIUtil.FindTrans(self.transform, "FX_ui_Battle2D_CardGroup_JLR_Glow")
    self.dragGlowEffect.gameObject:SetActive(false)
    self.downTipEffect.gameObject:SetActive(false)
end

-- 显示拖拽提示框特效
local function ShowDragGlowEffect(self, isShow)
    if self.dragGlowEffect ~= nil then
        self.dragGlowEffect.gameObject:SetActive(isShow)
    end
end

-- 显示卡牌放下特效
local function ShowDownTipEffect(self)
    if self.downTipEffect ~= nil then
        self.downTipEffect.gameObject:SetActive(false)
        self.downTipEffect.gameObject:SetActive(true)
    end
end

UINationJLRWrapItem.OnCreate = OnCreate
UINationJLRWrapItem.OnSetData = OnSetData
UINationJLRWrapItem.OnRefresh = OnRefresh
UINationJLRWrapItem.OnDisable = OnDisable
UINationJLRWrapItem.LoadRawImg = LoadRawImg
UINationJLRWrapItem.ShowVirtualCard = ShowVirtualCard
UINationJLRWrapItem.OnCreateArmySlider = OnCreateArmySlider
UINationJLRWrapItem.AddDragEventFunc = AddDragEventFunc
UINationJLRWrapItem.OnCreateEffect = OnCreateEffect
UINationJLRWrapItem.ShowDragGlowEffect = ShowDragGlowEffect
UINationJLRWrapItem.ShowDownTipEffect = ShowDownTipEffect
UINationJLRWrapItem.OnCreateEditText = OnCreateEditText
UINationJLRWrapItem.OnSetCardEditState = OnSetCardEditState

return UINationJLRWrapItem
