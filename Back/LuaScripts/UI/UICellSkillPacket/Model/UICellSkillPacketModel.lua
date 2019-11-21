
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICellSkillPacketModel = BaseClass("UICellSkillPacketModel", UIBaseModel)
local base = UIBaseModel
local allCardData = DataUtil.GetData("card")
local allSkillData = DataUtil.GetData("skill")
local allItemData = DataUtil.GetData("item")
local allSkillExchangeData = DataUtil.GetData("skill_exchange")
local allSkillBreakData = DataUtil.GetData("skill_break")

---技能的状态  1 未激活  2 已激活  3 可激活
local SKILL_NO_ACTIVE_STATE
local SKILL_HAS_ACTIVE_STATE
local SKILL_HAVE_ACTIVE_STATE

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	SKILL_NO_ACTIVE_STATE = 1
	SKILL_HAS_ACTIVE_STATE = 2
	SKILL_HAVE_ACTIVE_STATE = 3
end

---插槽背包技能排序
---第一：是否激活
---第二：是否学习从有到没
---第三：等级高到低
---第四：id从小到大
local function sort_(a, b)
	local r
	local al = tonumber(a.skillIsStudy)
	local bl = tonumber(b.skillIsStudy)
	local at = tonumber(a.quality)
	local bt = tonumber(b.quality)
	local aid = tonumber(a.id)
	local bid = tonumber(b.id)
	local as = tonumber(a.isActivate)
	local bs = tonumber(b.isActivate)

	if as == bs then
		if  al == bl then
			if at == bt then
				r = aid < bid
			else
				r =at > bt
			end
		else
			r = al > bl
		end
	else
		r = as > bs
	end
	return r
end


--技能激活数据
local function SkillActiveData(v,itemData)
	local skillData = allSkillData[v.SkillId]
	if skillData == nil then
		return
	end
	itemData.name = skillData.Name
	itemData.icon = skillData.Icon
	itemData.crystalCost = skillData.CrystalCount
	itemData.skillEffectType = skillData.SkillEffectType
	itemData.showFireType = skillData.ShowFireType
	itemData.quality = skillData.Quality
	itemData.skillIsStudy = 0
	itemData.level = 0
    itemData.levelInfo = "0/"..skillData.MaxLevel
	itemData.items = {}
	for _, v in ipairs(v.Cost) do
		local item = {}
		local cardData=allItemData[v.Id]
		if cardData ==nil then
			return
		end
		item.heroId = v.Id
		item.heroIcon = cardData.Icon
		local goods = BackpackData:GetInstance():GetItemDataById(v.Id)
		if goods ==nil then
			item.heroCount ="<color=#B33A3A>0</color>".."/".. v.Val
		else
            item.heroNowCount =math.floor(goods.haveNum)
			if item.heroNowCount <v.Val then
                item.heroCount =string.format("<color=#B33A3A>%s</color>/%s",DataUtil.GetDataNumDes(item.heroNowCount),v.Val)
			else
                itemData.isActivate = SKILL_HAVE_ACTIVE_STATE
                item.heroCount = DataUtil.GetDataNumDes(item.heroNowCount).."/"..v.Val
			end
		end
		item.heroNeedNum =v.Val
		item.heroQuality = cardData.Quality
		table.insert(itemData.items,item)
	end
	return itemData
end

--拥有的技能数据
local function GetHasSkillData(_id,item_skill)
	local skillData = SkillData:GetInstance().skills[_id]
	if skillData == nil then
		return
	end
	item_skill.id = skillData.id
	item_skill.templateId = skillData.templateId
	item_skill.cardId = skillData.cardId
	item_skill.name = skillData.name
	item_skill.level = math.floor(skillData.level)
	item_skill.breakLevel = skillData.breakLevel
	item_skill.maxLevel = skillData.maxLevel
	item_skill.breakTimes = skillData.breakTimes
	if item_skill.level ~= item_skill.maxLevel then
		local break_all_data = allSkillBreakData[skillData.templateId]
		if break_all_data == nil then
			return
		end
		if skillData.breakTimes == #break_all_data then
			item_skill.nextBreakLv = item_skill.maxLevel
		else
			item_skill.nextBreakLv =  break_all_data[skillData.breakTimes + 1].LvUpLimit
		end

	else
		item_skill.nextBreakLv = 0
	end

	item_skill.levelInfo = math.floor(skillData.level).."/"..skillData.breakLevel
	item_skill.description = skillData.description
	item_skill.quality = skillData.quality
	local cardData = allCardData[skillData.cardId]
	if  cardData ~= nil then
		item_skill.skillFromStudy = cardData.Name.."已学习"
		item_skill.skillIsStudy = 1
		item_skill.heroCardIcon = cardData.Icon
		item_skill.heroCardFrame = SpriteDefine:GetItemQualityFrameByType(cardData.Quality)
		item_skill.skillCrystalIcon = cardData.CrystalType
	else
		item_skill.skillIsStudy = 0
	end
	item_skill.skillType = skillData.skillType
	item_skill.icon = skillData.icon
	item_skill.crystalCost = skillData.crystalCost
	item_skill.showFireType = skillData.showFireType
	item_skill.skillEffectType = skillData.skillEffectType
	item_skill.cost = skillData.costItem
	return item_skill
end






---技能数据赋值
local function GetSkillCellData(self)
	for i, v in pairs(allSkillExchangeData) do
		local data
		local itemData = {}
		itemData.id = i
        itemData.templateId = v.SkillId
		itemData.isShow = v.IfShow
		if SkillData:GetInstance().skills[itemData.id] ~=nil then
			itemData.isActivate = SKILL_HAS_ACTIVE_STATE
		else
			itemData.isActivate = SKILL_NO_ACTIVE_STATE
		end
		if itemData.isActivate == SKILL_HAS_ACTIVE_STATE then
			data = GetHasSkillData(itemData.id,itemData)
		else
			data = SkillActiveData(v,itemData)
		end

		if data ~= nil and itemData.isShow == 1 then
			table.insert(self.skillCellData,data)
		else
			--Logger.Log("技能不存在"..v.SkillId)
		end
	end

end

--按类型区别技能插槽数据


local function TabSkillDataSort(self)
	table.sort( self.skillCellData,sort_)
	self.alreadySortList = { {}, {}, {}, {} }
	for i = 1, #self.skillCellData do
		table.insert(self.alreadySortList[self.skillCellData[i].skillEffectType], self.skillCellData[i])
	end
end

local function SetSkillExchange(self)
	---全部兑换技能数据
	self.skillCellData = {}
	-- 窗口关闭时可以清理的成员变量放这
	GetSkillCellData(self)
	TabSkillDataSort(self)
end

-- 打开
local function OnEnable(self,slectData)
	base.OnEnable(self)
	if slectData then
		self.skillID=slectData.id
		self.skillEffectType = slectData.skillEffectType
	else
		self.skillID=nil
		self.skillEffectType = 1
	end

	-- 窗口关闭时可以清理的成员变量放这
	SetSkillExchange(self)
end




-- 刷新全部数据
local function OnRefresh(self,_id,type)
    SetSkillExchange(self)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_CELL_SKILL_UPDATE,_id,type)
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
    self:AddDataListener(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE, OnRefresh)
    --self:AddDataListener(DataMessageNames.ON_SKILL_BACKPACK_UPDATEALL, UpdateExchangeData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,OnRefresh)
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
	self.skillCellData = nil
	self.alreadySortList=nil
end

UICellSkillPacketModel.OnCreate = OnCreate
UICellSkillPacketModel.OnEnable = OnEnable
UICellSkillPacketModel.OnRefresh = OnRefresh
UICellSkillPacketModel.OnAddListener = OnAddListener
UICellSkillPacketModel.OnRemoveListener = OnRemoveListener
UICellSkillPacketModel.OnDisable = OnDisable
UICellSkillPacketModel.OnDestroy = OnDestroy

return UICellSkillPacketModel