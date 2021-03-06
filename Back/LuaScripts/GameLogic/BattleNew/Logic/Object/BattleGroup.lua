---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guoyu.
--- DateTime: 2018/12/12 16:32
---
local BattleGroup=BaseClass("BattleGroup")

local function __init(self)
    --Id
    self.groupId=0
    --所属阵营
    self.player=nil
    --寄灵人
    self.mainRole=nil
    --召唤守护灵
    self.guardianRole=nil
    --守护灵初始数据
    self.initGuardData = nil
    --当前前排角色
    self.battleRole=nil
    --死亡次数
    self.guardDeadNum = 0
end


local function OnInit(self,groupId,player)
    self.groupId=groupId
    self.player=player

end


local function SetMainRole(self,battleRole)
    --Logger.Log("group"..self.groupId.."设置主要角色"..battleRole.entityId)
    self.mainRole=battleRole
    self.battleRole=self.mainRole
    self.guardDeadNum = 0
    --self:ChangeBattleRoleLogic()
end

local function CallGuardianRole(self,guard)
    self.guardianRole = guard
    self.battleRole=self.guardianRole
    return {teamId = self.guardianRole.teamId,entityId = self.guardianRole.entityId}
end

local function SetGuardianRole(self,battleRole,guard)
    self.initGuardData=battleRole
    self.guardianRole = guard
end

local function GetRoleById(self,id)
    if self.mainRole~=nil and self.mainRole.entityId==id then
        --Logger.Log("group"..self.groupId.."mainRole"..self.mainRole.entityId)
        return self.mainRole
    end
    if self.guardianRole~=nil and self.guardianRole.entityId==id then
        return self.guardianRole
    end
    return nil
end

local function UpdateBattleRoleById(self,list)
    for i, v in ipairs(list) do
        if self.guardianRole ~= nil and v == self.guardianRole.entityId then
            self.battleRole = self.guardianRole
            break
        elseif self.mainRole ~= nil and v == self.mainRole.entityId then
            self.battleRole = self.mainRole
            break
        end
    end
end


local function BattleRoleDead(self)
   if self.battleRole.hp <= 0 and self.battleRole == self.guardianRole then
        self.battleRole = self.mainRole
       self.guardDeadNum = self.guardDeadNum + 1
    end
end

local function OnDestroy(self)

    if self.mainRole~=nil then
        self.mainRole:OnDestroy()
    end
    if self.guardianRole~=nil then
        self.guardianRole:OnDestroy()
    end
    if self.initGuardData ~= nil then
        self.initGuardData:OnDestroy()
    end
    self.initGuardData = nil
    self.mainRole=nil
    self.guardianRole=nil
end



BattleGroup.__init=__init
BattleGroup.OnInit=OnInit
BattleGroup.OnDestroy=OnDestroy
BattleGroup.SetMainRole=SetMainRole
BattleGroup.GetRoleById=GetRoleById
BattleGroup.SetGuardianRole=SetGuardianRole
BattleGroup.CallGuardianRole = CallGuardianRole
BattleGroup.BattleRoleDead=BattleRoleDead
BattleGroup.UpdateBattleRoleById = UpdateBattleRoleById
return BattleGroup