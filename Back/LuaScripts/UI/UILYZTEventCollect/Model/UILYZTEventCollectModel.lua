
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILYZTEventCollectModel = BaseClass("UILYZTEventCollectModel", UIBaseModel)
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
	local all_clue = LTData:GetInstance():GetCurrentClue()
	if all_clue ~= nil then
		self.event_list = {}
		local tl_item = DataUtil.GetData("tl_item")
		local city_name = LTData:GetInstance():FindCurrentCity().name
		for i, v in ipairs(all_clue) do
			local data =  tl_item[v.id]
			local new_clue = {icon = "",desc = "策划什么都没填",name = "",address = city_name}
			if data ~= nil then
				new_clue.icon = data.Icon
				new_clue.desc = data.Des
				new_clue.name = data.Name
			end
			table.insert(self.event_list,new_clue)
		end
	end
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

UILYZTEventCollectModel.OnCreate = OnCreate
UILYZTEventCollectModel.OnEnable = OnEnable
UILYZTEventCollectModel.OnAddListener = OnAddListener
UILYZTEventCollectModel.OnRemoveListener = OnRemoveListener
UILYZTEventCollectModel.OnDisable = OnDisable
UILYZTEventCollectModel.OnDestroy = OnDestroy

return UILYZTEventCollectModel