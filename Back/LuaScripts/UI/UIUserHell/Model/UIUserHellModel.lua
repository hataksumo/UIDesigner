
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIUserHellModel = BaseClass("UIUserHellModel", UIBaseModel)
local base = UIBaseModel
local master_hell_data = DataUtil.GetData("master_hell")
local unlok_data = DataUtil.GetData("unlock")
local relic_data = DataUtil.GetData("relic_body")
local item_data = DataUtil.GetData("item")
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	--获取玩家的当前等级、以及地狱道等级

	local userHellLevel = UserData:GetInstance().hellLevel
	local curhelldata  = master_hell_data[userHellLevel]

	local nextlevel = userHellLevel+1
	local laterHelldata  = master_hell_data[nextlevel]

	-- 各组件刷新
    --{Pic[1],名称图片} ,{Pic[2],底板图片} ,{Pic[3],图标图片}
	self.curLevel={Bg=curhelldata.Pic[2],Icon=curhelldata.Pic[3],Name=curhelldata.Pic[1],subLevel=curhelldata.SubLv}

    if laterHelldata == nil then
        Logger.Log("已到最大等级，或者对应等级不存在,当前等级："..nextlevel)
        return
    end
	self.laterLevel = {Bg=laterHelldata.Pic[2],Icon=laterHelldata.Pic[3],Name=laterHelldata.Pic[1],subLevel=laterHelldata.SubLv,Desc=laterHelldata.Desc}

	self.openfunction= {}
	--100093	地狱道开启功能等级类型	等级
	--100094	地狱道开启功能解锁类型	解锁
	--100095	地狱道开启功能开启类型	开启
	--100096	地狱道开启功能获得类型	获得

	if laterHelldata.Reward ~= nil then
		for i, v in ipairs(laterHelldata.Reward) do
			local item = {}
			local iteminfo = DataUtil.GetDataByIdAndType(v.Id)
			item.Id = v.Id
			item.TypeName = DataUtil.GetClientText(100096)
			item.Frame=SpriteDefine:GetItemQualityFrameByType(iteminfo.quality)
			item.Icon = iteminfo.icon
			item.Num = v.Num
			item.Des = iteminfo.name
			item.Type = 0
            item.Quality = iteminfo.quality
			table.insert(self.openfunction,item)
		end
	end

    --进阶奖励不显示这些解锁功能
	--if laterHelldata.Unlock ~= nil then
    --    for i, v in ipairs(laterHelldata.Unlock) do
	--		local item = {}
	--		local TypeId = v.Type
	--		if TypeId == 1 then --神器
	--			local iteminfo = relic_data[v.Param[1]]
	--			item.Id = iteminfo.Id
	--			item.TypeName = DataUtil.GetClientText(100094)
	--			item.Frame=SpriteDefine:GetItemQualityFrameByType(iteminfo.Quality)
	--			item.Icon = iteminfo.Icon
	--			item.Num = 0
	--			item.Des = iteminfo.Name
	--			item.Type = v.Type
    --            item.Quality = iteminfo.quality
	--			table.insert(self.openfunction,item)
	--		elseif TypeId == 2 then --功能解锁
	--			local iteminfo = unlok_data[v.Param[1]]
	--			if iteminfo ~= nil then
	--				item.Id = v.Param[1]
	--				item.TypeName = DataUtil.GetClientText(100094)
	--				item.Frame=iteminfo.BgIcon
	--				item.Icon = iteminfo.Icon
	--				item.Num = 0
	--				if #v.Param >1 then
	--					item.Des = string.format(iteminfo.Desc,v.Param[2])
	--				else
	--					item.Des = iteminfo.Desc
	--				end
	--				item.Type = v.Type
	--				table.insert(self.openfunction,item)
	--			end
	--		end
	--	end
	--end


	self.curTaskNum = 0
	self.curTaskList=TaskData:GetInstance().hell_task
	for _, task in ipairs(self.curTaskList) do
		if task.status ~= 0 then
		self.curTaskNum = self.curTaskNum+1
		end
	end

	self.maxTaskNum = #self.curTaskList
	self.slider = self.curTaskNum/self.maxTaskNum
	self.sliderText=self.curTaskNum.."/"..self.maxTaskNum

	if math.modf(self.curTaskNum) == math.modf(self.maxTaskNum) then
		self.jnjieUIButtonEnable = true
		for _, task in ipairs(self.curTaskList) do
			if task.status ~= 1 then
				self.jnjieUIButtonEnable = false
			end
		end
	else
		self.jnjieUIButtonEnable = false
	end

end
local function OnDataRefresh(self)
	--更新數據
	self:OnRefresh()
	--通知UI界面
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_USERHELL_REFRESH)
end
local function GetCurList(self)
	return self.curTaskList
end
local function GetCurTaskListItemInfo(self,Index)
	if Index > #self.curTaskList or Index <=0 then
		return nil
	end
	return self.curTaskList[Index]
end
-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_USERHELL_UPDATE,OnDataRefresh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_USERHELL_UPDATE,OnDataRefresh)
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

UIUserHellModel.OnCreate = OnCreate
UIUserHellModel.OnEnable = OnEnable
UIUserHellModel.OnRefresh = OnRefresh
UIUserHellModel.OnAddListener = OnAddListener
UIUserHellModel.OnRemoveListener = OnRemoveListener
UIUserHellModel.OnDisable = OnDisable
UIUserHellModel.OnDistroy = OnDistroy
UIUserHellModel.GetCurList = GetCurList
UIUserHellModel.GetCurTaskListItemInfo = GetCurTaskListItemInfo
return UIUserHellModel