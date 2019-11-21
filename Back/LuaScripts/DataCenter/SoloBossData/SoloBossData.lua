--[[
-- added by wsh @ 2017-12-05
-- 服务器数据
--]]

local SoloBossData = BaseClass("SoloBossData", Singleton)
local function __init(self)
    -- 所有服务器列表
    self.request = false
    self.soloBossInfo = {}
    self.allLevelInfo= DataUtil.GetData("solo_level")
end

-- 解析个人boss数据
local function ParseSoloBossInfoData(self, data)
    if data == nil then
        return
    end
    self.soloBossInfo.bossId = data.bossId
    self.soloBossInfo.categoryId = data.categoryId
    self.soloBossInfo.attrId = data.attrId
    self.soloBossInfo.maxLevel = -1
    self.soloBossInfo.minLevel = -1
    self.soloBossInfo.allLevels = {}
    --local levelKeys = GameDataBase.SheetBase.GetKeys(self.allLevelInfo)
    --for i = 1, #levelKeys do
    for i, v in pairs(self.allLevelInfo) do

        if self.allLevelInfo[i].BossId == self.soloBossInfo.bossId then
            if i > self.soloBossInfo.maxLevel then
                self.soloBossInfo.maxLevel = i
            end
            if i < self.soloBossInfo.minLevel or self.soloBossInfo.minLevel < 0 then
                self.soloBossInfo.minLevel = i
            end
            table.insert(self.soloBossInfo.allLevels,self.allLevelInfo[i])
        end
    end
    table.sort(self.soloBossInfo.allLevels,function (a,b) return a.ID < b.ID end)
    if data.level == -1 then
        self.soloBossInfo.passLevel = self.soloBossInfo.minLevel
        self.soloBossInfo.openLevel = self.soloBossInfo.minLevel
    else
        self.soloBossInfo.passLevel = data.level
        self.soloBossInfo.openLevel = math.min(self.soloBossInfo.passLevel + 1, self.soloBossInfo.maxLevel)
    end
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_SOLO_BOSS_REFRESH)
end

local function SelectFightLevel(self,_level)
    self.selectLevel = _level
end

local function OnPassFight(self)
   -- DataUtil.CostItemsByCostGroup(self.costGroupId)
    local soloBossConstant = DataUtil.GetData("solo_boss_constant")
    local cost = soloBossConstant[1].Cost
    BackpackData:GetInstance():UpdateItemData(cost[1].Id,-cost[1].Val)
    if  self.selectLevel == self.soloBossInfo.openLevel then
        self.soloBossInfo.passLevel = self.soloBossInfo.openLevel
        self.soloBossInfo.openLevel = math.min(self.soloBossInfo.passLevel + 1, self.soloBossInfo.maxLevel)
    end
end

--请求个人boss数据
local function SyncSoloBossRequest(self)
    local msd_id = MsgIDDefine.PBCHAPTER_SYNC_SOLO_BOSS_REQUEST
    local callbackFunc = function(self, msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.LogAny("error； " .. " OpCode :" .. msg_obj.OpCode .. " error id : " .. msg_obj.Packages.id .. " error msg : " .. msg_obj.Packages.msg)
            return
        end
        self.request = true
        self:ParseSoloBossInfoData(msg_obj.Packages.soloBossInfo)
        DataUtil.ParseDropItem(msg_obj.Packages.drop)
    end
    NetManager:GetInstance():SendMessage(msd_id, nil, Bind(self, callbackFunc))
end

SoloBossData.__init = __init
SoloBossData.SyncSoloBossRequest = SyncSoloBossRequest
SoloBossData.ParseSoloBossInfoData = ParseSoloBossInfoData
SoloBossData.SelectFightLevel = SelectFightLevel
SoloBossData.OnPassFight = OnPassFight

return SoloBossData