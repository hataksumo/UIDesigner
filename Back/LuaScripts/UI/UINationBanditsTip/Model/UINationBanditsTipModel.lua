
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationBanditsTipModel = BaseClass("UINationBanditsTipModel", UIBaseModel)
local base = UIBaseModel
local NationUtil = require "GameLogic.Nation.NationUtil"
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.allItemData = DataUtil.GetData("item")
end

-- 打开
local function OnEnable(self,townId,pointId)
	base.OnEnable(self)
	self.townId = townId
	self.pointId = pointId
	self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager
	-- 窗口关闭时可以清理的成员变量放这

	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)

	local cellInfo,buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.townId)
	local nationTownData = NationTownData:GetInstance():GetNationTownDataById(self.townId)


	local roleHasTown  = nil
	if nationTownData == nil then
		roleHasTown = false
	else
		roleHasTown = true
	end
	self.levelIds = nil

	self.wipeOut = self:GetStaticTownDataWipeOutByPointId(self.pointId,buildInfo)
	self.guardData = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.BANDIT,self.wipeOut.PointLv)
	self.terrainStr = NationUtil.GetCellTerrainByType(buildInfo.Terrain)
	if roleHasTown then
		self.status = nationTownData.status
		self.levelIds = nationTownData.levelIds
	else
		self.status = NationDefine.NATION_TOWN_STATUS.INACTIVE
		self.levelIds = {}
	end

	self.rewardIds = self.wipeOut.DropShow
	self.rewardShows = {}
	for i, v in pairs(self.rewardIds) do
		local itemStaticData = self.allItemData[v]
		if itemStaticData ~= nil then
			table.insert(self.rewardShows,{itemId = v,Icon = itemStaticData.Icon,
										   Quality = itemStaticData.Quality,
										   ItemType = itemStaticData.ItemType})
		end
	end

	self.hasThisPoint =  self:__IsRoleAttackThisPoint(self.levelIds,self.pointId)

end

--获取需要显示的城镇剿匪点
local function GetStaticTownDataWipeOutByPointId(self,pointId,staticTownData)
	local wipeOuts = staticTownData.WipeOut
	return wipeOuts[pointId]
end



--获取需要显示的城镇剿匪点
local function __IsRoleAttackThisPoint(self,levelIds,pointId)
	for i, v in ipairs(levelIds) do
		if v == pointId then
			return true
		end
	end
	return false
end


-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, self.OnTownDataChange)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, self.OnTownDataChange)
end
local function OnTownDataChange(self,townId)
	if self.townId ~= townId then
		return
	end
	self:OnRefresh()
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BANDITS_TIP_FLUSH)
	--UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_TOWN_BUILDING_TIP_FLUSH)
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
	self.mapManager = nil
	self.allItemData = nil
	self.wipeOut = nil
end

UINationBanditsTipModel.OnCreate = OnCreate
UINationBanditsTipModel.OnEnable = OnEnable
UINationBanditsTipModel.OnRefresh = OnRefresh
UINationBanditsTipModel.OnAddListener = OnAddListener
UINationBanditsTipModel.OnRemoveListener = OnRemoveListener
UINationBanditsTipModel.OnDisable = OnDisable
UINationBanditsTipModel.OnDestroy = OnDestroy
UINationBanditsTipModel.__IsRoleAttackThisPoint = __IsRoleAttackThisPoint
UINationBanditsTipModel.GetStaticTownDataWipeOutByPointId = GetStaticTownDataWipeOutByPointId
UINationBanditsTipModel.OnTownDataChange = OnTownDataChange

return UINationBanditsTipModel