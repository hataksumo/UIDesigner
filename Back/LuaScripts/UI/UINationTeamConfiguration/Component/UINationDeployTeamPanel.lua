local UINationDeployTeamPanel = BaseClass("UINationDeployTeamPanel", UIBaseContainer)
local base = UIBaseContainer

local UINationJLRItem = require "UI.UINationTeamConfiguration.Component.UINationJLRItem"
local UINationSHLItem = require "UI.UINationTeamConfiguration.Component.UINationSHLItem"

local Input = CS.UnityEngine.Input
local Screen = CS.UnityEngine.Screen

local EnumListType = {
    JLR = 1, --寄灵人列表
    SHL = 2, --守护灵列表
}

--打开选择守护灵界面
local function OnClickOpenChooseSHLPanel(self, battlePos)
    if self.view.model.deployUpArrayCards[1][battlePos] == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200111))
        return
    end

    LuaTweener.UIScaleTo(self.chooseSHLPanel, Vector3.New(0.2, 0.2, 0.2), Vector3.one, 0.2, EaseFormula.OutQuart, function()
        self.chooseSHLPanel.gameObject:SetActive(true)
        self.chooseSHLPanel_MaskButton.gameObject:SetActive(true)
    end)
    self.SHLBattlePos = battlePos

    if #self.view.model.shlList > 0 then
        self.chooseSHL_wrapGroup:SetLength(#self.view.model.shlList)
        self.chooseSHL_wrapGroup:ResetToBeginning()
    else
        self.chooseSHL_wrapGroup:SetLength(0)
    end
end

--关闭选择守护灵界面
local function OnClickCloseChooseSHLPanel(self)
    LuaTweener.UIScaleTo(self.chooseSHLPanel, Vector3.one, Vector3.New(0.05, 0.05, 0.05), 0.3, EaseFormula.OutQuart, function()
        self.chooseSHLPanel.gameObject:SetActive(false)
        self.chooseSHLPanel_MaskButton.gameObject:SetActive(false)
    end)
    self.SHLBattlePos = nil
end

local function OnCreate(self)
    base.OnCreate(self)

    self.confirmButton = self:AddComponent(UIButton, "ackButton")
    self.confirmButton:SetOnClick(function()
        self.view.ctrl:BackButtonClick()
    end)

    --选择寄灵人，底部界面
    self.JLR_scrollRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), "BattleArrayLayout")
    self.chooseJLR_wrapGroup = self:AddComponent(UIWrapGroup3D, "BattleArrayLayout/Content", UINationJLRItem)

    --拖动目标区域
    self.dragJLRTargetPosition = {}
    self.dragSHLTargetPosition = {}

    --上阵中的卡牌
    self.JLRCardItems = {}
    self.SHLCardItems = {}
    for i = 1, 3 do
        self.JLRCardItems[i] = UINationJLRItem.New(self, "teamCardContent/Item" .. i .. "/JLRIcon" .. i)
        self.JLRCardItems[i]:OnCreate(self)
        self.JLRCardItems[i]:OnCreateArmySlider()
        self.JLRCardItems[i]:OnCreateEffect()
        self.JLRCardItems[i]:AddDragEventFunc()
        self.JLRCardItems[i]:OnSetData()
        self.SHLCardItems[i] = UINationSHLItem.New(self, "teamCardContent/Item" .. i .. "/SHLIcon" .. i)
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
    self.chooseSHL_wrapGroup = self:AddComponent(UIWrapGroup3D, "SHLChooseTip/chooseScrollView/chooseGroup", UINationSHLItem)
    self.chooseSHLPanel_title = self:AddComponent(UIText, "SHLChooseTip/TitleText")
    self.chooseSHLPanel_title:SetText(DataUtil.GetClientText(200112))
    self.chooseSHLPanel = UIUtil.FindTrans(self.transform, "SHLChooseTip")
    self.chooseSHLPanel.gameObject:SetActive(false)
    self.chooseSHLPanel_MaskButton = self:AddComponent(UIButton, "SHLmaskObj")
    self.chooseSHLPanel_MaskButton:SetOnClick(function()
        OnClickCloseChooseSHLPanel(self)
    end)
    self.chooseSHLPanel_MaskButton.gameObject:SetActive(false)
    self.chooseSHLCloseButton = self:AddComponent(UIButton, "SHLChooseTip/closeBtn")
    self.chooseSHLCloseButton:SetOnClick(function()
        OnClickCloseChooseSHLPanel(self)
    end)


    --拖动出来的卡牌预设
    self.dragJLRCardItem = UINationJLRItem.New(self, "dragJLRIcon")
    self.dragJLRCardItem:OnCreate(self)
    self.dragJLRCardItem.gameObject:SetActive(false)
    self.dragSHLCardItem = UINationSHLItem.New(self, "dragSHLIcon")
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

    self.isResetToBeginning = true
    self:OnRefresh()
end

local function OnRefresh(self)
    --刷新上阵的卡牌数据
    for k, v in pairs(self.JLRCardItems) do
        v:OnSetData(self.view.model.deployUpArrayCards[1][k], k)
    end
    for j, w in pairs(self.SHLCardItems) do
        w:OnSetData(self.view.model.deployUpArrayCards[2][j], j)
    end

    --刷新，寄灵人的卡牌列表
    self.chooseJLR_wrapGroup:SetLength(#self.view.model.jlrList)
    if self.isResetToBeginning then
        self.chooseJLR_wrapGroup:ResetToBeginning()
        self.isResetToBeginning = false
    end
    self.chooseJLR_wrapGroup:WrapContent(true)

    --self.now_cost=self.view.model.card_sum
    --if  self.now_cost>self.view.model.cardCostLimit then
    --    UISpecial:GetInstance():UITipText("COST值超出队伍上限")
    --    return
    --end

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
    if self.dragCardData.state == self.view.model.EnumCardState.Recruit then
        local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
        local countDown = math.floor((self.dragCardData.stateEndTime - currentTime) / 1000)
        if countDown > 0 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
            return
        end
    end
    --拖到目标的卡牌
    local enterData = self.view.model.deployUpArrayCards[type][self.dragEnterIndex]
    if enterData ~= nil then
        if enterData.id == self.dragCardData.id then
            --UISpecial:GetInstance():UITipText("该卡牌已经上阵")
            return
        elseif enterData.state == self.view.model.EnumCardState.Recruit then
            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            local countDown = math.floor((enterData.stateEndTime - currentTime) / 1000)
            if countDown > 0 then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
                return
            end
        end
    end

    ----若拖动的是已经上阵的卡牌，获得对应的位置编号
    --for i = 1, 3 do
    --    if self.dragCardIndex == 0 and self.view.model.deployUpArrayCards[type][i] ~= nil and self.view.model.deployUpArrayCards[type][i].id == self.dragCardData.id then
    --        self.dragCardIndex = i
    --        break
    --    end
    --end

    --从列表中到上阵(只有寄灵人可以)
    if self.dragCardIndex == 0 then
        if self.dragEnterIndex == 0 then
            return
        end
        --守护灵不能单独上阵
        if type == 2 and self.view.model.deployUpArrayCards[1][self.dragEnterIndex] == nil then
            return
        end
        --若拖动的是其他队伍的开牌。且不在同一个城镇中，不能交换
        if self.dragCardData.teamData.townID ~= nil and self.dragCardData.teamData.townID ~= self.view.model.buildingId then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200391))
            return
        end

        self.view.ctrl:OnDragPutOnCard(type, self.dragEnterIndex, self.dragCardData.id)
    else
        --卡牌下阵
        if self.dragEnterIndex == 0 then
            --寄灵人下阵，且有守护灵，无法下阵
            if type == 1 and self.view.model.deployUpArrayCards[2][self.dragCardIndex] ~= nil then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200114))
                return
            end
            self.view.ctrl:OnDragTakeOffCard(type, self.dragCardIndex, self.dragCardData.id)
        else
            --上阵的卡牌交换位置

            if type == 1 then
                --目标的守护灵卡牌
                local enterSHLData = self.view.model.deployUpArrayCards[2][self.dragEnterIndex]
                if enterSHLData ~= nil and enterSHLData.state == self.view.model.EnumCardState.Recruit then
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
                local dragSHLData = self.view.model.deployUpArrayCards[2][self.dragCardIndex]
                if dragSHLData ~= nil and dragSHLData.state == self.view.model.EnumCardState.Recruit then
                    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
                    local countDown = math.floor((dragSHLData.stateEndTime - currentTime) / 1000)
                    if countDown > 0 then
                        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200113))
                        return
                    end
                end
            end

            --守护灵不能单独上阵
            if type == 2 and self.view.model.deployUpArrayCards[1][self.dragEnterIndex] == nil then
                return
            end

            self.view.ctrl:OnDragPutOnCard(type, self.dragEnterIndex, self.dragCardData.id)
        end
    end

    --显示配置成功的特效
    if self.dragEnterIndex ~= 0 then
        if self.dragCardData.type == 1 then
            self.JLRCardItems[self.dragEnterIndex]:ShowDownTipEffect()
            if self.view.model.deployUpArrayCards[2][self.dragCardIndex] ~= nil then
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
        if self.view.model.deployUpArrayCards[2][self.dragCardIndex] == nil then
            self.dragSHLCardItem.gameObject:SetActive(false)
        else
            self.dragSHLCardItem.gameObject:SetActive(true)
            self.dragSHLCardItem:OnSetData(self.view.model.deployUpArrayCards[2][self.dragCardIndex])
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
        self.SHLCardItems[i]:ShowDragGlowEffect(self.dragCardData.type ~= 1 and self.view.model.deployUpArrayCards[1][i] ~= nil)
    end
end

--结束拖拽
local function EndDrag(self)
    --if self.view.model.card_sum>self.view.model.cardCostLimit then
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

    --local minDis = 99999999
    for i = 1, 3 do
        if self.dragCardData.type == 1 then
            local curDisX = math.abs(self.dragJLRTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragJLRTargetPosition[i].y - self.curPos.y)
            if (curDisX <= 200 and curDisY < 300 --[[and curDisX < minDis and curDisY < minDis]]) then
                self.dragEnterIndex = i
            end
        else
            local curDisX = math.abs(self.dragSHLTargetPosition[i].x - self.curPos.x)
            local curDisY = math.abs(self.dragSHLTargetPosition[i].y - self.curPos.y)
            if (curDisX <= 175 and curDisY < 175 --[[and curDisX < minDis and curDisY < minDis]]) and self.view.model.deployUpArrayCards[1][i] ~= nil then
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
    --local minDis = 99999999
    for i = 1, 3 do
        --若拖动的是当前队伍已经上阵的卡牌，获得对应的位置编号
        if self.dragCardIndex == 0 and self.view.model.deployUpArrayCards[self.dragCardData.type][i] ~= nil and self.view.model.deployUpArrayCards[self.dragCardData.type][i].id == self.dragCardData.id then
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
            if i == self.dragCardIndex or ((curDisX <= 175 and curDisY < 175 --[[and curDisX < minDis and curDisY < minDis]]) and self.view.model.deployUpArrayCards[1][i] ~= nil) then
                self.SHLCardItems[i]:ShowVirtualCard(true)
            else
                self.SHLCardItems[i]:ShowVirtualCard(false)
            end
        end
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    for i = 1, 3 do
        self.JLRCardItems[i]:OnDisable()
        self.SHLCardItems[i]:OnDisable()
    end
end

UINationDeployTeamPanel.OnCreate = OnCreate
UINationDeployTeamPanel.OnEnable = OnEnable
UINationDeployTeamPanel.OnRefresh = OnRefresh
UINationDeployTeamPanel.OnDisable = OnDisable
UINationDeployTeamPanel.EnumListType = EnumListType
UINationDeployTeamPanel.OnClickOpenChooseSHLPanel = OnClickOpenChooseSHLPanel
UINationDeployTeamPanel.OnClickCloseChooseSHLPanel = OnClickCloseChooseSHLPanel
UINationDeployTeamPanel.BattleCheckDrag = BattleCheckDrag
UINationDeployTeamPanel.UpdateCardPos = UpdateCardPos

return UINationDeployTeamPanel