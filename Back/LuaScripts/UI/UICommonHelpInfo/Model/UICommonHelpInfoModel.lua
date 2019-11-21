
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICommonHelpInfoModel = BaseClass("UICommonHelpInfoModel", UIBaseModel)
local base = UIBaseModel
local helpData = DataUtil.GetData("help")
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_id)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	if _id ==0 then
		return
	end
	local data = helpData[_id]
	if data ==nil then
		return
	end
	self.helpTitle = data.Title
	self.helpInfo =data.Txt
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

UICommonHelpInfoModel.OnCreate = OnCreate
UICommonHelpInfoModel.OnEnable = OnEnable
UICommonHelpInfoModel.OnRefresh = OnRefresh
UICommonHelpInfoModel.OnAddListener = OnAddListener
UICommonHelpInfoModel.OnRemoveListener = OnRemoveListener
UICommonHelpInfoModel.OnDisable = OnDisable
UICommonHelpInfoModel.OnDistroy = OnDistroy

return UICommonHelpInfoModel