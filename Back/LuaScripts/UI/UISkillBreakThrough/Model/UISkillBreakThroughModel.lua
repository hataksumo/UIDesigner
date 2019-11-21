
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UISkillBreakThroughModel = BaseClass("UISkillBreakThroughModel", UIBaseModel)
local base = UIBaseModel
local allSkillBreakData = DataUtil.GetData("skill_break")
local allSkillBreakDebrisData = DataUtil.GetData("skill_break_debris")
local allCardData = DataUtil.GetData("card")
-- 解析技能数据
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

local function ParseSkillBreakThrough(self,_skillData,_type)
	self.break_skill_data = {}
	local breakData = {}
	local cardData = allCardData[_skillData.cardId]
	if cardData ~= nil then
		breakData.skillCrystalIcon = cardData.CrystalType
	else
		breakData.skillCrystalIcon=nil
	end
	breakData.id = _skillData.id
	breakData.templateId = _skillData.templateId
	breakData.showFireType = _skillData.showFireType
	breakData.heroId = _skillData.cardId
	breakData.name = _skillData.name
	breakData.level = _skillData.level
	breakData.maxLevel = _skillData.maxLevel
	breakData.icon = _skillData.icon
	breakData.quality = _skillData.quality
	breakData.skillType = _skillData.skillType
	breakData.crystalCost = _skillData.crystalCost
	breakData.breakTimes = _skillData.breakTimes
	local break_all_data = allSkillBreakData[_skillData.templateId]
	if break_all_data == nil then
		return
	end
	breakData.breakLevelBefore = break_all_data[_skillData.breakTimes].LvUpLimit
	breakData.breakLevelAfter = break_all_data[_skillData.breakTimes + 1].LvUpLimit
	if break_all_data[_skillData.breakTimes + 1].Cost ~= nil then
		breakData.only_itemList = {}
		breakData.cost_sp = false
		for _, v in ipairs(break_all_data[_skillData.breakTimes + 1].Cost) do
			local item = {}
			item.id = v.Id
			item.val = v.Val
			if item.val>0 then
				breakData.cost_sp = true
			end
			table.insert(breakData.only_itemList,item)
		end
	else
		breakData.cost_sp = false
	end
	local exp = break_all_data[_skillData.breakTimes + 1].Exp
	if exp ~= nil and  exp>0  then
		breakData.cost_exp = true
		breakData.needExp = break_all_data[_skillData.breakTimes + 1].Exp
	else
		breakData.needExp = 0
		breakData.cost_exp = false
	end
	breakData.itemList = {}
	if breakData.cost_exp then
		for i, v in ipairs(allSkillBreakDebrisData) do
			if i == break_all_data[_skillData.breakTimes + 1].ExpItemGroup then
				breakData.cost_title=v.Title
				breakData.cost_des=v.Desc
				for _, m in ipairs(v.Debris) do
					local item = {}
					item.id = m.DebrisId
					item.exp = m.Exp
					item.is_show_del = false
					local haev_num=BackpackData:GetInstance():GetItemNumById(item.id)
					if breakData.cost_sp and breakData.only_itemList[1].id==m.DebrisId then
						if haev_num>= breakData.only_itemList[1].val then
							item.have_num =haev_num-breakData.only_itemList[1].val
						else
							item.have_num=0
						end
					else
						item.have_num =haev_num
					end
					table.insert(breakData.itemList,item)
				end
				table.sort(breakData.itemList,function (a,b)return a.have_num > b.have_num end)
			end
		end
	end
	self.break_skill_data = breakData
	if _type == 1 then
		UIManager:GetInstance():Broadcast(UIMessageNames.UISKILL_BACKPACK_LV_SUCCEED)
	end
end


-- 打开
local function OnEnable(self,_skillData,type,tip)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.type=type
	if _skillData == nil then
		return
	end
	self.tip = tip
	ParseSkillBreakThrough(self,_skillData)
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

local function UpdateData(self,_skillData)
	ParseSkillBreakThrough(self,_skillData,1)
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_SKILL_BREAK_THROUGH_INFO, UpdateData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_SKILL_BREAK_THROUGH_INFO, UpdateData)
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

UISkillBreakThroughModel.OnCreate = OnCreate
UISkillBreakThroughModel.OnEnable = OnEnable
UISkillBreakThroughModel.OnRefresh = OnRefresh
UISkillBreakThroughModel.OnAddListener = OnAddListener
UISkillBreakThroughModel.OnRemoveListener = OnRemoveListener
UISkillBreakThroughModel.OnDisable = OnDisable
UISkillBreakThroughModel.OnDistroy = OnDistroy

return UISkillBreakThroughModel