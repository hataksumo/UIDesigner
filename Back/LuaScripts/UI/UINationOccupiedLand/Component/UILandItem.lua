local UILandItem = BaseClass("UILandItem", UIWrapComponent)
local base = UIWrapComponent

--计时器
local function HandleTimer(self, time)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.time_UIText:SetText(UIUtil.GetFinialTime(countDown))
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateTimer)
            self.view.ctrl:DeleteOnePosItem(self.id)
            self.UpdateTimer = nil
        end
    end
    self.UpdateTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function OnClickDeleteItem(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    local itemData = self.view.model.landList[self.index + 1]
    --放弃
    if self.UpdateTimer == nil then
        local remainAvoidTime = itemData.AvoidEndTime - math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
        if remainAvoidTime > 0 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200201))
            return
        end

        local time = nil
        if itemData.Type == self.view.model.EnumLandType.WarCell then
            time = self.view.model.BattleAbandon
        elseif itemData.Type == self.view.model.EnumLandType.ResPoint then
            time = self.view.model.ResAbandon
        end

        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200029), DataUtil.GetClientText(200202) .. "" .. string.format(DataUtil.GetClientText(200048), math.modf(time / 60)),
                DataUtil.GetClientText(200007), DataUtil.GetClientText(200006), function()
                    UIManager:GetInstance():CloseTip()
                end, function()
                    if itemData.Type == self.view.model.EnumLandType.WarCell then
                        self.view.ctrl:SendMsgGiveUpWarCell(itemData.PosID, itemData.SubPosID, self.id)
                    elseif itemData.Type == self.view.model.EnumLandType.ResPoint then
                        self.view.ctrl:SendMsgGiveUpResPoint(itemData.PosID, itemData.SubPosID, self.id)
                    end
                    self.time_UIText:SetText(UIUtil.GetFinialTime(time))
                    self.delete_Text:SetText(DataUtil.GetClientText(200022))--200022
                    HandleTimer(self, time)
                end)
    else
        --取消放弃
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateTimer)

        if itemData.Type == self.view.model.EnumLandType.WarCell then
            self.view.ctrl:SendMsgCancelGiveUpWarCell(itemData.PosID, itemData.SubPosID, self.id)
        elseif itemData.Type == self.view.model.EnumLandType.ResPoint then
            self.view.ctrl:SendMsgCancelGiveUpResPoint(itemData.PosID, itemData.SubPosID, self.id)
        end
        self.delete_Text:SetText(DataUtil.GetClientText(200016))--200016
        self.time_UIText:SetText("")
        self.UpdateTimer = nil
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.bgImg = self:AddComponent(UIImage, "bg")

    self.delete_UIImage = self:AddComponent(UIImage, "delete_UIButton", AtlasConfig.DynamicNationTex)
    self.delete_UIButton = self:AddComponent(UIButton, "delete_UIButton")
    self.delete_UIButton:SetOnClick(self, function()
        OnClickDeleteItem(self)
    end)

    self.pos_UIButton = self:AddComponent(UIButton, "Pos_UIText")
    self.pos_UIButton:SetOnClick(self, function()
        local itemData = self.view.model.landList[self.index + 1]
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200029), "是否跳转到坐标<color=#3E793F>" .. itemData.PosText .. "</color>", DataUtil.GetClientText(200007), DataUtil.GetClientText(200006),
                function()
                    UIManager:GetInstance():CloseTip()
                end,
                function()
                    self.view.ctrl:TurnToOnePosPoint(itemData.PosID, itemData.SubPosID)
                end
        )
    end)

    self.name_UIText = self:AddComponent(UIText, "Name_UIText")
    self.type_UIText = self:AddComponent(UIText, "Type_UIText")
    self.pos_UIText = self:AddComponent(UIText, "Pos_UIText")
    self.time_UIText = self:AddComponent(UIText, "Time_UIText")
    self.delete_Text = self:AddComponent(UIText, "delete_UIButton/delete_Text")
    self.UpdateTimer = nil
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    --按怪的种类来算item个数的
    local itemData = self.view.model.landList[real_index + 1]
    if itemData == nil then
        return
    end

    self.bgImg:SetEnabled(real_index % 2 == 0)

    self.index = real_index
    self.id = itemData.ID

    self.name_UIText:SetText(itemData.Name)
    self.type_UIText:SetText(itemData.TypeText)
    self.pos_UIText:SetText(itemData.PosText)

    if self.UpdateTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateTimer)
        self.UpdateTimer = nil
    end

    local remainTime = itemData.EndTime - math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
    if remainTime > 0 then
        self.delete_Text:SetText(DataUtil.GetClientText(200022))
        self.time_UIText:SetText(UIUtil.GetFinialTime(remainTime))
        HandleTimer(self, remainTime)
    else
        self.delete_Text:SetText(DataUtil.GetClientText(200016))
        self.time_UIText:SetText("")
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateTimer)
        self.UpdateTimer = nil
    end
end

UILandItem.OnCreate = OnCreate
UILandItem.OnRefresh = OnRefresh
UILandItem.OnDisable = OnDisable

return UILandItem