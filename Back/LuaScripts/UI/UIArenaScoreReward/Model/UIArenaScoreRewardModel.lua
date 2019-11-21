
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local ArenaScoreData ={
    scoreNum = 0,
    awardDataList = {}
}

local UIArenaScoreRewardModel = BaseClass("UIArenaScoreRewardModel", UIBaseModel)
local base = UIBaseModel
local rewardData = DataUtil.GetData("arena_score")
local allCardData = DataUtil.GetData("card")
local allArenaRealtime = DataUtil.GetData("arena_realtime")
local allItemData = DataUtil.GetData("item")
local scoreData = DataClass("scoreData",ArenaScoreData)
local itemData = require "DataCenter/ShowItemData/ShowItemData"
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_type)
	base.OnEnable(self)
    self.type = _type
	-- 窗口关闭时可以清理的成员变量放这
	self.awardInfoData = {}
    if _type == 1 or _type == 2 then
        if allArenaRealtime.RankAward[_type] ~= nil and #allArenaRealtime.RankAward[_type] > 0 then
            for _, v in ipairs(allArenaRealtime.RankAward[_type]) do
                local sc = scoreData.New()
                sc.scoreNum =v.Rank
                for _, m in ipairs(v.Award) do
                    local awardData =itemData.New()
                    awardData.id = m.id
                    local goodsData=allItemData[m.id]
                    awardData.icon = goodsData.Icon
                    awardData.num =m.val
                    awardData.quality = goodsData.Quality
                    table.insert(sc.awardDataList,awardData)
                end
                table.insert(self.awardInfoData,sc)
            end
        end
    elseif _type == 3 then
        for _, v in ipairs(rewardData) do
            if v ~= nil then
                local sc = scoreData.New()
                sc.scoreNum =v.Score
                for _, m in ipairs(v.Award) do
                    local awardData =itemData.New()
                    awardData.id = m.id
                    local goodsData=allItemData[m.id]
                    awardData.icon = goodsData.Icon
                    awardData.num =m.val
                    awardData.quality = goodsData.Quality
                    table.insert(sc.awardDataList,awardData)
                end
                table.insert(self.awardInfoData,sc)
            end
        end
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
    self.awardInfoData = nil
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIArenaScoreRewardModel.OnCreate = OnCreate
UIArenaScoreRewardModel.OnEnable = OnEnable
UIArenaScoreRewardModel.OnRefresh = OnRefresh
UIArenaScoreRewardModel.OnAddListener = OnAddListener
UIArenaScoreRewardModel.OnRemoveListener = OnRemoveListener
UIArenaScoreRewardModel.OnDisable = OnDisable
UIArenaScoreRewardModel.OnDistroy = OnDistroy

return UIArenaScoreRewardModel