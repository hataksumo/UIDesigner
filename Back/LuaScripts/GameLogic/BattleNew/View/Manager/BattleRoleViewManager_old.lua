---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guoyu.
--- DateTime: 2018/12/21 10:42
---
local BattleRoleViewFactory=require"GameLogic.BattleNew.View.BattleRoleViewFactory"
local BattleSkillEffectViewFactory=require"GameLogic.BattleNew.View.BattleSkillEffectViewFactory"
local BattleRoleView=require("GameLogic.BattleNew.View.Object.BattleRoleView")
local BattleRoleViewManager=BaseClass("BattleRoleViewManager")

local function __init(self)
    --所属View层
    self.viewContext=nil
    --角色列表
    self.roles=nil
    --记录最终使用技能的角色用于结算
    self.lastMineUseSkillRole=-1
end


local function OnCreateView(self,entity,show)
    --Logger.Log("创建显示层角色"..entity.entityId)
    local role=BattleRoleViewFactory.CreateBattleRoleView(self.viewContext,entity,show)
    table.insert(self.roles,role)
end

local function OnRoleChangeState(self,entity,state)
    local role=self:GetRoleViewById(entity.teamId,entity.entityId)
    role:ChangeState(state)
end

local function OnRoleChangeParent(self,entity)
    local role=self:GetRoleViewById(entity.teamId,entity.entityId)
    if role ~= nil then
        role:ChangeParent()
    end
end

local function OnRoleHpChange(self,entity,hpChange,isCrit,hurtType)
    local role=self:GetRoleViewById(entity.teamId,entity.entityId)
    role:OpreateHp(hpChange,isCrit,hurtType)
end

local function OnDeleteView(self,entity)
    local role=self:GetRoleViewById(entity.teamId,entity.entityId)
    if role ~= nil then
        role:OnDestroy()
    else
        Logger.LogError("OnDeleteView 错误   没有该英雄  "..entity.entityId)
    end
end
--胜利消耗其他角色
local function WinDestroyRole(self)
    for i = #self.roles, 1,-1 do
        if self.lastMineUseSkillRole ~= self.roles[i].entity.entityId then
            self.roles[i]:OnDestroy()
        else
            self.roles[i]:PlayWin()
        end
    end
end




local function OnSomeOneFinishSkill(self,entity,type)
    local role=self:GetRoleViewById(entity.teamId,entity.entityId)
    role:OnSomeOneFinishSkill(type)

end

local function OnRolesReset(self,type)
    --所有角色父节点归为0 0 0,切换待机动作
    for k,v in pairs(self.roles) do
        v.transform.localPosition = Vector3.zero
        v.transform.parent.localPosition=Vector3.zero
        if v.entity.hp>0 then
            if type == 1 then
                v:Play(BattleRoleView.AnimName_Name_Idle)
            else
                v:Play(BattleRoleView.AnimName_Name_Idle2)
            end
        end
    end
    --self.viewContext.battleCameraManager:CoverInit()
end

local function BeginUseSkill(self,teamId,entityId,type)
    for k,v in pairs(self.roles) do
        v:Play(BattleRoleView.AnimName_Name_Idle2)
    end
end

local function MoveNoBattleRole(self,list)
    for k,v in pairs(self.roles) do
        if list[v.entity.entityId] == nil then
            v.transform.parent.localPosition = Vector3.New(-1000,-1000,-1000)
        end
    end
end

local function ResetMoveBattleRole(self,list)
    for k,v in pairs(self.roles) do
        if list[v.entity.entityId] == nil then
            v.transform.parent.localPosition = Vector3.zero
            v.transform.localPosition = Vector3.zero
            v.transform.localEulerAngles = Vector3.zero
        end
    end
end

local function ResetBattleRole(self,list)
    for k,v in pairs(self.roles) do
        if list[v.entity.entityId] then
            v.transform.parent.localPosition = Vector3.zero
            v.transform.localPosition = Vector3.zero
            v.transform.localEulerAngles = Vector3.zero
        end
    end
end

local function OnSomeOneBloodShow(self,play_blood,show_special,hide)
    for k,v in pairs(self.roles) do
        local temp = play_blood[v.entity.entityId]
        if temp then
            v:OnSomeOneBloodShow(temp,show_special,hide)
        end
    end
end

local function SetLastMineUseSkillRole(self,roleId)
    self.lastMineUseSkillRole=roleId
end


local function CreateEffect(self,entity,effect,fxConfig,fxId)
    coroutine.start(function ()
        local roleView=self:GetRoleViewById(entity.teamId,entity.entityId)
        if roleView ~= nil then
            local effectView=BattleSkillEffectViewFactory.CreateBattleSkillEffectView(effect,roleView,fxConfig,fxId)
            if effectView~=nil then
                roleView:AddEffectView(effectView)
            end
        end
    end)
end

local function OnSomeOneAddEffectView(self,entity,effect)
    --查找特效
    local effectConfig=DataUtil.GetData("skill_effect")[effect.effectId]
    if effectConfig == nil  or effectConfig.FxId==nil or effectConfig.FxId==0  then
        return nil
    end
    local fxConfig=DataUtil.GetData("fx_config")[effectConfig.FxId]
    if fxConfig.prefab_Name == nil or #fxConfig.prefab_Name == 0 then
        return nil
    end
    CreateEffect(self,entity,effect,fxConfig,effectConfig.FxId)
end

local function OnSomeEffectViewRefresh(self,entity,effect)
    coroutine.start(function ()
        local roleView=self:GetRoleViewById(entity.teamId,entity.entityId)
        local effectView=roleView:GetEffectViewById(effect.effectId)
        if effectView~=nil then
            effectView:OnRefresh(effect.layer)
        end
    end)
end

local function OnSomeEffectViewDestroy(self,entity,effect)
    local roleView=self:GetRoleViewById(entity.teamId,entity.entityId)
    local effectView=roleView:GetEffectViewById(effect.effectId)
    if effectView~=nil then
        effectView:OnDestroy()
        --创建消失特效
        --查找特效
        local effectConfig=DataUtil.GetData("skill_effect")[effect.effectId]
        if effectConfig == nil  or effectConfig.FxDisappear==nil or effectConfig.FxDisappear==0  then
            return nil
        end
        local fxConfig=DataUtil.GetData("fx_config")[effectConfig.FxDisappear]
        if fxConfig.prefab_Name == nil or #fxConfig.prefab_Name == 0 then
            return nil
        end
        CreateEffect(self,entity,effect,fxConfig,effectConfig.FxDisappear)
    end

end

local function AddEventListener(self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.ADD_ROLE_VIEW,OnCreateView,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.DELETE_ROLE_VIEW,OnDeleteView,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_STATE,OnRoleChangeState,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_PARENT,OnRoleChangeParent,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_HP,OnRoleHpChange,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEONE_FINISH_SKILL,OnSomeOneFinishSkill,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEONE_BLOOD_SHOW,OnSomeOneBloodShow,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SET_MINE_LAST_USE_SKILL,SetLastMineUseSkillRole,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEEFFECT_INIT,OnSomeOneAddEffectView,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEEFFECT_SYNC,OnSomeEffectViewRefresh,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.SOMEEFFECT_DESTROY,OnSomeEffectViewDestroy,self)
    self.viewContext.battleMessage:AddListener(BattleEnum.BattleMessage.PVEROUNDDATA, BeginUseSkill, self)
end

local function RemoveEventListener(self)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.ADD_ROLE_VIEW,OnCreateView)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.DELETE_ROLE_VIEW,OnDeleteView)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_STATE,OnRoleChangeState)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_PARENT,OnRoleChangeParent)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEONE_CHANGE_HP,OnRoleHpChange)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEONE_FINISH_SKILL,OnSomeOneFinishSkill)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEONE_BLOOD_SHOW,OnSomeOneBloodShow)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SET_MINE_LAST_USE_SKILL,SetLastMineUseSkillRole)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEEFFECT_INIT,OnSomeOneAddEffectView)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEEFFECT_SYNC,OnSomeEffectViewRefresh)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.SOMEEFFECT_DESTROY,OnSomeEffectViewDestroy)
    self.viewContext.battleMessage:RemoveListener(BattleEnum.BattleMessage.PVEROUNDDATA, BeginUseSkill)
end



local function OnInit(self,context)
    self.viewContext=context
    self.roles={}
    AddEventListener(self)
end


local function Update(self)
    for k,v in pairs(self.roles) do
        v:Update()
    end
end



local function GetRoleViewById(self,teamId,entityId)
    local role=nil
    for k,v in pairs(self.roles) do
        if v.entity.teamId==teamId and v.entity.entityId==entityId then
            role=v
            break
        end
    end
    return role
end

local function OnDestroy(self)
    for i = #self.roles, 1,-1 do
        self.roles[i]:OnDestroy()
    end
    RemoveEventListener(self)
end



BattleRoleViewManager.__init=__init
BattleRoleViewManager.OnInit=OnInit
BattleRoleViewManager.OnDestroy = OnDestroy
BattleRoleViewManager.Update = Update
BattleRoleViewManager.GetRoleViewById = GetRoleViewById
BattleRoleViewManager.OnRolesReset = OnRolesReset
BattleRoleViewManager.MoveNoBattleRole = MoveNoBattleRole
BattleRoleViewManager.ResetMoveBattleRole = ResetMoveBattleRole
BattleRoleViewManager.ResetBattleRole = ResetBattleRole
BattleRoleViewManager.WinDestroyRole = WinDestroyRole
return BattleRoleViewManager