
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local DayForActiveData = {
	task_id = 0,
	task_class = 0,
	task_name = "",
	task_icon = "",
	task_param = {},
	task_condition = {},
	task_des = ""
}

local UIDailyTaskModel = BaseClass("UIDailyTaskModel", UIBaseModel)
local base = UIBaseModel
local DailyActiveData = DataClass("DailyActiveData",DayForActiveData)
local recommend_class_data = DataUtil.GetData("recommend_class")
local recommend_reward_data = DataUtil.GetData("recommend_reward")
local recommend_data = DataUtil.GetData("recommend")
local all_item_data = DataUtil.GetData("item")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

---获取日常任务数据
local function GetDailyActiveData(self)
	if recommend_class_data == nil then
		return
	end
	---日常活动顶部按钮
	self.top_btn_data = {}
	---所以日常任务数据
	self.daily_active_data = {}
	for i, v in ipairs(recommend_class_data) do
		if v.ResetTime ~= nil then
			local data = {}
			data.ID = i
			data.ResetTime = v.ResetTime
			table.insert(self.top_btn_data,data)
		end
	end
	for i, v in ipairs(recommend_data) do
		local data = DailyActiveData.New()
		data.task_id = i
		data.task_class = v.Class
		data.task_name = v.Name
		data.task_icon = v.Icon
		for _, m in ipairs(v.Param1) do
			for j, n in ipairs(recommend_reward_data) do
				if j == tonumber(m) then
					local itemData = {}
					itemData.class = n.Class
					itemData.pic = n.Picture
					table.insert(data.task_param,itemData)
				end
			end
		end
		for _, m in ipairs(v.Condition) do
			local itemData = {}
			local temp_data=all_item_data[tonumber(m)]
			itemData.type=temp_data.ItemType
			itemData.quality = temp_data.Quality
			itemData.icon = temp_data.Icon
			table.insert(data.task_condition,itemData)
		end
		data.task_des = v.Des
		table.insert(self.daily_active_data,data)
	end
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self:OnRefresh()
	self.every_day_data = {}
	GetDailyActiveData(self)

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

UIDailyTaskModel.OnCreate = OnCreate
UIDailyTaskModel.OnEnable = OnEnable
UIDailyTaskModel.OnRefresh = OnRefresh
UIDailyTaskModel.OnAddListener = OnAddListener
UIDailyTaskModel.OnRemoveListener = OnRemoveListener
UIDailyTaskModel.OnDisable = OnDisable
UIDailyTaskModel.OnDistroy = OnDistroy

return UIDailyTaskModel