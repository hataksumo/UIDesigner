
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIHDQiRiLiBaoModel = BaseClass("UIHDQiRiLiBaoModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	self.seven_reward_data = SevenGiftData:GetInstance():GetAllSevenGiftInfo()
	self.canReward=SevenGiftData:GetInstance().canReward
	self.accuGem=SevenGiftData:GetInstance().accuGem
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)
	self.reward=SevenGiftData:GetInstance().allSevenGiftItemData
	self.allItemData=SevenGiftData:GetInstance().allItemData
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

UIHDQiRiLiBaoModel.OnCreate = OnCreate
UIHDQiRiLiBaoModel.OnEnable = OnEnable
UIHDQiRiLiBaoModel.OnRefresh = OnRefresh
UIHDQiRiLiBaoModel.OnAddListener = OnAddListener
UIHDQiRiLiBaoModel.OnRemoveListener = OnRemoveListener
UIHDQiRiLiBaoModel.OnDisable = OnDisable
UIHDQiRiLiBaoModel.OnDistroy = OnDistroy
return UIHDQiRiLiBaoModel