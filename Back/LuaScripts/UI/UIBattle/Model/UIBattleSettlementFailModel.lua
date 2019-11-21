
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIBattleSettlementFailModel = BaseClass("UIBattleSettlementFailModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_data)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if _data.arenaScore ~= 0 then
		self.arena_score_num =  math.floor(ArenaData:GetInstance().arena_score).."(" ..math.floor(_data.arenaScore)..")"  --积分
		ArenaData:GetInstance().arena_score = ArenaData:GetInstance().arena_score + _data.arenaScore
        ArenaData:GetInstance().arena_score = _data.selfScore
        ArenaData:GetInstance().arena_rank = _data.selfRank
		ArenaData:GetInstance().arena_all_times = ArenaData:GetInstance().arena_all_times + 1
	end
	if _data ~= nil and _data.pvpArenaScore ~= 0 then
		ArenaPVPData:GetInstance():UpdateArenaPVPData(_data.pvpArenaScore,_data.pvpSelfServerRank,_data.pvpAllServerRank,_data.pvpType,false)
	end
	DataManager:GetInstance():Broadcast("GuideBattleEnd",1)
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
	
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIBattleSettlementFailModel.OnCreate = OnCreate
UIBattleSettlementFailModel.OnEnable = OnEnable
UIBattleSettlementFailModel.OnRefresh = OnRefresh
UIBattleSettlementFailModel.OnAddListener = OnAddListener
UIBattleSettlementFailModel.OnRemoveListener = OnRemoveListener
UIBattleSettlementFailModel.OnDisable = OnDisable
UIBattleSettlementFailModel.OnDistroy = OnDistroy

return UIBattleSettlementFailModel