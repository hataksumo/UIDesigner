---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/8/8 20:50
---
local TestHoardData = BaseClass("TestHoardData",Singleton)

local StaticDailyLevelData = DataUtil.GetData("daily_level")
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

-- 刷新红点状态
local function OnRefreshRed(self)
    self.showRed = false
    local playerLv = math.floor(UserData:GetInstance().pLevel)
    for k, v in pairs(self._data) do
        if playerLv > v.LvLimit and v.HaveTimes > 0 then
            self.showRed = true
            break
        end
    end
end

local function DayFlushIndication(self)
    for k, v in pairs(self._data) do
        v.HaveTimes = v.AwardTimes
    end
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_TESTHOARD_PASS_LEVEL)
end

local function __init(self)
    self.selectLeftIndex = 1
    self._data = {}
    for k, v in pairs(StaticDailyLevelData) do
        v.HaveTimes = 2
        self._data[v.Pos] = v
    end
    OnRefreshRed(self)
end

-- 通关关卡，刷新数据
local function OnPassLevel(self)
    for k, v in pairs(self._data) do
        for i = 1, #v.Levels do
            if v.Levels[i].Id == self.fightId then
                v.HaveTimes = v.HaveTimes - 1
                v.Levels[i].IsPass = true
                break
            end
        end
    end
    OnRefreshRed(self)
end

local function GetAllTestHoardData(self)

    local state,type,des= UnlockData:GetInstance():GetLockDataState(107)
    if not state then
        return
    end
    if self.have_send then
        Logger.LogError("已经请求过失恋宝库")
        return
    else
        self.have_send = true
    end
    local mission_info_id = MsgIDDefine.PBCHAPTER_ALL_DAILY_LEVEL_REQUEST
    NetManager:GetInstance():SendMessage(mission_info_id,nil,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBCHAPTER_ALL_DAILY_LEVEL_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        else
            for k, v in ipairs(msg_obj.Packages.daily) do
                local chaId = v.chapterId
                for m, n in pairs(self._data) do
                    if n.Cha == chaId then
                        n.HaveTimes = n.AwardTimes - v.count
                        for i = 1, #n.Levels do
                            n.Levels[i].IsPass = false
                            for j = 1, #v.levelId do
                                if n.Levels[i].Id == v.levelId[j] then
                                    n.Levels[i].IsPass = true
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
            OnRefreshRed(self)
        end
    end)
end

local function OnTestHoardLevelEnter(self, id)
    local info_id = MsgIDDefine.PBFIGHT_ENTER_DAILY_FIGHT_REQUEST
    local info = (MsgIDMap[info_id])()
    info.fightId = id
    self.fightId = id
    for k, v in pairs(self._data) do
        for i = 1, #v.Levels do
            if v.Levels[i].Id == self.fightId then
                self.fightSceneName = v.Scene
                break
            end
        end
    end
    BattleFieldManager:GetInstance().fightId = id
    BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.TESTHOARD
    BattleFieldManager:GetInstance().sceneConfigId=DataUtil.GetData("arena_message")[1].ArenaPos
    NetManager:GetInstance():SendMessage(info_id,info,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBFIGHT_ENTER_DAILY_FIGHT_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages.enterFight
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
        end
    end)
end

local function OnTestHoardLevelPass(self, id)
    local info_id = MsgIDDefine.PBCHAPTER_PASS_DAILY_LEVEL_REQUEST
    local info = (MsgIDMap[info_id])()
    info.fightId = id
    self.fightId = id
    NetManager:GetInstance():SendMessage(info_id,info,function (msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBCHAPTER_PASS_DAILY_LEVEL_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem,nil,1)
            OnPassLevel(self)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_TESTHOARD_PASS_LEVEL)
        end
    end)
end

TestHoardData.__init = __init
TestHoardData.OnPassLevel = OnPassLevel
TestHoardData.GetAllTestHoardData = GetAllTestHoardData
TestHoardData.OnTestHoardLevelEnter = OnTestHoardLevelEnter
TestHoardData.OnTestHoardLevelPass = OnTestHoardLevelPass
TestHoardData.DayFlushIndication = DayFlushIndication
return TestHoardData