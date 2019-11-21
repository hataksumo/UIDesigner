
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIArenaBoxInfoTipModel = BaseClass("UIArenaBoxInfoTipModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.box_data = {}
	self.box_score = ""
end

-- 打开
local function OnEnable(self,_boxData,_score,_type)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if _boxData.awardDataList == nil then
		return
	end
	self.box_data = _boxData.awardDataList
	if _type == 1 then
		if ArenaData:GetInstance().arena_win_num > _score then
			self.box_score = _score.."/".._score
		else
			self.box_score = math.floor(ArenaData:GetInstance().arena_win_num).."/".._score
		end

	else
		self.box_score =_score
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
	
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIArenaBoxInfoTipModel.OnCreate = OnCreate
UIArenaBoxInfoTipModel.OnEnable = OnEnable
UIArenaBoxInfoTipModel.OnRefresh = OnRefresh
UIArenaBoxInfoTipModel.OnAddListener = OnAddListener
UIArenaBoxInfoTipModel.OnRemoveListener = OnRemoveListener
UIArenaBoxInfoTipModel.OnDisable = OnDisable
UIArenaBoxInfoTipModel.OnDistroy = OnDistroy

return UIArenaBoxInfoTipModel