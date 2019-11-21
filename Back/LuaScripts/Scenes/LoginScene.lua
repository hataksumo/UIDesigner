--[[
-- added by wsh @ 2017-11-18
-- 登陆场景
--]]

local LoginScene = BaseClass("LoginScene", BaseScene)
local base = BaseScene


local function CoSceneRes(self)
	Logger.Log("begin")
	self.scene_name = SceneLoadManager.GenSceneAssetFullPath("Map_loading02")
	--local aniPath = "Art/Scenes/scene_"..scene_name.."/scene_"..scene_name.."/"..scene_name.."_sceneData.asset";
	local cur_percent = 0
	local function ProgressCallback(co, progress)
		--assert(progress <= 1.0, "What's the fuck!!!")
		return coroutine.yieldcallback(co,  progress+cur_percent )
	end

	--local asset = ResourcesManager:GetInstance():CoLoadSceneAsync(aniPath, typeof(CS.SceneDataAsset), ProgressCallback)
	--local v1 = CS.SceneDataUtilities.GeneratScene(asset)
	--self.scene_asset = asset
	--coroutine.waitwhile(function ()
	--	return	v1:MoveNext()
	--end)
	--CS.SceneDataUtilities.ConfigLitAndShadow(self.scene_asset,Vector3.New(0,0,0),Vector3.New(0,0,0))
	SceneLoadManager:GetInstance():CoGenerateScene(self.scene_name,ProgressCallback)
	SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,Vector3.zero,Vector3.zero)
	cur_percent = 1
	Logger.Log("end")

	return coroutine.yieldbreak()
end

-- 创建：准备预加载资源
local function OnCreate(self)
	base.OnCreate(self)
	-- TODO
	self:AddPreloadResource(UIConfig[UIWindowNames.UILogin].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
	self:AddPreloadResource(UIConfig[UIWindowNames.UILoginServer].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
end

-- 准备工作
local function OnComplete(self)
	base.OnComplete(self)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UILogin)
	--播放登录背景音乐
	LJAudioManger:GetInstance():PlayMusic(LJAudioManger.LOGIN_BG_MUSIC)
	---请求登陆公告
	--[[ResourcesManager:GetInstance():DownloadWebResourceAsync(Config.URL_GET_CHECK_VERSION,function (asset)
		if type(asset.text) == "string" and #asset.text > 0 then
			local json = require "cjson"
			local noticeData = json.decode(asset.text)
		else
			Logger.Log("解析数据失败")
		end
	end)--]]
	UIManager:GetInstance():OpenWindow(UIWindowNames.UILogin)
	--self.server_list_url=Config.URL_GET_SERVER_LIST..ClientData:GetInstance():GetLoginServerListUrl()
	---请求服务器列表
--[[	ResourcesManager:GetInstance():DownloadWebResourceAsync(self.server_list_url,function (asset)
		ServerData:GetInstance():ParseServerList(asset.text)
	end)]]
	---请求登陆公告
	GameChannelMgr:GetInstance():GetNoticeData()
end

-- 离开场景
local function OnLeave(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILogin,true)
	--CS.SceneDataUtilities.CleanSceneNode(self.scene_asset)
	SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
	base.OnLeave(self)
end
LoginScene.CoSceneRes = CoSceneRes
LoginScene.OnCreate = OnCreate
LoginScene.OnComplete = OnComplete
LoginScene.OnLeave = OnLeave

return LoginScene;