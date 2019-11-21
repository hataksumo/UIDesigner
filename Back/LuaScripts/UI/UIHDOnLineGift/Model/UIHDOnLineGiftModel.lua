
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIHDOnLineGiftModel = BaseClass("UIHDOnLineGiftModel", UIBaseModel)
local base = UIBaseModel
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
	self.online_reward_data = OnlineGiftData:GetInstance().GetAllOnlineGift
	self.reward=OnlineGiftData:GetInstance().allOnilineGiftItemData
	self.allItemData=OnlineGiftData:GetInstance().allItemData
end
local function RefreshData(self, InitNum, tempNum)
	self:OnRefresh()
	--传给View
	self:UIBroadcast(UIMessageNames.ON_CHANGE_ONLINE, InitNum, tempNum)
end
-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_ONLINE_REFRESH,self.RefreshData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_ONLINE_REFRESH,self.RefreshData)
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

--获取时间字符串
local function GetTimeStr(num)
	if num >= 10 then
		return tostring(num)
	elseif num > 0 then
		return string.format("0%s",num)
	else
		return "00"
	end
end
local function GetFinialTime(num)
	if num <= 0 then
		return "00:00:00"
	end
	local hour = math.floor( num / 3600)
	local tempMin = num % 3600
	local min = math.floor(tempMin / 60)
	local seconds = math.floor(tempMin % 60)
	return GetTimeStr(hour)..":"..GetTimeStr(min)..":"..GetTimeStr(seconds)
end

local function GetOnlineTime(self)
	return GetFinialTime(OnlineGiftData:GetInstance().nowTime)
end

UIHDOnLineGiftModel.OnCreate = OnCreate
UIHDOnLineGiftModel.OnEnable = OnEnable
UIHDOnLineGiftModel.OnRefresh = OnRefresh
UIHDOnLineGiftModel.OnAddListener = OnAddListener
UIHDOnLineGiftModel.OnRemoveListener = OnRemoveListener
UIHDOnLineGiftModel.OnDisable = OnDisable
UIHDOnLineGiftModel.OnDistroy = OnDistroy
UIHDOnLineGiftModel.GetOnlineTime=GetOnlineTime
UIHDOnLineGiftModel.RefreshData = RefreshData
return UIHDOnLineGiftModel