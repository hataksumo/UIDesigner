---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2018/11/16 17:28
---

local UIBattleInModel = BaseClass("UIBattleInModel", UIBaseModel)
local base = UIBaseModel
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction= require "GameLogic.BattleNew.BattleAssistFunction"
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这


end

--获取技能水晶
local function GetSkillCry(skillData,id,skillLevel,break_lv,heroType)
    local crystal_type = 0
    local crystal_num = 0
    local all_effect = DataUtil.GetData("skill_effect")
    if skillData[id] == nil or   skillData[id].lvs[skillLevel] == nil then
        Logger.LogError("技能 id = "..id.."  skillLevel = "..skillLevel.."   为空")
        return 0,0
    end
    local effects = skillData[id].lvs[skillLevel][break_lv].Effects
    for i, v in ipairs(effects) do
        if all_effect[v.id] ~= nil and all_effect[v.id].Type == 3 then
            if all_effect[v.id].DetailType == 3001 then --获得水晶
                if all_effect[v.id].lvs[v.lv] ~= nil then
                    local type_val = all_effect[v.id].lvs[v.lv].Value
                    crystal_type = type_val[1]
                    if all_effect[v.id].lvs[v.lv].ConId == nil then
                        crystal_num = crystal_num + type_val[2]
                    end
                end
            elseif all_effect[v.id].DetailType == 3006 then
                if all_effect[v.id].lvs[v.lv] ~= nil then
                    local temp_num = all_effect[v.id].lvs[v.lv].Value[2]
                    crystal_type = heroType
                    if all_effect[v.id].lvs[v.lv].ConId == nil then
                        crystal_num = crystal_num + temp_num
                    end
                end
            end
        end
    end
    return crystal_type,crystal_num

end

local function CreateHeroData(v)
    local index = v.position+1
    if index == 2 then
        index = 1
    elseif index == 1 then
        index = 2
    end
    local skill_static = DataUtil.GetData("skill")
    local tempHero = {id = v.entityId,call = v:IsHost(),callCost = 0,hp =  v.currentHp,
                      icon = "",type = 1,bigIcon = "",index = index,state = 0,guardianIcon = "",effects = {}}
    local effects=v.effects
    for k,v in ipairs(effects) do
        if v.lastTime >0 then
            table.insert(tempHero.effects,{id=v.effectId,layer=v.layer,time=v.lastTime})
        end
    end

    if v.state ~= nil then
        tempHero.state = v.state
    end
    local static_data = BattleAssistFunction.GetHeroDataById(tempHero.id, v.playerType)
    if static_data ~= nil then
        tempHero.icon = static_data.icon
        tempHero.callCost = static_data.callCost
        -- tempHero.costType = card_static[i].CrystalType
        tempHero.type = static_data.type
        tempHero.bigIcon = static_data.icon--"headbig".. string.sub(tempHero.icon,5,-1)
    end
    tempHero.skill = {}
    local special_skill = nil
    for _, n in pairs(v.skills) do
        local tempSkill = {id = n.skillId,cost = n.crytalCount,icon = "",costType = n.crytalType,name = "",
                           cd = n.cd,level = n.level,skillType = 1,maxCd = 0,effectLevel = n.effectLevel,extralCryType = 0,extralCryNum = 0,breakLevel = n.breakLevel}
        local skillAttr = 1
        if skill_static[n.skillId] ~= nil then
            tempSkill.icon = skill_static[n.skillId].Icon
            tempSkill.name = skill_static[n.skillId].Name
            if skill_static[n.skillId].FireType ~= nil then
                tempSkill.skillType = skill_static[n.skillId].FireType
            end
            tempSkill.maxCd = skill_static[n.skillId].CD
            if skill_static[n.skillId].SkillType ~= nil then
                skillAttr = skill_static[n.skillId].SkillType
            end
        end
        if skillAttr == 1 and tempHero.type == 2 then
            special_skill = tempSkill
        else
            table.insert(tempHero.skill,tempSkill)
        end

    end
    table.sort(tempHero.skill,function (a,b) return tonumber(a.id)<tonumber(b.id) end)
    if special_skill ~= nil then
        tempHero.skill[3] = special_skill
    end

    if v.callSkill ~= nil then

        tempHero.skill[3] = {id = 0,cost = v.callSkill.crytalCount,icon = "",costType = v.callSkill.crytalType,name = "",
                             cd = v.callSkill.cd,level = 1,skillType = 0,maxCd = 0,extralCryType = 0,extralCryNum = 0}
        local static_data = BattleAssistFunction.GetHeroDataById(v.callSkill.guardianId )
        if  static_data ~= nil then
            tempHero.skill[3].icon = static_data.icon
            tempHero.skill[3].maxCd = static_data.cd
        end
    end
    local heroType = 0
    if tempHero.skill[3] ~= nil then
        heroType = tempHero.skill[3].costType
    end
    for i, v in pairs(tempHero.skill) do
        if v.id > 0 then
            v.extralCryType,v.extralCryNum = GetSkillCry(skill_static,v.id,v.level,v.breakLevel,heroType)
        end
    end
    tempHero.battleRole = v
    return tempHero
end

local function RefreshBattleData(self,friendCrytal)
    self.initData = {hero = {}, enemy = {}, oldHero = {},friendRes = {},emeyRes={},roundNum = 1,offensive = 1}

    local roles = self.battlePlayer:GetAttackerBattleRoles()
    for k, v in pairs(roles) do
        local tempHero = CreateHeroData(v)
        self.initData.hero[tempHero.index] = tempHero
    end
    local tempData = {}
    table.merge(tempData, self.battlePlayer.player1.Crytals)
    if friendCrytal ~= nil then
        self.initData.friendRes = friendCrytal
    else
        self.initData.friendRes = {cur = tempData,add = {0,0,0}}
    end
    --.cur[i]+data.friendRes.add[i]
    tempData = {}
    table.merge(tempData, self.battlePlayer.player2.Crytals)
    for i = 1, 3 do
        self.initData.emeyRes = tempData
    end
    self.initData.roundNum = self.battlePlayer.oneBattle.round
    local monsters = self.battlePlayer.player2:GetBattleRoles()
    for k, v in pairs(monsters) do
        local tempHero = CreateHeroData(v)
        self.initData.enemy[tempHero.index] = tempHero
    end

    self.guideDeadNum = self.battlePlayer.player1:GetGuardDeadNum()
end

-- 打开
local function OnEnable(self,show_type,battlePlayer,addCrytal,down_count)
    base.OnEnable(self)
    --解析成UI所需的数据
    if battlePlayer == nil then
        return
    end
    self.show_type = show_type
    --self.save_crystal = save_crystal
    self.max_round = 20
    local global = DataUtil.GetData("global")
    local cur_key = "PveRoundLimit"
    if BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.SOLO_ARENA then
        cur_key = "PvpRoundLimit"
    end

    self.speed_mult = 2
    self.auto_wait_time = 0
    self.init_speed = 1
    for i, v in pairs(global) do
        if v.Key == cur_key then
            self.max_round = v.valueN
        elseif v.Key == "BattleSpeed" then
            self.speed_mult = v.valueN
        elseif v.Key == "InitBattleSpeed" then
            self.init_speed = v.valueN
        elseif v.Key == "AutoFightWaitTime" then
            self.auto_wait_time = v.valueN
        end
    end


    self.down_count = down_count
    self.battlePlayer = battlePlayer
    if self.battlePlayer.oneBattle.auto_battle ~= nil and BattleFieldManager:GetInstance().battleType ~= BattleEnum.BattleType.TEACHING then
        self.auto_battle = self.battlePlayer.oneBattle.auto_battle
    else
        self.auto_battle = 0
    end
    if self.battlePlayer.oneBattle.speed_state ~= nil then
        self.speed_state = self.battlePlayer.oneBattle.speed_state
    else
        self.speed_state = 0
    end
    self.battle_fightId=BattleFieldManager:GetInstance().fightId
    if GuideWeakCheckManager:GetInstance():CheckLevelIsGuide(self.battle_fightId) and not MapData:GetInstance():CheckPassLevel(self.battle_fightId) then
        self.speed_state=0
        self.auto_battle=0
    end
    if self.battlePlayer.oneBattle.simpleThreeBeat ~= nil then
        self.simpleThree_state = self.battlePlayer.oneBattle.simpleThreeBeat
    else
        self.simpleThree_state = 0
    end
    RefreshBattleData(self,addCrytal)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    self.battlePlayer = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
end

local function OnRoundData(self,type,tempData,friendCrytal,down_count)
    if type == 2 then --敌方回合更新水晶
        self.initData.roundNum = self.battlePlayer.oneBattle.round
        if tempData == nil then
            tempData = {}
            table.merge(tempData, self.battlePlayer.player2.Crytals)
        end
        self.initData.emeyRes = tempData
        self:UIBroadcast(UIMessageNames.UIBATTLE_ON_ROUND,true)
    elseif type == 1 then --回合更新数据
        self.down_count = down_count
        RefreshBattleData(self,friendCrytal)
        UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_UI_HIDE,1)
    end
    self.guideDeadNum = self.battlePlayer.player1:GetGuardDeadNum()
end

local function OnBattleSwitchRole(self,data)
    if data.new ~= nil then
        for m, n in pairs(self.initData.hero) do
            if n.id == data.old then
                self.initData.hero[m] = CreateHeroData(data.new)
                UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_CALL_SWITCH,m,true)
                break
            end
        end
    end

end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_BATTLE_ROUND_DATA, OnRoundData)
    self:AddDataListener(DataMessageNames.ON_BATTLE_SWITCH_ROLE, OnBattleSwitchRole)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_BATTLE_ROUND_DATA, OnRoundData)
    self:RemoveDataListener(DataMessageNames.ON_BATTLE_SWITCH_ROLE, OnBattleSwitchRole)
end
UIBattleInModel.OnCreate = OnCreate
UIBattleInModel.OnEnable = OnEnable

UIBattleInModel.OnDisable = OnDisable
UIBattleInModel.OnDestroy = OnDestroy

UIBattleInModel.OnAddListener = OnAddListener
UIBattleInModel.OnRemoveListener = OnRemoveListener


return UIBattleInModel