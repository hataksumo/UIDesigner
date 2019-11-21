
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIWuLingJiActiveModel = BaseClass("UIWuLingJiActiveModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_skillid)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.skillid = _skillid
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


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

UIWuLingJiActiveModel.OnCreate = OnCreate
UIWuLingJiActiveModel.OnEnable = OnEnable
UIWuLingJiActiveModel.OnRefresh = OnRefresh
UIWuLingJiActiveModel.OnDisable = OnDisable
UIWuLingJiActiveModel.OnDestroy = OnDestroy

return UIWuLingJiActiveModel