--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UINationTeamListItem = BaseClass("UINationTeamListItem", UIWrapComponent)
local base = UIWrapComponent

local function OnClickItemSelect(self)
    if self.canSelect == false then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200142))
        return
    end
    self.view.ctrl:TeamListItemClick(self.index)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化

    self.name_text = self:AddComponent(UIText, "teamSeria")
    self._btn = self:AddComponent(UIButton, "")
    self._btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        OnClickItemSelect(self)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index + 1
    self.nationTeamData = self.view.model.teamList[self.index]
    if not self.nationTeamData:IsTeamCardsEmpty() then
        self.canSelect = true

        local teamStateText = ""
        if self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
            teamStateText = DataUtil.GetClientText(200115)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
            teamStateText = DataUtil.GetClientText(200116)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
            teamStateText = DataUtil.GetClientText(200117)
        elseif self.nationTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
            teamStateText = DataUtil.GetClientText(200118)
        end

        if self.nationTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            --待命
            local nationState = self.view.model:GetTeamDispatchState(self.nationTeamData)
            if nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_RECRUIT then
                --征兵中
                teamStateText = DataUtil.GetClientText(200110)
                self.canSelect = false
            elseif nationState == NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_HURT then
                --受伤
                teamStateText = DataUtil.GetClientText(200119)
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
                teamStateText = DataUtil.GetClientText(200124)
            end
        end
        self.name_text:SetText(teamStateText)
    else
        self.name_text:SetText(DataUtil.GetClientText(200125))
    end
end

UINationTeamListItem.OnCreate = OnCreate
UINationTeamListItem.OnRefresh = OnRefresh

return UINationTeamListItem