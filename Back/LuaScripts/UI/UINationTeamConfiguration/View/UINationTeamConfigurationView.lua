local UINationTeamConfigurationView = BaseClass("UINationTeamConfigurationView", UIBaseView)
local base = UIBaseView

local UINationTeamListItem = require "UI.UINationTeamConfiguration.Component.UINationTeamListItem"
local UINationJLRItem = require "UI.UINationTeamConfiguration.Component.UINationJLRItem"
local UINationSHLItem = require "UI.UINationTeamConfiguration.Component.UINationSHLItem"

local Input = CS.UnityEngine.Input
local Screen = CS.UnityEngine.Screen

local EnumSHLState = {
    Lock = 1, --未解锁
    Edit = 2, --可配置
    Empty = 3, --未配置
}

--点击返回按钮
local function OnBackButtonClick(self)
    if self.model.nationTeamData ~= nil then
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local result, pos = nationProxy.mapManager:FocusMapToMyTeamData(self.model.nationTeamData)
        if result then
            nationProxy:SetCMCameraLookTransformPosition(pos.x, pos.y, true)
        end
    end
    self.ctrl:CloseSelf()
end

--打开选择守护灵界面
local function OnClickOpenChooseSHLPanel(self, battlePos)
    if self.model.deployUpArrayCards[1][battlePos] == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200111))
        return
    end

    self.chooseSHLPanel.gameObject:SetActive(true)
    self.chooseSHLPanel_MaskButton.gameObject:SetActive(true)
    --LuaTweener.UIScaleTo(self.chooseSHLPanel, Vector3.New(0.2, 0.2, 0.2), Vector3.one, 0.2, EaseFormula.OutQuart, function()

    --end)
    self.SHLBattlePos = battlePos

    if #self.model.shlList > 0 then
        self.chooseSHL_wrapGroup:SetLength(#self.model.shlList)
        self.chooseSHL_wrapGroup:ResetToBeginning()
    else
        self.chooseSHL_wrapGroup:SetLength(0)
    end
end

--关闭选择守护灵界面
local function OnClickCloseChooseSHLPanel(self)
    --LuaTweener.UIScaleTo(self.chooseSHLPanel, Vector3.one, Vector3.New(0.05, 0.05, 0.05), 0.3, EaseFormula.OutQuart, function()
        self.chooseSHLPanel.gameObject:SetActive(false)
        self.chooseSHLPanel_MaskButton.gameObject:SetActive(false)
    --end)
    self.SHLBattlePos = nil
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 不变区域
    self.returnButton = self:AddComponent(UIButton, "StaticPanel/top/returnButton/Image")
    self.returnButton:SetOnClick(function()
        OnBackButtonClick(self)
    end)
    --城镇名字
    self.grayMat = self:AddComponent(UIImage, "StaticPanel/GrayMaterial"):GetMat()
    self.townText = self:AddComponent(UIText, "StaticPanel/top/TownText")
    --军团按钮
    self.teamGuardIconBG = self:AddComponent(UIImage, "StaticPanel/InfoPanel/corpsIcon/IconBG", AtlasConfig.DynamicNationTex)
    self.teamGuardIcon = self:AddComponent(UIImage, "StaticPanel/InfoPanel/corpsIcon/Icon", AtlasConfig.DynamicNationTex)
    self.corpsText = self:AddComponent(UIText, "StaticPanel/InfoPanel/corpsIcon/corpsText")
    self.teamGroupBtnText = self:AddComponent(UIText, "StaticPanel/InfoPanel/corpsIcon/checkButton/checkBtnText")
    self.teamGroupBtnText:SetText(DataUtil.GetClientText(200108))
    self.teamGroupBtn = self:AddComponent(UIButton, "StaticPanel/InfoPanel/corpsIcon/checkButton")
    self.teamGroupBtn:SetOnClick(function()
        self.ctrl:OnClickSelectArmyGroup()
    end)
    --顶部信息
    self.militaryText = self:AddComponent(UIText, "StaticPanel/InfoPanel/militaryBgImage/militaryText")
    self.militaryText:SetText(DataUtil.GetClientText(200109))
    self.militaryValueText = self:AddComponent(UIText, "StaticPanel/InfoPanel/militaryBgImage/militaryValueText")
    self.siegeText = self:AddComponent(UIText, "StaticPanel/InfoPanel/siegeBgImage/siegeText")
    self.siegeText:SetText(DataUtil.GetClientText(200015))
    self.siegeValueText = self:AddComponent(UIText, "StaticPanel/InfoPanel/siegeBgImage/siegeValueText")
    self.team_cost_text = self:AddComponent(UIText, "StaticPanel/InfoPanel/teamCostImage/TeamCostText")
    --征募按钮
    self.recruitButton_UIImage = self:AddComponent(UIImage, "StaticPanel/recruitButton")
    self.recruitButton_UIText = self:AddComponent(UIText, "StaticPanel/recruitButton/recruitText")
    self.recruitButton_UIText:SetText(DataUtil.GetClientText(200110))
    self.recruitButton = self:AddComponent(UIButton, "StaticPanel/recruitButton")
    self.recruitButton:SetOnClick(function()
        self.ctrl:DeployBeforeRecruitButtonClick()
    end)
    --左侧选择队伍
    self.nationTeam_scroll_view_content = self:AddComponent(UIWrapGroup3D, "StaticPanel/ScrollRect/grid", UINationTeamListItem)
    self.teamSelectTrans = UIUtil.FindTrans(self.transform, "StaticPanel/teamSelectObj")
    self.teamSelectTrans_TitleText = self:AddComponent(UIText, "StaticPanel/teamSelectObj/teamSeria")
    self.teamSelectTrans_TimeText = self:AddComponent(UIText, "StaticPanel/teamSelectObj/textTime")
    --选择寄灵人，底部界面
    self.JLR_scrollRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), "StaticPanel/BattleArrayLayout")
    self.chooseJLR_wrapGroup = self:AddComponent(UIWrapGroup3D, "StaticPanel/BattleArrayLayout/Content", UINationJLRItem)
    --第三卡牌位置解锁
    self.lockCardUnderObj = UIUtil.FindTrans(self.transform, "StaticPanel/LockCardUnder").gameObject
    self.lockCardOverObj = UIUtil.FindTrans(self.transform, "StaticPanel/LockCardOver").gameObject
    self.lockCardText = self:AddComponent(UIText, "StaticPanel/LockCardUnder/LockCardText")
    self.lockCardUnderObj:SetActive(false)
    self.lockCardOverObj:SetActive(false)
    --无法配置队伍层
    self.notEditTeamObj = UIUtil.FindTrans(self.transform, "StaticPanel/NotEditTeam").gameObject
    self.notEditTeamText = self:AddComponent(UIText, "StaticPanel/NotEditTeam/NotEditTeamText")
    self.notEditTeamText:SetText(DataUtil.GetClientText(200128))
    --拖动目标区域
    self.teamCardContentObj = UIUtil.FindTrans(self.transform, "StaticPanel/teamCardContent").gameObject
    self.dragJLRTargetPosition = {}
    self.dragSHLTargetPosition = {}
    --上阵中的卡牌
    self.JLRCardItems = {}
    self.SHLCardItems = {}
    for i = 1, 3 do
        self.JLRCardItems[i] = UINationJLRItem.New(self, "StaticPanel/teamCardContent/Item" .. i .. "/JLRIcon" .. i)
        self.JLRCardItems[i]:OnCreate(self)
        self.JLRCardItems[i]:OnCreateArmySlider()
        self.JLRCardItems[i]:OnCreateEditText()
        self.JLRCardItems[i]:OnCreateEffect()
        self.JLRCardItems[i]:AddDragEventFunc()
        self.JLRCardItems[i]:OnSetData()
        self.SHLCardItems[i] = UINationSHLItem.New(self, "StaticPanel/teamCardContent/Item" .. i .. "/SHLIcon" .. i)
        self.SHLCardItems[i]:OnCreate(self)
        self.SHLCardItems[i]:OnCreateArmySlider()
        self.SHLCardItems[i]:OnCreateAddButton()
        self.SHLCardItems[i]:OnCreateEffect()
        self.SHLCardItems[i]:AddDragEventFunc()
        self.SHLCardItems[i]:OnSetData()
        table.insert(self.dragJLRTargetPosition, UIUtil.FindComponent(self.JLRCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).localPosition)
        table.insert(self.dragSHLTargetPosition, UIUtil.FindComponent(self.SHLCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).localPosition)
    end
    --选中守护灵面板
    self.chooseSHL_wrapGroup = self:AddComponent(UIWrapGroup3D, "StaticPanel/SHLChooseTip/chooseScrollView/chooseGroup", UINationSHLItem)
    self.chooseSHLPanel_title = self:AddComponent(UIText, "StaticPanel/SHLChooseTip/TitleText")
    self.chooseSHLPanel_title:SetText(DataUtil.GetClientText(200112))
    self.chooseSHLPanel = UIUtil.FindTrans(self.transform, "StaticPanel/SHLChooseTip")
    self.chooseSHLPanel.gameObject:SetActive(false)
    self.chooseSHLPanel_MaskButton = self:AddComponent(UIButton, "StaticPanel/SHLmaskObj")
    self.chooseSHLPanel_MaskButton:SetOnClick(function()
        OnClickCloseChooseSHLPanel(self)
    end)
    self.chooseSHLPanel_MaskButton.gameObject:SetActive(false)
    self.chooseSHLCloseButton = self:AddComponent(UIButton, "StaticPanel/SHLChooseTip/closeBtn")
    self.chooseSHLCloseButton:SetOnClick(function()
        OnClickCloseChooseSHLPanel(self)
    end)
    --拖动出来的卡牌预设
    self.dragJLRCardItem = UINationJLRItem.New(self, "StaticPanel/dragJLRIcon")
    self.dragJLRCardItem:OnCreate(self)
    self.dragJLRCardItem.gameObject:SetActive(false)
    self.dragSHLCardItem = UINationSHLItem.New(self, "StaticPanel/dragSHLIcon")
    self.dragSHLCardItem:OnCreate(self)
    self.dragSHLCardItem.gameObject:SetActive(false)
    local layer = UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
    self.canvasScreen = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta
    self.checkDrag = false      --是否检测拖拽
    self.isDrag = false
    self.curPos = {}            --当前拖拽的物理位置
    self.dragCardData = nil     --拖拽出来的卡牌数据(寄灵人)
    self.dragCardIndex = 0      --拖拽出来的卡牌位置（0--下方列表 1--左 2--中 3--右）针对上阵中的位置
    self.dragEnterIndex = 0     --拖入的卡牌位置（0--下方列表 1--左 2--中 3--右）针对上阵中的位置
end

local function OnEnable(self)
    base.OnEnable(self)
    self.nationTeam_scroll_view_content:SetLength(#self.model.teamList)
    self.nationTeam_scroll_view_content:ResetToBeginning()

    self.isResetToBeginning = true
    self:OnRefresh()
end

--刷新一级界面
local function OnRefresh(self)
    self.townText:SetText(self.model.townName)
    self.teamGuardIconBG:SetSpriteName(self.model.armyGroupIconBG)
    self.teamGuardIcon:SetSpriteName(self.model.armyGroupIcon)
    self.corpsText:SetText(self.model.armyGroupName)
    self.militaryValueText:SetText(self.model.totalArmy)
    self.siegeValueText:SetText(self.model.totalAttackPower)
    if self.model.card_sum == nil then
        self.team_cost_text:SetText("")
    else
        if self.model.card_sum > self.model.cardCostLimit then
            self.team_cost_text:SetText(string.format("<color=#E04B4D>%d</color>/%d", self.model.card_sum, self.model.cardCostLimit))
        else
            self.team_cost_text:SetText(string.format("%d/%d", self.model.card_sum, self.model.cardCostLimit))
        end
    end

    --没有选择队伍
    if self.model.currentSelectIndex == 0 then
        self.teamSelectTrans.gameObject:SetActive(false)
        self.recruitButton:SetActive(false)
        self.notEditTeamText:SetText(DataUtil.GetClientText(200392))
        self.notEditTeamObj:SetActive(true)
        self.lockCardUnderObj:SetActive(false)
        self.lockCardOverObj:SetActive(false)

        self.teamCardContentObj:SetActive(false)
        for k, v in pairs(self.JLRCardItems) do
            v:OnSetData(nil)
        end
        for j, w in pairs(self.SHLCardItems) do
            w:OnSetData(nil)
        end
    else
        self.recruitButton:SetActive(true)
        self.teamCardContentObj:SetActive(true)

        --队伍第三个位置是否解锁
        local isLock = false
        if self.model.is_unLock_third_team then
            self.lockCardUnderObj:SetActive(false)
            self.lockCardOverObj:SetActive(false)
        else
            self.lockCardUnderObj:SetActive(true)
            self.lockCardOverObj:SetActive(true)
            --self.is_unLock_third_pos_level
            local name = NationScienceData:GetInstance():GetStaticNationalTechById(NationDefine.NATION_TECH_ID.FORMATION_UNLOCK).TechName
            self.lockCardText:SetText(name .. "Lv." .. self.model.is_unLock_third_pos_level .. DataUtil.GetClientText(200348))
            isLock = true
        end

        --队伍处于非待命状态(非待命状态，不可编辑配置队伍)
        local state = EnumSHLState.Edit
        if self.model.nationTeamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            self.recruitButton_UIImage:SetMat(self.grayMat)
            self.notEditTeamText:SetText(DataUtil.GetClientText(200128))
            self.notEditTeamObj:SetActive(true)
            state = EnumSHLState.Empty
        else
            --是否是空的
            if not self.model.nationTeamData:IsTeamCardsEmpty() then
                self.recruitButton_UIImage:SetMat()
            else
                self.recruitButton_UIImage:SetMat(self.grayMat)
            end
            self.notEditTeamObj:SetActive(false)
        end

        --刷新上阵的卡牌数据
        for k, v in pairs(self.JLRCardItems) do
            v:OnSetData(self.model.deployUpArrayCards[1][k], k)
            if isLock and k == 3 then
                v:OnSetCardEditState(EnumSHLState.Lock)
            else
                v:OnSetCardEditState(state)
            end
        end
        for j, w in pairs(self.SHLCardItems) do
            w:OnSetData(self.model.deployUpArrayCards[2][j], j)
            if isLock and j == 3 then
                w:OnSetCardEditState(EnumSHLState.Lock)
            else
                w:OnSetCardEditState(state)
            end
        end

        self.nationTeam_scroll_view_content:WrapContent(true)
        self.teamSelectTrans:SetParent(self.nationTeam_scroll_view_content:GetComponentByIndex(self.model.currentSelectIndex - 1).transform)
        self.teamSelectTrans.localPosition = Vector3.zero
        self.teamSelectTrans.localScale = Vector3.one
        self.teamSelectTrans.gameObject:SetActive(true)
    end

    --刷新，寄灵人的卡牌列表
    self.chooseJLR_wrapGroup:SetLength(#self.model.jlrList)
    if self.isResetToBeginning then
        self.chooseJLR_wrapGroup:ResetToBeginning()
        self.isResetToBeginning = false
    end
    self.chooseJLR_wrapGroup:WrapContent(true)
end

--更新寄灵人列表信息
local function updateCardListData(self)
    local type = self.dragCardData.type
    --关闭卡牌虚化
    for i = 1, 3 do
        self.JLRCardItems[i]:ShowVirtualCard(false)
        self.SHLCardItems[i]:ShowVirtualCard(false)
    end
    --当前拖拽的卡牌
    if self.dragCardData.state == self.model.EnumCardState.Recruit then
        local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
        local countDown = math.floor((self.dragCardData.stateEndTime - currentTime) / 1000)
        if countDown > 0 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
            return
        end
    elseif self.dragCardData.teamData.state == NationDefine.NATION_TEAM_OPRE_STATE.NOT_IN_STAY then
        UISpecial:GetInstance():UITipText("拖拽中的卡牌处于非待命状态，无法配置")
        return
    end
    --拖到目标的卡牌
    local enterData = self.model.deployUpArrayCards[type][self.dragEnterIndex]
    if enterData ~= nil then
        if enterData.id == self.dragCardData.id then
            --UISpecial:GetInstance():UITipText("该卡牌已经上阵")
            return
        elseif enterData.state == self.model.EnumCardState.Recruit then
            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            local countDown = math.floor((enterData.stateEndTime - currentTime) / 1000)
            if countDown > 0 then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
                return
            end
        end
    end

    --若拖到第三个未解锁的阵位时
    if self.model.is_unLock_third_team == false and self.dragEnterIndex == 3 then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200393))
        return
    end

    --从列表中到上阵(只有寄灵人可以)
    if self.dragCardIndex == 0 then
        if self.dragEnterIndex == 0 then
            return
        end
        --守护灵不能单独上阵
        if type == 2 and self.model.deployUpArrayCards[1][self.dragEnterIndex] == nil then
            return
        end
        --若拖动的是其他队伍的开牌。且不在同一个城镇中，不能交换
        if self.dragCardData.teamData.townID ~= nil and self.dragCardData.teamData.townID ~= self.model.buildingId then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200391))
            return
        end

        self.ctrl:OnDragPutOnCard(type, self.dragEnterIndex, self.dragCardData.id)
    else
        --卡牌下阵
        if self.dragEnterIndex == 0 then
            --寄灵人下阵，且有守护灵，无法下阵
            if type == 1 and self.model.deployUpArrayCards[2][self.dragCardIndex] ~= nil then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200114))
                return
            end
            self.ctrl:OnDragTakeOffCard(type, self.dragCardIndex, self.dragCardData.id)
        else
            --上阵的卡牌交换位置

            if type == 1 then
                --目标的守护灵卡牌
                local enterSHLData = self.model.deployUpArrayCards[2][self.dragEnterIndex]
                if enterSHLData ~= nil and enterSHLData.state == self.model.EnumCardState.Recruit then
                    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
                    local countDown = math.floor((enterSHLData.stateEndTime - currentTime) / 1000)
                    if countDown > 0 then
                        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
                        return
                    end
                end
            end

            --拖动的守护灵卡牌
            if type == 1 then
                local dragSHLData = self.model.deployUpArrayCards[2][self.dragCardIndex]
                if dragSHLData ~= nil and dragSHLData.state == self.model.EnumCardState.Recruit then
                    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
                    local countDown = math.floor((dragSHLData.stateEndTime - currentTime) / 1000)
                    if countDown > 0 then
                        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
                        return
                    end
                end
            end

            --守护灵不能单独上阵
            if type == 2 and self.model.deployUpArrayCards[1][self.dragEnterIndex] == nil then
                return
            end

            self.ctrl:OnDragPutOnCard(type, self.dragEnterIndex, self.dragCardData.id)
        end
    end

    --显示配置成功的特效
    if self.dragEnterIndex ~= 0 then
        if self.dragCardData.type == 1 then
            self.JLRCardItems[self.dragEnterIndex]:ShowDownTipEffect()
            if self.model.deployUpArrayCards[2][self.dragCardIndex] ~= nil then
                self.SHLCardItems[self.dragEnterIndex]:ShowDownTipEffect()
            end
        else
            self.SHLCardItems[self.dragEnterIndex]:ShowDownTipEffect()
        end
    end
end

--开始拖拽卡牌
local function BeginDrag(self)
    --寄灵人
    if self.dragCardData.type == 1 then
        self.dragJLRCardItem.gameObject:SetActive(true)
        self.dragJLRCardItem:OnSetData(self.dragCardData)
        --判断是否有守护灵
        if self.model.deployUpArrayCards[2][self.dragCardIndex] == nil then
            self.dragSHLCardItem.gameObject:SetActive(false)
        else
            self.dragSHLCardItem.gameObject:SetActive(true)
            self.dragSHLCardItem:OnSetData(self.model.deployUpArrayCards[2][self.dragCardIndex])
            self.SHLCardItems[self.dragCardIndex]:ShowVirtualCard(true)
        end
    else
        --守护灵
        self.dragSHLCardItem.gameObject:SetActive(true)
        self.dragSHLCardItem:OnSetData(self.dragCardData)
        self.dragJLRCardItem.gameObject:SetActive(false)
    end

    self.checkDrag = false
    self.isDrag = true

    --- 显示对应闪烁特效
    for i = 1, 3 do
        self.JLRCardItems[i]:ShowDragGlowEffect(self.dragCardData.type == 1)
        self.SHLCardItems[i]:ShowDragGlowEffect(self.dragCardData.type ~= 1 and self.model.deployUpArrayCards[1][i] ~= nil)
    end
end

--结束拖拽
local function EndDrag(self)
    --if self.model.card_sum>self.model.cardCostLimit then
    --    self.checkDrag = false
    --    self.isDrag = false
    --    UISpecial:GetInstance():UITipText("COST超出上限无法配置")
    --    return
    --end
    self.dragEnterIndex = 0
    if self.isDrag == false then
        return
    end

    --- 隐藏闪烁特效
    for i = 1, 3 do
        self.JLRCardItems[i]:ShowDragGlowEffect(false)
        self.SHLCardItems[i]:ShowDragGlowEffect(false)
    end

    if self.dragCardData.type == 1 then
        self.curPos = self.dragJLRCardItem.transform.localPosition
    else
        self.curPos = self.dragSHLCardItem.transform.localPosition
    end

    for i = 1, 3 do
        if self.dragCardData.type == 1 then
            local curDisX = math.abs(self.dragJLRTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragJLRTargetPosition[i].y - self.curPos.y)
            if (curDisX <= 200 and curDisY < 300) then
                self.dragEnterIndex = i
            end
        else
            local curDisX = math.abs(self.dragSHLTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragSHLTargetPosition[i].y - self.curPos.y)
            if (curDisX <= 175 and curDisY < 175) and self.model.deployUpArrayCards[1][i] ~= nil then
                self.dragEnterIndex = i
            end
        end
    end

    updateCardListData(self)

    --重置flag
    self.isDrag = false
    self.dragCardIndex = 0
    self.dragJLRCardItem.gameObject:SetActive(false)
    self.dragSHLCardItem.gameObject:SetActive(false)
end

--检测拖拽
local function BattleCheckDrag(self, itemData, cardIndex)
    if itemData == nil then
        self.checkDrag = false
        EndDrag(self)
    else
        self.checkDrag = true
        self.dragCardData = itemData
        self.dragCardIndex = cardIndex
    end
end

--更新拖拽的卡牌位置
local function UpdateCardPos(self)
    if self.checkDrag == true then
        self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
                (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y)
        if self.curPos.x > -800 and self.curPos.x < 800 then
            BeginDrag(self)
            self.lastDragPos = self.curPos
        end
    end
    if self.isDrag == false then
        return
    end
    self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
            (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y)
    --- 卡牌旋转效果
    local posDisX = self.curPos.x - self.lastDragPos.x
    local rotDixX = math.floor(math.min(posDisX * 2, 60))
    if posDisX < 0 then
        rotDixX = math.floor(math.max(posDisX * 2, -60))
    end
    self.lastDragPos = self.curPos

    if self.dragCardData.type == 1 then
        self.dragJLRCardItem.transform.localPosition = self.curPos
        self.dragJLRCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
        if self.dragSHLCardItem.gameObject.activeInHierarchy then
            self.dragSHLCardItem.transform.localPosition = Vector2.New(self.curPos.x + 209, self.curPos.y - 70)
            self.dragSHLCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
        end
    else
        self.dragSHLCardItem.transform.localPosition = self.curPos
        self.dragSHLCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
    end

    --- 显示拖拽提示特效
    for i = 1, 3 do
        --若拖动的是当前队伍已经上阵的卡牌，获得对应的位置编号
        if self.dragCardIndex == 0 and self.model.deployUpArrayCards[self.dragCardData.type][i] ~= nil and self.model.deployUpArrayCards[self.dragCardData.type][i].id == self.dragCardData.id then
            self.dragCardIndex = i
        end

        if self.dragCardData.type == 1 then
            local curDisX = math.abs(self.dragJLRTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragJLRTargetPosition[i].y - self.curPos.y)
            if (curDisX <= 200 and curDisY < 300) or i == self.dragCardIndex then
                self.JLRCardItems[i]:ShowVirtualCard(true)
                if self.dragCardIndex ~= 0 then
                    self.SHLCardItems[i]:ShowVirtualCard(true)
                end
            else
                self.JLRCardItems[i]:ShowVirtualCard(false)
                self.SHLCardItems[i]:ShowVirtualCard(false)
            end
        else
            local curDisX = math.abs(self.dragSHLTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragSHLTargetPosition[i].y - self.curPos.y)
            if i == self.dragCardIndex or ((curDisX <= 175 and curDisY < 175) and self.model.deployUpArrayCards[1][i] ~= nil) then
                self.SHLCardItems[i]:ShowVirtualCard(true)
            else
                self.SHLCardItems[i]:ShowVirtualCard(false)
            end
        end
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddUIListener(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH, OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveUIListener(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH, OnRefresh)
end

local function OnDisable(self)
    base.OnDisable(self)
    for i = 1, 3 do
        self.JLRCardItems[i]:OnDisable()
        self.SHLCardItems[i]:OnDisable()
    end
end

UINationTeamConfigurationView.OnCreate = OnCreate
UINationTeamConfigurationView.OnRefresh = OnRefresh
UINationTeamConfigurationView.OnEnable = OnEnable
UINationTeamConfigurationView.OnDisable = OnDisable
UINationTeamConfigurationView.OnAddListener = OnAddListener
UINationTeamConfigurationView.OnRemoveListener = OnRemoveListener
UINationTeamConfigurationView.OnClickOpenChooseSHLPanel = OnClickOpenChooseSHLPanel
UINationTeamConfigurationView.OnClickCloseChooseSHLPanel = OnClickCloseChooseSHLPanel
UINationTeamConfigurationView.EnumSHLState = EnumSHLState
UINationTeamConfigurationView.BattleCheckDrag = BattleCheckDrag
UINationTeamConfigurationView.UpdateCardPos = UpdateCardPos

return UINationTeamConfigurationView