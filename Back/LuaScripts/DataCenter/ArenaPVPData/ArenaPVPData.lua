---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/7/18 14:45
---
local ArenaPVPData = BaseClass("ArenaPVPData",Singleton)

local arena_pvp_data = DataUtil.GetData("arena_realtime")
local itemData = DataUtil.GetData("item")
local arena_robot = DataUtil.GetData("arena_robot")

local function __init(self)
    self.arena_pvp_info = nil
    --玩家自身的数据
    self.arena_pvp_player_data = {}
    --段位奖励数据
    self.arena_pvp_danList = {}
    --宝箱已领取的id集合
    self.arena_pvp_box_idList = {}
    --宝箱奖励
    self.has_get_box_id = {}
    --战报数据
    self.reportList = {}
    --排行榜数据
    self.arena_rank_data = {}
    self.requestRankData = false
    self.requestAllRankData = false
end

--获取宝箱数据
local function GetBoxListData(self)
    self.arena_pvp_boxList = {}
    if arena_pvp_data.VictoryBox ~= nil then
        for _, v in ipairs(arena_pvp_data.VictoryBox) do
            local data = {}
            data.id = v.Id
            data.victory_num = v.Victory
            data.awardDataList = {}
            if v.Award ~= nil then
                for _, m in ipairs(v.Award) do
                    table.insert(data.awardDataList,DataUtil.GetDataByIdAndType(m.id,14,m.val))
                end
            end
            if self.arena_pvp_info.victoryTimes >=  data.victory_num then
                data.state = 2
            else
                data.state = 1
            end
            if #self.has_get_box_id > 0 then
                for _, m in ipairs(self.has_get_box_id) do
                    if data.id == tonumber(m) then
                        data.state = 3
                    end
                end
            end
            table.insert(self.arena_pvp_boxList,data)
        end
    end
end

--获取段位奖励数据
local function GetDanListData(self)
    self.arena_pvp_danList = {}
    if arena_pvp_data.PhaseAward ~= nil then
        for i, v in ipairs(arena_pvp_data.PhaseAward) do
            local data = {}
            data.name = v.Name
            data.icon = v.Icon
            data.score = v.Score
            data.award = {}
            for _, m in ipairs(v.Award) do
                local itemData = {}
                itemData.id = m.Id
                itemData.num = m.Val
                table.insert( data.award,itemData)
            end
            table.insert(self.arena_pvp_danList,data)
        end
    end
end


--获取实时竞技的数据
local function GetArenaPVPData(self)
    local playerData = {}
    playerData.name = UserData:GetInstance().name
    playerData.lv = UserData:GetInstance().pLevel
    playerData.frame = SpriteDefine:GetItemQualityFrameByType(itemData[UserData:GetInstance().pHead].Quality)
    playerData.icon = itemData[UserData:GetInstance().pHead].Icon
    if self.arena_pvp_info == nil then
        return nil
    end
    playerData.score = math.floor(self.arena_pvp_info.score)
    playerData.fightTimes =  math.floor(self.arena_pvp_info.fightTimes)
    playerData.victoryTimes =  math.floor(self.arena_pvp_info.victoryTimes)
    playerData.lostTimes = playerData.fightTimes -  playerData.victoryTimes
    playerData.rankServer = math.floor(self.arena_pvp_info.rankServer)
    playerData.rankAllServer = math.floor(self.arena_pvp_info.rankAllServer)
    if playerData.fightTimes == 0 then
        playerData.winProbability = "0%"
    else
        playerData.winProbability =  math.floor(playerData.victoryTimes / playerData.fightTimes * 100) .. "%"
    end
    if arena_pvp_data.Constant ~= nil then
        local dayStr = ""
        for _, v in ipairs(arena_pvp_data.Constant.OpenDay) do
            dayStr = dayStr..v..","
        end
        playerData.openDay ="每周"..dayStr.."开启"
        playerData.openTime = arena_pvp_data.Constant.OpenTime[1].Beg.."-"..
                arena_pvp_data.Constant.OpenTime[1].End..arena_pvp_data.Constant.OpenTime[2].Beg.."-"
                .. arena_pvp_data.Constant.OpenTime[2].End
    end
    if arena_pvp_data.PhaseAward ~= nil then
        if playerData.score >= arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Score then
            playerData.dan = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Name
            playerData.danIcon = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Icon
            playerData.nextScore = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Score
        else
            for i, v in ipairs(arena_pvp_data.PhaseAward) do
                if arena_pvp_data.PhaseAward[i].Score < playerData.score and arena_pvp_data.PhaseAward[i+1].Score~= nil and arena_pvp_data.PhaseAward[i+1].Score >= playerData.score then
                    playerData.dan = v.Name
                    playerData.danIcon = v.Icon
                    playerData.nextScore = arena_pvp_data.PhaseAward[i+1].Score
                    break
                end
            end
        end

        self.arena_pvp_player_data = playerData
    end


end

local function UpdateArenaPVPData(self,_score,_rank,_allRank,_type,_isSuccess)
    if _type == 9 then --pvp战斗类型   5为天梯，9为休闲
        return
    end
    self.arena_pvp_player_data.score =  math.floor(_score)
    self.arena_pvp_player_data.rankServer =  math.floor(_rank)
    self.arena_pvp_player_data.rankAllServer =  math.floor(_allRank)
    self.arena_pvp_player_data.fightTimes =   math.floor( self.arena_pvp_player_data.fightTimes + 1)
    if _isSuccess then
        self.arena_pvp_player_data.victoryTimes =  math.floor(self.arena_pvp_player_data.victoryTimes + 1)
    else
        self.arena_pvp_player_data.lostTimes =  math.floor(self.arena_pvp_player_data.lostTimes + 1)
    end
    self.arena_pvp_player_data.winProbability =  math.floor(self.arena_pvp_player_data.victoryTimes / self.arena_pvp_player_data.fightTimes * 100) .. "%"

    if self.arena_pvp_player_data.score >= arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Score then
        self.arena_pvp_player_data.dan = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Name
        self.arena_pvp_player_data.danIcon = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Icon
        self.arena_pvp_player_data.nextScore = arena_pvp_data.PhaseAward[#arena_pvp_data.PhaseAward].Score
    else
        for i, v in ipairs(arena_pvp_data.PhaseAward) do
            if  v.Score <self.arena_pvp_player_data.score and arena_pvp_data.PhaseAward[i+1].Score ~= nil and arena_pvp_data.PhaseAward[i+1].Score >= self.arena_pvp_player_data.score then
                self.arena_pvp_player_data.dan = v.Name
                self.arena_pvp_player_data.danIcon = v.Icon
                self.arena_pvp_player_data.nextScore = arena_pvp_data.PhaseAward[i+1].Score
                break
            end
        end
    end

    for _, v in ipairs(self.arena_pvp_boxList) do
        if self.arena_pvp_player_data.victoryTimes >=  v.victory_num then
            v.state = 2
        else
            v.state = 1
        end
        if # self.has_get_box_id  > 0 then
            for _, m in ipairs( self.has_get_box_id ) do
                if v.id == tonumber(m) then
                    v.state = 3
                end
            end
        end
    end
    self.arena_pvp_info.victoryTimes = self.arena_pvp_player_data.victoryTimes
    GetBoxListData(self)
end

local function GetRequestInfo(self)
    local get_arena_info_id = MsgIDDefine.PBPVP_GET_PVP_ARENA_INFO_REQUEST
    NetManager:GetInstance():SendMessage(get_arena_info_id,nil,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBPVP_GET_PVP_ARENA_INFO_REQUEST~~")
            --UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaForChoice)
            self.arena_pvp_info = msg_obj.Packages
            local has_get_box_id = {}
            for _, v in ipairs(self.arena_pvp_info.rewardList) do
                table.insert(has_get_box_id,v)
            end
            self.has_get_box_id = has_get_box_id
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaPvp)
            GetArenaPVPData(self)
            GetDanListData(self)
            GetBoxListData(self)
        end
    end)
end

--战报刷新
local function UpdateReportData(self,_dataList)
    self.reportList = {}
    if _dataList.reportList == nil then
        self.reportList = nil
    else
       --Logger.Log("===================="..table.dump(_dataList.reportList,nil,20))
        for _, v in ipairs(_dataList.reportList) do
            local reportData = {}
            reportData.uid = v.uid
            reportData.name = v.name
            if arena_robot[reportData.uid] ~= nil then
                reportData.head = arena_robot[reportData.uid].Head
                reportData.framd = arena_robot[reportData.uid].Frame
            else
                reportData.head = itemData[v.head].Icon
                reportData.framd = SpriteDefine:GetItemQualityFrameByType(itemData[v.head].Quality)
            end
            reportData.level = v.level
            reportData.resultType = v.resultType
            reportData.reportType = v.reportType
            reportData.reportId = v.reportId
            if v.resultScore >= 0 then
                reportData.resultScore = "<color=#3E793E>+"..math.floor(v.resultScore).."</color>"
            else
                reportData.resultScore = "<color=#CE4747>"..math.floor(v.resultScore).."</color>"
            end
            reportData.fightTime = v.fightTime
            table.insert(self.reportList,reportData)
        end
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_ARENA_PVP_REPORT_UPDATE)
end

local function UpdateRankData(self,rankList,_type)
    if rankList == nil then
        table.insert(self.arena_rank_data,{type=_type,rankList = nil})
        return
    end
    local arena_rank_data = {}
    for _, v in ipairs(rankList) do
        local rankData = {}
        rankData.uid = v.uid
        rankData.rank = v.rank
        if arena_robot[rankData.uid] ~= nil then
            rankData.head = arena_robot[rankData.uid].Head
            rankData.framd = arena_robot[rankData.uid].Frame
        else
            rankData.head = itemData[v.head].Icon
            rankData.framd = SpriteDefine:GetItemQualityFrameByType(itemData[v.head].Quality)
        end
        rankData.name = v.name
        rankData.score = v.score
        table.insert(arena_rank_data,rankData)
    end
    table.insert(self.arena_rank_data,{type=_type,rankList = arena_rank_data})
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_ARENA_PVP_RANK_UPDATE)
end

ArenaPVPData.UpdateArenaPVPData = UpdateArenaPVPData
ArenaPVPData.UpdateRankData = UpdateRankData
ArenaPVPData.UpdateReportData = UpdateReportData
ArenaPVPData.GetBoxListData = GetBoxListData
ArenaPVPData.GetDanListData = GetDanListData
ArenaPVPData.GetArenaPVPData = GetArenaPVPData
ArenaPVPData.GetRequestInfo = GetRequestInfo
ArenaPVPData.__init = __init

return ArenaPVPData