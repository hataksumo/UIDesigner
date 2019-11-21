local UINationTeamListItem = BaseClass("UINationTeamListItem", UIWrapComponent)
local base = UIWrapComponent

--计时器
local function HandleCountDownTimer(self, time, showText)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.timeText:SetText(showText .. UIUtil.GetFinialTime(countDown))
        if self.view.model.currentSelectIndex == self.index then
            --self.view.selectTeamPanel.teamSelectTrans_TimeText:SetText(showText .. UIUtil.GetFinialTime(countDown))
            self.view.teamSelectTrans_TimeText:SetText(showText .. UIUtil.GetFinialTime(countDown))
        end
        if countDown < 1 then
            self.timeText:SetText("")
            if self.view.model.currentSelectIndex == self.index then
                --self.view.selectTeamPanel.teamSelectTrans_TimeText:SetText("")
                --self.view.selectTeamPanel.teamSelectTrans_TitleText:SetText(self.teamText)
                self.view.teamSelectTrans_TimeText:SetText("")
                self.view.teamSelectTrans_TitleText:SetText(self.teamText)
            end
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.name_text = self:AddComponent(UIText, "teamSeria")
    self.timeText = self:AddComponent(UIText, "textTime")
    self._btn = self:AddComponent(UIButton, "bg")
    self._btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view.ctrl:TeamListItemClick(self.index)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1
    self.nationTeamData = self.view.model.teamList[self.index]

    local countdownTime = 0

    if self.UpdateDataTimer ~= nil then
        self.timeText:SetText("")
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end

    if not self.nationTeamData:IsTeamCardsEmpty() then
        local teamStateText = ""
        if self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
            teamStateText = DataUtil.GetClientText(200115)
            countdownTime = math.floor((self.nationTeamData.currentBehavior.endTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
            teamStateText = DataUtil.GetClientText(200116)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
            teamStateText = DataUtil.GetClientText(200117)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
            teamStateText = DataUtil.GetClientText(200118)
            countdownTime = math.floor((self.nationTeamData.currentBehavior.endTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
        end

        if self.nationTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            --待命
            local nationState = self.view.model:GetTeamDispatchState(self.nationTeamData)
            if nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_RECRUIT then
                --征兵中
                teamStateText = DataUtil.GetClientText(200110)
                countdownTime = self.view.model:GetLongestTimeInArmyByTeam(self.nationTeamData)
            elseif nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_HURT then
                --受伤
                teamStateText = DataUtil.GetClientText(200119)
                countdownTime = self.view.model:GetLongsetTimeInJuryByTeamId(self.nationTeamData)
            else
                if self.index == 1 then
                    teamStateText = DataUtil.GetClientText(200120)
                end
                if self.index == 2 then
                    teamStateText = DataUtil.GetClientText(200121)
                end
                if self.index == 3 then
                    teamStateText = DataUtil.GetClientText(200122)
                end
            end
        elseif self.nationTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL
                or self.nationTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_RES then
            if self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY then
                teamStateText = DataUtil.GetClientText(200039)
            end
        elseif self.nationTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
            if self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
                teamStateText = DataUtil.GetClientText(200084)
            end
        end

        self.teamText = teamStateText
        if countdownTime > 0 then
            self.name_text:SetText("")
            self.timeText:SetText(teamStateText .. UIUtil.GetFinialTime(countdownTime))
            if self.view.model.currentSelectIndex == self.index then
                --self.view.selectTeamPanel.teamSelectTrans_TitleText:SetText("")
                --self.view.selectTeamPanel.teamSelectTrans_TimeText:SetText(teamStateText .. UIUtil.GetFinialTime(countdownTime))
                self.view.teamSelectTrans_TitleText:SetText("")
                self.view.teamSelectTrans_TimeText:SetText(teamStateText .. UIUtil.GetFinialTime(countdownTime))
            end
            HandleCountDownTimer(self, countdownTime, teamStateText)
        else
            self.name_text:SetText(teamStateText)
            self.timeText:SetText("")
            if self.view.model.currentSelectIndex == self.index then
                --self.view.selectTeamPanel.teamSelectTrans_TitleText:SetText(teamStateText)
                --self.view.selectTeamPanel.teamSelectTrans_TimeText:SetText("")
                self.view.teamSelectTrans_TitleText:SetText(teamStateText)
                self.view.teamSelectTrans_TimeText:SetText("")
            end
        end
    else
        self.name_text:SetText(DataUtil.GetClientText(200125))
        self.timeText:SetText("")
        if self.view.model.currentSelectIndex == self.index then
            --self.view.selectTeamPanel.teamSelectTrans_TitleText:SetText(DataUtil.GetClientText(200125))
            --self.view.selectTeamPanel.teamSelectTrans_TimeText:SetText("")
            self.view.teamSelectTrans_TitleText:SetText(DataUtil.GetClientText(200125))
            self.view.teamSelectTrans_TimeText:SetText("")
        end
    end
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateDataTimer ~= nil then
        self.timeText:SetText("")
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

UINationTeamListItem.OnCreate = OnCreate
UINationTeamListItem.OnRefresh = OnRefresh
UINationTeamListItem.OnDisable = OnDisable
return UINationTeamListItem