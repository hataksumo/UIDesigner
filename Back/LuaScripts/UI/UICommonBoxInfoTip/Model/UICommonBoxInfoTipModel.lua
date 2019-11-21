
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICommonBoxInfoTipModel = BaseClass("UICommonBoxInfoTipModel", UIBaseModel)
local base = UIBaseModel

local CommBoxTipStruct = {
	title="",--标题
	des="",--描述
	isShowStar=false,--是否显示星
	showIcon="",--显示icon
	rewardList={},--{id,num};--奖励列表
	state=0;--0未领取 1可领取，2已领取。
}
CommBoxTipModel = DataClass("CommBoxTipModel",CommBoxTipStruct);
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_boxData)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	--宝箱数据
	--{
	--	boximg=“宝箱图片”,
	--	boxstarinfo={curstar,maxstar,des},
	--	boxgift={{icon,name,num}}
	--}
	if _boxData == nil then
		return
	end
	self.box_data = _boxData
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

UICommonBoxInfoTipModel.OnCreate = OnCreate
UICommonBoxInfoTipModel.OnEnable = OnEnable
UICommonBoxInfoTipModel.OnRefresh = OnRefresh
UICommonBoxInfoTipModel.OnAddListener = OnAddListener
UICommonBoxInfoTipModel.OnRemoveListener = OnRemoveListener
UICommonBoxInfoTipModel.OnDisable = OnDisable
UICommonBoxInfoTipModel.OnDistroy = OnDistroy

return UICommonBoxInfoTipModel