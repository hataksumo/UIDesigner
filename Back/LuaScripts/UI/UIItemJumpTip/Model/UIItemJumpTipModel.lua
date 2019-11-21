
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIItemJumpTipModel = BaseClass("UIItemJumpTipModel", UIBaseModel)
local base = UIBaseModel
local allItemData = DataUtil.GetData("item")
local allItemJumpData = DataUtil.GetData("item_jump")

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self,_itemId,_lv,_windName)
	base.OnEnable(self)
	self.itemData = {}
	self.winName = _windName
	self.showExpPanel=false;
	-- 窗口关闭时可以清理的成员变量放这
	if allItemData[_itemId] == nil then
		return
	else

		local data = {}
		data.frame = SpriteDefine:GetItemQualityFrameByType(allItemData[_itemId].Quality)
		data.icon = allItemData[_itemId].Icon
		data.name = allItemData[_itemId].Name
		if _itemId == 1401014 then--历练值
            if _lv == nil then
                self.targetLv = UserData:GetInstance().pLevel + 1
            else
                self.targetLv = _lv
            end

			local curTeamLv=UserData:GetInstance().pLevel-1;
			local nextLv = 0
			if curTeamLv == 0 then
				nextLv = 0
			else
				nextLv =DataUtil.GetData("team_level")[curTeamLv].Exp;
			end
			local haveExp=UserData:GetInstance().userExp-nextLv

			local needLv =  DataUtil.GetData("team_level")[self.targetLv - 1].ExpCur - haveExp
			self.showExpPanel=needLv<0;
			if needLv == 0 then
				data.haveNum = ""
				data.titleName = ""
			else
				data.haveNum = string.format("升到%s级还需要:%s",self.targetLv ,math.floor(needLv))
				data.titleName = string.format("等级需要达到%s级", self.targetLv)
			end

		else
			data.haveNum = "拥有:"..BackpackData:GetInstance():GetItemNumById(_itemId)
			data.titleName = "获取"
		end

		if allItemData[_itemId].ItemType == 17 then
			data.isChip = true
		else
			data.isChip = false
		end
		self.itemData.itemInfo = data
	end
	if allItemData[_itemId].JumpId ~= nil and #allItemData[_itemId].JumpId > 0 then
		self.itemData.itemList = {}
		for i, v in ipairs(allItemData[_itemId].JumpId) do
			if allItemJumpData[tonumber(v)] ~= nil then
				local itemData = {}
				itemData.title = allItemJumpData[tonumber(v)].AddJump.Title
				itemData.des = allItemJumpData[tonumber(v)].AddJump.Des
				itemData.isShow = allItemJumpData[tonumber(v)].IfJump
				itemData.jump = {}
				itemData.jump.To = allItemJumpData[tonumber(v)].AddJump.To
				if allItemJumpData[tonumber(v)].AddJump.Param ~= nil then
					itemData.jump.Param = allItemJumpData[tonumber(v)].AddJump.Param[1]
				end
				table.insert(self.itemData.itemList,itemData)
			end
		end
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

UIItemJumpTipModel.OnCreate = OnCreate
UIItemJumpTipModel.OnEnable = OnEnable
UIItemJumpTipModel.OnRefresh = OnRefresh
UIItemJumpTipModel.OnAddListener = OnAddListener
UIItemJumpTipModel.OnRemoveListener = OnRemoveListener
UIItemJumpTipModel.OnDisable = OnDisable
UIItemJumpTipModel.OnDestroy = OnDestroy

return UIItemJumpTipModel