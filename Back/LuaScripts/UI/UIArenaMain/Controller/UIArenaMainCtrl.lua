
--[[
-- 控制层
--]]

local UIArenaMainCtrl = BaseClass("UIArenaMainCtrl", UIBaseCtrl)
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local function CloseSelf(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaMain)
    if not self.model.isNotOpenLastPanel then
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaForChoice,ArenaData:GetInstance().arena_player_data)
    end

end

---打开竞技积分奖励
local function OpenScoreAwardList(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaScoreReward,3)
end
---打开阵容详情界面
local function OpenGuardTeamInfo(self,teamData)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaGuardTeamInfo,teamData)
end
---打开帮助界面
local function OpenComHelpInfo(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonHelpInfo,1)
end
---打开宝箱详情界面
local function OpenArenaBox(self,boxData,_score)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaBoxInfoTip,boxData,_score,1)
end
---请求获取战报列表
local function RequestArenaReport(self)
    local get_arena_report_id = MsgIDDefine.PBARENA_GET_ARENA_REPORT_REQUEST
    NetManager:GetInstance():SendMessage(get_arena_report_id,nil,Bind(self,self.ResponseArenaReport))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_GET_ARENA_REPORT_RESPONSE,self.ResponseArenaReport,self)
end

local function ResponseArenaReport(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_GET_ARENA_REPORT_RESPONSE,self.ResponseArenaReport)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBARENA_GET_ARENA_REPORT_RESPONSE~~")
        return
    else
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_GET_ARENA_REPORT_DATA, msg_obj.Packages.reportList )
    end
end

---刷新对手信息  type 0免费刷新 1消耗代币刷新
local function RequestFlushMatch(self,type,_isfree)
    local flush_id = MsgIDDefine.PBARENA_FLUSH_MATCH_REQUEST
    local flush = (MsgIDMap[flush_id])()
    flush.type = type
    self.isFree = _isfree
    NetManager:GetInstance():SendMessage(flush_id,flush,Bind(self,self.ResponseFlushMatch))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_FLUSH_MATCH_RESPONSE,self.ResponseFlushMatch,self)
end

---刷新model层对手数据
local function ResponseFlushMatch(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_FLUSH_MATCH_RESPONSE,self.ResponseFlushMatch)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBARENA_FLUSH_MATCH_RESPONSE~~")
        return
    else
        if  msg_obj.Packages.cost == 1 then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_UPDATE_ARENA_CHALLENGE_PRO_DATA,msg_obj.Packages,true)
            BackpackData:GetInstance():UpdateItemData(1401010, -ArenaData:GetInstance().timer_take_num)
        else
            if self.isFree then
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_UPDATE_ARENA_CHALLENGE_PRO_DATA,msg_obj.Packages,true)
            else
                DataManager:GetInstance():Broadcast(DataMessageNames.ON_UPDATE_ARENA_CHALLENGE_PRO_DATA,msg_obj.Packages,false)
            end

        end
    end
end
---请求领取宝箱
local function SendGetBoxRewardById(self, boxId)
    local box_id = MsgIDDefine.PBARENA_GET_POINT_REWARD_REQUEST
    local box = (MsgIDMap[box_id])()
    box.id = boxId
    self.reward_id = boxId
    NetManager:GetInstance():SendMessage(box_id,box,Bind(self,self.ResponsePointReward))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_GET_POINT_REWARD_RESPONSE,self.ResponsePointReward,self)
end


local function ResponsePointReward(self, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_GET_POINT_REWARD_RESPONSE,self.ResponsePointReward)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBARENA_GET_POINT_REWARD_RESPONSE~~")
        return
    else
        DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
        for _, v in ipairs(self.model.arena_main_data.arena_boxes) do
            if self.reward_id == v.id and v.state ~= 3 then
                v.state = 3
            end
        end
        table.insert( ArenaData:GetInstance().arena_has_boxes_id,self.reward_id)
        UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_BOX_STATE_DATA)
    end
end

---请求竞技场的排名 type 0白银排行榜 1黄金排行榜
local function RequestGetArenaRank(self,_type)
    self.rank = {}
    local arena_id = MsgIDDefine.PBARENA_GET_ARENA_RANK_REQUEST
    local arena_info =(MsgIDMap[arena_id])()
    arena_info.type = _type
    self.type =_type
    arena_info.index = 0
    NetManager:GetInstance():SendMessage(arena_id,arena_info,Bind(self,self.ResponseGetArenaRank))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_GET_ARENA_RANK_RESPONSE,self.ResponseGetArenaRank,self)
end
---排名回复
local function ResponseGetArenaRank(self,msg_obj)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_GET_ARENA_RANK_RESPONSE,ResponseGetArenaRank)
        return
    end
    if (type(msg_obj.Packages.isFinish ) == "boolean") and (msg_obj.Packages.isFinish ) then
        --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_GET_ARENA_RANK_RESPONSE,ResponseGetArenaRank)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_UPDATE_ARENA_RANK_DATA, self.rank)
    else
        local arenaMsg_id = MsgIDDefine.PBARENA_GET_ARENA_RANK_REQUEST
        local arenaMsg = MsgIDMap[arenaMsg_id]()
        arenaMsg.index  = msg_obj.Packages.nextIndex
        arenaMsg.type = self.type
        NetManager:GetInstance():SendMessage(arenaMsg_id, arenaMsg,Bind(self,self.ResponseGetArenaRank))
    end
    if msg_obj.Packages.rankList._is_null then
        return
    end
    for _, v in ipairs(msg_obj.Packages.rankList) do
        table.insert(self.rank,v)
    end
end
---竞技场挑战请求(对手组id，左0，中1，右2；当前竞技场：白银目前0；对手战斗组id; 战报id 复仇传;对手所在竞技场：白银目前0)
local function PveEnterArenaRequest(self,positionId,selfTeamId,teamId,reportstr,rank)
    local pve_enter_info_id = MsgIDDefine.PBFIGHT_PVE_ENTER_ARENA_REQUEST
    local pve_enter_info = (MsgIDMap[pve_enter_info_id])()
    pve_enter_info.position = positionId
    pve_enter_info.selfTeamId = selfTeamId
    pve_enter_info.teamId = teamId
    if reportstr ~= nil then
        pve_enter_info.reportId = reportstr
    end
    pve_enter_info.rank = rank
    ArenaData:GetInstance().cur_pk_player_data = ArenaData:GetInstance().pk_player_data[positionId + 1]
    BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.SOLO_ARENA
    BattleFieldManager:GetInstance().sceneConfigId=DataUtil.GetData("arena_message")[1].ArenaPos
    NetManager:GetInstance():SendMessage(pve_enter_info_id,pve_enter_info,self.PveEnterArenaResponse)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_PVE_ENTER_ARENA_RESPONSE,self.PveEnterArenaResponse,self)
   --UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaMain)
end

local function PveEnterArenaResponse(msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_PVE_ENTER_ARENA_RESPONSE,self.PveEnterArenaResponse)
    if msg_obj.OpCode ~= 0 then
        if msg_obj.Packages.id == 7002 then
            UIManager:GetInstance():Broadcast(UIMessageNames.ARENA_CLOSE_SEND_SHOW_TIPS)
        else
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
        Logger.Log("ERROR PBFIGHT_PVE_ENTER_ARENA_RESPONSE~~")
        return
    elseif msg_obj.OpCode==0 then
        BackpackData:GetInstance():UpdateItemData(1401007, -1)
        BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages.enterFight
        --SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
    end
end
---请求打开战报界面
local function RequestRevengeReport(self, _data)
    local tempData = {}
    tempData.name = _data.challenge_name
    tempData.head = _data.challenge_icon
    tempData.headBG = _data.challenge_frame
    --todo,军团名字
    tempData.group = ""

    local revenge_info_id = MsgIDDefine.PBARENA_REPORT_REQUEST
    local revenge_info = (MsgIDMap[revenge_info_id])()
    revenge_info.reportId = _data.arena_report_id

    NetManager:GetInstance():SendMessage(revenge_info_id,revenge_info, self.ResponseRevegentReport, { playerData = tempData })
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_REPORT_RESPONSE,self.ResponseRevegentReport,self)
end

local function ResponseRevegentReport(msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_REPORT_RESPONSE,self.ResponseRevegentReport)
    if msg_obj.OpCode ~= 0 then
        UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        Logger.Log("ERROR PBARENA_REPORT_RESPONSE~~")
    else
        local params = msg_obj.Params
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaReport, msg_obj.Packages, params.playerData)
    end
end
---请求快读战斗(对手组id，左0，中1，右2；当前竞技场：白银目前0；对手所在竞技场：白银目前0)
local function PveArenaQuickPassRequest(self,positionId,selfTeamId,teamId,rank,_uid)
    local pve_enter_info_id = MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_REQUEST
    local pve_enter_info = (MsgIDMap[pve_enter_info_id])()
    pve_enter_info.position = positionId
    pve_enter_info.selfTeamId = selfTeamId
    pve_enter_info.teamId = teamId
    pve_enter_info.rank = rank
    self.uid = _uid
    NetManager:GetInstance():SendMessage(pve_enter_info_id,pve_enter_info,Bind(self,self.PveArenaQuickPassResponse))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_RESPONSE,self.PveArenaQuickPassResponse,self)
end

local function PveArenaQuickPassResponse(self, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_RESPONSE,self.PveArenaQuickPassResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBFIGHT_PVE_ARENA_QUICK_PASS_RESPONSE~~")
        if msg_obj.Packages.id == 6018 then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100033))
        elseif msg_obj.Packages.id == 7002 then
            UIManager:GetInstance():Broadcast(UIMessageNames.ARENA_CLOSE_SEND_SHOW_TIPS)
        else
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
        return
    elseif msg_obj.OpCode == 0 then
        UIManager:GetInstance():Broadcast(UIMessageNames.UIARENA_QUICK_ATTACK_MASK_ACTIVE,true)
        TimerManager:GetInstance():SimpleTimerArgs(5,function()
            self:PveArenaQuickPassEndRequest()
        end ,self,true)
    end
end

---5秒之后的请求结果数据
local function PveArenaQuickPassEndRequest(self)
    local pve_enter_info_id = MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_END_REQUEST
    NetManager:GetInstance():SendMessage(pve_enter_info_id,nil,Bind(self,self.PveArenaQuickPassEndResponse))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_END_RESPONSE,self.PveArenaQuickPassEndResponse,self)
end

local function PveArenaQuickPassEndResponse(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_PVE_ARENA_QUICK_PASS_END_RESPONSE,self.PveArenaQuickPassEndResponse)
    if msg_obj.OpCode == 0 then
        UIManager:GetInstance():Broadcast(UIMessageNames.UIARENA_QUICK_ATTACK_MASK_ACTIVE,false)
        BackpackData:GetInstance():UpdateItemData(1401007, -1)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaQualityBattleResult,msg_obj.Packages.settlement)
        if msg_obj.Packages.settlement.isSuccess then
            ArenaData:GetInstance().arena_win_num = ArenaData:GetInstance().arena_win_num + msg_obj.Packages.settlement.victoryPoint
            ArenaData:GetInstance().arena_win_times = ArenaData:GetInstance().arena_win_times + 1
        end
        ArenaData:GetInstance().arena_all_times = ArenaData:GetInstance().arena_all_times +1
        for _, v in pairs(ArenaData:GetInstance().pk_player_data) do
            if v.uid == self.uid then
                if msg_obj.Packages.settlement.isSuccess then
                    v.challenge_state = 1
                else
                    v.challenge_state = 2
                end
            end
        end
        self.count = 0
        for _, v in pairs(ArenaData:GetInstance().pk_player_data) do
            if v.challenge_state ==  1 then
                self.count = self.count + 1
            end
        end
        if  self.count == 3 then
            RequestFlushMatch(self,0,false)
        else
            UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,false)
        end
    end
end

---请求购买挑战券
local function BuyChallengeTickRequest(self,_num)
    self.num = _num
    local buy_tick_id = MsgIDDefine.PBARENA_BUY_CHALLENGE_TICK_REQUEST
    NetManager:GetInstance():SendMessage(buy_tick_id,nil,self.BuyChallengeTickResponse)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBARENA_BUY_CHALLENGE_TICK_RESPONSE,self.BuyChallengeTickResponse,self)
end

local function BuyChallengeTickResponse(self, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBARENA_BUY_CHALLENGE_TICK_RESPONSE,self.PveEnterArenaResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBARENA_BUY_CHALLENGE_TICK_RESPONSE~~")
        return
    elseif msg_obj.OpCode==0 then
        DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
        ArenaData:GetInstance().buy_tick_times = ArenaData:GetInstance().buy_tick_times + 1
        BackpackData:GetInstance():UpdateItemData(1401010, - self.num)
        UIManager:GetInstance():Broadcast(UIMessageNames.ARENA_TICK_NUM_UPDATE)
    end
end

UIArenaMainCtrl.CloseSelf = CloseSelf
UIArenaMainCtrl.OpenScoreAwardList = OpenScoreAwardList
UIArenaMainCtrl.OpenGuardTeamInfo = OpenGuardTeamInfo
UIArenaMainCtrl.OpenComHelpInfo = OpenComHelpInfo
UIArenaMainCtrl.RequestArenaReport = RequestArenaReport
UIArenaMainCtrl.ResponseArenaReport = ResponseArenaReport
UIArenaMainCtrl.RequestFlushMatch = RequestFlushMatch
UIArenaMainCtrl.ResponseFlushMatch = ResponseFlushMatch
UIArenaMainCtrl.RequestGetArenaRank = RequestGetArenaRank
UIArenaMainCtrl.ResponseGetArenaRank = ResponseGetArenaRank
UIArenaMainCtrl.OpenArenaBox = OpenArenaBox
UIArenaMainCtrl.RequestRevengeReport = RequestRevengeReport
UIArenaMainCtrl.ResponseRevegentReport = ResponseRevegentReport
UIArenaMainCtrl.PveEnterArenaRequest = PveEnterArenaRequest
UIArenaMainCtrl.PveEnterArenaResponse = PveEnterArenaResponse
UIArenaMainCtrl.PveArenaQuickPassRequest = PveArenaQuickPassRequest
UIArenaMainCtrl.PveArenaQuickPassResponse = PveArenaQuickPassResponse
UIArenaMainCtrl.SendGetBoxRewardById = SendGetBoxRewardById
UIArenaMainCtrl.PveArenaQuickPassEndRequest = PveArenaQuickPassEndRequest
UIArenaMainCtrl.PveArenaQuickPassEndResponse = PveArenaQuickPassEndResponse
UIArenaMainCtrl.ResponsePointReward = ResponsePointReward
UIArenaMainCtrl.BuyChallengeTickRequest = BuyChallengeTickRequest
UIArenaMainCtrl.BuyChallengeTickResponse = BuyChallengeTickResponse
return UIArenaMainCtrl