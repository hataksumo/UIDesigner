
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIShenQiActiveModel = BaseClass("UIShenQiActiveModel", UIBaseModel)
local base = UIBaseModel
local DataRelic = DataUtil.GetData("relic_body")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_artid,curlevel,phaseBunusindex)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	local artdata = nil
	if _artid ~= nil then
		for i, v in ipairs(DataRelic) do
			if _artid == v.Id then
			artdata = v
			break;
			end
		end
	end
	if artdata == nil then
		Logger.LogError("神器数据错误")
		return
	end

	self.data={}
	self.data.Icon = artdata.Icon
	self.data.levelinfo = "等级:"..curlevel.."/"..#artdata.Lvs
	self.data.curText = "激活效果 ："..artdata.phaseBunus[phaseBunusindex].Desc
	self.data.nextText = ""
	if artdata.phaseBunus[phaseBunusindex+1] ~= nil then
		self.data.nextText ="下一个效果"..artdata.phaseBunus[phaseBunusindex+1].Lv.."级可激活 ：".. artdata.phaseBunus[phaseBunusindex+1].Desc
	end
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
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UIShenQiActiveModel.OnCreate = OnCreate
UIShenQiActiveModel.OnEnable = OnEnable
UIShenQiActiveModel.OnRefresh = OnRefresh
UIShenQiActiveModel.OnAddListener = OnAddListener
UIShenQiActiveModel.OnRemoveListener = OnRemoveListener
UIShenQiActiveModel.OnDisable = OnDisable
UIShenQiActiveModel.OnDestroy = OnDestroy

return UIShenQiActiveModel