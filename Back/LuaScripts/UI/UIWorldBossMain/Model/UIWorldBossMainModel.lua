--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

--探索中的队伍信息
local TeamInfoGame = {
    state = 0,
    ID = 0,
    teamID = 0,
    power = 0,
    spirit = 0,
    head = 0,
    hp = 0,
    maxHP = 0,
    co = Vector2.New(0, 0),
    roleId = 0,
}

local UIWorldBossMainModel = BaseClass("UIWorldBossMainModel", UIBaseModel)
local base = UIBaseModel

local TeamInfoGame = DataClass("TeamInfoGame", TeamInfoGame)

local boss_data = DataUtil.GetData("mu_p_boss_duplicate")

local function OnDataMsgUpdateTeamData(self, teamID, index)
    local teamController = WorldBossCtrlManager:GetInstance().allTeamList[index]
    self.game_team_info[teamID].hp = math.modf(teamController.teamHP)
    self.game_team_info[teamID].spirit = math.modf(teamController.teamSpirit)
    self.game_team_info[teamID].maxHP = math.modf(teamController.teamMaxHP)

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_WORLD_BOSS_TEAM_REFRESH, teamID)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.mapName = boss_data[DRBossData:GetInstance().slect_customs].DuplicateName
    self.limitTime = boss_data[DRBossData:GetInstance().slect_customs].LimitedTime * 60

    self.game_team_info = {}
    for j, v in ipairs(DRBossData:GetInstance().entergame_data) do
        if v.teams ~= nil and v.teams[1].roleId == ClientData:GetInstance().user_id then
            for k, n in ipairs(v.teams) do
                local data = TeamInfoGame.New()
                data.state = 0
                data.ID = n.position
                data.teamID = n.roleId * 10 + n.position  --所有队伍的唯一ID
                data.power = math.modf(tonumber(n.power))
                data.spirit = math.modf(tonumber(n.spirit))
                data.head = n.head
                data.hp = math.modf(tonumber(n.hp))
                data.maxHP = math.modf(tonumber(n.hp))
                self.game_team_info[data.ID] = data
            end
            break
        end
    end

    self.bagItemList = {}
    for _, v in pairs(DRBossData:GetInstance().element_event_info) do
        if v.ElementType == CommDefine.DRBossEventType.Item then
            local temp = {}
            temp.ID = v.ID
            temp.Icon = v.ElementIcon
            temp.Count = 0
            temp.Name = v.ElementName

            table.insert(self.bagItemList, temp)
        end
    end

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

    self:AddDataListener(DataMessageNames.ON_WORLD_BOSS_TEAM_DATA_UPDATE, OnDataMsgUpdateTeamData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

    self:RemoveDataListener(DataMessageNames.ON_WORLD_BOSS_TEAM_DATA_UPDATE, OnDataMsgUpdateTeamData)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.game_team_info = {}
    self.bagItemList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UIWorldBossMainModel.OnCreate = OnCreate
UIWorldBossMainModel.OnEnable = OnEnable
UIWorldBossMainModel.OnRefresh = OnRefresh
UIWorldBossMainModel.OnAddListener = OnAddListener
UIWorldBossMainModel.OnRemoveListener = OnRemoveListener
UIWorldBossMainModel.OnDisable = OnDisable
UIWorldBossMainModel.OnDestroy = OnDestroy

return UIWorldBossMainModel