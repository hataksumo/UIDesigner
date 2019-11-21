--[[
    国战网络模块支持
]]
local NationNetManager = BaseClass("NationNetManager", Singleton)
local MsgIDDefine = require "Net.Config.MsgIDDefine"
local MsgIDMap = require "Net.Config.MsgIDMap"

local function __init(self)
    --事件
    self.nationGlobalMsg = nil
end

---- 析构函数
--local function __delete(self)
--    self.nationGlobalMsg = nil
--end

--创建队伍
local function ExChangeTeamInfo(self, teamId, cardId, position, townId, myCallback)
    --Logger.LogErrorVars(" ExChangeTeamInfo teamId : ", teamId, " cardId : ", cardId, " position : ", position, " townId : ", townId)
    local msdId = MsgIDDefine.PBNATION_TEAM_EXCHANGE_TEAM_CARD_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.teamId = teamId
    msdObj.cardId = cardId
    msdObj.position = position
    msdObj.townId = townId

    local callbackFunc = function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("PBNATION_TEAM_CREAT_TEAM_REQUEST出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        NationTeamData:GetInstance():UpdateNationTeamFormation(msg_obj.Packages)
        if msg_obj.Packages == nil or msg_obj.Packages._is_null then
        else
            NationCardData:GetInstance():UpdateNationCardsByNetData(msg_obj.Packages.nation_card)
        end
        if params.callBack ~= nil then
            params.callBack()
        end
    end

    NetManager:GetInstance():SendMessage(msdId, msdObj, callbackFunc, { callBack = myCallback })
end

--[[
    队伍命令移动
]]
local function SendTeamMoveRequest(self, teamId, cellId)
    local msdId = MsgIDDefine.PBNATION_TEAM_TEAM_MOVE_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.teamId = teamId
    msdObj.cellId = cellId
    local callbackFunc = function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "队伍命令移动接收信息失败：ERROR SendTeamMoveRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        --Logger.Log("PBNATION_TEAM_TEAM_MOVE_RESPONSE :")
        --Logger.Log("params.teamId :" .. params.teamId)
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end
    --Logger.Log("PBNATION_TEAM_TEAM_MOVE_REQUEST :")
    --Logger.Log("teamId :" .. teamId)
    --Logger.Log("cellId :" .. cellId)
    NetManager:GetInstance():SendMessage(msdId, msdObj, callbackFunc, { ["teamId"] = teamId })
end

--撤退,队伍行为撤退
local function SendMsgTeamRetreat(self, teamID, callback)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_BACK_REQUEST
    local msgObj = MsgIDMap[msgID]()
    --optional int32 type = 2;// 1:资源区撤退 2：接战区撤退 3.攻城战撤退
    msgObj.teamId = teamID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgTeamRetreat 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
        if params.callback ~= nil then
            params.callback()
        end
    end, { teamId = teamID, callback = callback })
end

--立即撤退,队伍行为变为待命
local function SendMsgTeamRightNowRetreat(self, teamID,quickReturn)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_COST_GEM_BACK_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.teamId = teamID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        BackpackData:GetInstance():UpdateItemData(CoinDefine.Diamond,- params.quickReturn)
    end,{ quickReturn = quickReturn})
end

--请求能否攻打这个点，是否有过路权限
local function SendGetCanCrossThisWay(self, townId, callback, cellID)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_CROSS_VERIFY_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = townId
    msgObj.cellId = cellID or 0
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("判断是否有过路权限出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if msg_obj.Packages.isCan then
            params.callback()
        else
            UISpecial:GetInstance():UITipText("无领地相邻，无法出征")
        end
    end, { callback = callback })
end

--[[
    获取国战所有玩家城镇信息
]]
local function SendGetNationRoleTownsRequest(self, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_MAP_GET_NATION_ROLE_TOWNS_REQUEST
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "国战所有玩家城镇接收信息失败：ERROR SendGetNationRoleTownsRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end
        NationTownData:GetInstance():ParseNationTownData(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end

    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { userDefineData = userDefineData, callbackFunc = myCallback })
end

--[[
    获取国战所有卡牌
]]
local function SendGetNationCardsRequest(self, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_CARD_GET_NATION_CARDS_REQUEST
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "国战所有卡牌接收信息失败：ERROR SendGetNationCardsRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end
        NationCardData:GetInstance():ParseAllNationCardData(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end

    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { userDefineData = userDefineData, callbackFunc = myCallback })
end

--[[
    获取国战所有队伍
]]
local function SendGetNationTeamsRequest(self, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_TEAM_GET_NATION_TEAMS_REQUEST
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "国战队伍接收信息失败：ERROR SendGetNationTeamsRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end
        NationTeamData:GetInstance():ParseNationTeamData(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end

    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { userDefineData = userDefineData, callbackFunc = myCallback })
end
----[[
--    国战重置军团
--]]
--local function SendNationResetCropsRequest(self,armyId)
--    local msdId = MsgIDDefine.PBNATION_TEAM_RESET_ARMY_GROUP_REQUEST
--    local msdObj = MsgIDMap[msdId]()
--    msdObj.armyId  = armyId
--    local callbackFunc = function(self,msg_obj)
--        if msg_obj.OpCode ~= 0 then
--            Logger.LogAny( msg_obj.Packages ,"国战重置军团接收信息失败：ERROR SendGetNationTeamsRequest ~~ ； ")
--            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
--            return
--        end
--    end
--
--    NetManager:GetInstance():SendMessage(msdId, msdObj, Bind(self, callbackFunc))
--end
--
----[[
--    国战解锁军团
--]]
--local function SendNationCropsUnlockRequest(self,armyId)
--    local msdId = MsgIDDefine.PBNATION_TEAM_UNLOCK_ARMY_GROUP_REQUEST
--    local msdObj = MsgIDMap[msdId]()
--    msdObj.armyId  = armyId
--    local callbackFunc = function(self,msg_obj)
--        if msg_obj.OpCode ~= 0 then
--            Logger.LogAny( msg_obj.Packages ,"国战解锁军团接收信息失败：ERROR SendGetNationTeamsRequest ~~ ； ")
--            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
--            return
--        end
--    end
--
--    NetManager:GetInstance():SendMessage(msdId, msdObj, Bind(self, callbackFunc))
--end
--
----[[
--    国战转换军团
--]]
--local function SendNationCropsChangeRequest(self,armyId,teamId)
--    local msdId = MsgIDDefine.PBNATION_TEAM_CONVERT_TEAM_ARMY_GROUP_REQUEST
--    local msdObj = MsgIDMap[msdId]()
--    msdObj.armyId  = armyId
--    msdObj.teamId   = teamId
--    local callbackFunc = function(self,msg_obj)
--        if msg_obj.OpCode ~= 0 then
--            Logger.LogAny( msg_obj.Packages ,"国战转换军团接收信息失败：ERROR SendGetNationTeamsRequest ~~ ； ")
--            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
--            return
--        end
--    end
--    NetManager:GetInstance():SendMessage(msdId, msdObj, Bind(self, callbackFunc))
--end


--获取玩家队伍战斗的日志数据
local function SendGetPlayerTeamBattleLogsData(self, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_FIGHT_LOGS_REQUEST
    NetManager:GetInstance():SendMessage(msgID, nil, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取玩家队伍日志：ERROR SendGetPlayerTeamBattleLogsData ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end, { callbackFunc = myCallback })
end

--获取国战纪事的数据
local function SendGetRecordEventData(self, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_EVENT_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.season = NationPlayerData:GetInstance().nationSeason

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取国战纪事数据：ERROR SendGetRecordEventData ~~")
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode,msg_obj.Packages.msg, nil)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,"", msg_obj.Packages)
        end
    end, { callbackFunc = myCallback })
end

--获取国战纪事的奖励
local function SendGetRecordEventReward(self, activeID, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_EVENT_REWARD_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.eventId = activeID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取国战纪事的奖励：ERROR SendGetRecordEventReward ~~")
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode,msg_obj.Packages.msg,params.activeID, 0)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,"",params.activeID, msg_obj.Packages.rewardState)
        end
    end, { callbackFunc = myCallback,activeID = activeID })
end

--获取玩家收藏的坐标列表
local function SendGetCollectPositionList(self, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_OPEN_POS_COLLECT_REQUEST

    NetManager:GetInstance():SendMessage(msgID, nil, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取坐标收藏列表：ERROR SendGetCollectPositionList ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages.nationPosCollect)
        end
    end, { callbackFunc = myCallback })
end

--收藏添加一个坐标点
local function SendAddNewCollectPosition(self, tab, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_ADD_POS_COLLECT_REQUEST
    local msgObj = MsgIDMap[msgID]()
    local itemTab = msgObj.nationPosCollect
    itemTab.townId = tab.townId
    itemTab.monsterId = tab.monsterId
    itemTab.regionId = tab.regionId
    itemTab.x = tab.x
    itemTab.y = tab.y
    itemTab.rename = tab.rename
    itemTab.index = 0

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "收藏添加一个坐标点：ERROR SendAddNewCollectPosition ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages.result)
        end
    end, { callbackFunc = myCallback })
end

--删除一个收藏的坐标点
local function SendRemoveOneCollectPosition(self, id, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_REMOVE_POS_COLLECT_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.index = id

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "删除一个收藏的坐标点：ERROR SendRemoveOneCollectPosition ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc()
        end
    end, { callbackFunc = myCallback })
end

--修改一个收藏坐标点的名称
local function SendChangePointPosName(self, id, str, myCallback)
    local msgID = MsgIDDefine.PBNATION_NATION_RENAME_POS_COLLECT_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.index = id
    msgObj.rename = str

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "修改一个收藏坐标点的名称：ERROR SendChangePointPosName ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc()
        end
    end, { callbackFunc = myCallback })
end

--[[
   玩家第一次进入国战，获得所有出生区域状态数据
]]
local function SendGetAllBornRegionRequest(self, myCallback)
    local msgId = MsgIDDefine.PBNATION_GET_BRON_REGION_REQUEST

    NetManager:GetInstance():SendMessage(msgId, nil, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendGetAllBornRegionRequest出错~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj)
        end
    end, { callbackFunc = myCallback })
end

--[[
   玩家第一次进入国战，选择出生区域协议
]]
local function SendChoiceAscriptionRequest(self, ascription,serverId, userDefineData, myCallback)
    local msgId = MsgIDDefine.PBNATION_CHOICE_ASCRIPTION_REQUEST
    local msdObj = MsgIDMap[msgId]()
    msdObj.ascription = ascription
    msdObj.serverId = serverId
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local packages = msg_obj.Packages
        local msgInfo = nil
        if packages == nil or packages._is_null then
        else
            msgInfo = packages.msg
        end
        --Logger.LogErrorVars(" SendChoiceAscriptionRequest msg_obj.OpCode : ",msg_obj.OpCode)
        if msg_obj.OpCode ~= 0 then

            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode,msgInfo, params.userDefineData,params.ascription,params.serverId)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,msgInfo, params.userDefineData,params.ascription,params.serverId)
        end
    end
    NetManager:GetInstance():SendMessage(msgId, msdObj, Bind(self, callbackFunc), { userDefineData = userDefineData, ascription = ascription,serverId = serverId, callbackFunc = myCallback })
end

--[[
    发送进入国战主程协议
    userDefineData 自定义数据
]]
local function SendEnterNationRequest(self, userDefineData, myCallback)
    local msd_id = MsgIDDefine.PBNATION_ENTER_NATION_REQUEST
    --local msg_data = (MsgIDMap[msd_id])()
    local msg_data = nil
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogErrorVars("发送进入国战主程协议  SendEnterNationRequest  错误码 opcode : ", msg_obj.OpCode,
                    "错误消息 : ", msg_obj.Packages.msg
            )
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end

        NationPlayerData:GetInstance():ParseNationPlayerData(msg_obj.Packages)
        NationOccupyData:GetInstance():ParseNationResAreaData(msg_obj.Packages.syscSourceArea)
        NationOccupyData:GetInstance():ParseNationWallCellData(msg_obj.Packages.cellId)
        NationOccupyData:GetInstance():ParseAbandonDataByServer(msg_obj.Packages.syscAbandonTime)
        NationMainTaskData:GetInstance():ParseServerData(msg_obj.Packages.majorMission)
        NationTownData:GetInstance():ParseNationTownDefRecoverData(msg_obj.Packages.syncTime)


        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { userDefineData = userDefineData, callbackFunc = myCallback })
end


--[[
    发送刷新国战资源协议
]]
local function SendSyncNationResourceRequest(self, myCallback)
    local msd_id = MsgIDDefine.PBNATION_SYNC_NATION_RESOURCE_REQUEST
    --local msg_data = (MsgIDMap[msd_id])()
    local msg_data = nil
    --Logger.LogErrorVars("发送刷新国战资源协议")
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("error； " .. " opcode :" .. msg_obj.OpCode)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        NationPlayerData:GetInstance():ParseServerNationResources(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { callbackFunc = myCallback })
end



--[[
    发送刷新国战声望协议
]]
local function SendSyncNationFameRequest(self, myCallback)
    local msd_id = MsgIDDefine.PBNATION_SYNC_NATION_FAME_REQUEST
    --local msg_data = (MsgIDMap[msd_id])()
    local msg_data = nil
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("error； " .. " opcode :" .. msg_obj.OpCode)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        NationPlayerData:GetInstance():ParseServerNationFameData(msg_obj.Packages.nation_fame)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { callbackFunc = myCallback })
end

--[[
  获取城镇建筑信息
]]
local function SendGetNationTownBuildingRequest(self, buildingId, myCallback)
    local msd_id = MsgIDDefine.PBNATION_MAP_GET_NATION_TOWN_BUILDING_REQUEST
    local msg_data = (MsgIDMap[msd_id])()
    msg_data.buildingId = buildingId

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny("error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        local msgBuildingId = params.buildingId
        --Logger.LogVars(" msgBuildingId ",msgBuildingId ," params : ",params)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msgBuildingId, msg_obj.Packages.nation_role_town)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { callbackFunc = myCallback, buildingId = buildingId })
end


--[[
  获取攻城战建筑信息
]]
local function SendGetNationWarBuildingRequest(self, buildingId, myCallback)
    local msd_id = MsgIDDefine.PBNATION_MAP_GET_NATION_WAR_BUILDING_REQUEST
    local msg_data = MsgIDMap[msd_id]()
    msg_data.buildingId = buildingId
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny("error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildingId, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { callbackFunc = myCallback, buildingId = buildingId })
end

--[[
    获取攻城战格子信息
]]
local function SendGetNationWarCellRequest(self, buildID, cellId, myCallback)
    local msd_id = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_BATTLE_AREA_TARGET_INFO_REQUEST
    local msg_data = (MsgIDMap[msd_id])()
    msg_data.townId = buildID
    msg_data.targetId = cellId

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny("error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.cellId, msg_obj.Packages)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { cellId = cellId, callbackFunc = myCallback })
end

--获取一个资源区内一个资源点的详细数据
local function SendGetOneDetailResourcesPointData(self, buldID, posID, myCallback)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_SOURCE_TARGET_INFO_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buldID
    msgObj.targetPos = posID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendGetOneDetailResourcesPointData 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end, { callbackFunc = myCallback })
end

--[[
    队伍派遣剿匪命令
]]
local function SendTeamDispatchRequest(self, teamId, townId)
    local msdId = MsgIDDefine.PBNATION_TEAM_TEAM_DISPATCH_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.teamId = teamId
    msdObj.townId = townId

    local callbackFunc = function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "队伍派遣剿匪命令接收信息失败：ERROR SendTeamDispatchRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages, params.teamId, true)
    end
    NetManager:GetInstance():SendMessage(msdId, msdObj, callbackFunc, { ["teamId"] = teamId })
end

---解鎖軍團請求
local function SendGuardUnlockRequest(self, _armyId)
    local msdId = MsgIDDefine.PBNATION_TEAM_UNLOCK_ARMY_GROUP_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.armyId = _armyId
    NetManager:GetInstance():SendMessage(msdId, msdObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("PBNATION_TEAM_UNLOCK_ARMY_GROUP_REQUEST 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        -- 更新軍團信息
        NationTeamData:GetInstance():UpdateUnLockNationCropsData(_armyId)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE)
        --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE, _armyId, NationDefine.NATION_GUARDIAN_STATUS.UN_LOCK)
    end)
end

---重置军团请求
local function SendGuardResetRequest(self, _armyId,reConsume)
    local msdId = MsgIDDefine.PBNATION_TEAM_RESET_ARMY_GROUP_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.armyId = _armyId
    NetManager:GetInstance():SendMessage(msdId, msdObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("PBNATION_TEAM_RESET_ARMY_GROUP_REQUEST 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        local consume = params.reConsume
        if consume ~= nil then
            for i, v in ipairs(consume) do
                BackpackData:GetInstance():UpdateItemData(v.id,- v.num)
            end
        end
        -- 更新重置軍團信息
        NationTeamData:GetInstance():UpdateResetNationCropsData(_armyId)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE)
        --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE, _armyId, NationDefine.NATION_GUARDIAN_STATUS.RESET)
    end,{reConsume = reConsume})
end

local function SendConvertGuardRequest(self, _teamId, _armyId, _beforeArmyId)
    local msdId = MsgIDDefine.PBNATION_TEAM_CONVERT_TEAM_ARMY_GROUP_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.armyId = _armyId
    msdObj.teamId = _teamId
    NetManager:GetInstance():SendMessage(msdId, msdObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("PBNATION_TEAM_CONVERT_TEAM_ARMY_GROUP_REQUEST 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        -- 更新转换軍團信息
        NationTeamData:GetInstance():UpdateChangeNationCropsData(_armyId, _teamId)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE)
        --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_GUARDIAN_UPDATE, _armyId, NationDefine.NATION_GUARDIAN_STATUS.CHALLENGE, _beforeArmyId)
    end)
end



----[[
--    队伍剿匪命令
--]]
--local function SendFightingBanditsRequest(self,teamId,townId,pointId,myCallback)
--    local msdId = MsgIDDefine.PBNATION_TEAM_FIGHTING_BANDITS_REQUEST
--    local msdObj = MsgIDMap[msdId]()
--    msdObj.teamId =  math.modf(teamId)
--    msdObj.townId = math.modf(townId)
--    msdObj.pointId =  math.modf(pointId)
--    local callbackFunc = function(...)
--        Logger.LogAny( {...} ,"收到消息 ； ")
--        if msg_obj.OpCode ~= 0 then
--            Logger.LogAny( msg_obj.Packages ,"队伍剿匪命令接收信息失败：ERROR SendFightingBanditsRequest ~~ ； ")
--            if msg_obj.Packages then
--                UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
--            end
--            return
--        end
--        local params = msg_obj.Params
--        local townId = params.townId
--        local pointId = params.pointId
--        local teamId = params.teamId
--        Logger.Log("PBNATION_TEAM_FIGHTING_BANDITS_REQUEST :")
--        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior,params.teamId)
--
--        if params.callbackFunc ~= nil then
--            params.callbackFunc(msg_obj.OpCode,townId,pointId,teamId)
--        end
--    end
--    NetManager:GetInstance():SendMessage(msdId, msdObj,  Bind(self, callbackFunc),{callbackFunc = myCallback, teamId=teamId,townId = townId,pointId = pointId})
--end


--[[
  队伍剿匪命令
]]
local function SendFightingBanditsRequest(self, teamId, townId, pointId, myCallback)
    local msd_id = MsgIDDefine.PBNATION_TEAM_FIGHTING_BANDITS_REQUEST
    local msg_data = (MsgIDMap[msd_id])()
    msg_data.teamId = teamId
    msg_data.townId = townId
    msg_data.pointId = pointId

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(" SendFightingBanditsRequest error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            if msg_obj.Packages then
                UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            end
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        local townId = params.townId
        local pointId = params.pointId
        local teamId = params.teamId
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, townId, pointId, teamId)
        end
    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { callbackFunc = myCallback, teamId = teamId, townId = townId, pointId = pointId })
end


--[[
    发送刷新一个卡牌的协议 目前只用于刷新卡牌征募
]]
local function SendSyncNationOneCardRequest(self, cardId, myCallback)
    local msd_id = MsgIDDefine.PBNATION_CARD_SYNC_NATION_ONE_CARD_REQUEST
    local msg_data = (MsgIDMap[msd_id])()
    msg_data.cardId = cardId

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendSyncNationOneCardRequest； ", " opcode : ", msg_obj.OpCode, " msg_obj.Packages : ", msg_obj.Packages)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --Logger.LogVars("同步卡牌数据正常~ SendSyncNationOneCardRequest； ", " opcode : ", msg_obj.OpCode, " msg_obj.Packages : ", msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.cardId, msg_obj.Packages.oneCard)
        end

    end

    NetManager:GetInstance():SendMessage(msd_id, msg_data, Bind(self, callbackFunc), { cardId = cardId, callbackFunc = myCallback },false)
end

--获得讨伐区的怪点数据
local function SendMsgGetOutlawData(self, buildID, areaID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_CRUSADE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.crusadeId = buildID
    msgObj.regionId = areaID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgGetOutlawData 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages.nationCrusadePoint, params.buildID)
        end
    end, { buildID = buildID, callbackFunc = callbackFunc })
end

--开始攻打一个讨伐区的怪物
local function SendFightingCrusadeRequest(self, teamID, buildID, regionID, pointID, pos)
    local msgID = MsgIDDefine.PBNATION_TEAM_FIGHTING_CRUSADE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.crusadeId = buildID
    msgObj.regionId = regionID
    msgObj.pointId = pointID
    msgObj.teamId = teamID
    msgObj.position = pos
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendFightingCrusadeRequest 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end, { teamId = teamID })
end

--获取资源区的资源点数据
local function SendMsgGetResourcesPointData(self, buildID, startIndex, endIndex, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_SOURCE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.startPos = startIndex
    msgObj.endPos = endIndex
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgGetResourcesPointData 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages.source_pos_state)
        end
    end, { callbackFunc = callbackFunc })
end

--出征或驻守一个资源点
local function SendMsgBattleResourcesPoint(self, teamID, buildID, type, pos)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_SOURCE_REQUSET
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.type = type
    msgObj.teamId = teamID
    msgObj.pos = pos
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgBattleResourcesPoint 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end, { teamId = teamID })
end

--出征或驻守一个接战区
local function SendMsgAttackWarCell(self, teamID, buildID, type, cellID)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_BATTLE_AREA_REQUSET
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.type = type
    msgObj.teamId = teamID
    msgObj.cellId = cellID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgAttackWarCell 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end, { teamId = teamID })
end

--攻城战， 破城
local function SendMsgSiegeBreakCity(self, teamID, buildID)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_BREAK_BUILDING_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.buildingId = buildID
    msgObj.teamId = teamID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgSiegeBreakCity 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end, { teamId = teamID })
end

--攻城战，杀敌
local function SendMsgSiegeKillEnemy(self, teamID, buildID)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_KILL_ENEMY_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.buildingId = buildID
    msgObj.teamId = teamID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgSiegeKillEnemy 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        local params = msg_obj.Params
        NationTeamData:GetInstance():UpdateOneTeamBehaviorData(msg_obj.Packages.nationTeamBehavior, params.teamId, true)
    end, { teamId = teamID })
end

--增量获取联盟列表
local function SendAddGetUnionListRequest(self, unionIndex, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_UNION_LIST_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.unionIndex = unionIndex

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "增量获取联盟列表：ERROR SendAddGetUnionListRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --repeated Union union = 1;
        --optional int32 countDown = 2; // 可加入联盟倒计时（秒）
        --optional int32 maxIndex = 3; // 最大页数
        --NationUnionData:GetInstance():ParseNationUserUnionData(msg_obj.Packages.union)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.unionIndex, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { unionIndex = unionIndex, callbackFunc = myCallback })
end

--增量获取邀请推荐玩家列表
local function SendAddUnionInviteRecommendRequest(self, index, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_INVITE_RECOMMEND_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.index = index

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "增量获取邀请推荐玩家列表：ERROR SendAddUnionInviteRecommendRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --repeated Member member = 1;
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.index, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { index = index, callbackFunc = myCallback })
end

--联盟邀请列表 未进入联盟的列表
local function SendGetUnionInviteListRequest(self, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_INVITE_LIST_REQUEST

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "联盟邀请列表：ERROR SendGetUnionInviteListRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --repeated Union invitation = 1; // 联盟邀请
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end

    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { callbackFunc = myCallback })
end

--搜索联盟
local function SendSearchUnionRequest(self, name, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_SEARCH_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.name = name

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "搜索联盟：ERROR SendSearchUnionRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --optional Union union = 1;
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.name, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { name = name, callbackFunc = myCallback })
end

--获取联盟成员列表
local function SendGetUnionMemberListRequest(self, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_UNION_MEMBER_REQUEST

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取联盟成员列表：ERROR SendGetUnionMemberListRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --NationUnionData:GetInstance():ParseNationMemberData(msg_obj.Packages.member)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end

    end

    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { callbackFunc = myCallback })
end


--[[
   申请/取消申请加入联盟
]]
local function SendNationApplyUnionRequest(self, id, type, canJoinState, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_APPLY_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.id = id -- 联盟id
    msgObj.type = type -- 1-申请，2-取消申请

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "申请/取消申请加入联盟：ERROR SendNationApplyUnionRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.id, params.type, params.canJoinState, msg_obj.Packages.isJoin, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { id = id, canJoinState = canJoinState, type = type, callbackFunc = myCallback })
end



--[[
   联盟数据刷新
]]
local function SendNationUnionRefreshRequest(self, id, myCallback)
    local msgId = MsgIDDefine.PBNATION_UNION_UNION_REFRESH_REQUEST
    local msgObj = MsgIDMap[msgId]()
    msgObj.id = id -- 联盟id

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "联盟数据刷新：ERROR SendNationUnionRefreshRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.id, msg_obj.Packages.union)
        end
    end
    NetManager:GetInstance():SendMessage(msgId, msgObj, Bind(self, callbackFunc), { id = id, callbackFunc = myCallback })
end

--获取联盟申请列表
local function SendGetUnionApplyListRequest(self, myCallback)
    local msgId = MsgIDDefine.PBNATION_UNION_APPLY_LIST_REQUEST

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取联盟申请列表：ERROR SendGetUnionApplyListRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --repeated Member member = 1;
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end

    NetManager:GetInstance():SendMessage(msgId, nil, Bind(self, callbackFunc), { callbackFunc = myCallback })
end

--获取联盟的日志数据
local function SendNetMsgGetAllianceLogData(self, type, myCallback)
    local msgID = MsgIDDefine.PBNATION_UNION_EVENT_LIST_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.type = type

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取联盟日志：ERROR SendNetMsgGetAllianceLogData ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end, { callbackFunc = myCallback })
end

--获取联盟的某个攻城排行榜
local function SendNetMsgGetAllianceAttackCityRankData(self, timeStamp, myCallback)
    local msgID = MsgIDDefine.PBNATION_UNION_UNION_RANKS_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.time = timeStamp

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取联盟的某个攻城排行榜：ERROR SendNetMsgGetAllianceAttackCityRankData ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages)
        end
    end, { callbackFunc = myCallback })
end

--[[
   处理申请请求
]]
local function SendNationDealApplyRequest(self, uid, agree, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_DEAL_APPLY_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid -- 玩家id
    msgObj.agree = agree -- 是否同意

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "处理申请请求：ERROR SendNationDealApplyRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.uid, params.agree)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.uid, params.agree)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { uid = uid, agree = agree, callbackFunc = myCallback })
end

-- 申请加入条件设置
local function SendNationSetApplyRequest(self, apply, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_SET_APPLY_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.apply = apply -- 0-关闭申请，1-任何人申请即加入，2-申请审批
    msgObj.force = 0
    msgObj.level = 0
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "申请加入条件设置：ERROR SendNationSetApplyRequest ~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc()
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { apply = apply, callbackFunc = myCallback })
end

--踢出联盟
local function SendNationKickOutUnionRequest(self, uid, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_KICKOUT_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "踢出联盟：ERROR SendNationKickOutUnionRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.uid)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { uid = uid, callbackFunc = myCallback })
end

--修改公告
local function SendNationUpdateUnionNoticeRequest(self, notice, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_UPDATE_NOTICE_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.notice = notice

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "修改公告：ERROR SendNationUpdateUnionNoticeRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.notice)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { notice = notice, callbackFunc = myCallback })
end

--邀请其他玩家加入联盟
local function SendNationInviteUnionRequest(self, uid, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_INVITE_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "邀请其他玩家加入联盟：ERROR SendNationInviteUnionRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.uid)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.uid)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { uid = uid, callbackFunc = myCallback })
end


--[[
   处理邀请请求(非联盟成员同意加入联盟)
]]
local function SendNationDealInviteRequest(self, unionId, agree, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_DEAL_INVITE_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.unionId = unionId -- 联盟id
    msgObj.agree = agree -- 是否同意 bool

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "处理邀请请求：ERROR SendNationDealInviteRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end
        --optional bool isJoin = 1;
        --optional Union union = 2;
        --optional Member member = 3;// 职位

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.unionId, params.agree, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { unionId = unionId, agree = agree, callbackFunc = myCallback })
end


--[[
   开始或者结束同步国战线路
]]
local function SendNationTeamSyncPathRequest(self, type, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_TEAM_TEAM_SYNC_PATH_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.type = type -- 1:进入国战 2:离开国战

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("处理开始或者结束同步国战线路：ERROR SendNationTeamSyncPathRequest ~~ ；type ", params.type, " Packages : ", msg_obj.Packages)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end
        --repeated NationArmyPath nationArmyPath = 1;
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData, params.type, msg_obj.Packages.nationArmyPath)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { type = type, userDefineData = userDefineData, callbackFunc = myCallback })
end

--[[
    获取国战我的联盟信息
]]
local function SendGetNationUnionInfoRequest(self, hasEvent, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_UNION_INFO_REQUEST
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取国战我的联盟信息：ERROR SendGetNationUnionInfoRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end

        NationUnionData:GetInstance():ParseNationUserUnionData(msg_obj.Packages, params.hasEvent)

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { userDefineData = userDefineData, hasEvent = hasEvent, callbackFunc = myCallback })
end


--[[
    创建联盟
]]
local function SendCreateNationUnionInfoRequest(self, name, notice, apply,globalCreateUnionCash, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_CREATE_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.name = name
    msgObj.notice = notice
    msgObj.apply = apply --  1-任何人申请即加入，2-申请审批

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "创建联盟：ERROR SendCreateNationUnionInfoRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode,params.globalCreateUnionCash)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,params.globalCreateUnionCash, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { callbackFunc = myCallback,globalCreateUnionCash = globalCreateUnionCash })
end

--联盟职位管理
local function SendNationUnionPositionManagerRequest(self, uid, position, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_POSITION_MANAGER_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid -- 玩家id
    msgObj.position = position -- 1-盟主，2-副盟主，3-指挥官，4-精英，5-成员

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        --if msg_obj.OpCode ~= 0 then
        --    Logger.LogAny(msg_obj.Packages, "处理联盟职位管理：ERROR SendNationUnionPositionManagerRequest ~~ ； ")
        --    UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        --    if params.callbackFunc ~= nil then
        --        params.callbackFunc(msg_obj.OpCode)
        --    end
        --    return
        --end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages.msg, params.uid, params.position)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { uid = uid, position = position, callbackFunc = myCallback })
end

--退出联盟
local function ExitUnionRequest(self, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_LEAVE_UNION_REQUEST
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        --if msg_obj.OpCode ~= 0 then
        --    Logger.LogAny(msg_obj.Packages, "退出联盟失败：ERROR ExitUnionRequest ~~ ； ")
        --    UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        --    return
        --end
        --NationUnionData:GetInstance():ExitUnion()
        --UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAllianceMain)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages.msg)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { callbackFunc = myCallback })
end

--踢出联盟
local function TiChuUnionRequest(self, uid)
    local msdId = MsgIDDefine.PBNATION_UNION_KICKOUT_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid
    local callbackFunc = function(msg_obj)
        local params = msg_obj.Params
        --if msg_obj.OpCode ~= 0 then
        --    Logger.LogAny(msg_obj.Packages, "踢出联盟失败：ERROR TiChuUnionRequest ~~ ； ")
        --    UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        --    return
        --end

        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_MEMBER_CTRL_TICHU_CLICK, msg_obj.OpCode, msg_obj.Packages.msg, params.uid)
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, callbackFunc, { uid = uid })
end

--禅让盟主
local function GrantUnionRequest(self, uid, name)
    local msdId = MsgIDDefine.PBNATION_UNION_GRANT_UNION_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.uid = uid
    local callbackFunc = function(msg_obj)
        local params = msg_obj.Params
        --if msg_obj.OpCode ~= 0 then
        --    Logger.LogAny(msg_obj.Packages, "禅让失败：ERROR GrantUnionRequest ~~ ； ")
        --    UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        --    return
        --end
        --NationUnionData:GetInstance():UpdateGrantUnion(params.uid,params.name)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_MEMBER_CTRL_GRANT_CLICK, msg_obj.OpCode, msg_obj.Packages.msg, params.uid, params.name)
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, callbackFunc, { uid = uid, name = name })
end

--放弃职务
local function FangQiPositionRequest(self)
    local msdId = MsgIDDefine.PBNATION_UNION_GIVEUP_POSITION_REQUEST
    local callbackFunc = function(msg_obj)
        --if msg_obj.OpCode ~= 0 then
        --    Logger.LogAny(msg_obj.Packages, "放弃失败：ERROR FangQiPositionRequest ~~ ； ")
        --    UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        --    return
        --end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_MEMBER_CTRL_FANGQI_CLICK, msg_obj.OpCode, msg_obj.Packages.msg)
    end
    NetManager:GetInstance():SendMessage(msdId, nil, callbackFunc)
end

--发送全体邮件
local function SendMsgToAllMemberMail(self, title, content, callback)
    local msgID = MsgIDDefine.PBNATION_UNION_UNION_EMAIL_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.title = title
    msgObj.content = content
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgToAllMemberMail出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc()
        end
    end, { callbackFunc = callback })
end

local function NationUnionSimpleInfoRequest(self, unionID, myCallback)
    local msgId = MsgIDDefine.PBNATION_UNION_UPDATE_UNION_INFO_REQUEST
    local msgObj = MsgIDMap[msgId]()
    msgObj.id = unionID
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "联盟简要信息请求：ERROR NationUnionSimpleInfoRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        --更新数据
        NationUnionData:GetInstance():UpdateMyUnionSimpleInfo(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msgId, msgObj, Bind(self, callbackFunc), { callbackFunc = myCallback })
end

--获取科技树
local function SendGetTechsRequest(self, userDefineData, myCallback)
    local msgID = MsgIDDefine.PBNATION_GET_TECHS_REQUEST
    local msgObj = nil
    local function __callback(self, msg_obj)
        local params = msg_obj.Params
        local userDefineData = params.userDefineData
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendGetTechsRequest 出错~ ", msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, userDefineData)
            end
            return
        end
        NationScienceData:GetInstance():ParseByServer(msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, userDefineData)
        end
    end
    NetManager:GetInstance():SendMessage(msgID, msgObj, Bind(self, __callback), { userDefineData = userDefineData, callbackFunc = myCallback })
end

--学习科技树
local function SendTechResearchRequest(self, techId, buyType,techPayCost, myCallback)
    local msgID = MsgIDDefine.PBNATION_TECH_RESEARCH_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.techId = techId  -- 1:免费 2:付费
    msgObj.buyType = buyType
    local function __callback(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendTechResearchRequest 出错~ ", msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.techId, params.buyType,params.techPayCost)
            end
            return
        end
        --Logger.LogVars("学习科技techId :" , params.techId," ,params.buyType : ",params.buyType," ,lastTime : ",msg_obj.Packages.lastTime
        --," ,startTime : ",msg_obj.Packages.startTime)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.techId, params.buyType,params.techPayCost, msg_obj.Packages.lastTime, msg_obj.Packages.startTime)
        end
    end
    NetManager:GetInstance():SendMessage(msgID, msgObj, Bind(self, __callback), { techId = techId, buyType = buyType,techPayCost = techPayCost, callbackFunc = myCallback })
end

--取消学习科技树
local function SendCancelTechReserchRequest(self, techId, myCallback)
    local msgID = MsgIDDefine.PBNATION_TECH_STOP_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.techId = techId
    local function __callback(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendCancelTechReserchRequest 出错~ ", msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.techId)
            end
            return
        end
        Logger.Log("取消升级科技techId :" .. params.techId)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.techId)
        end
    end
    NetManager:GetInstance():SendMessage(msgID, msgObj, Bind(self, __callback), { techId = techId, callbackFunc = myCallback })
end

local function SendTechFinishResquest(self, techId,techFinishResumeDiamond, myCallback)
    local msgID = MsgIDDefine.PBNATION_TECH_FINISH_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.techId = techId
    local function __callback(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendTechFinishResquest 出错~ ", msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.techId,params.techFinishResumeDiamond)
            end
            return
        end
        Logger.Log("立即完成科技techId :" .. params.techId)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.techId,params.techFinishResumeDiamond)
        end
        --self:SendGetTechsRequest()
    end
    NetManager:GetInstance():SendMessage(msgID, msgObj, Bind(self, __callback), { techId = techId,techFinishResumeDiamond = techFinishResumeDiamond, callbackFunc = myCallback })
end

--同步科技树
local function SendSyncTechRequest(self, techId, userDefineData, myCallback)
    local msgID = MsgIDDefine.PBNATION_SYNC_TECH_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.techId = techId  -- 1:免费 2:付费
    local function __callback(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendSyncTechRequest 出错~ ", msg_obj.Packages.msg)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.techId, params.userDefineData)
            end
            return
        end
        --Logger.LogVars("同步科技techId :", params.techId, " ,msg_obj.Packages: ", msg_obj.Packages)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.techId, params.userDefineData, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msgID, msgObj, Bind(self, __callback), { techId = techId, userDefineData = userDefineData, callbackFunc = myCallback }
            ,false
    )
end

local function SendMsgGetWarCellStateData(self, list)
    local msgID = MsgIDDefine.PBNATION_MAP_GET_NATION_SCREEN_WAR_CELL_REQUEST
    local msgObj = MsgIDMap[msgID]()
    for _, v in pairs(list) do
        msgObj.buildingId:append(v)
    end

    local function callBack(msg_obj)

        local proxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        if proxy == nil then
            return
        end

        if msg_obj.OpCode == -1 then
            proxy:SetWarCellUI()
        elseif msg_obj.OpCode == 0 then
            proxy:SetWarCellUI(msg_obj.Packages.war_cell_state)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UPDATE_WARCELL_STATE, msg_obj.Packages)
        else
            Logger.Log("screen_warCell_response出错~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
    end

    NetManager:GetInstance():SendMessage(msgID, msgObj, callBack, nil, false, false)
end


--获取联盟中的一个玩家信息
local function SendGetNationOneMemberRequest(self, unionId, memberId, unionName, myCallback)
    local msdId = MsgIDDefine.PBNATION_UNION_MEMBER_INFO_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.unionId = unionId -- 联盟id
    msgObj.memberId = memberId -- 玩家id

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "获取联盟中的一个玩家信息：ERROR SendGetNationOneMemberRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
            return
        end

        --更新盟主名称
        if msg_obj.Packages.member.position == NationDefine.NATION_UNION_POSITION.LEADER then
            local leaderData = {}
            leaderData.leaderName = msg_obj.Packages.member.name
            NationUnionData:GetInstance():UpdateNationUnionLeaderInfo(leaderData, true)
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.unionId, params.unionName, msg_obj.Packages.member)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { unionId = unionId, memberId = memberId, unionName = unionName, callbackFunc = myCallback })
end

--开始征募
local function SendNationCardRecruitRequest(self, type, teamID, townID, beginLists, userDefineData, myCallback)
    local msgId = MsgIDDefine.PBNATION_CARD_CONSCRIPTION_REQUEST
    local msgObj = MsgIDMap[msgId]()
    --1储备  -- 2自然
    msgObj.type = type
    --队伍ID
    msgObj.teamId = teamID
    --城镇ID
    msgObj.townId = townID

    for k, v in pairs(beginLists) do
        local Group = msgObj.conscription:add()
        Group.cardId = v.cardId
        Group.count = v.count
    end

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("招募开始错误：ERROR SendNationCardRecruitRequest ~~ ； ", msg_obj.Packages)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.type, params.teamID, params.townID, params.beginLists, params.userDefineData)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.type, params.teamID, params.townID, params.beginLists, params.userDefineData, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msgId, msgObj, Bind(self, callbackFunc), { type = type, teamID = teamID, townID = townID,
                                                                                    beginLists = beginLists, userDefineData = userDefineData, callbackFunc = myCallback })
end

--停止征募
local function SendNationCardStopRecruitRequest(self, teamID, userDefineData, myCallback)
    local msgId = MsgIDDefine.PBNATION_CARD_STOP_CONSCRIPTION_REQUEST
    local msgObj = MsgIDMap[msgId]()
    msgObj.teamId = teamID

    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params

        if msg_obj.OpCode ~= 0 then
            Logger.LogErrorVars("停止征募：ERROR SendNationCardStopRecruitRequest ~~ ； ", msg_obj.Packages)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.teamID, params.userDefineData)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.teamID, params.userDefineData, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msgId, msgObj, Bind(self, callbackFunc), { teamID = teamID, userDefineData = userDefineData, callbackFunc = myCallback })
end

--获得某个接战区地块,资源区资源点，讨伐区怪物，的战场队伍列表
local function SendGetBattleTeamListData(self, buildID, cellID, type, regionID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_SYNC_BATTLE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.pos = cellID
    msgObj.type = type
    msgObj.regionId = regionID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params

        --重发出错的处理
        if msg_obj.OpCode == -1 then
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode)
            end
        elseif msg_obj.OpCode == 0 then
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, msg_obj.Packages.syncTeamState)
            end
        else
            Logger.Log("SendGetBattleTeamListData 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
    end, { callbackFunc = callbackFunc }, false, false)
end

--获得接战区，资源区等的，驻守队伍的数据
local function SendGetDefendTeamListData(self, buildID, SubBuildID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_OPEN_DEFEND_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.pos = SubBuildID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendGetDefendTeamListData 出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.Packages.syncTeamState)
        end
    end, { callbackFunc = callbackFunc })
end

--刷新资源数据
local function SendMsgUpdateResourcesData(self)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_SYNC_COLLECT_RES_REQUEST
    --Logger.LogErrorVars("SendMsgUpdateResourcesData 已经发送刷新数据协议 ,")
    NetManager:GetInstance():SendMessage(msgID, nil, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("SendMsgUpdateResourcesData出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
    end,nil,false)
end

--放弃占领一块资源点领地
local function SendMsgAbandonResPoint(self, buildID, posID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_MAP_ABANDON_SOURCE_DEFEND_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.pos = posID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("放弃一块资源点出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.buildID, params.posID)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildID, params.posID)
        end
    end, { callbackFunc = callbackFunc, buildID = buildID, posID = posID })
end

--取消放弃占领一块资源点领地
local function SendMsgCancelAbandonResPoint(self, buildID, posID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_MAP_CANCEL_ABANDON_SOURCE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.pos = posID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("取消放弃一块资源点出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.buildID, params.posID)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildID, params.posID)
        end
    end, { callbackFunc = callbackFunc, buildID = buildID, posID = posID })
end

--放弃占领一块接战区领地
local function SendMsgAbandonWarCellLand(self, buildID, cellID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_MAP_ABANDON_CELL_DEFEND_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.cellId = cellID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("放弃一块接战区出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.buildID, params.cellID)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildID, params.cellID)
        end
    end, { callbackFunc = callbackFunc, buildID = buildID, cellID = cellID })
end

--取消放弃占领一块接战区领地
local function SendMsgCancelAbandonWarCellLand(self, buildID, cellID, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_MAP_CANCEL_ABANDON_CELL_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = buildID
    msgObj.cellId = cellID

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.Log("取消放弃一块接战区出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.buildID, params.cellID)
            end
            return
        end

        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildID, params.cellID)
        end
    end, { callbackFunc = callbackFunc, buildID = buildID, cellID = cellID })
end

--获得占领的所有领地数据
local function SendMsgGetOccupiedLand(self, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_NATION_OCCUPY_INFO_REQUEST
    NetManager:GetInstance():SendMessage(msgID, nil, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("获得占领的领地数据出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, msg_obj.Packages)
        end
    end, { callbackFunc = callbackFunc })
end

--检测放弃资源点
local function SendAbandonSourceCheckRequest(self, buildId, pos, cellId, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_MAP_ABANDON_SOURCE_CHECK_REQUEST
    local msgObj = MsgIDMap[msdId]()
    msgObj.buildId = buildId --  城ID
    msgObj.pos = pos -- 资源点位置,接战区pos = 0
    msgObj.cellId = cellId -- 接战区Id
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "检测放弃资源点：ERROR SendAbandonSourceCheckRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.buildId, params.pos, params.cellId, params.userDefineData)
            end
            return
        end
        --result 非零：放弃时间戳 0:放弃成功
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.buildId, params.pos, params.cellId, params.userDefineData, msg_obj.Packages.result)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, msgObj, Bind(self, callbackFunc), { buildId = buildId, pos = pos, cellId = cellId, userDefineData = userDefineData, callbackFunc = myCallback })
end


--检测国战是否开放
local function SendCheckNationOpenRequest(self, userDefineData, myCallback)
    local msdId = MsgIDDefine.PBNATION_NATION_OPEN_REQUEST
    --local msgObj = MsgIDMap[msdId]()
    local callbackFunc = function(self, msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny(msg_obj.Packages, "检测国战是否开放：ERROR SendCheckNationOpenRequest ~~ ； ")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, params.userDefineData)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, params.userDefineData, msg_obj.Packages)
        end
    end
    NetManager:GetInstance():SendMessage(msdId, nil, Bind(self, callbackFunc), { userDefineData = userDefineData, callbackFunc = myCallback })
end

--获得联盟战报
local function SendMsgBattleLogs(self,type, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_FIGHT_LOG_LIST_REQUEST
    local msgObj = MsgIDMap[msgID]()
    --Logger.LogVars("SendMsgBattleLogs  type :  ",type)
    msgObj.type = type -- 类型1; 自己:1 联盟：2
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("获得联盟战报出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        local params = msg_obj.Params
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,params.type, msg_obj.Packages,params.userDefineData)
        end

    end, { callbackFunc = callbackFunc ,type = type})
end

--标记联盟战报全部为已读
local function SendMsgFightLogAllRead(self, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_FIGHT_LOG_ALL_READ_REQUEST
    local msgObj = MsgIDMap[msgID]()

    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogVars("SendMsgBattleLogs error~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode,msg_obj.Packages.msg)
            end
            return
        end
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode, "")
        end
    end, { callbackFunc = callbackFunc })
end

--守军恢复
local function SendTeamBanditsRecoveryTimeRequest(self, townId, pos, callbackFunc)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_BANDITS_RECOVERY_TIME_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = townId
    msgObj.pos = pos
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        local params = msg_obj.Params
        if msg_obj.OpCode ~= 0 then
            Logger.LogErrorVars("SendTeamBanditsRecoveryTimeRequest 出错了~ townId : ",params.townId," pos : ",params.pos)
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if params.callbackFunc ~= nil then
                params.callbackFunc(msg_obj.OpCode, msg_obj.Packages.msg,params.townId,params.pos ,nil)
            end
            return
        end
        Logger.LogVars("SendTeamBanditsRecoveryTimeRequest 返回了 ~ townId : ",params.townId," pos : ",params.pos," 结束时间 : ",msg_obj.Packages.endTime)
        NationTownData:GetInstance():AddNationTownDefRecoverData(params.townId,params.pos, msg_obj.Packages.endTime)
        if params.callbackFunc ~= nil then
            params.callbackFunc(msg_obj.OpCode,nil,params.townId,params.pos ,msg_obj.Packages.endTime)
        end
    end, { callbackFunc = callbackFunc ,townId = townId, pos = pos})
end


NationNetManager.__init = __init
NationNetManager.ExChangeTeamInfo = ExChangeTeamInfo
NationNetManager.SendEnterNationRequest = SendEnterNationRequest
NationNetManager.SendGetNationTownBuildingRequest = SendGetNationTownBuildingRequest
NationNetManager.SendGetNationWarBuildingRequest = SendGetNationWarBuildingRequest
NationNetManager.SendGetNationWarCellRequest = SendGetNationWarCellRequest
NationNetManager.SendGetOneDetailResourcesPointData = SendGetOneDetailResourcesPointData
NationNetManager.SendGetAllBornRegionRequest = SendGetAllBornRegionRequest
NationNetManager.SendChoiceAscriptionRequest = SendChoiceAscriptionRequest
NationNetManager.SendGetNationTeamsRequest = SendGetNationTeamsRequest
NationNetManager.SendGetNationCardsRequest = SendGetNationCardsRequest
NationNetManager.SendGetNationRoleTownsRequest = SendGetNationRoleTownsRequest
NationNetManager.SendTeamMoveRequest = SendTeamMoveRequest
NationNetManager.SendGetPlayerTeamBattleLogsData = SendGetPlayerTeamBattleLogsData
NationNetManager.SendGetRecordEventData = SendGetRecordEventData
NationNetManager.SendGetRecordEventReward = SendGetRecordEventReward
NationNetManager.SendGetCollectPositionList = SendGetCollectPositionList
NationNetManager.SendAddNewCollectPosition = SendAddNewCollectPosition
NationNetManager.SendRemoveOneCollectPosition = SendRemoveOneCollectPosition
NationNetManager.SendChangePointPosName = SendChangePointPosName

NationNetManager.SendTeamDispatchRequest = SendTeamDispatchRequest
NationNetManager.SendGuardUnlockRequest = SendGuardUnlockRequest
NationNetManager.SendGuardResetRequest = SendGuardResetRequest
NationNetManager.SendConvertGuardRequest = SendConvertGuardRequest
NationNetManager.SendSyncNationFameRequest = SendSyncNationFameRequest
NationNetManager.SendSyncNationResourceRequest = SendSyncNationResourceRequest
NationNetManager.SendFightingBanditsRequest = SendFightingBanditsRequest
NationNetManager.SendSyncNationOneCardRequest = SendSyncNationOneCardRequest
NationNetManager.SendFightingCrusadeRequest = SendFightingCrusadeRequest
NationNetManager.SendMsgGetOutlawData = SendMsgGetOutlawData
NationNetManager.SendMsgBattleResourcesPoint = SendMsgBattleResourcesPoint
NationNetManager.SendMsgUpdateResourcesData = SendMsgUpdateResourcesData
NationNetManager.SendMsgGetResourcesPointData = SendMsgGetResourcesPointData
NationNetManager.SendGetNationUnionInfoRequest = SendGetNationUnionInfoRequest
NationNetManager.SendCreateNationUnionInfoRequest = SendCreateNationUnionInfoRequest
NationNetManager.SendAddGetUnionListRequest = SendAddGetUnionListRequest
NationNetManager.SendGetUnionInviteListRequest = SendGetUnionInviteListRequest
NationNetManager.SendSearchUnionRequest = SendSearchUnionRequest
NationNetManager.SendGetUnionMemberListRequest = SendGetUnionMemberListRequest
NationNetManager.SendNationApplyUnionRequest = SendNationApplyUnionRequest
NationNetManager.SendGetUnionApplyListRequest = SendGetUnionApplyListRequest
NationNetManager.SendNetMsgGetAllianceLogData = SendNetMsgGetAllianceLogData
NationNetManager.SendNetMsgGetAllianceAttackCityRankData = SendNetMsgGetAllianceAttackCityRankData
NationNetManager.SendNationDealApplyRequest = SendNationDealApplyRequest
NationNetManager.SendNationSetApplyRequest = SendNationSetApplyRequest
NationNetManager.SendNationKickOutUnionRequest = SendNationKickOutUnionRequest
NationNetManager.SendNationUpdateUnionNoticeRequest = SendNationUpdateUnionNoticeRequest
NationNetManager.SendNationInviteUnionRequest = SendNationInviteUnionRequest
NationNetManager.SendNationDealInviteRequest = SendNationDealInviteRequest
NationNetManager.SendNationUnionPositionManagerRequest = SendNationUnionPositionManagerRequest
NationNetManager.SendNationUnionRefreshRequest = SendNationUnionRefreshRequest
NationNetManager.SendGetNationOneMemberRequest = SendGetNationOneMemberRequest
NationNetManager.SendGetBattleTeamListData = SendGetBattleTeamListData
NationNetManager.SendGetDefendTeamListData = SendGetDefendTeamListData

NationNetManager.SendGetCanCrossThisWay = SendGetCanCrossThisWay
NationNetManager.SendMsgTeamRetreat = SendMsgTeamRetreat
NationNetManager.SendMsgTeamRightNowRetreat = SendMsgTeamRightNowRetreat
NationNetManager.SendMsgGetWarCellStateData = SendMsgGetWarCellStateData
NationNetManager.SendMsgAttackWarCell = SendMsgAttackWarCell
NationNetManager.SendMsgSiegeBreakCity = SendMsgSiegeBreakCity
NationNetManager.SendMsgSiegeKillEnemy = SendMsgSiegeKillEnemy
NationNetManager.SendMsgBattleLogs=SendMsgBattleLogs
NationNetManager.SendMsgFightLogAllRead=SendMsgFightLogAllRead

NationNetManager.SendGetTechsRequest = SendGetTechsRequest
NationNetManager.SendTechResearchRequest = SendTechResearchRequest
NationNetManager.SendCancelTechReserchRequest = SendCancelTechReserchRequest
NationNetManager.SendTechFinishResquest = SendTechFinishResquest
NationNetManager.ExitUnionRequest = ExitUnionRequest
NationNetManager.TiChuUnionRequest = TiChuUnionRequest
NationNetManager.GrantUnionRequest = GrantUnionRequest
NationNetManager.FangQiPositionRequest = FangQiPositionRequest
NationNetManager.SendMsgToAllMemberMail = SendMsgToAllMemberMail
NationNetManager.SendAddUnionInviteRecommendRequest = SendAddUnionInviteRecommendRequest
NationNetManager.NationUnionSimpleInfoRequest = NationUnionSimpleInfoRequest
NationNetManager.SendNationTeamSyncPathRequest = SendNationTeamSyncPathRequest
NationNetManager.SendMsgCancelAbandonResPoint = SendMsgCancelAbandonResPoint
NationNetManager.SendMsgAbandonResPoint = SendMsgAbandonResPoint
NationNetManager.SendMsgAbandonWarCellLand = SendMsgAbandonWarCellLand
NationNetManager.SendMsgCancelAbandonWarCellLand = SendMsgCancelAbandonWarCellLand
NationNetManager.SendMsgGetOccupiedLand = SendMsgGetOccupiedLand
NationNetManager.SendSyncTechRequest = SendSyncTechRequest
NationNetManager.SendAbandonSourceCheckRequest = SendAbandonSourceCheckRequest
NationNetManager.SendNationCardStopRecruitRequest = SendNationCardStopRecruitRequest
NationNetManager.SendNationCardRecruitRequest = SendNationCardRecruitRequest
NationNetManager.SendCheckNationOpenRequest = SendCheckNationOpenRequest
NationNetManager.SendTeamBanditsRecoveryTimeRequest = SendTeamBanditsRecoveryTimeRequest



return NationNetManager