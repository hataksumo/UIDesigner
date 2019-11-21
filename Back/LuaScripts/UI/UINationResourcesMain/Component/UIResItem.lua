local UIResItem = BaseClass("UIResItem", UIWrapComponent)
local base = UIWrapComponent

local function RefreshGiveUpResPointTime(self, time)
    local countDown = time
    local function UpdateTime(self)
        countDown = countDown - 1
        self.timeSchedule_UIImage:SetFillVal(countDown / self.view.model.ResAbandonTime)
        self.timeText:SetText(UIUtil.GetFinialTime(countDown))
        if countDown <= 0 then
            self.timeObj:SetActive(false)
            self.timeSchedule_UIImage:SetFillVal(1)
            TimerManager:GetInstance():SimpleTimerStop(self.GiveUpTimer)
            self.GiveUpTimer = nil
        end
    end
    self.GiveUpTimer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateTime, self, false, false)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.name_text = self:AddComponent(UIText, "nameText")
    self.icon = self:AddComponent(UIImage, "Icon", AtlasConfig.DynamicNationTex)
    self.flagImage = self:AddComponent(UIImage, "flag", AtlasConfig.DynamicNationTex)
    self.stateImage = self:AddComponent(UIImage, "state", AtlasConfig.DynamicNationTex)

    self.item_btn = self:AddComponent(UIButton, "")
    self.item_btn:SetOnClick(self, function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view:OnClickResPointItem(self.id)
    end)

    self.timeObj = UIUtil.FindTrans(self.transform, "timeBg").gameObject
    self.timeText = self:AddComponent(UIText, "timeBg/timeText")
    self.timeSchedule_UIImage = self:AddComponent(UIImage, "timeBg/schedule")
    self.timeObj:SetActive(false)
end

local function OnRefresh(self, itemData)
    if itemData ~= nil then
        self.id = itemData.PosID
        self.name_text:SetText(itemData.Name)
        self.icon:SetSpriteName(itemData.ResImage)

        --采集优先级最高
        if itemData.IsHaveCollect then
            self.stateImage:SetSpriteName("ui_t_c2_613")
            self.stateImage:SetEnabled(true)
        elseif itemData.IsHaveDefend then
            self.stateImage:SetSpriteName("ui_t_c2_629")
            self.stateImage:SetEnabled(true)
        else
            self.stateImage:SetEnabled(false)
        end

        --旗子的状态
        if itemData.State == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
            --未占领
            self.flagImage:SetEnabled(false)
        else
            if itemData.State == NationDefine.NATION_RESOURCE_POINT_STATE.Mine then
                --自己占领
                self.flagImage:SetSpriteName("ui_t_c2_617")
            elseif itemData.State == NationDefine.NATION_RESOURCE_POINT_STATE.Ally then
                --盟友占领
                self.flagImage:SetSpriteName("ui_t_c2_616")
            elseif itemData.State == NationDefine.NATION_RESOURCE_POINT_STATE.Enemy then
                --他人占领
                self.flagImage:SetSpriteName("ui_t_c2_615")
            end
            self.flagImage:SetEnabled(true)
        end

        if self.GiveUpTimer ~= nil then
            TimerManager:GetInstance():SimpleTimerStop(self.GiveUpTimer)
            self.GiveUpTimer = nil
        end

        if itemData.AbandonTime > 0 then
            self.timeSchedule_UIImage:SetFillVal(itemData.AbandonTime / self.view.model.ResAbandonTime)
            self.timeText:SetText(UIUtil.GetFinialTime(itemData.AbandonTime))
            self.timeObj:SetActive(true)
            RefreshGiveUpResPointTime(self, itemData.AbandonTime)
        else
            self.timeObj:SetActive(false)
        end

        self.transform.gameObject:SetActive(true)
    else
        self.transform.gameObject:SetActive(false)
    end
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.GiveUpTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.GiveUpTimer)
        self.GiveUpTimer = nil
    end
end

UIResItem.OnCreate = OnCreate
UIResItem.OnDisable = OnDisable
UIResItem.OnRefresh = OnRefresh

return UIResItem