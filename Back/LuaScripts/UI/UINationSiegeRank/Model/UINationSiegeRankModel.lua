--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationSiegeRankModel = BaseClass("UINationSiegeRankModel", UIBaseModel)
local base = UIBaseModel
local ItemInfo = DataUtil.GetData("item")
local rankRewardInfo = DataUtil.GetData("national_rank_award")

local function LoadRewardData(self, buildInfo)
    local itemInfo = nil
    for _, v in ipairs(buildInfo.OccupiedAwd.FAward) do
        itemInfo = ItemInfo[v.Id]
        local temp = {}
        temp.name = itemInfo.Name
        temp.icon = itemInfo.Icon
        temp.count = v.Val
        table.insert(self.rewardItemList, temp)
    end

    for _, v in ipairs(rankRewardInfo[buildInfo.OccupiedAwd.KillRankAwardId]) do
        itemInfo = ItemInfo[v.RankAward[1].Id]
        local temp = {}
        temp.icon = itemInfo.Icon
        temp.count = v.RankAward[1].Val
        if v.Up == v.Down then
            temp.name = DataUtil.GetClientText(100122) .. v.Up .. DataUtil.GetClientText(200388)
        else
            temp.name = DataUtil.GetClientText(100122) .. v.Up .. "-" .. v.Down .. DataUtil.GetClientText(200388)
        end
        table.insert(self.rewardKillRankList, temp)
    end

    for _, v in ipairs(rankRewardInfo[buildInfo.OccupiedAwd.BrokeRankAwardId]) do
        itemInfo = ItemInfo[v.RankAward[1].Id]
        local temp = {}
        temp.icon = itemInfo.Icon
        temp.count = v.RankAward[1].Val
        if v.Up == v.Down then
            temp.name = DataUtil.GetClientText(100122) .. v.Up .. DataUtil.GetClientText(200388)
        else
            temp.name = DataUtil.GetClientText(100122) .. v.Up .. "-" .. v.Down .. DataUtil.GetClientText(200388)
        end
        table.insert(self.rewardBreakRankList, temp)
    end
end

local function LoadRankData(self, msgObj)
    self.rankList.killTab = {}
    self.rankList.breakTab = {}
    self.rankList.playerName = msgObj.laderName
    self.rankList.armyName = msgObj.unionName
    for _, v in ipairs(msgObj.killEnemyRank) do
        local temp = {}
        temp.rank = v.rank
        temp.name = v.userName
        temp.score = math.modf(v.score)
        table.insert(self.rankList.killTab, temp)
    end

    table.sort(self.rankList.killTab, function(a, b)
        return a.rank < b.rank
    end)

    for _, v in ipairs(msgObj.breakBuildRank) do
        local temp = {}
        temp.rank = v.rank
        temp.name = v.userName
        temp.score = math.modf(v.score)
        table.insert(self.rankList.breakTab, temp)
    end

    table.sort(self.rankList.breakTab, function(a, b)
        return a.rank < b.rank
    end)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end
-- 打开
local function OnEnable(self, build, msg_obj)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.buildID = build
    -- 1 首战奖励， 2 历史占领记录
    if isNilOrEmpty(msg_obj.unionName) and isNilOrEmpty(msg_obj.laderName) then
        self.state = 1
    else
        self.state = 2
    end

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(build)

    self.rewardItemList = {}
    self.rewardKillRankList = {}
    self.rewardBreakRankList = {}

    self.rankList = {}

    if self.state == 1 then
        LoadRewardData(self, buildInfo)
    else
        LoadRankData(self, msg_obj)
    end

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.state = nil
    self.buildID = nil

    self.rewardItemList = {}
    self.rewardKillRankList = {}
    self.rewardBreakRankList = {}
    self.rankList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationSiegeRankModel.OnCreate = OnCreate
UINationSiegeRankModel.OnEnable = OnEnable
UINationSiegeRankModel.OnRefresh = OnRefresh
UINationSiegeRankModel.OnAddListener = OnAddListener
UINationSiegeRankModel.OnRemoveListener = OnRemoveListener
UINationSiegeRankModel.OnDisable = OnDisable
UINationSiegeRankModel.OnDestroy = OnDestroy

return UINationSiegeRankModel