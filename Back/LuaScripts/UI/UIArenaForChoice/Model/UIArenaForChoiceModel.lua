
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]
local UIArenaForChoiceModel = BaseClass("UIArenaForChoiceModel", UIBaseModel)
local base = UIBaseModel
local arena_victory_data = DataUtil.GetData("arena_message")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.rank_critical_score = 0
	self.my_rank_critical_score = 0
	self.arena_data = {}
end

-- 打开
local function OnEnable(self,arenaData)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if arenaData == nil then
		ArenaData:GetInstance():OpenArena()
		return
	end
    ArenaData:GetInstance().rank_critical_score = arena_victory_data[1].RankCritical
	self.my_rank_critical_score = ArenaData:GetInstance().arena_player_data.score
	self.arena_data = ArenaData:GetInstance().arena_score
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

UIArenaForChoiceModel.OnCreate = OnCreate
UIArenaForChoiceModel.OnEnable = OnEnable
UIArenaForChoiceModel.OnRefresh = OnRefresh
UIArenaForChoiceModel.OnAddListener = OnAddListener
UIArenaForChoiceModel.OnRemoveListener = OnRemoveListener
UIArenaForChoiceModel.OnDisable = OnDisable
UIArenaForChoiceModel.OnDistroy = OnDistroy

return UIArenaForChoiceModel