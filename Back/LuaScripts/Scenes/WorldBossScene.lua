local WorldBossScene = BaseClass("WorldBossScene", BaseScene)
local base = BaseScene

local worldBossCtrlManager = require "GameLogic.WorldBoss.WorldBossCtrlManager"
local worldBossProxy = require "GameLogic.WorldBoss.WorldBossProxy"

function WorldBossScene:OnCreate()
    base.OnCreate(self)

end

-- 离开场景
local function OnLeave(self)
    base.OnLeave(self)
    if self.proxy ~= nil then
        self.proxy:OnDestroy()
        self.proxy = nil
    end
    --恢复设置tilemap的graphics
    CS.UnityEngine.Rendering.GraphicsSettings.transparencySortMode = CS.UnityEngine.TransparencySortMode.Default
    CS.UnityEngine.Rendering.GraphicsSettings.transparencySortAxis = Vector3.New(0, 0, 0)

    worldBossCtrlManager:GetInstance():OnDestroy()
end

-- 准备工作
function WorldBossScene:OnComplete()
    base.OnComplete(self)

end

local function CoSceneRes(self)
    --设置tilemap的graphics
    CS.UnityEngine.Rendering.GraphicsSettings.transparencySortMode = CS.UnityEngine.TransparencySortMode.CustomAxis
    CS.UnityEngine.Rendering.GraphicsSettings.transparencySortAxis = Vector3.New(0, 1, -0.1)

    self.proxy = worldBossProxy.New()
    self.proxy:OnInit(worldBossCtrlManager:GetInstance().mapID)

    return coroutine.yieldbreak()
end

local function OnDestroy(self)
    base.OnDestroy(self)

end

WorldBossScene.CoSceneRes = CoSceneRes
WorldBossScene.OnDestroy = OnDestroy
WorldBossScene.OnLeave = OnLeave
return WorldBossScene