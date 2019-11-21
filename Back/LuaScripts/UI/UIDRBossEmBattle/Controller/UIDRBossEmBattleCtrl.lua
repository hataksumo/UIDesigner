
--[[
-- 控制层
--]]

local UIDRBossEmBattleCtrl = BaseClass("UIDRBossEmBattleCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIDRBossEmBattle)
end

local function SaveBattleTeamData(self, cardData)
    local allTeamData = {}
    local transPos = {1, 0, 2}

    local update_team_id = MsgIDDefine.PBDRBOSS_UPDATE_TEAM_REQUEST
    local team_info = (MsgIDMap[update_team_id])()
    for k = 1, 3 do
        local roles = team_info.teams:add();
        roles.position = k;
        for i = 1, 3 do
            local role = roles.team:add();
            if cardData[k][1][i] ~= nil then
                role.host.cardId = cardData[k][1][i].cardXlsxData.id;
                role.host.level = cardData[k][1][i].cardXlsxData.level;
                role.host.star = cardData[k][1][i].cardXlsxData.starlv;
            else
                role.host.cardId = 0;
                role.host.level = 0;
                role.host.star = 0;
            end
            if cardData[k][2][i] ~= nil then
                role.guardian.cardId = cardData[k][2][i].cardXlsxData.id;
                role.guardian.level = cardData[k][2][i].cardXlsxData.level;
                role.guardian.star = cardData[k][2][i].cardXlsxData.starlv;
            else
                role.guardian.cardId = 0;
                role.guardian.level = 0;
                role.guardian.star = 0;
            end
            role.position = transPos[i];
        end
        allTeamData[k] = roles;
    end
    NetManager:GetInstance():SendMessage(update_team_id,team_info,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBDRBOSS_UPDATE_TEAM_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            DRBossData:GetInstance():ParseBattleTeam(allTeamData)
            DRBossData:GetInstance():UpdateTeamInfo({msg_obj.Packages.PlayerInRoom})
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_WORLD_BOSS_ROOM_INFO_REFRESH)
        end
    end)
end


UIDRBossEmBattleCtrl.CloseSelf = CloseSelf
UIDRBossEmBattleCtrl.SaveBattleTeamData = SaveBattleTeamData

return UIDRBossEmBattleCtrl