local NationScene = BaseClass("NationScene", BaseScene)

local NationProxy = require "GameLogic.Nation.NationProxy"
--local NationMapManager = require "GameLogic.Nation.Logic.Manager.NationMapManager"

local base = BaseScene

function NationScene:OnCreate()
	base.OnCreate(self)

	--战斗
	self.proxy=nil
end


local function __DisposeProxy(self)
	if self.proxy ~= nil then
		self.proxy:Dispose()
	end
	self.proxy=nil

end

-- 离开场景
local function OnLeave(self)
	base.OnLeave(self)
	Logger.LogVars("NationScene OnLeave")
	LogicTimerManager:GetInstance():RemoveTimerByLogicType(LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR)
	self:__DisposeProxy()
	NationCtrlManager:GetInstance().currentNationProxy = nil
	self:__UnloadScene()
end

local function OnDestroy(self)
	base.OnDestroy(self)
end


-- 准备工作
function NationScene:OnComplete()
	base.OnComplete(self)


end

local function CoSceneRes(self)
	self.scene_name = SceneLoadManager.GenSceneAssetFullPath(NationDefine.NATION_DYNAMIC_SCENE_ROOT)
	self.proxy = NationProxy.New()
	NationCtrlManager:GetInstance().currentNationProxy = self.proxy
	self.proxy:DoInit(self)
	--计算最短路径
	NationWorldMapData:GetInstance()
	--地图管理器
	--self.mapManager = NationMapManager.New()
	--self.mapManager:DoInit(self.scene, self)
	--
	--coroutine.waitforframes(1)
	--
	--self.mapManager:CoInit()
	--
	--NationGuideGroup:GetInstance():CheckGuideGroupStrong()

	return coroutine.yieldbreak()
end

local function __UnloadScene(self)
	if not string.isNilOrEmpty(self.scene_name) then
		SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
	end
	self.scene_name = nil
end

NationScene.__UnloadScene = __UnloadScene
NationScene.CoSceneRes = CoSceneRes
NationScene.__DisposeProxy = __DisposeProxy
NationScene.OnDestroy = OnDestroy
NationScene.OnLeave = OnLeave
return NationScene