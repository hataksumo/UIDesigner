
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIBattleSettlementModel = BaseClass("UIBattleSettlementModel", UIBaseModel)
local base = UIBaseModel
local showItemData = require "DataCenter/ShowItemData/ShowItemData"
local allCardData = DataUtil.GetData("card")
local allItemData = DataUtil.GetData("item")
local allSkillData = DataUtil.GetData("skill")
local global_data = DataUtil.GetData("global")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_data)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.drop_item_list = {}-- 掉落奖励数据
	self.star_list = {}
	if not _data.star._is_null then
		self.star_list = _data.star
	end
	if not _data.dropItem._is_null then --- 掉落数据
		self.drop_item_data = {}
		if not _data.dropItem.cards._is_null then
			for _, v in ipairs(_data.dropItem.cards) do
				local cardData = allCardData[v.id]
				if cardData ~= nil then
					local item = showItemData.New()
					item.id = v.id
					item.name = cardData.Name
					item.quality = cardData.Quality
					item.type = 11
					item.icon = cardData.Icon
					item.num = 1
					table.insert(self.drop_item_list, item)
				end
			end
		end
		if not _data.dropItem.items._is_null then
			for _, v in ipairs(_data.dropItem.items) do
				local itemData = allItemData[v.itemId]
				if itemData ~= nil then
					local item = showItemData.New()
					item.id = v.itemId
					item.name = itemData.Name
					item.quality = itemData.Quality
					item.type = 16
					item.icon = itemData.Icon
					item.num = math.floor(v.count)
					table.insert(self.drop_item_list, item)
				end
			end
		end
		if not _data.dropItem.skills._is_null then
			for _, v in ipairs(_data.dropItem.skills) do
				local itemData = allSkillData[v.templateId]
				if itemData ~= nil then
					local item = showItemData.New()
					item.id = v.id
					item.name = itemData.Name
					item.quality = 1
					item.type = 13
					item.icon = itemData.Icon
					item.num = 1
					table.insert(self.drop_item_list, item)
				end
			end
		end
		if _data.dropItem.exp ~= 0 then
			local expId = global_data[147].valueN
			local expValue = _data.dropItem.exp - UserData:GetInstance().userExp
			if expValue >0 and allItemData[expId] ~= nil then
				local item = showItemData.New()
				item.id = expId
				item.name = allItemData[expId].Name
				item.quality = allItemData[expId].Quality
				item.type =allItemData[expId].ItemType
				item.icon = allItemData[expId].Icon
				item.num = math.floor(expValue)
				--BackpackData:GetInstance():UpdateItemData(item.id, item.num)
				table.insert(self.drop_item_list, item)
			end
		end
	end
	DataUtil.ParseDropItem(_data.dropItem)
	if _data ~= nil and _data.arenaScore ~= 0 then
		self.arena_score_num =  math.floor(ArenaData:GetInstance().arena_score).."(" .."+"..math.floor(_data.arenaScore)..")"  --积分
		self.arena_win_num = "+"..math.floor(_data.victoryPoint) --胜点
		ArenaData:GetInstance().arena_win_num = ArenaData:GetInstance().arena_win_num + _data.victoryPoint
		ArenaData:GetInstance().arena_score = ArenaData:GetInstance().arena_score + _data.arenaScore
        ArenaData:GetInstance().arena_score = _data.selfScore
        ArenaData:GetInstance().arena_rank = _data.selfRank
		ArenaData:GetInstance().arena_win_times = ArenaData:GetInstance().arena_win_times + 1
		ArenaData:GetInstance().arena_all_times = ArenaData:GetInstance().arena_all_times + 1
	end
	if _data ~= nil and _data.pvpArenaScore ~= 0 then
		ArenaPVPData:GetInstance():UpdateArenaPVPData(_data.pvpArenaScore,_data.pvpSelfServerRank,_data.pvpAllServerRank,_data.pvpType,true)
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
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIBattleSettlementModel.OnCreate = OnCreate
UIBattleSettlementModel.OnEnable = OnEnable
UIBattleSettlementModel.OnRefresh = OnRefresh
UIBattleSettlementModel.OnAddListener = OnAddListener
UIBattleSettlementModel.OnRemoveListener = OnRemoveListener
UIBattleSettlementModel.OnDisable = OnDisable
UIBattleSettlementModel.OnDistroy = OnDistroy

return UIBattleSettlementModel