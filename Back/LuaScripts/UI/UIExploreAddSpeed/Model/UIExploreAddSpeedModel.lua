
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIExploreAddSpeedModel = BaseClass("UIExploreAddSpeedModel", UIBaseModel)
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
	self.addspeedSpendId=DataUtil.GetData("global")[153].valueN;
	self.addSpeedItemCostNum=BackpackData:GetInstance():GetItemNumById(self.addspeedSpendId);
	self.addSpeedItemData=DataUtil.GetDataByIdAndType(self.addspeedSpendId);
	self.diamondId=1401010;
	self.curSpeedTimes=ExploreData:GetInstance().teamData.speedUpTimes;
	self.curBuyTimes=ExploreData:GetInstance().teamData.buySpeedUpTiems;
	local speedList=DataUtil.GetData("global")[170].valueNA;
	self.speedMaxTimes=DataUtil.GetData("global")[169].valueN;
	self.addSpeedCost=self.curSpeedTimes>#speedList and speedList[#speedList] or speedList[self.curBuyTimes+1];
	self.addSpeedCostNum=BackpackData:GetInstance():GetItemNumById(self.diamondId);
	self.addSpeedCostData=DataUtil.GetDataByIdAndType(self.diamondId);
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
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UIExploreAddSpeedModel.OnCreate = OnCreate
UIExploreAddSpeedModel.OnEnable = OnEnable
UIExploreAddSpeedModel.OnRefresh = OnRefresh
UIExploreAddSpeedModel.OnAddListener = OnAddListener
UIExploreAddSpeedModel.OnRemoveListener = OnRemoveListener
UIExploreAddSpeedModel.OnDisable = OnDisable
UIExploreAddSpeedModel.OnDestroy = OnDestroy

return UIExploreAddSpeedModel