
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICacodemonModel = BaseClass("UICacodemonModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	--所有组list
	self.cacodemonList={}
	self.curSelectGroupIndex = 0
	self.groupName = ""
end

--获取初始选中怪物组id
local function GetGroupIndex(self)
	local index=1;
	for i, v in ipairs(self.cacodemonList) do
		if UserData:GetInstance().pLevel>= v.TeamLimitLv then
			index=i;
		else
			break;
		end
	end
	return index;
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这

	self.cacodemonList = CacodemonData:GetInstance().cacodemonList
	self.curSelectGroupIndex=GetGroupIndex(self);
end

local function GetHaveAttackList(self)
	local num = 0
	if self.cacodemonList == nil or #self.cacodemonList == 0 then
		return 0
	end
	local dataList = self.cacodemonList[self.curSelectGroupIndex].Bosses
	if dataList ~= nil and #dataList > 0 then
		for _, v in ipairs(dataList) do
			if v.State == 0 then
				num = num + 1
			end
		end
	end
	return num
end

-- 刷新全部数据
local function OnRefresh(self)
	--初始化数据
	self.cacodemonList = CacodemonData:GetInstance().cacodemonList
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_CACODEMON_REFRESH_GROUPLIST)
end

local function GetGroupList(self)
	return self.cacodemonList
end

local function GetGroupListName(self)
	if self.cacodemonList == nil or #self.cacodemonList == 0 then
		return nil
	end
	return self.cacodemonList[self.curSelectGroupIndex].Name
end

local function GetGroupListId(self)
	if self.cacodemonList == nil or #self.cacodemonList == 0 then
		return nil
	end
	return self.cacodemonList[self.curSelectGroupIndex].Id
end

local function GetCurSelctList(self)
	if self.cacodemonList == nil or #self.cacodemonList == 0 then
		return nil
	end
	return self.cacodemonList[self.curSelectGroupIndex].Bosses
end
local function GetCurSelctGroupAward(self)
	if self.cacodemonList == nil or #self.cacodemonList == 0 then
		return nil
	end
	return self.cacodemonList[self.curSelectGroupIndex].DropShow
end
local function OnUpdateCacoDemonData(self)
	self:OnRefresh()
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_CACODEMON_REFRESH_GROUPLIST)
end
local function OnSelectGroup(self,_Index)
	--初始化数据
	self.curSelectGroupIndex = _Index
	if self.curSelectGroupIndex > #self.cacodemonList then
		UISpecial:GetInstance():UITipText("选择的数据索引不存在：".._Index)
		return
	end
	OnUpdateCacoDemonData(self)
end
-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_CACODEMON_DATA_CHANGE,OnUpdateCacoDemonData)
	self:AddUIListener(UIMessageNames.UI_CACODEMON_SELECT_GROUP,OnSelectGroup)
	self:AddDataListener(DataMessageNames.ON_CACODEMON_DATA_UPDATE,OnRefresh)

end
local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_CACODEMON_DATA_CHANGE,OnUpdateCacoDemonData)
	self:RemoveUIListener(UIMessageNames.UI_CACODEMON_SELECT_GROUP,OnSelectGroup)
	self:RemoveDataListener(DataMessageNames.ON_CACODEMON_DATA_UPDATE,OnRefresh)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	self.cacodemonList=nil
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UICacodemonModel.GetGroupListId = GetGroupListId
UICacodemonModel.GetGroupListName = GetGroupListName
UICacodemonModel.OnCreate = OnCreate
UICacodemonModel.OnEnable = OnEnable
UICacodemonModel.OnRefresh = OnRefresh
UICacodemonModel.OnAddListener = OnAddListener
UICacodemonModel.OnRemoveListener = OnRemoveListener
UICacodemonModel.OnDisable = OnDisable
UICacodemonModel.OnDistroy = OnDistroy
UICacodemonModel.GetHaveAttackList = GetHaveAttackList
UICacodemonModel.GetGroupList = GetGroupList
UICacodemonModel.GetCurSelctList = GetCurSelctList
UICacodemonModel.GetCurSelctGroupAward = GetCurSelctGroupAward
UICacodemonModel.OnSelectGroup = OnSelectGroup

return UICacodemonModel