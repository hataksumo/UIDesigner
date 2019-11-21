
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICarnivalModel = BaseClass("UICarnivalModel", UIBaseModel)
local base = UIBaseModel

local StaticCarnivalData = DataUtil.GetData("week_promote")
local StaticItemData = DataUtil.GetData("item")

local function initData(self)
	self.now_week = CarnivalData:GetInstance().now_week;

	self.nowStaticCarnivalData = StaticCarnivalData[self.now_week];
	--积分奖励信息
	self.scoreAwardNum = #self.nowStaticCarnivalData.Awards;
	self.awardData = {};
	for k, v in ipairs(self.nowStaticCarnivalData.Awards) do
		self.awardData[k] = {id = v.Id, score = v.Num, status = 0}
		self.awardData[k].rewards = {};
		for i, j in ipairs(v.Reward) do
			local data_info=StaticItemData[v.Reward[i].Id]
			self.awardData[k].rewards[i] = {id = v.Reward[i].Id, num = v.Reward[i].Num}
			self.awardData[k].rewards[i].icon = data_info.Icon;
			self.awardData[k].rewards[i].quality = data_info.Quality;
			self.awardData[k].rewards[i].type = data_info.ItemType
		end
	end
	--天数名称
	self.dayNameData = {};
	--每天开启的活动名称
	self.dayActivityNameData = {};
	--活动内容数据
	self.activityData = {};
	for k, v in ipairs(self.nowStaticCarnivalData.Days) do
		table.insert(self.dayNameData, v.Name);
		self.dayActivityNameData[k] = {};
		self.activityData[k] = {};
		for i, j in ipairs(v.Tabs) do
			self.dayActivityNameData[k][i] = j.TabName;
			self.activityData[k][i] = {};
			if j.Tasks ~= nil then
				for m, n in ipairs(j.Tasks) do
					self.activityData[k][i][m] = {id = n.Id, Title = n.Title, tag_progress = n.Param[1], progress = 0, status = 0, type = "Task", jump = n.Jump}
					self.activityData[k][i][m].rewards = {}
					for x, y in ipairs(n.Reward) do
						self.activityData[k][i][m].rewards[x] = {id = y.Id, num = y.Num};
						self.activityData[k][i][m].rewards[x].icon = StaticItemData[y.Id].Icon;
						self.activityData[k][i][m].rewards[x].quality = StaticItemData[y.Id].Quality;
					end
				end
			end
			if j.Goods ~= nil then
				for m, n in ipairs(j.Goods) do
					self.activityData[k][i][m] = {id = n.Id, Title = n.Title, times = n.Times, buynum = 0, type = "Goods"}
                    self.activityData[k][i][m].CostId = n.Cost[1].Id;
					self.activityData[k][i][m].CostImg = StaticItemData[n.Cost[1].Id].Icon;
					self.activityData[k][i][m].OrgVal = n.Cost[1].OrgVal;
					self.activityData[k][i][m].Val = n.Cost[1].Val;
					self.activityData[k][i][m].rewards = {}
					for x, y in ipairs(n.Award) do
						self.activityData[k][i][m].rewards[x] = {id = y.Id, num = y.Val};
						self.activityData[k][i][m].rewards[x].icon = StaticItemData[y.Id].Icon;
						self.activityData[k][i][m].rewards[x].quality = StaticItemData[y.Id].Quality;
					end
				end
			end
		end
	end
	--当前周期的天数
	self.dayNum = #self.dayNameData
	self:OnRefresh()
end

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	initData(self)
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这


	--CarnivalData:GetInstance():RequestGetCarnivalData();
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	self.now_score = CarnivalData:GetInstance().now_score;
	self.now_day = CarnivalData:GetInstance().now_day;
	for k, v in ipairs(self.awardData) do
		self.awardData[k].status = CarnivalData:GetInstance().score_award_data[v.id].status
	end
	for k, v in ipairs(self.activityData) do
		for i, j in ipairs(v) do
			for m, n in ipairs(j) do
				if n.type == "Task" then
					self.activityData[k][i][m].status = CarnivalData:GetInstance().all_activity_data[n.id].status
					self.activityData[k][i][m].progress = CarnivalData:GetInstance().all_activity_data[n.id].progress
				end
				if n.type == "Goods" then
					self.activityData[k][i][m].buynum = CarnivalData:GetInstance().goods_shop_data[n.id].buynum
				end
			end
		end
	end
	self:UIBroadcast(UIMessageNames.UI_CARNIVAL_VIEW_REFRESH)
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_CARNIVAL_DATA_UPDATE, OnRefresh);
	self:AddDataListener(DataMessageNames.ON_CARNIVAL_DATA_INIT, initData);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_CARNIVAL_DATA_UPDATE, OnRefresh);
	self:RemoveDataListener(DataMessageNames.ON_CARNIVAL_DATA_INIT, initData);
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UICarnivalModel.OnCreate = OnCreate
UICarnivalModel.OnEnable = OnEnable
UICarnivalModel.OnRefresh = OnRefresh
UICarnivalModel.OnAddListener = OnAddListener
UICarnivalModel.OnRemoveListener = OnRemoveListener
UICarnivalModel.OnDisable = OnDisable
UICarnivalModel.OnDestroy = OnDestroy

return UICarnivalModel