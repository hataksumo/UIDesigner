
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIArenaQualityBattleResultModel = BaseClass("UIArenaQualityBattleResultModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.quick_pk_data = {}
	self.dropData = {}
end

-- 打开
local function OnEnable(self,_data)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if _data == nil then
		return
	end
	if _data.isSuccess then--战斗结果  true胜利
		self.quick_pk_data_name = "胜利"
		self.beforeScore=math.floor(ArenaData:GetInstance().arena_score);
		self.addScore="<color=#3F793F>+"..math.floor(_data.arenaScore).."</color>";
		self.quick_pk_data_score = "<color=#3F793F>"..tostring(self.quick_pk_data_score).."</color>"
	else
		self.quick_pk_data_name = "失败"
		self.beforeScore=math.floor(ArenaData:GetInstance().arena_score);
		self.addScore="<color=#E04C4C>"..math.floor(_data.arenaScore).."</color>"
		self.quick_pk_data_score = "<color=#E04C4C>"..tostring(self.quick_pk_data_score).."</color>"
	end
	self.quick_pk_data_win_num = "+"..math.floor(_data.victoryPoint) --胜点
	ArenaData:GetInstance().arena_score = _data.selfScore
	ArenaData:GetInstance().arena_rank = _data.selfRank
	UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,false)
	self:OnRefresh()
	self.dropData = _data.dropItem

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

UIArenaQualityBattleResultModel.OnCreate = OnCreate
UIArenaQualityBattleResultModel.OnEnable = OnEnable
UIArenaQualityBattleResultModel.OnRefresh = OnRefresh
UIArenaQualityBattleResultModel.OnAddListener = OnAddListener
UIArenaQualityBattleResultModel.OnRemoveListener = OnRemoveListener
UIArenaQualityBattleResultModel.OnDisable = OnDisable
UIArenaQualityBattleResultModel.OnDistroy = OnDistroy

return UIArenaQualityBattleResultModel