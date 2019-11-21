--[[
-- 国战地图静态数据
--]]
local NationMapInfoData = BaseClass("NationMapInfoData", Singleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function __init(self)

    self.national_battleZone =  DataUtil.GetData("national_battle_zone")
    self.national_buildZone =  DataUtil.GetData("national_build_zone")
    self.national_ascription =  DataUtil.GetData("national_ascription")
    self.national_map =  DataUtil.GetData("national_map")

    self.nationUserData = DataUtil.GetData("global")
    self.nationFameExpData = DataUtil.GetData("national_player")
    self.national_crops =  DataUtil.GetData("national_crops")
    self.nationalWar_m_guard =  DataUtil.GetData("national_monster_guard")
    self.national_res_info = DataUtil.GetData("national_res_info")
    self.national_alliance = DataUtil.GetData("national_alliance")
    self.national_global = DataUtil.GetData("national_global")
    self.national_alliance_Level = self.national_alliance.Data
    self.national_alliance_VarCfgs = self.national_alliance.VarCfgs
    self.national_alliance_authority = self.national_alliance.Right
    self.national_road_cost = DataUtil.GetData("national_road_cost")
    --self.national_tech = DataUtil.GetData("national_tech")
end



--[[
    通过格子id获取格子信息和建筑信息
    有如下状态
    cellInfo 格子信息
    buildInfo 建筑信息

    如果  cellInfo == nil  buildInfo == nil
    策划填表错误或是点到了无功能区域
    如果  cellInfo != nil  buildInfo != nil   --cellInfo  为接战区，buildInfo 为攻城战建筑
    如果  cellInfo == nil  buildInfo != nil 城镇或是资源区等等

]]
local function GetCellInfoAndBuildingInfoByCellId(self,cellId)
    --local cellInfo = national_buildZone[cellId]
    local cellInfo = self.national_battleZone[cellId]
    local buildInfo = nil
    if cellInfo == nil then  -- 交战区没找到，那就是建筑
        cellInfo = self.national_buildZone[cellId]
        if cellInfo == nil then
            --Logger.LogVars("give cellId is ",cellId," not have cell info! check excel")
            return nil,nil
        end
        local buildId = cellInfo.BuildId
        cellInfo = nil
        buildInfo = self.national_map[buildId]
    else -- 是个交战区
        local buildId = cellInfo.BuildId
        buildInfo = self.national_map[buildId]
    end
    return cellInfo,buildInfo
end

--[[获取格子建筑名称]]
local function GetCellInfoName(self,cellId)
    local cellInfo,buildInfo = self:GetCellInfoAndBuildingInfoByCellId(cellId)
    if buildInfo ~= nil then
        return buildInfo.Name
    end

    if cellInfo ~= nil then
        return cellInfo.Name
    end
    return nil
end

--获取建筑数据
local function GetNationalMap(self)
    return self.national_map
end

--获取建筑数据
local function GetNationalMapById(self,id)
    return self.national_map[id]
end



--获取军团数据
local function GetNationalCropsById(self,id)
    return self.national_crops[id]
end

--获取资源点数据
local function GetNationalResInfoById(self,id)
    return self.national_res_info[id]
end

--获取类型守军
local function GetNationalWar_m_guardByTypeAndLevel(self,type,level)
    --Logger.LogVars("GetNationalWar_m_guard self.nationalWar_m_guard :",self.nationalWar_m_guard)
    local types = self.nationalWar_m_guard[type]
    if types == nil then
         return nil
    end
    return types[level]
end

--获取城镇最大军力数据
local function GetNationalMapReserveForceById(self,id)
    return self.national_map[id].ReserveForce
end

--通过格子id获取地形
local function GetTerrainByCellId(self,cellId)
    local cellInfo,buildInfo = self:GetCellInfoAndBuildingInfoByCellId(cellId)
    if cellInfo ~= nil then
        return cellInfo.Terrain
    end
    return buildInfo.Terrain
end

--获取国战联盟等级数据
local function GetNationalAllianceLevelDataByLevel(self,level)
    return self.national_alliance_Level[level]
end

local function GetNationalAscriptionById(self,id)
    return self.national_ascription[id]
end
local function GetNationalAllianceAuthorityById(self,id)
    return self.national_alliance_authority[id]
end

local function GetNationalGlobal(self)
    return self.national_global
end

--获取路径数据
local function GetNationalRoadCostById(self,id)
    return self.national_road_cost[id]
end
-- 判断某个目标是否是接战区地块
local function IsMapPosIsWarCell(self,targetPos)
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(targetPos)
    local isWarCell = false
    if cellInfo ~= nil then
        if cellInfo.Type == NationUtil.CELL_TYPE_OUTSIDE or cellInfo.Type == NationUtil.CELL_TYPE_INNER then
            isWarCell = true
        end
    end
    return isWarCell
end

NationMapInfoData.__init = __init
NationMapInfoData.GetCellInfoAndBuildingInfoByCellId = GetCellInfoAndBuildingInfoByCellId
NationMapInfoData.GetNationalMap = GetNationalMap
NationMapInfoData.GetNationalMapById = GetNationalMapById
NationMapInfoData.GetNationalCropsById = GetNationalCropsById
NationMapInfoData.GetNationalMapReserveForceById = GetNationalMapReserveForceById
NationMapInfoData.GetNationalWar_m_guardByTypeAndLevel = GetNationalWar_m_guardByTypeAndLevel
NationMapInfoData.GetTerrainByCellId = GetTerrainByCellId
NationMapInfoData.GetNationalResInfoById = GetNationalResInfoById
NationMapInfoData.GetNationalAllianceLevelDataByLevel = GetNationalAllianceLevelDataByLevel
NationMapInfoData.GetNationalAscriptionById = GetNationalAscriptionById
NationMapInfoData.GetNationalAllianceAuthorityById = GetNationalAllianceAuthorityById
NationMapInfoData.GetNationalGlobal = GetNationalGlobal
NationMapInfoData.GetNationalRoadCostById = GetNationalRoadCostById
NationMapInfoData.GetCellInfoName = GetCellInfoName
NationMapInfoData.IsMapPosIsWarCell = IsMapPosIsWarCell


return NationMapInfoData