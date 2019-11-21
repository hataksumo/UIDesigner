local BattleRoleView=require "GameLogic.BattleNew.View.Object.BattleRoleView"
local BattleAssistFunction= require "GameLogic.BattleNew.BattleAssistFunction"


local BattleRoleViewFactory=BaseClass("BattleRoleViewFactory")


--创建战斗角色 静态方法
local function CreateBattleRoleView(viewContext,entity,show)
	local battle_role_config=DataUtil.GetData("battle_role_config")
	------ 创建角色
	local role=BattleRoleView.New()

	local viewDataId = BattleAssistFunction.GetCardIdByTeamAndEntityId(entity.playerType,entity.entityId)
	local timeline_time = DataUtil.GetData("timeline_time")
	local config=battle_role_config[viewDataId]
	--Logger.Log("prefab_Name: "..config.prefab_Name)
	local chara = viewContext:GetCacheGame(config.prefab_Name)
	if chara == nil then
		chara=GameObjectPool:GetInstance():CoGetGameObjectAsync(config.prefab_Name)
	end
	RolePartUtil.RolePartLoad(chara,viewDataId,entity.weaponId)
	role:OnInit(viewContext,entity,chara.gameObject,config.prefab_Name)
	--chara.gameObject.transform.localScale=Vector3.New(config.PrefabZoom,config.PrefabZoom,config.Prefu'seabZoom)
	chara.gameObject:SetActive(show)
	chara.name = entity.teamId.."_"..entity.entityId
	local temp_skill_info = config.skillInfo
	if BattleEnum.BattlePlayerType.ENEMY == entity.playerType and config.enemyskillinfo ~= nil then
		temp_skill_info = config.enemyskillinfo
		Logger.Log("解析敌方信息   "..viewDataId)
	end
	for k,v in pairs(temp_skill_info) do
		local timeLine = {}
		if v.Prepare ~= nil then
			local res_timer = {res = nil,time = 0,type = 1}
			if timeline_time[v.Prepare] ~= nil then
				res_timer.time = timeline_time[v.Prepare].duration
				res_timer.event = timeline_time[v.Prepare].event
			end
			res_timer.path = v.Prepare
			ResourcesManager:GetInstance():LoadAsync(v.Prepare,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				res_timer.res = asset
			end)
			table.insert(timeLine,res_timer)
		end

		if v.Action ~= nil then
			local res_timer = {res = nil,time = 0,type = 2}
			if timeline_time[v.Action] ~= nil then
				res_timer.time = timeline_time[v.Action].duration
				res_timer.event = timeline_time[v.Action].event
			end
			res_timer.path = v.Action
			ResourcesManager:GetInstance():LoadAsync(v.Action,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				res_timer.res = asset
			end)
			table.insert(timeLine,res_timer)
		end

		if v.Return ~= nil then
			local res_timer = {res = nil,time = 0,re_speed = 1,type = 3}
			if timeline_time[v.Return] ~= nil then
				res_timer.time = timeline_time[v.Return].duration
				res_timer.event = timeline_time[v.Return].event
				if v.ReturnSpeed ~= nil then
					res_timer.re_speed = tonumber(v.ReturnSpeed)
				end
			end
			res_timer.path = v.Return
			ResourcesManager:GetInstance():LoadAsync(v.Return,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				res_timer.res = asset
			end)
			table.insert(timeLine,res_timer)
		end
		if v.SimplifiedAction ~= nil then
			local res_timer = {res = nil,time = 0,type = 2}
			if timeline_time[v.SimplifiedAction] ~= nil then
				res_timer.time = timeline_time[v.SimplifiedAction].duration
				res_timer.event = timeline_time[v.SimplifiedAction].event
			end
			res_timer.path = v.SimplifiedAction
			ResourcesManager:GetInstance():LoadAsync(v.SimplifiedAction,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				res_timer.res = asset
			end)
			role:FillTimeLines(k.."_sim",res_timer)
		end
		if #timeLine > 0 then
			role:FillTimeLines(k,timeLine)
		end

	end
	if config.guarDianTimeLine~=nil then
		local guardLine = {}
		guardLine.mainPath = config.guarDianTimeLine
		ResourcesManager:GetInstance():LoadAsync(config.guarDianTimeLine,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
			guardLine.main = asset
		end)
		if timeline_time[guardLine.mainPath] ~= nil then
			guardLine.mainEvent = timeline_time[guardLine.mainPath].event
			guardLine.mainTime = timeline_time[guardLine.mainPath].duration
		end
		local eTimelinePath = string.gsub( config.guarDianTimeLine,".playable","_e.playable");
		guardLine.otherPath = eTimelinePath
		ResourcesManager:GetInstance():LoadAsync(eTimelinePath,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
			guardLine.other = asset
		end)
		if timeline_time[guardLine.otherPath] ~= nil then
			guardLine.otherEvent = timeline_time[guardLine.otherPath].event
			guardLine.otherTime = timeline_time[guardLine.otherPath].duration
		end
		guardLine.simPath = config.guarDianTimeLineSim
		if guardLine.simPath ~= nil then
			ResourcesManager:GetInstance():LoadAsync(guardLine.simPath,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				guardLine.sim = asset
			end)
			if timeline_time[guardLine.simPath] ~= nil then
				guardLine.simEvent = timeline_time[guardLine.simPath].event
				guardLine.simTime = timeline_time[guardLine.simPath].duration
			end
		end

		if config.CallPrepare ~= nil and timeline_time[config.CallPrepare] ~= nil then
			guardLine.pre = {path = config.CallPrepare}
			ResourcesManager:GetInstance():LoadAsync(config.CallPrepare,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
				guardLine.pre.res = asset
				guardLine.pre.time = timeline_time[config.CallPrepare].duration
			end)
		end

		role:SetGuardianTimeLine(guardLine)
	end
	if config.winTimeLine~=nil then
		local timeline_time = DataUtil.GetData("timeline_time")
		local win_time = {time = 1}
		if timeline_time[config.winTimeLine] ~= nil then
			win_time.time = timeline_time[config.winTimeLine].duration
			win_time.event = timeline_time[config.winTimeLine].event
		end
		ResourcesManager:GetInstance():LoadAsync(config.winTimeLine,typeof(CS.UnityEngine.Timeline.TimelineAsset),function(asset)
			role:SetWinTimeLine(asset,win_time)
		end)
		--local winTimeLine=ResourcesManager:GetInstance():CoLoadAsync(config.winTimeLine,typeof(CS.UnityEngine.Timeline.TimelineAsset))
		--role:SetWinTimeLine(winTimeLine,win_time)
	end
	return role
end
BattleRoleViewFactory.CreateBattleRoleView=CreateBattleRoleView

return BattleRoleViewFactory




