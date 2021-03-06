---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guoyu.
--- DateTime: 2018/11/26 10:30
---
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction=BaseClass("BattleAssistFunction")

local BattleNetManager = require "GameLogic.BattleNew.Logic.Manager.BattleNetManager"
local battle_skill_info_dir = nil
--获取战场中心点位置参数
local function GetBattleAreaInfo(id)
    local centre=DataUtil.GetData("battle_field_data")[id].Centre
    local centreEuler=DataUtil.GetData("battle_field_data")[id].CentreEuler
    return Vector3.New(centre[1],centre[2],centre[3]),Vector3.New(centreEuler[1],centreEuler[2],centreEuler[3])
end



--获取人物站位
local function GetRolePosition(id,playerType,positionId)
    --Logger.Log("获取人物站位 fightId:"..id)
    local config=DataUtil.GetData("battle_field_data")[id]
    if playerType==BattleEnum.BattlePlayerType.MINE then
        local con=config.battleGroupMinePos[positionId][1]
        return Vector3.New(con[1],con[2],con[3])
    elseif  playerType==BattleEnum.BattlePlayerType.ENEMY then
        local con=config.battleGroupEnemyPos[positionId][1]
        return Vector3.New(con[1],con[2],con[3])
    end
end

--获取次要占位
local function GetSummonPosition(id,playerType,positionId)
    --Logger.Log("获取次要占位 fightId:"..id)
    local config=DataUtil.GetData("battle_field_data")[id]
    if playerType==BattleEnum.BattlePlayerType.MINE then
        local con=config.battleGroupMinePos[positionId][2]
        return Vector3.New(con[1],con[2],con[3])
    elseif  playerType==BattleEnum.BattlePlayerType.ENEMY then
        local con=config.battleGroupEnemyPos[positionId][2]
        return Vector3.New(con[1],con[2],con[3])
    end
end

--获取人物旋转
local function GetRoleEulerAngle(id,playerType,positionId)
    --Logger.Log("获取人物旋转 fightId:"..id)
    --Logger.Log("获取人物旋转 playerType:"..playerType)
    local config=DataUtil.GetData("battle_field_data")[id]
    if playerType==BattleEnum.BattlePlayerType.MINE then
        local con=config.battleGroupMineEuler[positionId][1]
        return Vector3.New(con[1],con[2],con[3])
    elseif  playerType==BattleEnum.BattlePlayerType.ENEMY then
        local con=config.battleGroupEnemyEuler[positionId][1]
        return Vector3.New(con[1],con[2],con[3])
    end
end

--召唤物旋转
local function GetSummonEulerAngle(id,playerType,positionId)
    --Logger.Log("召唤物旋转 fightId:"..id)
    local config=DataUtil.GetData("battle_field_data")[id]
    if playerType==BattleEnum.BattlePlayerType.MINE then
        local con=config.battleGroupMineEuler[positionId][2]
        return Vector3.New(con[1],con[2],con[3])
    elseif  playerType==BattleEnum.BattlePlayerType.ENEMY then
        local con=config.battleGroupEnemyEuler[positionId][2]
        return Vector3.New(con[1],con[2],con[3])
    end
end

local function GetCardIdByTeamAndEntityId(playerType,entityId)
    local battleType = BattleFieldManager:GetInstance().battleType
    if BattleEnum.BattlePlayerType.ENEMY == playerType then
        local monsterConfig=nil
        if battleType==BattleEnum.BattleType.NORMAL then
            monsterConfig=DataUtil.GetData("monster")
        elseif 	battleType==BattleEnum.BattleType.SOLO_ARENA then
            monsterConfig=DataUtil.GetData("arena_robot_card")
        elseif battleType==BattleEnum.BattleType.TEACHING or battleType==BattleEnum.BattleType.GUIDE or battleType==BattleEnum.BattleType.STORY then
            monsterConfig=DataUtil.GetData("drill_card")
            return monsterConfig[entityId].CardId
        elseif battleType==BattleEnum.BattleType.PVP then

        else
            monsterConfig=DataUtil.GetData("monster")
        end
        if monsterConfig ~= nil and monsterConfig[entityId] ~= nil then
            return  monsterConfig[entityId].RoleId
        else
            return entityId
        end
    else
        local selfConfig = nil
        if battleType==BattleEnum.BattleType.TEACHING or battleType==BattleEnum.BattleType.GUIDE or battleType==BattleEnum.BattleType.STORY then
            selfConfig = DataUtil.GetData("drill_card")[entityId]
            if selfConfig == nil then
                return entityId
            else
                return selfConfig.CardId
            end
        else
            return entityId
        end
        --local cardConfig=DataUtil.GetData("card")
        --return cardConfig[entityId].CardId

    end
end

--获取布阵需要的卡牌信息
local function GetEmBattle2DCardData(playerType, entityId)
    local battleType = BattleFieldManager:GetInstance().battleType
    if BattleEnum.BattlePlayerType.ENEMY == playerType then
        local roleId = GetCardIdByTeamAndEntityId(playerType, entityId)
        local config = DataUtil.GetData("battle_role_config")[roleId]
        if config == nil then
            Logger.LogError("布阵获取敌方阵容出错")
            return
        end
        local data = {id = config.ID,name = config.Name,level = 0,starlv = 0,
                      quality = config.Quality,cardFace = config.CardFace,
                      icon = config.Head,kpkm = config.CardFace,
                      hellSmallLevel = 0,hellNameColor = "FFFFFF"};
        local lconfig = DataUtil.GetData("monster")[entityId]
        if battleType==BattleEnum.BattleType.SOLO_ARENA then
            lconfig = DataUtil.GetData("arena_robot_card")[entityId]
        end
        data.type = lconfig.Type
        data.quality = (lconfig.CreamMonster == nil or lconfig.CreamMonster == 0) and 3 or 4
        data.crystalType = lconfig.CrystalType
        data.callCost = config.CallCost
        data.monsterType = lconfig.MonsterType
        return data
    else
        if battleType==BattleEnum.BattleType.TEACHING or battleType==BattleEnum.BattleType.GUIDE or battleType==BattleEnum.BattleType.STORY then
            local config = DataUtil.GetData("card")[entityId]
            return {id = entityId,name = config.Name,level = 1,starlv = 1,quality = config.Quality,type = config.Type,cardFace = config.CardFace,icon = config.Icon,kpkm = config.KPKM,crystalType = config.CrystalType,callCost = config.CallCost,hellSmallLevel = 0,hellNameColor = "FFFFFF"};
        else
            local config = CardData:GetInstance().cards[entityId]
            if config == nil then
                Logger.LogError("布阵获取自己阵容出错")
                return
            end
            return config
        end
    end
end

--不打开布阵，直接进入游戏
local function EnterGameJumpEmbattle(self,_isRebindScene)
    if BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.PVP then
        Logger.LogError("PVP不能跳过布阵")
        return
    end
    local battlePackages = BattleFieldManager:GetInstance().battlePackages
    local selfGroup = {}
    if BattleFieldManager:GetInstance().battleType ~= BattleEnum.BattleType.TEACHING and BattleFieldManager:GetInstance().battleType ~= BattleEnum.BattleType.GUIDE then
        selfGroup = UserData:GetInstance():GetBattleInfoData(UIUtil.GetKeyByBattleType(BattleFieldManager:GetInstance().battleType))
    else
        -- 集训营用服务端返回的阵容
        selfGroup = battlePackages.myTeam
    end
    local enemyTeamData = {};
    local enemyGuridData = {};

    for i = 1, 3 do
        if battlePackages.enemyTeam[i] ~= nil then
            local v = battlePackages.enemyTeam[i]
            table.insert(enemyTeamData, {entityId = v.entityId, position = v.position});
            if not v.callSkill._is_null and v.callSkill.guardianId > 0 then
                table.insert(enemyGuridData, {entityId = v.callSkill.guardianId, position = v.position});
            end
        end
    end
    local netManager=BattleNetManager.New();
    netManager:SendPveBattleStartRequest(selfGroup, function (Packages)
        BattleFieldManager:GetInstance().battleLoadPackage = {}
        BattleFieldManager:GetInstance().pve_myTeam = Packages.myTeam
        BattleFieldManager:GetInstance().pve_myGuard =  Packages.myGuard
        BattleFieldManager:GetInstance().battleLoadPackage.myTeam = Packages.myTeam
        BattleFieldManager:GetInstance().battleLoadPackage.myGuard = Packages.myGuard
        BattleFieldManager:GetInstance().battleLoadPackage.enemyTeam = enemyTeamData
        BattleFieldManager:GetInstance().battleLoadPackage.enemyGuard = enemyGuridData
        SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene,nil,nil,_isRebindScene)
    end)
end

--多人boss，直接进入游戏
local function EnterWorldBossBattle(self)
    BattleFieldManager:GetInstance().sceneConfigId=DataUtil.GetData("arena_message")[1].ArenaPos
    BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.DRBOSS
    local Packages = BattleFieldManager:GetInstance().battlePackages
    local enemyTeamData = {};
    local enemyGuridData = {};

    for i = 1, 3 do
        if Packages.enemyTeam[i] ~= nil then
            local v = Packages.enemyTeam[i]
            table.insert(enemyTeamData, {entityId = v.entityId, position = v.position});
            if not v.callSkill._is_null and v.callSkill.guardianId > 0 then
                table.insert(enemyGuridData, {entityId = v.callSkill.guardianId, position = v.position});
            end
        end
    end
    BattleFieldManager:GetInstance().battleEnemyTeam = Packages.enemyTeam
    BattleFieldManager:GetInstance().battleLoadPackage = {}
    BattleFieldManager:GetInstance().pve_myTeam = Packages.myTeam
    BattleFieldManager:GetInstance().pve_myGuard =  Packages.myGuard
    BattleFieldManager:GetInstance().battleLoadPackage.myTeam = Packages.myTeam
    BattleFieldManager:GetInstance().battleLoadPackage.myGuard = Packages.myGuard
    BattleFieldManager:GetInstance().battleLoadPackage.enemyTeam = enemyTeamData
    BattleFieldManager:GetInstance().battleLoadPackage.enemyGuard = enemyGuridData
    SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
end

local function EnterGuideMapBattle(id,_isJumpArray)
    local chapters = MapData:GetInstance():GetCurTypeList(3)
    local leveldata = nil
    for i, v in pairs(chapters) do
        for m, n in pairs(v._Levels) do
            if n._id == id then
                leveldata = n
                break
            end
        end
    end
    if leveldata == nil then
        return
    end
    MapData:GetInstance():SetCurSelectLevelData(leveldata)
    local msd_id = MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_REQUEST
    local msg = (MsgIDMap[msd_id])()
    msg.fightId=id
    BattleFieldManager:GetInstance().fightId=id
    BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.NORMAL
    BattleFieldManager:GetInstance().sceneConfigId=leveldata._data.MapPosId
    Logger.Log("进入战斗数据")
    NetManager:GetInstance():SendMessage(msd_id, msg,function(msg_obj)
        if msg_obj.OpCode==0 then
            --进入场景
            BattleFieldManager:GetInstance().battlePackages=msg_obj .Packages
            if msg_obj.Packages.type==7 then
                BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.GUIDE
                EnterGameJumpEmbattle()
            elseif _isJumpArray then
                EnterGameJumpEmbattle()
            else
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D,nil,nil);
            end
        elseif msg_obj.OpCode==1 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
    end)
end

local function GetHeroDataById(id,playerType)
    local result = nil
    if playerType == BattleEnum.BattlePlayerType.ENEMY then
        local viewDataId=GetCardIdByTeamAndEntityId(playerType,id)
        local battle_role_config = DataUtil.GetData("battle_role_config")
        if battle_role_config[viewDataId] ~= nil then
            result = {icon =   battle_role_config[viewDataId].Head}
        end
    else
        if BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.TEACHING or BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.GUIDE or BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.STORY then
            local drill_card = DataUtil.GetData("drill_card")
            if drill_card ~= nil then
                result = {icon = drill_card[id].Icon,callCost = drill_card[id].CallCost,type = drill_card[id].Type,cd = drill_card[id].CallCD}
            end
        else
            local card_static = DataUtil.GetData("card")
            if card_static[id] ~= nil then
                result = {icon = card_static[id].Icon,callCost = card_static[id].CallCost,type = card_static[id].Type,cd = card_static[id].CallCD}
            end
        end
    end


    return result

end

local function FindSkillTimeLine(key)
    local info = DataUtil.GetData("battle_skill_info")
    if battle_skill_info_dir == nil then
        battle_skill_info_dir = {}
        for i, v in pairs(info) do
            battle_skill_info_dir[v.ActionID] = i
        end
    end
    if battle_skill_info_dir[key] ~= nil then
        return info[battle_skill_info_dir[key]]
    end
    return  nil
end
--判断是不是专属召唤
local function CheckIsExclusiveCall(playerType,jlr,shl)
    local jlrId = GetCardIdByTeamAndEntityId(playerType,jlr)
    local shlId = GetCardIdByTeamAndEntityId(playerType,shl)
    local jlrData =  DataUtil.GetData("card")[jlrId]
    if jlrData ~= nil and jlrData.ExclusiveGuard ~= nil then
        for i, v in ipairs(jlrData.ExclusiveGuard) do
            if v == shlId then
                return true
            end
        end
    end
    return false
end

local function GetSkillTimeLineTime(playerType,entityId,skillId,doubleHit)
    local battle_role_config=DataUtil.GetData("battle_role_config")
    local skillData = DataUtil.GetData("skill")[skillId]
    local timeline_time = DataUtil.GetData("timeline_time")
    local viewDataId = math.floor(GetCardIdByTeamAndEntityId(playerType,entityId))
    local config=battle_role_config[viewDataId]
    local showId= skillData.ShowId
    local key = math.floor(showId).."-"..math.floor(doubleHit)
    local result = {type = 1,other_time = 0,re_time = 0,re_speed = 1}
    if config.skillInfo[key] ~= nil then
        result.type = tonumber(config.skillInfo[key].ActionType)
        if config.skillInfo[key].Prepare ~= nil and timeline_time[config.skillInfo[key].Prepare] ~= nil then
            result.other_time =  result.other_time+timeline_time[config.skillInfo[key].Prepare].duration
        end
        if config.skillInfo[key].Action ~= nil and timeline_time[config.skillInfo[key].Action] ~= nil then
            result.other_time =  result.other_time+timeline_time[config.skillInfo[key].Action].duration
        end
        if config.skillInfo[key].Return ~= nil and timeline_time[config.skillInfo[key].Return] ~= nil then
            result.re_time = timeline_time[config.skillInfo[key].Return].duration
            if config.skillInfo[key].ReturnSpeed ~= nil then
                result.re_speed = tonumber(config.skillInfo[key].ReturnSpeed)
            end
        end
    else
        local ccskillData=DataUtil.GetData("battle_ccskill_config")[showId]
        if ccskillData~=nil and  ccskillData.skillTimeLine~=nil then--插槽通用技能
            local key = viewDataId.."_"..ccskillData.skillTimeLine
            local find_val = FindSkillTimeLine(key)
            if find_val ~= nil then
                result.type = tonumber(find_val.ActionType)
                if find_val.Prepare ~= nil and timeline_time[find_val.Prepare] ~= nil then
                    result.other_time = result.other_time + timeline_time[find_val.Prepare].duration
                end
                if find_val.Action ~= nil and timeline_time[find_val.Action] ~= nil then
                    result.other_time = result.other_time + timeline_time[find_val.Action].duration
                end
                if find_val.Return ~= nil and timeline_time[find_val.Return] ~= nil then
                    result.re_time = timeline_time[find_val.Return].duration
                    if find_val.ReturnSpeed ~= nil then
                        result.re_speed = tonumber(find_val.ReturnSpeed)
                    end
                end
            end
        end
    end
    return result
end

local function GetCallTimeLineTime(playerType,entityId)
    local battle_role_config=DataUtil.GetData("battle_role_config")
    local timeline_time = DataUtil.GetData("timeline_time")
    local viewDataId = GetCardIdByTeamAndEntityId(playerType,entityId)
    local config=battle_role_config[viewDataId]
    local result = 0
    if playerType == BattleEnum.BattlePlayerType.ENEMY then
        if config.guarDianTimeLine ~= nil then
            local eTimelinePath = string.gsub( config.guarDianTimeLine,".playable","_e.playable")
            if  timeline_time[eTimelinePath] ~= nil then
                result = result + timeline_time[eTimelinePath].duration
            elseif timeline_time[config.guarDianTimeLine] ~= nil then
                result = result + timeline_time[config.guarDianTimeLine].duration
            end
        end
    else
        if config.guarDianTimeLine ~= nil and timeline_time[config.guarDianTimeLine] ~= nil then
            result = result + timeline_time[config.guarDianTimeLine].duration
        end
    end
    if config.CallPrepare ~= nil and timeline_time[config.CallPrepare] ~= nil then
        result = result + timeline_time[config.CallPrepare].duration
    end
    return result
end

local function CreateRandomCircle(pos,radius)
    local rand = (math.random()-1)*2
    local _x = math.cos(math.pi*rand)*radius
    local _z = math.sin(math.pi*rand)*radius
    local pos = Vector3.New(pos.x+_x,pos.y,pos.z+_z)
    return pos
end

local function SetSkillCryText(obj,img,text,type,num)
    if not IsNull(text) and not IsNull(obj) and not IsNull(img) then
        if type > 0 and num > 0 then
            obj:SetActive(true)
            text:SetText("+"..num)
            if type == 1 then
                img:SetSpriteName("ui_dtex_Quality_032")
            elseif type == 2 then
                img:SetSpriteName("ui_dtex_Quality_033")
            else
                img:SetSpriteName("ui_dtex_Quality_034")
            end
        else
            obj:SetActive(false)
        end
    end
end
BattleAssistFunction.SetSkillCryText = SetSkillCryText
BattleAssistFunction.CreateRandomCircle = CreateRandomCircle
BattleAssistFunction.FindSkillTimeLine = FindSkillTimeLine
BattleAssistFunction.GetCallTimeLineTime = GetCallTimeLineTime
BattleAssistFunction.GetSkillTimeLineTime = GetSkillTimeLineTime
BattleAssistFunction.GetHeroDataById = GetHeroDataById
BattleAssistFunction.GetCardIdByTeamAndEntityId=GetCardIdByTeamAndEntityId
BattleAssistFunction.GetRolePosition=GetRolePosition
BattleAssistFunction.GetSummonPosition=GetSummonPosition
BattleAssistFunction.GetRoleEulerAngle=GetRoleEulerAngle
BattleAssistFunction.GetSummonEulerAngle=GetSummonEulerAngle
BattleAssistFunction.GetBattleAreaInfo=GetBattleAreaInfo
BattleAssistFunction.CheckIsExclusiveCall = CheckIsExclusiveCall
BattleAssistFunction.GetEmBattle2DCardData = GetEmBattle2DCardData
BattleAssistFunction.EnterGameJumpEmbattle = EnterGameJumpEmbattle
BattleAssistFunction.EnterGuideMapBattle = EnterGuideMapBattle
BattleAssistFunction.EnterWorldBossBattle = EnterWorldBossBattle
return BattleAssistFunction