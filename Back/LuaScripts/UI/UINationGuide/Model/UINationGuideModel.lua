
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationGuideModel = BaseClass("UINationGuideModel", UIBaseModel)
local base = UIBaseModel
local MASK_INDEX = -10
local DELAY_TIME = 0.2
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.mask = true
	UIMask:GetInstance():ShowEmptyMask(MASK_INDEX)
end

-- 打开
local function OnEnable(self,GuideType,step)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if self.mask then
		self:__DisposeCreateDelayTimer()
		self.createDelayTimer = TimerManager:GetInstance():SimpleTimerArgs(DELAY_TIME,function()
			if self.mask then
				self.mask = false
				UIMask:GetInstance():CloseEmptyMask(MASK_INDEX)
			end
		end,nil,true)
	end
	--self.GuideType = GuideType
	--self.step = step
end

-- 刷新全部数据
local function OnRefresh(self)


end


local function __DisposeCreateDelayTimer(self)

	if self.createDelayTimer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.createDelayTimer)
		if self.mask then
			UIMask:GetInstance():CloseEmptyMask(MASK_INDEX)
		end
	end
	self.createDelayTimer = nil
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
	self:__DisposeCreateDelayTimer()
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量
end

UINationGuideModel.OnCreate = OnCreate
UINationGuideModel.OnEnable = OnEnable
UINationGuideModel.OnRefresh = OnRefresh
UINationGuideModel.OnAddListener = OnAddListener
UINationGuideModel.OnRemoveListener = OnRemoveListener
UINationGuideModel.OnDisable = OnDisable
UINationGuideModel.OnDestroy = OnDestroy
UINationGuideModel.__DisposeCreateDelayTimer = __DisposeCreateDelayTimer

return UINationGuideModel