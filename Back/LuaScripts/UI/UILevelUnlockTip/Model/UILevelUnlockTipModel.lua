
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILevelUnlockTipModel = BaseClass("UILevelUnlockTipModel", UIBaseModel)
local base = UIBaseModel
local unlockData=DataUtil.GetData("unlock");
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_oldLv,_curLv)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	Logger.Log("---打开升级")
	self.oldLv=_oldLv;
	self.curLv=_curLv;
	self.dataList={};
	local master_hell=DataUtil.GetData("master_hell");
	self.limitLv=master_hell[UserData:GetInstance().hellLevel].LvLimit;
	UserData:GetInstance():UpdateOldLv()
	for i, v in pairs(unlockData) do
		if v.Condition~=nil then
			for a, b in ipairs(v.Condition) do
				if b.id==1050101 and v.Icon then
					table.insert(self.dataList,{id=i,lv=b.param1,title=v.Title,icon=v.Icon,iconPathType=v.IconPathType});
				end
			end
		end

	end
	table.sort(self.dataList,function(a,b)
		if a.lv==b.lv then
			return a.id<b.id;
		else
			return a.lv<b.lv;
		end
	end)
	self.dataBeginIndex=0;
	for i, v in ipairs(self.dataList) do
		if v.lv>=self.curLv then
			self.dataBeginIndex=i;
			break;
		end
	end

	DataManager:GetInstance():Broadcast("GuideBattleEnd")

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

UILevelUnlockTipModel.OnCreate = OnCreate
UILevelUnlockTipModel.OnEnable = OnEnable
UILevelUnlockTipModel.OnRefresh = OnRefresh
UILevelUnlockTipModel.OnAddListener = OnAddListener
UILevelUnlockTipModel.OnRemoveListener = OnRemoveListener
UILevelUnlockTipModel.OnDisable = OnDisable
UILevelUnlockTipModel.OnDestroy = OnDestroy

return UILevelUnlockTipModel