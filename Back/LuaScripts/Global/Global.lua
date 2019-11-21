--[[
-- added by wsh @ 2017-11-30
-- 1、加载全局模块，所有全局性的东西都在这里加载，好集中管理
-- 2、模块定义时一律用local再return，模块是否是全局模块由本脚本决定，在本脚本加载的一律为全局模块
-- 3、对必要模块执行初始化
-- 注意：
-- 1、全局的模块和被全局模块持有的引用无法GC，除非显式设置为nil
-- 2、除了单例类、通用的工具类、逻辑上的静态类以外，所有逻辑模块不要暴露到全局命名空间
-- 3、Unity侧导出所有接口到CS命名空间，访问cs侧函数一律使用CS.xxx，命名空间再cs代码中给了，这里不需要处理
-- 4、这里的全局模块是相对与游戏框架或者逻辑而言，lua语言层次的全局模块放Common.Main中导出
--]]

-- 加载全局模块
require "Framework.Common.BaseClass"
require "Framework.Common.DataClass"
require "Framework.Common.ConstClass"
require "Config.GameDataBase"
require "Common.Readonly"

-- 创建全局模块
Config = require "Global.Config"
Singleton = require "Framework.Common.Singleton"
Updatable = require "Framework.Common.Updatable"
UpdatableSingleton = require "Framework.Common.UpdatableSingleton"
SortingLayerNames = require "Global.SortingLayerNames"
Logger = require "Framework.Logger.Logger"
LuaTweener = require "Framework.Common.LuaTweener"
require "Framework.Updater.Coroutine"
--
CoinDefine = require "DataCenter.Define.CoinDefine"
SpriteDefine = require "DataCenter.Define.SpriteDefine"
NationDefine = require "DataCenter.Define.NationDefine"
CommDefine = require "DataCenter.Define.CommDefine"
GuideDefine = require "DataCenter.Define.GuideDefine"
LocalLanguageDefine = require "DataCenter.Define.LocalLanguageDefine"
-- game config
LangUtil = require "Config.LangUtil"
DataUtil = require "Config.DataUtil"

-- game data
RedPointData=require "DataCenter.RedPointData.RedPointData"
SoloBossData = require "DataCenter.SoloBossData.SoloBossData"
WeaponData = require "DataCenter.WeaponData.WeaponData"
DataMessageNames = require "DataCenter.Config.DataMessageNames"
DataManager = require "DataCenter.DataManager"
HangupData = require "DataCenter.MapData.HangupData"
ClientData = require "DataCenter.ClientData.ClientData"
ServerData = require "DataCenter.ServerData.ServerData"
NoticeData = require "DataCenter.NoticeData.NoticeData"
BackpackData = require "DataCenter.BackpackData.BackpackData"
UserData = require "DataCenter.UserData.UserData"
UnlockData=require "DataCenter.UnLockData.UnLockData"
MapData = require "DataCenter.MapData.MapData"
UIMask = require "DataCenter.UIMask.UIMask"
--BattleUIData = require "DataCenter.BattleData.BattleUIData"
MailData=require "DataCenter.MailData.MailData"
CacodemonData=require "DataCenter.FunctionSystemData.CacodemonData"
TeachPassData = require "DataCenter.TeachPassData.TeachPassData"
HorseData= require "DataCenter.HorseData.HorseData"
ArtifactsData = require "DataCenter.ArtifactsData.ArtifactsData"
ArenaData = require "DataCenter.ArenaData.ArenaData"
ArenaPVPData = require "DataCenter.ArenaPVPData.ArenaPVPData"
TaskData=require "DataCenter.TaskData.TaskData"
SkillData = require"DataCenter.SkillData.SkillData"
CardData = require "DataCenter.CardData.CardData"
LuHuaGuLouData=require "DataCenter.LuHuaGuLouData.LuHuaGuLouData"
RelicData = require "DataCenter.RelicData.RelicData"
ShopData = require "DataCenter.ShopData.ShopData"
CollectData =  require "DataCenter.CollectData.CollectData"
CircleData =  require "DataCenter.CircleData.CircleData"
ChatData =  require "DataCenter.ChatData.ChatData"
StoryData = require "DataCenter.StoryData.StoryData"
FriendData = require "DataCenter.FriendData.FriendData"
SevenGiftData=require "DataCenter.SevenGiftData.SevenGiftData"
OnlineGiftData=require "DataCenter.OnlineGiftData.OnlineGiftData"
LevelGiftData=require "DataCenter.LevelGiftData.LevelGiftData"
ExploreData=require("DataCenter.MapData.ExploreData")
CarnivalData = require "DataCenter.CarnivalData.CarnivalData"
TestHoardData = require "DataCenter.TestHoardData.TestHoardData"
EquipData=require("DataCenter.EquipData.EquipData")
BiographyData = require "DataCenter.BiographyData.BiographyData"
TongLingData=require("DataCenter.TongLingData.TongLingData")
DRBossData=require "DataCenter.DRBossData.DRBossData"
NationPlayerData = require "DataCenter.NationData.NationPlayerData"
NationMapInfoData = require "DataCenter.NationData.NationMapInfoData"
NationTeamData = require "DataCenter.NationData.NationTeamData"
NationTownData = require "DataCenter.NationData.NationTownData"
NationCardData = require "DataCenter.NationData.NationCardData"
NationUnionData = require "DataCenter.NationData.NationUnionData"
NationScienceData = require"DataCenter.NationData.NationScienceData"
NationOccupyData = require"DataCenter.NationData.NationOccupyData"
NationMarchData = require"DataCenter.NationData.NationMarchData"
NationCollectPosData = require "DataCenter.NationData.NationCollectPosData"
NationMainTaskData = require "DataCenter.NationData.NationMainTaskData"
NationWorldMapData = require "DataCenter.NationData.NationWorldMapData"
LTData = require"DataCenter.LTData.LTData"

GiftData = require "DataCenter.GiftData.GiftData"
ClientRankDataCenter=require"DataCenter.ClientRankDataCenter.ClientRankDataCenter"
-- ui base
UIJumpManager = require "Framework.UI.Util.UIJumpManager"
UIUtil = require "Framework.UI.Util.UIUtil"
UIBaseModel = require "Framework.UI.Base.UIBaseModel"
UIBaseCtrl = require "Framework.UI.Base.UIBaseCtrl"
UIBaseComponent = require "Framework.UI.Base.UIBaseComponent"
UIBaseContainer = require "Framework.UI.Base.UIBaseContainer"
UIBaseView = require "Framework.UI.Base.UIBaseView"
UIBaseNationComponent = require "GameLogic.Nation.SceneUI.UIBaseNationComponent"

-- ui component
UILayer = require "Framework.UI.Component.UILayer"
UICanvas = require "Framework.UI.Component.UICanvas"
UIText = require "Framework.UI.Component.UIText"
UIImage = require "Framework.UI.Component.UIImage"
UIGrid=require "Framework.UI.Component.UIGrid"
UIOutline= require "Framework.UI.Component.UIOutline"
UIOutlineEx= require "Framework.UI.Component.UIOutlineEx"
UISlider = require "Framework.UI.Component.UISlider"
UIInput = require "Framework.UI.Component.UIInput"
UIButton = require "Framework.UI.Component.UIButton"
UIToggleButton = require "Framework.UI.Component.UIToggleButton"
UIWrapComponent = require "Framework.UI.Component.UIWrapComponent"
UITabGroup = require "Framework.UI.Component.UITabGroup"
UIButtonGroup = require "Framework.UI.Component.UIButtonGroup"
UIWrapGroup = require "Framework.UI.Component.UIWrapGroup"
UIWrapGroup3D = require "Framework.UI.Component.UIWrapGroup3D"
UIWrapGroupDragEvent = require "Framework.UI.Component.UIWrapGroupDragEvent"
UIEffect = require "Framework.UI.Component.UIEffect"
UIAnim = require "Framework.UI.Component.UIAnim"
ModelAnim = require "Common.ModelAnim"
UIEventTrigger = require "Framework.UI.Component.UIEventTrigger"
UIScrollRect = require "Framework.UI.Component.UIScrollRect"
UIDrag=require("Framework.UI.Component.UIDrag")
UIDrop=require("Framework.UI.Component.UIDrop")
UIToggle = require("Framework.UI.Component.UIToggle")
-- ui window
UILayers = require "Framework.UI.UILayers"
UIWindow = require "Framework.UI.UIWindow"
UIManager = require "Framework.UI.UIManager"
UINationWindow = require "GameLogic.Nation.SceneUI.UINationWindow"
NationSceneUIManager = require "GameLogic.Nation.SceneUI.NationSceneUIManager"
UIMessageNames = require "Framework.UI.Message.UIMessageNames"
UIWindowNames = require "UI.Config.UIWindowNames"
UIConfig = require "UI.Config.UIConfig"

-- res
ResourcesManager = require "Framework.Resource.ResourcesManager"

GameObjectPool = require "Framework.Resource.GameObjectPool"
LJAudioManger = require "WwiseAudio.LJAudioManger"
RolePartUtil = require "DataCenter.CardData.RolePartUtil"
-- update & time
Timer = require "Framework.Updater.Timer"
TimerManager = require "Framework.Updater.TimerManager"
UpdateManager = require "Framework.Updater.UpdateManager"
LogicUpdater = require "GameLogic.Main.LogicUpdater"
TimeSyncManager = require "Framework.DateTime.TimeSyncManager"
SyncTimer = require "Framework.DateTime.SyncTimer"
LogicTimerManager = require "Framework.DateTime.LogicTimerManager"

-- scenes
BaseScene = require "Framework.Scene.Base.BaseScene"
SceneManager = require "Framework.Scene.SceneManager"
SceneConfig = require "Scenes.Config.SceneConfig"
SceneLoadManager = require "Framework.Scene.SceneLoadManager"
QualityManager = require"Common.QualityManager"
-- atlas
AtlasConfig = require "Resource.Config.AtlasConfig"
AtlasManager = require "Framework.Resource.AtlasManager"

--Guide
GuideGroup =require "Framework.UI.Guide.GuideGroup"
GuideCheckManager = require "Framework.UI.Guide.GuideCheckManager"
GuideManager =require "Framework.UI.Guide.GuideManager"
BootGuideManager =  require "Framework.UI.Guide.BootGuideManager"
GuideWeakCheckManager = require "Framework.UI.Guide.GuideWeakCheckManager"
GuideWeakGroup =require "Framework.UI.Guide.GuideWeakGroup"


NationGuideGroup =require "Framework.UI.Guide.NationGuideGroup"
NationGuideCheckManager =require "Framework.UI.Guide.NationGuideCheckManager"

-- effect
EffectConfig = require "Resource.Config.EffectConfig"
BaseEffect = require "Framework.Resource.Effect.Base.BaseEffect"
EffectManager = require "Framework.Resource.Effect.EffectManager"

-- net
NetManager = require "Net.Connector.NetManager"
MsgIDDefine = require "Net.Config.MsgIDDefine"
MsgIDMap = require "Net.Config.MsgIDMap"
UISpecial = require "UI.UISpecial.UISpecial"
--UIFuzzy = require "UI.UISpecial.UIFuzzy"

StoryManager = require "GameLogic.StorySystem.StoryManager"
StoryConstConfig = require "GameLogic.StorySystem.StoryConstConfig"
BaseStoryTrigger = require "GameLogic.StorySystem.BaseStoryTrigger"

--国战
NationCtrlManager = require "GameLogic.Nation.NationCtrlManager"
NationNetManager = require "GameLogic.Nation.NationNetManager"

--多人boss
WorldBossCtrlManager = require "GameLogic.WorldBoss.WorldBossCtrlManager"

--资源条
ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
MainCityCommonBtnManager=require("UI.UITestMain.View.MainCityCommonBtnManager")
ExploreBattleManager=require("UI.UIExploreMain.Component.ExploreBattleManager");
--打点
SdkManager =require "SDK.SdkManager"
GameChannelMgr =require "SDK.GameChannelMgr"
-- 单例类初始化
UIManager:GetInstance()
DataManager:GetInstance()
ResourcesManager:GetInstance()
UpdateManager:GetInstance()
SceneManager:GetInstance()
AtlasManager:GetInstance()
LogicUpdater:GetInstance()
NetManager:GetInstance()
TimeSyncManager:GetInstance()
LJAudioManger:GetInstance()
HangupData:GetInstance()
StoryManager:GetInstance()
GuideManager:GetInstance()
GuideGroup:GetInstance()
GuideCheckManager:GetInstance()
GuideWeakCheckManager:GetInstance()
GuideWeakGroup:GetInstance()
QualityManager:GetInstance()