--[[
    世界Boss全局总控口
]]
local WorldBossCtrlManager = BaseClass("WorldBossCtrlManager", Singleton)

local MAP_SIZE = 100
--世界Boss生成贴图大小
local DEFAULT_RENDER_TEXTURE_SIZE = { width = 512, height = 512 }

local function __init(self)
    --当前地图的数据
    self.mapData = nil
    --当前相机聚焦点
    self.cmCameraLookTran = nil
    --地图管理
    self.mapManager = nil
    --渲染模型组件
    self.chara2DRenderer = nil
    --tilemapGrid
    self.tilemapGrid = nil
    --所有事件的list
    self.allEventList = {}
    --a星算法Tools
    self.aStartMapGrid = nil
    --所有TeamList
    self.allTeamList = {}
end

local function __delete(self)

end

local function OnInit(self)

end

local function OnDestroy(self)
    self.cmCameraLookTran = nil
    self.mapManager = nil
    self.chara2DRenderer = nil
    self.tilemapGrid = nil
    self.allEventList = {}
    self.aStartMapGrid = nil
    self.allTeamList = {}
end

--初始化，地图前添加，多个显示点
local function InitMapAddPos(self, cellPos, index)
    local vec3Int = CS.UnityEngine.Vector3Int(cellPos.x, cellPos.y, cellPos.z)
    self.mapManager:SetCurPos(vec3Int, index)
end

--初始化，地图
local function InitMap(self, descObjList)
    self.mapManager:Init(descObjList)
    self.mapManager:HideAll(MAP_SIZE)
    self.mapManager:UpdateTilemap()
end

--刷新地图，地图浮动动画
local function UpdateMap(self, cellPos, index)
    local vec3Int = CS.UnityEngine.Vector3Int(cellPos.x, cellPos.y, cellPos.z)
    self.mapManager:BumpTile(vec3Int)
    self.mapManager:SetCurPos(vec3Int, index)
    self.mapManager:UpdateTilemap()
end

--判断某个地块是否激活
local function IsActiveByOneCellPos(self, cellPos)
    local vec3Int = CS.UnityEngine.Vector3Int(cellPos.x, cellPos.y, cellPos.z or 0)
    return self.mapManager:IsActiveByCellPos(vec3Int)
end

--渲染人物模型
local function Character2DRenderer(self, gameObject3D, sprite2D)
    self.chara2DRenderer:AddCharacterWidthHeight(gameObject3D, sprite2D, nil, DEFAULT_RENDER_TEXTURE_SIZE.width, DEFAULT_RENDER_TEXTURE_SIZE.height)
end

--设置A星算法，某个地块的代价
local function SetAStartMapCellCost(self, cellPos, costs)
    self.aStartMapGrid:SetCellCost(cellPos, costs)
end

-- 通过格子坐标获取Unity世界坐标
local function GetGridUnityCellToWorldByIntXYZ(self, xInt, yInt, zInt)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local unityVec3 = self.tilemapGrid:CellToWorld(unityVec3Int)
    return unityVec3
end

--通过世界坐标获取Tilemap格子坐标
local function GetGridUnityWorldToCell(self, unityVec3Point)
    local unityCellPos = self.tilemapGrid:WorldToCell(unityVec3Point)
    return unityCellPos
end

--设置相机位置
local function SetCMCameraLookTransformPosition(self, x, y)
    local z = self.cmCameraLookTran.position.z
    self.cmCameraLookTran.position = Vector3.New(x, y, z)
end

--获得事件的Key
local function GetEventKeyByCellPosXY(self, x, y)
    return x * 10000 + y
end

WorldBossCtrlManager.__init = __init
WorldBossCtrlManager.__delete = __delete
WorldBossCtrlManager.OnInit = OnInit
WorldBossCtrlManager.OnDestroy = OnDestroy
WorldBossCtrlManager.InitMapAddPos = InitMapAddPos
WorldBossCtrlManager.InitMap = InitMap
WorldBossCtrlManager.UpdateMap = UpdateMap
WorldBossCtrlManager.IsActiveByOneCellPos = IsActiveByOneCellPos
WorldBossCtrlManager.Character2DRenderer = Character2DRenderer
WorldBossCtrlManager.GetGridUnityCellToWorldByIntXYZ = GetGridUnityCellToWorldByIntXYZ
WorldBossCtrlManager.GetGridUnityWorldToCell = GetGridUnityWorldToCell
WorldBossCtrlManager.SetCMCameraLookTransformPosition = SetCMCameraLookTransformPosition
WorldBossCtrlManager.GetEventKeyByCellPosXY = GetEventKeyByCellPosXY
WorldBossCtrlManager.SetAStartMapCellCost = SetAStartMapCellCost

return WorldBossCtrlManager