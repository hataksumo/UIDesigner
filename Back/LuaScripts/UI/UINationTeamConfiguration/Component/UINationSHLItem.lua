local UINationSHLWrapItem = BaseClass("UINationSHLWrapItem", UIWrapComponent)
local base = UIWrapComponent

local Input = CS.UnityEngine.Input
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger

--按下
local function OnItemDown(self, base_event)
    self.initMousePos = Input.mousePosition
    self.isDrag = false
end
--抬起
local function OnUp(self, base_event)
    if self.isDrag == true then
        self:ShowVirtualCard(false)
        --self.view.deployTeamPanel:BattleCheckDrag()
        self.view:BattleCheckDrag()
    end

    if self.AddButton ~= nil and self.isDrag == false then
        if self.itemData.state == self.view.model.EnumCardState.Recruit then
            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            local countDown = math.floor((self.itemData.stateEndTime - currentTime) / 1000)
            if countDown <= 0 then
                --self.view.deployTeamPanel:OnClickOpenChooseSHLPanel(self.battlePos)
                self.view:OnClickOpenChooseSHLPanel(self.battlePos)
            end
        else
            --self.view.deployTeamPanel:OnClickOpenChooseSHLPanel(self.battlePos)
            self.view:OnClickOpenChooseSHLPanel(self.battlePos)
        end
    end

    self.isDrag = false
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
        if math.abs(Input.mousePosition.x - self.initMousePos.x) > 20 or math.abs(Input.mousePosition.y - self.initMousePos.y) > 20 then
            if self.itemData ~= nil then
                self.isDrag = true
                --self.view.deployTeamPanel:BattleCheckDrag(self.itemData, self.battlePos)
                self.view:BattleCheckDrag(self.itemData, self.battlePos)
                self:ShowVirtualCard(true)
                --self.cardRectTrans.localScale = Vector3.New(0.7, 0.7, 1)
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
            --Logger.Log("SHL， time1  11 ")
            if self.UpdateDataTimer ~= nil then
                TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
                --Logger.Log("SHL， time1  22 ")
                self.UpdateDataTimer = nil
            end
            self:ShowVirtualCard(false)

            if self.itemData.teamData.teamText ~= nil then
                self.stateObj_UIImage:SetSpriteName("ui_t_c2_173")
                self.stateText:SetText(self.itemData.teamData.teamText)
                self.timeText:SetText(self.itemData.teamData.teamTownText)
                self.stateObj:SetActive(true)
            else
                self.stateObj:SetActive(false)
            end

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

    self.bottomImg = self:AddComponent(UIImage, "Card/diBg", AtlasConfig.DynamicTex)
    self.IconImg = self:AddComponent(UIImage, "Card/Icon", AtlasConfig.DynamicTex)
    self.frameImg = self:AddComponent(UIImage, "Card/topBg", AtlasConfig.DynamicTex)
    self.qualityImg = self:AddComponent(UIImage, "Card/QualityImg", AtlasConfig.DynamicTex)
    self.lvText = self:AddComponent(UIText, "Card/Level")

    self.hunImg = self:AddComponent(UIImage, "Card/Crystal", AtlasConfig.DynamicTex)
    self.hunTextImg = self:AddComponent(UIImage, "Card/Crystal/costSoulImg", AtlasConfig.DynamicTex)

    self.shl_cost_text = self:AddComponent(UIText, "Card/CostText")

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
    if self.cardButton == nil then
        self:OnCreateCardButton()
    end

    self.realIndex = real_index + 1
    local itemData = self.view.model.shlList[real_index + 1]

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
    --Logger.Log("SHL， time2   11")
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
        --Logger.Log("SHL， time2   22")
    end

    self.itemData = itemData
    if itemData ~= nil and itemData.id ~= 0 then
        self.CardObj:SetActive(true)

        self.IconImg:SetSpriteName(itemData.icon)
        self.bottomImg:SetSpriteName(SpriteDefine:GetCardBGByQua(itemData.quality))
        self.qualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(itemData.quality))
        self.frameImg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(itemData.quality))
        self.lvText:SetText(string.format("Lv:%s", itemData.level))

        self.shl_cost_text:SetText(itemData.cardCost)--*

        if self.isHaveArmySlider then
            self.fight_num:SetText(itemData.fight_num)
            self.move_num:SetText(itemData.move_num)
            self.slider_fight:SetValue(itemData.slider_fight_value)
            self.slider_move:SetValue(itemData.slider_move_value)
        end

        UIUtil.SetHeroStar(itemData.starlv, self.starList)
        self.hunImg:SetSpriteName(itemData.hunImg)
        self.hunTextImg:SetSpriteName(itemData.hunTextImg)

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

-- 显示虚化卡牌
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
    self.IconImg:SetColor32(color, color, color, 255)
    self.frameImg:SetColor32(color, color, color, 255)
    self.qualityImg:SetColor32(color, color, color, 255)
    self.lvText:SetColor32(color, color, color, 255)
    self.hunImg:SetColor32(color, color, color, 255)
    self.hunTextImg:SetColor32(color, color, color, 255)
    for i = 1, #self.starList do
        self.starList[i]:SetColor32(color, color, color, color)
    end
end

--军力和行动力条
local function OnCreateArmySlider(self)
    self.isHaveArmySlider = true
    self.slider_fight = self:AddComponent(UISlider, "Card/fighting_num")
    self.slider_move = self:AddComponent(UISlider, "Card/moving_num")
    self.fight_num = self:AddComponent(UIText, "Card/fighting_num/fighting_numText")
    self.move_num = self:AddComponent(UIText, "Card/moving_num/moving_numText")
end

--设置该守护灵位置的状态
local function OnSetCardEditState(self, state)
    if state == self.view.EnumSHLState.Lock then
        self.AddButton.gameObject:SetActive(false)
        self.notDeployText.gameObject:SetActive(false)
    elseif state == self.view.EnumSHLState.Edit then
        self.bottomImg:SetRaycastTarget(true)
        self.AddButton.gameObject:SetActive(true)
        self.notDeployText.gameObject:SetActive(false)
    elseif state == self.view.EnumSHLState.Empty then
        self.bottomImg:SetRaycastTarget(false)
        self.AddButton.gameObject:SetActive(false)
        self.notDeployText.gameObject:SetActive(true)
    end
end

--添加，未配置守护灵卡牌时，底部的添加按钮
local function OnCreateAddButton(self)
    self.notDeployText = self:AddComponent(UIText, "CardHead/DeployText")
    self.notDeployText:SetText(DataUtil.GetClientText(200125))
    self.AddButton = self:AddComponent(UIButton, "CardHead/Add_Button")
    self.AddButton:SetOnClick(function()
        --self.view.deployTeamPanel:OnClickOpenChooseSHLPanel(self.battlePos)
        self.view:OnClickOpenChooseSHLPanel(self.battlePos)
    end)
end

--添加，点击守护灵，卡牌上阵按钮
local function OnCreateCardButton(self)
    self.cardButton = self:AddComponent(UIButton, "Card")
    self.cardButton:SetOnClick(function()
        --local shlBattlePos = self.view.deployTeamPanel.SHLBattlePos
        --local shlItem = self.view.deployTeamPanel.SHLCardItems[shlBattlePos]
        local shlBattlePos = self.view.SHLBattlePos
        local shlItem = self.view.SHLCardItems[shlBattlePos]
        if shlItem.itemData ~= nil and shlItem.itemData.id == self.itemData.id then
            --点击同一个守护灵下阵
            self.view.ctrl:OnDragTakeOffCard(2, shlBattlePos, self.itemData.id)
            self.view:OnClickCloseChooseSHLPanel()
            return
        end
        --若点击的是其他队伍的开牌。且不在同一个城镇中，不能交换
        if self.itemData.teamData.townID ~= nil and self.itemData.teamData.townID ~= self.view.model.buildingId then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200391))
            return
        end
        --守护灵上阵
        self.view.ctrl:OnDragPutOnCard(2, shlBattlePos, self.itemData.id)
        --self.view.deployTeamPanel:OnClickCloseChooseSHLPanel()
        self.view:OnClickCloseChooseSHLPanel()
        shlItem:ShowDownTipEffect()
    end)
end

--添加拖拽功能
local function AddDragEventFunc(self, isDeleteParentScrollRect)
    self.initMousePos = 0
    self.isDrag = false

    if isDeleteParentScrollRect then
        self.parent_scroll_rect = nil
    end

    self.triggerObj = self.CardObj:AddComponent(typeof(EventTrigger))
    RegisterAction(self, EventTriggerType.PointerDown, OnItemDown)
    RegisterAction(self, EventTriggerType.PointerUp, OnUp)
    RegisterAction(self, EventTriggerType.Drag, OnDrag)
    RegisterAction(self, EventTriggerType.BeginDrag, OnBeginDrag)
    RegisterAction(self, EventTriggerType.EndDrag, OnEndDrag)
    --RegisterAction(self, EventTriggerType.PointerClick, OnPointClick)
end

--添加卡牌特效
local function OnCreateEffect(self)
    self.dragGlowEffect = UIUtil.FindTrans(self.transform, "FX_ui_Battle2D_CardGroup_SHL_Tip")
    self.downTipEffect = UIUtil.FindTrans(self.transform, "FX_ui_Battle2D_CardGroup_SHL_Glow")
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

UINationSHLWrapItem.OnCreate = OnCreate
UINationSHLWrapItem.OnRefresh = OnRefresh
UINationSHLWrapItem.OnDisable = OnDisable
UINationSHLWrapItem.OnSetData = OnSetData
UINationSHLWrapItem.ShowVirtualCard = ShowVirtualCard
UINationSHLWrapItem.OnCreateArmySlider = OnCreateArmySlider
UINationSHLWrapItem.OnCreateAddButton = OnCreateAddButton
UINationSHLWrapItem.OnCreateCardButton = OnCreateCardButton
UINationSHLWrapItem.AddDragEventFunc = AddDragEventFunc
UINationSHLWrapItem.OnCreateEffect = OnCreateEffect
UINationSHLWrapItem.ShowDragGlowEffect = ShowDragGlowEffect
UINationSHLWrapItem.ShowDownTipEffect = ShowDownTipEffect
UINationSHLWrapItem.OnSetCardEditState = OnSetCardEditState

return UINationSHLWrapItem
