local StoryScene = BaseClass("StoryScene", BaseScene)
local base = BaseScene

function StoryScene:OnCreate()
	base.OnCreate(self)

	--战斗
	--self.proxy=nil
end

local function JumpByType()
	local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
	local state=UnlockData:GetInstance():CheckNewOpenFunList(true,true,true);
	if state==0  then--没有开启新功能
		UIUtil.ReturnMapScene();
	elseif state==1 then--升级开启新功能
		UIUtil.BackHomeMain();
	elseif state==2 then--通关开启新功能
		UIUtil.BackHomeMain();
	elseif state==3 then--通关开启新功能
		UIUtil.BackHomeMain();
	end
end

-- 准备工作
function StoryScene:OnComplete()
	base.OnComplete(self)

	local curLevel = MapData:GetInstance():GetCurSelectLevelId();
	local LevelInfo
	if curLevel>1 then
		LevelInfo=  MapData:GetInstance():GetLevelInfos(curLevel);
		local id=LevelInfo._data.StoryId;
		if id then
			StoryManager.TriggerStory(id)
		end
	else
		Logger.Log("curLevel  为空   ")
	end

	local mapData = MapData:GetInstance()
	--发送战斗请求到服务器
	local msd_id = MsgIDDefine.PBCHAPTER_STORY_ENTER_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.levelId=mapData.curSelectLevelDoing._id
	Logger.Log("进入剧情数据")
	NetManager:GetInstance():SendMessage(msd_id, msg,function(msg_obj)
		Logger.Log("收到进入战斗回复")
		--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBCHAPTER_STORY_ENTER_RESPONSE,EnterStoryResponse)
		if msg_obj.OpCode==0 then
			--通关剧情关卡
			local starids = mapData.curSelectLevelDoing._data.StarRating
			mapData:PassLevel(MapData:GetInstance():GetCurSelectLevelId() ,starids)
			DataUtil.ParseDropItem(msg_obj.Packages.reward)
			--UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, data.dropItem)
			GuideManager:GetInstance():CheckLaunchGuide()
			if DataUtil.CheckDropItemIsNull(msg_obj.Packages.reward) then
				--目前場景切換在携程中  必现等待6帧
				TimerManager:GetInstance():SimpleTimerArgs(6,function()
					--self:PveArenaQuickPassEndRequest()
					local guide_group = GuideGroup:GetInstance()
					DataManager:GetInstance():Broadcast("GuideBattleEnd")
					if  guide_group.Runing and guide_group.CurGuideItem.HandleType == 9  then

					else
						--SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
						--UIUtil.ReturnMapScene();
						JumpByType();
					end
				end ,nil,true,true)
			else
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward,function ()
					local guide_group = GuideGroup:GetInstance()
					DataManager:GetInstance():Broadcast("GuideBattleEnd")
					if  guide_group.Runing and guide_group.CurGuideItem.HandleType == 9 then
					else
						--SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
						JumpByType();
					end
				end,true)
			end
		else
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			--目前場景切換在携程中  必现等待6帧
			TimerManager:GetInstance():SimpleTimerArgs(6,function()
				--self:PveArenaQuickPassEndRequest()
				local guide_group = GuideGroup:GetInstance()
				DataManager:GetInstance():Broadcast("GuideBattleEnd")
				if  guide_group.Runing and guide_group.CurGuideItem.HandleType == 9  then

				else
					--SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
					UIUtil.ReturnMapScene();
				end
			end ,nil,true,true)
		end
	end)





end

-- 离开场景
function StoryScene:OnLeave()
	if self.scene_asset ~= nil and (#self.scene_asset > 0) then
		for i, v in ipairs(self.scene_asset) do
			--if v ~= nil then
			--	CS.SceneDataUtilities.CleanSceneNode(v)
			--end
			if not string.isNilOrEmpty(v) then
				SceneLoadManager:GetInstance():CleanSceneNode(v)
			end
		end
	end
	self.scene_asset = nil
	base.OnLeave(self)
end

local function CoSceneRes(self)
	local scene_name = "Map_luoshajiedao_1-1"
	--local temp_scene_name = "1_1"
	local leveldata = MapData:GetInstance().curSelectLevelDoing
	if leveldata ~= nil then
		scene_name = leveldata._data.SceneName
	end

	local fields = {}
	self.scene_asset = {}
	--local pattern = string.format("([^%s]+)", "#")
	--用#分割场景配置,加载多个场景,第一个场景为主场景
	string.gsub(scene_name,"([^#]+)",function (c) fields[#fields+1]=c end)
	--StoryManager:GetInstance().assetTable = {}
	for i = 1, #fields do
		local single_scene_name = fields[i]
		local added = i > 1

		--if StoryManager:GetInstance().assetTable[single_scene_name] == nil then
			Logger.Log("loading scene:" .. single_scene_name)
			local sceneDataPath = "Art/Scenes/scene_"..single_scene_name.."/scene_"..single_scene_name.."/"..single_scene_name.."_sceneData.asset";
			--self.enter_cam ="Art/Scenes/scene_"..scene_name.."/Pefabs/Enter.prefab"
			local function ProgressCallback(co, progress)
				--assert(progress <= 1.0, "What's the fuck!!!")
				return coroutine.yieldcallback(co,  progress )
			end

			--local asset = ResourcesManager:GetInstance():CoLoadSceneAsync(sceneDataPath, typeof(CS.SceneDataAsset), ProgressCallback)
			--StoryManager:GetInstance().assetTable[single_scene_name] = asset
			--if not added then
			--	StoryManager:GetInstance().assetTable["Default"] = asset
			--end
			--local v1 = CS.SceneDataUtilities.GeneratScene(asset,added)
			--table.insert(self.scene_asset, asset)
			--coroutine.waitwhile(function ()
			--	return	v1:MoveNext()
			--end)
			table.insert(self.scene_asset, sceneDataPath)
			SceneLoadManager:GetInstance():CoGenerateScene(sceneDataPath,ProgressCallback,added)
		--end
	end


	--加载镜头
	--GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.enter_cam, 1, nil)
	--CS.SceneDataUtilities.TriggerBlockCompont()
	SceneLoadManager:GetInstance():TriggerBlockCompont()
	return coroutine.yieldbreak()

end
--StoryScene.CoSceneRes = CoSceneRes
return StoryScene