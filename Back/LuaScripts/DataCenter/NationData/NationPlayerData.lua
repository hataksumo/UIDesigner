--[[
--
-- 国战玩家数据
--]]
local NationPlayerData = BaseClass("NationPlayerData", Singleton)

local NATION_RES_TIMER_PREFIX_NAME = "NATION_RES_TIMER_PREFIX_NAME"-- 资源计时器前缀
local NATION_FAME_TIMER_PREFIX_NAME = "NATION_FAME_TIMER_PREFIX_NAME"-- 声望计时器

local function __init(self)
    self.nationFameExpData = DataUtil.GetData("national_player").FameLv
    self.nationDominanceExpData = DataUtil.GetData("national_player").DominanceLv
    self.nationRes = nil -- 资源缓存对象
    --self.nationItem=DataUtil.GetData("item")
    self.staticDataInit = false -- 静态数据是否第一次初始化
    self.isInitData = false -- 是否数据已经获得过
    self.nationFame = nil
    --self.unionId = 0 -- 联盟id
    self.nationSeason = 0 --玩家当前赛季
    self.bornAscription = 0 --出生域
    self.bornTown = 0 --出生城镇
end

local function __delete(self)
    self.nationRes = nil
    self.nationFameExpData = nil
    self.nationDominanceExpData = nil
    self.nationFame = nil
    self.isInitData = false
    --self.unionId = 0 -- 联盟id
    self.nationSeason = 0
    self.bornAscription = 0 --出生域
    self.bornTown = 0 --出生城镇
end

--数据层运行逻辑计时器
local function __LogicTimer(self)
    if not self.isInitData then
        return
    end
    self:__RunResourceTimer()
    self:__RunFameTimer()
end

---------------------------------------------------------------------
---------------------------核心逻辑-----------------------------------
---------------------------------------------------------------------

--[[
    获取国战某个资源数据，通过资源ID
]]
local function GetNationResourceByItemId(self, itemId)
    if itemId == NationDefine.ITEM_WOOD_ID then
        return self.nationRes[itemId]
    elseif itemId == NationDefine.ITEM_IRON_ID then
        return self.nationRes[itemId]
    elseif itemId == NationDefine.ITEM_STONE_ID then
        return self.nationRes[itemId]
    elseif itemId == NationDefine.ITEM_FOOD_ID then
        return self.nationRes[itemId]
    elseif itemId == NationDefine.ITEM_DECREE_ID then
        return self.nationRes[itemId]
    end
end

--获取，策划表的常量数据
local function __StaticInit(self)
    if self.staticDataInit then
        return
    end
    local FameMaxLevel, FameMaxData = self:GetNationFameMaxLevelAndData()
    --self.FameMaxLevel = FameMaxLevel
    self.FameMaxData = FameMaxData
    -- 初始化常量表
    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "InitialResProductNum" then
            self.InitialResProductNum = v.valueN
        elseif v.Key == "InitialResProductSec" then
            self.InitialResProductSec = v.valueN
        elseif v.Key == "DecreeSpdNum" then
            self.DecreeSpdNum = v.valueN
        elseif v.Key == "DecreeSpdSec" then
            self.DecreeSpdSec = v.valueN
        elseif v.Key == "InitialWoodMax" then
            self.InitialWoodMax = v.valueN
        elseif v.Key == "InitialIronMax" then
            self.InitialIronMax = v.valueN
        elseif v.Key == "InitialStoneMax" then
            self.InitialStoneMax = v.valueN
        elseif v.Key == "InitialFoodMax" then
            self.InitialFoodMax = v.valueN
        elseif v.Key == "FameSpeedNum" then
            self.FameSpeedNum = v.valueN
        elseif v.Key == "FameSpeedSec" then
            self.FameSpeedSec = v.valueN
        elseif v.Key == "ResRefresh" then
            self.ResRefresh = v.valueN
        end
    end
    self.staticDataInit = true
end

-- 解析国战个人数据
local function ParseNationPlayerData(self, msgData)
    if msgData == nil then
        return
    end
    self:__StaticInit()
    self.nationRes = {}
    self.nationFame = {}
    self:ParseServerNationFameData(msgData.nation_fame, false)
    self:ParseServerNationResources(msgData.nation_resource, false)
    self.nationSeason = math.modf(msgData.season)
    self.bornAscription = math.modf(msgData.bornAscription)
    self.bornTown = math.modf(msgData.bornTown)
    self.isInitData = true
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH)
end

--解析声望数据
local function ParseServerNationFameData(self, msgData, hasEvent)
    if msgData == nil then
        return
    end
    self.nationFame.exp = tonumber(msgData.fameExp) -- 当前经验
    self.nationFame.lastTime = tonumber(msgData.lastFameTime)
    self.nationFame.fameLevel = tonumber(msgData.famelevel) -- 当前等级
    self.nationFame.realFameLevel = self.nationFame.fameLevel
    self.nationFame.realExp = self.nationFame.exp -- 当前真正经验
    local fameLevel, fameLevelData = self:GetNationFameExpLevelAndData(self.nationFame.realExp)
    self.nationFame.DecreeMax = fameLevelData.DecreeMax
    self.nationFame.OccupyNumMax = fameLevelData.OccupyNum
    self.nationFame.realFameLevel = fameLevel
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NAITON_PLAYER_FAME_VALUE_CHANGE)
    end
end

--解析资源数据
local function ParseServerNationResources(self, data, hasEvent)
    if data == nil then
        return
    end
    for j, b in ipairs(data) do
        if self.nationRes[b.id] == nil then
            self.nationRes[b.id] = {}
        end
        local res = self.nationRes[b.id]
        res.num = tonumber(b.num)
        res.lastTime = tonumber(b.lastTime)
        res.id = tonumber(b.id)
        res.realNum = res.num
    end
    --Logger.LogErrorVars(" self.nationRes : ",self.nationRes)
    --if hasEvent then
    --    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE)
    --end
end

--服务器主动推送，资源数据
local function ParseNationResourceWithPush(self, msgData)
    if msgData == nil or msgData._is_null or self.nationRes == nil then
        return
    end
    for j, b in ipairs(msgData) do
        if self.nationRes[b.id] == nil then
            self.nationRes[b.id] = {}
        end
        local res = self.nationRes[b.id]
        res.num = tonumber(b.num)
        res.lastTime = tonumber(b.lastTime)
        res.id = tonumber(b.id)
        res.realNum = res.num

        if self:__CheckNationResNeedTimer(b.id) then
            if res.id == NationDefine.ITEM_DECREE_ID then
                -- 军令单独计时
                LogicTimerManager:GetInstance():AddServerTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id,
                        LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, res.lastTime,
                        self.DecreeSpdSec * 1000, false, self.__UpdateDecreeTimer, { res = res, superSelf = self })
            else
                LogicTimerManager:GetInstance():AddServerTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id,
                        LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, res.lastTime,
                        self.ResRefresh * 1000, false, self.__UpdateResourceTimer, { res = res, superSelf = self })
            end
            LogicTimerManager:GetInstance():StartTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id)
        else
            LogicTimerManager:GetInstance():RemoveTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id)
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, res.id)
    end
    --todo 通知界面  资源数量改变
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_VALUE)
end

---------------------------------------------------------------------
---------------------------接口Func-----------------------------------
---------------------------------------------------------------------
--[[
     获取声望最高等级和对象
]]
local function GetNationFameMaxLevelAndData(self)
    local level = #self.nationFameExpData
    local levelData = self.nationFameExpData[level]
    return level, levelData
end

--获取当前声望等级对象
local function GetCurrentNationFameData(self)
    return self.nationFame
end

--[[
    通过经验获取声望等级对象和等级
]]
local function GetNationFameExpLevelAndData(self, fameExp)
    local levelData = nil
    local level = 0
    for i, v in ipairs(self.nationFameExpData) do
        if (fameExp >= v.Exp) then
            levelData = v
            level = i
        else
            break
        end
    end

    if levelData == nil then
        return 1, self.nationFameExpData[1]
    end

    return level, levelData
end

--[[
     根据时间获取当前声望增加的经验
]]
local function GetNationFameExpByTime(self, currentTime)
    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end
    -- 增长频率  self.FameSpeedSec * 1000
    -- 当前经验 self.nationFame.exp
    local remindTime = currentTime - self.nationFame.lastTime
    if remindTime < 0 then
        --Logger.LogErrorVars("GetNationFameExpByTime error give a remindTime ",remindTime," currentTime : ",
        --        currentTime," lastTime ",self.nationFame.lastTime)
        remindTime = 0
    end
    local addRate = math.modf(remindTime / (self.FameSpeedSec * 1000))  -- 增加的经验
    local gotExp = self.nationFame.exp + addRate
    local maxLevelData = self.FameMaxData
    if gotExp >= maxLevelData.Exp then
        return maxLevelData.Exp
    end
    return gotExp
end

--声望是否需要计时器
local function __CheckNationFameNeedTimer(self)
    if not self.isInitData then
        return false
    end
    if self.nationFame == nil then
        return false
    end
    local fameExp = self:GetNationFameExpByTime()
    self.nationFame.realExp = fameExp -- 更新经验
    --Logger.LogVars("__CheckNationFameNeedTimer fameExp ",fameExp, " ")
    local fameLevel, fameLevelData = NationPlayerData:GetInstance():GetNationFameExpLevelAndData(self.nationFame.realExp)
    self.nationFame.DecreeMax = fameLevelData.DecreeMax
    self.nationFame.OccupyNumMax = fameLevelData.OccupyNum
    self.nationFame.realFameLevel = fameLevel
    if self.nationFame.realExp < self.FameMaxData.Exp then
        -- 有计时器
        return true
    else
        return false
    end
end

--[[
  检测运行声望自增长计时器
]]
local function __RunFameTimer(self)
    if self.nationFame == nil then
        return
    end

    if self:__CheckNationFameNeedTimer() then
        LogicTimerManager:GetInstance():AddServerTimer(NationPlayerData.NATION_FAME_TIMER_PREFIX_NAME,
                LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, self.nationFame.lastTime,
                self.FameSpeedSec * 1000, false, self.__UpdateFameTimer, { res = self.nationFame, superSelf = self })
        LogicTimerManager:GetInstance():StartTimer(NationPlayerData.NATION_FAME_TIMER_PREFIX_NAME)
    else
        LogicTimerManager:GetInstance():RemoveTimer(NationPlayerData.NATION_FAME_TIMER_PREFIX_NAME)
    end
end

--[[
  更新声望计时器
]]
local function __UpdateFameTimer(selfTimer, obj)
    local res = obj.res
    local superSelf = obj.superSelf

    local fameExp = superSelf:GetNationFameExpByTime()
    local lastLevel = res.realFameLevel
    res.realExp = fameExp -- 更新经验
    local fameLevel, fameLevelData = superSelf:GetNationFameExpLevelAndData(res.realExp)
    res.DecreeMax = fameLevelData.DecreeMax
    res.OccupyNumMax = fameLevelData.OccupyNum
    res.realFameLevel = fameLevel

    if res.realExp >= superSelf.FameMaxData.Exp then
        res.realExp = superSelf.FameMaxData.Exp
        selfTimer:Stop()
    end

    --Logger.LogVars("__UpdateFameTimer 增加了声望 。。。",res)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NAITON_PLAYER_FAME_VALUE_CHANGE)
    if lastLevel ~= res.realFameLevel then
        --声望等级变化
        NationNetManager:GetInstance():SendSyncNationFameRequest(nil)

        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NAITON_PLAYER_FAME_LEVEL_CHANGE)
    end
end

--------------------------资源-----------------------------

--[[
    获取国战资源最大值 因为有公式  所以这边有通过接口获取 方便以后修改，todo，优化，两个N2的循环
]]
local function GetNationResourceMaxValueByItemId(self, itemId)

    local add = 0
    if itemId == NationDefine.ITEM_WOOD_ID then
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
                NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        return math.modf(self.InitialWoodMax + add)
    elseif itemId == NationDefine.ITEM_IRON_ID then
        local add = 0
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
                NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        return math.modf(self.InitialIronMax + add)
    elseif itemId == NationDefine.ITEM_STONE_ID then
        local add = 0
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
                NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        return math.modf(self.InitialStoneMax + add)
    elseif itemId == NationDefine.ITEM_FOOD_ID then
        local add = 0
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
                NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MONEY_MAX)
        return math.modf(self.InitialFoodMax + add)
    elseif itemId == NationDefine.ITEM_DECREE_ID then
        return math.modf(self.nationFame.DecreeMax + add)
    end
end

--获取资源总产量（总加成后，占领的领地和联盟加成，科技，和卡牌天赋）（固定值）
local function GetNationResourceIncreaseHourBasic(self, itemId)
    local add = 0
    add = add + self.InitialResProductNum
    add = add + NationOccupyData:GetInstance():GetAllPlayerNationResAreaIncreaseAmountByResId(itemId)
    add = add + NationUnionData:GetInstance():GetOccupyBuildBuffByResourceId(itemId)

    local techValId = self.__GetNationResTechIdByItemId(itemId, true)
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(techValId)
    add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
            NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, techValId)

    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.ALL_MONEY_2)
    add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
            NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.ALL_MONEY_2)
    return add
end

--获取资源总产量提升（百分比）
local function GetNationResourceIncreaseHourRate(self, itemId)
    local add = 0
    add = add + NationUnionData:GetInstance():GetPlayerNationUnionResourceAddition()

    local techRateId = self.__GetNationResTechIdByItemId(itemId, false)
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(techRateId)
    add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
            NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, techRateId)

    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MONEY_ALL)
    add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
            NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MONEY_ALL)
    return add
end

--[[
  获取资源当前小时产量（资源增长数值公式，重要）
]]
local function GetNationResourceIncreaseHourAmount(self, itemId)
    local a = self:GetNationResourceIncreaseHourBasic(itemId)
    local b = (1 + self:GetNationResourceIncreaseHourRate(itemId))
    local val = math.modf(a * b)
    return val
end

--[[
  获取资源当前每秒产量
]]
local function GetNationResourceIncreaseSecondAmount(self, itemId)
    local incRate = self:GetNationResourceIncreaseHourAmount(itemId) / self.InitialResProductSec
    return incRate
end

--[[
  获取当前某种资源数量
]]
local function GetNationResourceRealNumByItemId(self, itemId)
    local res = self:GetNationResourceByItemId(itemId)
    if res == nil then
        return 0
    end
    return res.realNum
end

--获取资源增加的产量，科技加成（百分比，或固定数值）
local function __GetNationResTechIdByItemId(itemId, isVal)
    if isVal then
        --数值
        if itemId == NationDefine.ITEM_WOOD_ID then
            return NationDefine.NATION_TECH_TYPE.WOOD_MONEY_2
        elseif itemId == NationDefine.ITEM_IRON_ID then
            return NationDefine.NATION_TECH_TYPE.IRON_MONEY_2
        elseif itemId == NationDefine.ITEM_STONE_ID then
            return NationDefine.NATION_TECH_TYPE.STONE_MONEY_2
        elseif itemId == NationDefine.ITEM_FOOD_ID then
            return NationDefine.NATION_TECH_TYPE.FOOD_MONEY_2
        elseif itemId == NationDefine.ITEM_DECREE_ID then
            return 0
        end
    else
        --百分比
        if itemId == NationDefine.ITEM_WOOD_ID then
            return NationDefine.NATION_TECH_TYPE.MONEY_WOOD
        elseif itemId == NationDefine.ITEM_IRON_ID then
            return NationDefine.NATION_TECH_TYPE.MONEY_IRON
        elseif itemId == NationDefine.ITEM_STONE_ID then
            return NationDefine.NATION_TECH_TYPE.MONEY_STONE
        elseif itemId == NationDefine.ITEM_FOOD_ID then
            return NationDefine.NATION_TECH_TYPE.MONEY_FOOD
        elseif itemId == NationDefine.ITEM_DECREE_ID then
            return 0
        end
    end
    return 0
end

--[[
     获取当前时间，某个资源数量, 最大值, 最后更新时间
]]
local function GetNationResourceNumByTime(self, resId, currentTime)
    -- 增长频率  self.FameSpeedSec * 1000
    -- 当前经验 self.nationFame.exp
    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end

    local res = self:GetNationResourceByItemId(resId)
    local maxVal = self:GetNationResourceMaxValueByItemId(resId)
    local remindTime = currentTime - res.lastTime --经过时间
    if remindTime < 0 then
        remindTime = 0
    end
    local addRate = nil -- 增长频度
    local incRate = nil -- 增长量
    local nowVal = nil -- 当前值
    local finalVal = nil -- 最终值
    local sourceVal = res.num
    local lastTime = nil -- 上次更新时间
    local rateMS = nil -- 增长频率
    if res.id == NationDefine.ITEM_DECREE_ID then
        -- 军令单独计时
        incRate = self.DecreeSpdNum
        rateMS = self.DecreeSpdSec * 1000 --单位ms
    else
        incRate = self:GetNationResourceIncreaseSecondAmount(res.id) * self.ResRefresh
        rateMS = self.ResRefresh * 1000 --单位ms
    end

    addRate = math.modf(remindTime / rateMS)
    lastTime = currentTime + addRate * rateMS  --res.lastTime
    nowVal = addRate * incRate + sourceVal
    if nowVal > maxVal then
        finalVal = maxVal
    else
        finalVal = nowVal
    end
    return finalVal, maxVal, lastTime, rateMS, incRate
end

--检测资源是否需要启动一个计时器,计算资源增长
local function __CheckNationResNeedTimer(self, resId)
    if not self.isInitData then
        return false
    end

    local res = self:GetNationResourceByItemId(resId)
    if res == nil then
        return false
    end

    local finalValue, maxVal = self:GetNationResourceNumByTime(res.id)
    res.realNum = finalValue

    if res.realNum < maxVal then
        return true
    else
        return false
    end
end

--[[
  检测运行资源自增长计时器
]]
local function __RunResourceTimer(self)
    if self.nationRes == nil then
        return
    end

    for k, res in pairs(self.nationRes) do
        if self:__CheckNationResNeedTimer(res.id) then
            if res.id == NationDefine.ITEM_DECREE_ID then
                -- 军令单独计时
                Logger.LogVars("__RunResourceTimer 军令需要倒计时时间 。。。", res, "maxVal : ")
                LogicTimerManager:GetInstance():AddServerTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id,
                        LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, res.lastTime,
                        self.DecreeSpdSec * 1000, false, self.__UpdateDecreeTimer, { res = res, superSelf = self })
            else
                Logger.LogVars("__RunResourceTimer 资源需要倒计时时间 。。。", res, "maxVal : ")
                LogicTimerManager:GetInstance():AddServerTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id,
                        LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, res.lastTime,
                        self.ResRefresh * 1000, false, self.__UpdateResourceTimer, { res = res, superSelf = self })
            end
            LogicTimerManager:GetInstance():StartTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id)
        else
            LogicTimerManager:GetInstance():RemoveTimer(NationPlayerData.NATION_RES_TIMER_PREFIX_NAME .. res.id)
        end
    end
end

--[[
    更新资源数量计时器
]]
local function __UpdateResourceTimer(selfTimer, obj)
    --Logger.LogVars("__UpdateResourceTimer : res.Id ")
    local res = obj.res
    local superSelf = obj.superSelf

    --local incRate = superSelf:GetNationResourceIncreaseSecondAmount(res.id)
    --Logger.LogVars("__UpdateResourceTimer : res.Id ",res.id," res.realNum : ",incRate * selfTimer.delay * 0.0001)
    --local oldNum = res.realNum
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local finalVal, maxVal = superSelf:GetNationResourceNumByTime(res.id,currentTime)
    res.realNum = finalVal
    --local maxVal = superSelf:GetNationResourceMaxValueByItemId(res.id)
    --res.realNum =  res.realNum + math.floor(incRate * selfTimer.delay * 0.001)
    if res.realNum >= maxVal then
        res.realNum = maxVal
        selfTimer:Stop()
    end
    if res.id == NationDefine.ITEM_WOOD_ID then
        if currentTime >=  res.lastTime + NationDefine.NATION_SYNC_RESOURCE_TIME_MS then
            NationNetManager:GetInstance():SendSyncNationResourceRequest(nil)
        end
    end

    --资源数量变化
    --Logger.LogVars("石头木材铁粮食  更新了 old num : ",oldNum," new Num : ",res.realNum)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, res.id)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_SCIENCE_DATA_FLUSH)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_VALUE)
end

--[[
  更新军令数量计时器
]]
local function __UpdateDecreeTimer(selfTimer, obj)
    local res = obj.res
    local superSelf = obj.superSelf

    --local incRate = superSelf.DecreeSpdNum
    --Logger.LogVars("  __UpdateDecreeTimer         res .... : ",res, " maxVal : ",maxVal "incRate",incRate)
    --res.realNum = superSelf:GetNationResourceNumByTime(res.id)
    --res.realNum =  res.realNum + math.modf(incRate)
    --local maxVal = superSelf:GetNationResourceMaxValueByItemId(res.id)
    local finalVal, maxVal = superSelf:GetNationResourceNumByTime(res.id)
    res.realNum = finalVal

    if res.realNum >= maxVal then
        res.realNum = maxVal
        selfTimer:Stop()
    end

    --资源数量变化
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, res.id)
    --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCEAP_VALUE)
end

--判断资源是否超出上限
local function IsResourcesOverflow(self, tab)
    local curVal = nil
    local maxVal = nil
    for _, v in ipairs(tab) do
        curVal = self:GetNationResourceByItemId(v.Id).realNum
        maxVal = self:GetNationResourceMaxValueByItemId(v.Id)
        if curVal + v.val > maxVal then
            return true
        end
    end

    return false
end

----[[
-- 更新等级和其他
--]]
--local function __CalcNationFameExpData(self)
--    local fameLevel,fameLevelData = self:GetNationFameExpLevelAndData(self.nationFame.realExp)
--    local changeLevel = false
--
--    if self.nationFame.realFameLevel ~= fameLevel then
--        changeLevel = true
--    end
--    self.DecreeMax = fameLevelData.DecreeMax
--    self.OccupyNumMax = fameLevelData.OccupyNum
--    self.nationFame.realFameLevel = fameLevel
--    return changeLevel
--end

----获取当前声望等级对象
--local function GetCurrentNationFameExpData(self)
--    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
--    local fameExp = self:GetNationFameExpByTime(currentTime)
--    local fameLevel,fameExpData = self:GetNationFameExpLevelAndData(fameExp)
--    return fameExpData
--end

NationPlayerData.__init = __init
NationPlayerData.__delete = __delete
NationPlayerData.__StaticInit = __StaticInit
NationPlayerData.__RunResourceTimer = __RunResourceTimer
NationPlayerData.__RunFameTimer = __RunFameTimer
NationPlayerData.__UpdateFameTimer = __UpdateFameTimer
NationPlayerData.__UpdateDecreeTimer = __UpdateDecreeTimer
NationPlayerData.__UpdateResourceTimer = __UpdateResourceTimer
NationPlayerData.__CheckNationResNeedTimer = __CheckNationResNeedTimer
NationPlayerData.__CheckNationFameNeedTimer = __CheckNationFameNeedTimer
NationPlayerData.__LogicTimer = __LogicTimer
NationPlayerData.__GetNationResTechIdByItemId = __GetNationResTechIdByItemId

NationPlayerData.GetNationResourceRealNumByItemId = GetNationResourceRealNumByItemId
NationPlayerData.NATION_RES_TIMER_PREFIX_NAME = NATION_RES_TIMER_PREFIX_NAME
NationPlayerData.NATION_FAME_TIMER_PREFIX_NAME = NATION_FAME_TIMER_PREFIX_NAME

NationPlayerData.ParseNationPlayerData = ParseNationPlayerData
NationPlayerData.ParseServerNationFameData = ParseServerNationFameData
NationPlayerData.ParseServerNationResources = ParseServerNationResources

NationPlayerData.GetNationResourceMaxValueByItemId = GetNationResourceMaxValueByItemId
NationPlayerData.GetNationResourceByItemId = GetNationResourceByItemId

NationPlayerData.GetNationFameMaxLevelAndData = GetNationFameMaxLevelAndData
NationPlayerData.GetNationFameExpLevelAndData = GetNationFameExpLevelAndData
NationPlayerData.GetCurrentNationFameData = GetCurrentNationFameData

NationPlayerData.GetNationResourceIncreaseSecondAmount = GetNationResourceIncreaseSecondAmount

NationPlayerData.GetNationResourceIncreaseHourAmount = GetNationResourceIncreaseHourAmount
NationPlayerData.GetNationResourceIncreaseHourRate = GetNationResourceIncreaseHourRate
NationPlayerData.GetNationResourceIncreaseHourBasic = GetNationResourceIncreaseHourBasic

NationPlayerData.ParseNationResourceWithPush = ParseNationResourceWithPush
NationPlayerData.GetNationFameExpByTime = GetNationFameExpByTime
NationPlayerData.GetNationResourceNumByTime = GetNationResourceNumByTime

NationPlayerData.IsResourcesOverflow = IsResourcesOverflow

--NationPlayerData.GetCurrentNationFameExpData = GetCurrentNationFameExpData

return NationPlayerData