---
--- 动态地图路线加载
--- DateTime: 2019/7/18 16:08
---
local NationRouteEntity=BaseClass("NationRouteEntity", UIBaseNationComponent)
--local NationUtil = require "GameLogic.Nation.NationUtil"
local base = UIBaseNationComponent

local function OnCreate(self)
    base.OnCreate(self)
end

local function DoInit(self,pathData,roadId)
    self.pathData = pathData
    self.roadId = roadId
    --Logger.LogErrorVars(" NationRouteEntity   pathData : ",pathData)
    self.gameObject.name = roadId .. "_path"
    self.transform.position = Vector3(pathData.CostP0[1], pathData.CostP0[2], 0)
    local lineCtrl = self.gameObject:GetComponent(typeof(CS.LJTilemaps.DiLineCtrl))
    lineCtrl.localP1 = Vector3(pathData.CostP1[1], pathData.CostP1[2], 0)
    lineCtrl.localP2 = Vector3(pathData.CostP2[1], pathData.CostP2[2], 0)
    lineCtrl.localEndPos = Vector3(pathData.CostP3[1], pathData.CostP3[2], 0)
    lineCtrl:ForceUpdateMe()
end

local function OnEnable(self)
    base.OnEnable(self)

end

local function Dispose(self)
    --结束释放资源
    self.pathData = nil
    self.roadId = nil
    GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_BUILDING_LINE_TEMPLATE, self.gameObject)
end


local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self:Dispose()
end


-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

end


local function OnAddListener(self)
    base.OnAddListener(self)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
end


NationRouteEntity.OnCreate = OnCreate
NationRouteEntity.OnEnable = OnEnable
NationRouteEntity.OnDestroy = OnDestroy
NationRouteEntity.OnDisable = OnDisable
NationRouteEntity.OnAddListener = OnAddListener
NationRouteEntity.OnRemoveListener = OnRemoveListener

NationRouteEntity.DoInit=DoInit
NationRouteEntity.Dispose=Dispose

return NationRouteEntity