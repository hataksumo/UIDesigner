
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIMultipleMonstersChooseModel = BaseClass("UIMultipleMonstersChooseModel", UIBaseModel)
local base = UIBaseModel
local all_boss_data =  DataUtil.GetData("mu_p_boss_duplicate")
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.bossData = {}
    self.attackNum = ""
end

local function GetBossInfoData(self)
	self.bossData = {}
    self.attackNum = math.floor(DRBossData:GetInstance().attack_time).."/"..DRBossData:GetInstance().attack_time_max

	for _, v in pairs(all_boss_data) do
		local data = {}
		data.id = v.ID
		data.name = v.DuplicateName
		data.power = v.RecommendForce
		data.img = v.DuplicatePic
		data.award1Id = v.KeyBonusShow[1].Id
		data.award1Num = v.KeyBonusShow[1].Desc
		data.award2Id = v.KeyBonusShow[2].Id
		data.award2Num = v.KeyBonusShow[2].Desc
		data.openLv = v.OpenLevel
		local levelId = DRBossData:GetInstance().can_attack_customs
		--1是代表本关开启 2是没开启
		if levelId >= data.id  and UserData:GetInstance().pLevel >= data.openLv then
			data.state = 1
		else
			data.state = 2
		end
		data.openId = v.PreviousDuplicate
		table.insert(self.bossData,data)
	end
	table.sort(self.bossData,function (a,b) return a.id < b.id end)
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	GetBossInfoData(self)
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

UIMultipleMonstersChooseModel.OnCreate = OnCreate
UIMultipleMonstersChooseModel.OnEnable = OnEnable
UIMultipleMonstersChooseModel.OnRefresh = OnRefresh
UIMultipleMonstersChooseModel.OnAddListener = OnAddListener
UIMultipleMonstersChooseModel.OnRemoveListener = OnRemoveListener
UIMultipleMonstersChooseModel.OnDisable = OnDisable
UIMultipleMonstersChooseModel.OnDestroy = OnDestroy

return UIMultipleMonstersChooseModel