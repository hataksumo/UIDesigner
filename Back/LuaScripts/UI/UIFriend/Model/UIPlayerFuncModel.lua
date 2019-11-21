
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIPlayerFuncModel = BaseClass("UIPlayerFuncModel", UIBaseModel)
local base = UIBaseModel



-- 打开
local function OnEnable(self,id)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.type = FriendData:GetInstance():FindPlayerRelation(id)
	self.id = id
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

UIPlayerFuncModel.OnEnable = OnEnable
UIPlayerFuncModel.OnDisable = OnDisable
UIPlayerFuncModel.OnDistroy = OnDistroy

return UIPlayerFuncModel