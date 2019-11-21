local UIEmBattle2DModel = BaseClass("UIEmBattle2DModel", UIBaseModel)
local base = UIBaseModel
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction = require "GameLogic.BattleNew.BattleAssistFunction"
local HeroCardData = {
    cardXlsxData = 0, --xlsx数据
    isUpArray = 0, --是否上阵
    teamId = 0, --队伍编号
    skillList = {}, --技能列表
}
local CardDataModel = DataClass("HeroCardData", HeroCardData);
local cardXlsx = DataUtil.GetData("card");
local skillXlsx = DataUtil.GetData("skill");
local myTransPosition = {2, 1, 3}
local transPos = { 1, 0, 2 }

--通过阵容类型选择阵容
local function FilterCardListByArrayType(self)
    local cardList = CardData:GetInstance().cards
    local finalList = {};
    if self.arrayType == BattleEnum.BattleType.NORMAL then
        --通用
        finalList = cardList;
    elseif self.arrayType == BattleEnum.BattleType.LUHUAGULOU then
        --芦花鼓楼
        local index = LuHuaGuLouData:GetInstance().campIndex
        local cardRange = DataUtil.GetData("reed_tower")[index].LimitCards;
        for i, v in pairs(cardRange) do
            if CardData:GetInstance().cards[i] ~= nil then
                table.insert(finalList, CardData:GetInstance().cards[i]);
            end
        end
    else
        finalList = cardList;
    end
    return finalList;
end

--当前关卡战力
local function GetLevelPower(self)
    local levelId = BattleFieldManager:GetInstance().fightId;
    if self.arrayType == BattleEnum.BattleType.NORMAL then
        local levelXlsx = DataUtil.GetData("level");
        for k, v in pairs(levelXlsx) do
            for m, n in pairs(v) do
                for i, j in pairs(n.Levels) do
                    if i == levelId then
                        return j.Bs
                    end
                end
            end
        end
    elseif self.arrayType == BattleEnum.BattleType.LUHUAGULOU then
        local levelXlsx = DataUtil.GetData("reed_tower");
        for k, v in pairs(levelXlsx) do
            for m, n in pairs(v.Lvs) do
                if n.Id == levelId then
                    return n.Bs
                end
            end
        end
    elseif self.arrayType == BattleEnum.BattleType.CACODEMON then
        local levelXlsx = DataUtil.GetData("wBoss");
        for k, v in pairs(levelXlsx) do
            for m, n in pairs(v.Bosses) do
                if n.Id == levelId then
                    return n.Bs
                end
            end
        end
    elseif self.arrayType == BattleEnum.BattleType.BIOGRAPLY then
        local levelXlsx = DataUtil.GetData("card_daily_level");
        for k, v in pairs(levelXlsx) do
            for m, n in pairs(v.Levels) do
                if n.Id == levelId then
                    return n.Bs
                end
            end
        end
    elseif self.arrayType == BattleEnum.BattleType.TESTHOARD then
        local levelXlsx = DataUtil.GetData("daily_level");
        for k, v in pairs(levelXlsx) do
            for m, n in pairs(v.Levels) do
                if n.Id == levelId then
                    return n.Bs
                end
            end
        end
    elseif self.arrayType == BattleEnum.BattleType.SOLO_ARENA then
        local levelXlsx = DataUtil.GetData("arena_robot");
        local curfightvalue = ArenaData:GetInstance().cur_pk_player_data.fightValue
        if curfightvalue == 0 then
            for k, v in pairs(levelXlsx) do
                if v.ID == ArenaData:GetInstance().cur_pk_player_data.uid then
                    return v.Bs
                end
            end
        end
        return Mathf.Floor(curfightvalue)
    end
    return 0
end

--排序卡牌
local function SortCardList(self, type)
    local sortList = type == 2 and self.shllist or self.jlrlist;
    table.sort(sortList, function(a, b)
        local r
        --上阵
        if a.isUpArray == b.isUpArray then
            --品质
            if a.cardXlsxData.quality == b.cardXlsxData.quality then
                --等级
                if a.cardXlsxData.level == b.cardXlsxData.level then
                    --ID
                    r = a.cardXlsxData.id > b.cardXlsxData.id;
                else
                    r = a.cardXlsxData.level > b.cardXlsxData.level;
                end
            else
                r = a.cardXlsxData.quality > b.cardXlsxData.quality;
            end
        else
            r = a.isUpArray > b.isUpArray;
        end
        return r;
    end)
end

--上传记副本限定的卡牌
local function UpLimitCard(self, selfBattleData)
    local function getCardByType(limitCards,type)
        local cards = {}
        for _, v in ipairs(limitCards) do
            if CardData:GetInstance().cards[v] ~= nil and CardData:GetInstance().cards[v].type == type then
                table.insert(cards, v)
            end
        end
        return cards
    end
    local function getCardPos(cardId)
        for k, v in ipairs(selfBattleData) do
            if v ~= nil then
                if v.host ~= nil then
                    if v.host.cardId == cardId then
                        return k
                    end
                end
                if v.guardian ~= nil then
                    if v.guardian.cardId == cardId then
                        return k
                    end
                end
            end
        end
        return 0
    end

    if self.arrayType == BattleEnum.BattleType.BIOGRAPLY then
        local limitCards = BiographyData:GetInstance()._limitCardGroup
        local jlrCards = getCardByType(limitCards, 1)
        local shlCards = getCardByType(limitCards, 2)
        for i = 1, 3 do
            if selfBattleData[i] == nil then
                selfBattleData[i] = {host = {cardId = 0}, guardian = {cardId = 0}, position = transPos[i]}
            end
            if jlrCards[i] ~= nil then
                local cardPos = getCardPos(jlrCards[i])
                if cardPos == 0 then
                    selfBattleData[i].host.cardId = jlrCards[i]
                elseif cardPos ~= i then
                    local changeCardId = selfBattleData[i].host.cardId
                    selfBattleData[i].host.cardId = jlrCards[i]
                    selfBattleData[cardPos].host.cardId = changeCardId
                end
            end
            if #shlCards > 0 then
                if selfBattleData[i].host.cardId ~= 0 then
                    local cardPos = getCardPos(shlCards[1])
                    if cardPos == 0 then
                        selfBattleData[i].guardian.cardId = shlCards[1]
                    elseif cardPos ~= i then
                        local changeCardId = selfBattleData[i].guardian.cardId
                        selfBattleData[i].guardian.cardId = shlCards[1]
                        selfBattleData[cardPos].guardian.cardId = changeCardId
                    end
                    table.remove(shlCards,1)
                end
            end
        end
    end
    return selfBattleData
end

--初始化寄灵人和守护灵列表
local function InitEmBattleData(self)
    self.title = "战前布阵"
    local cardList = FilterCardListByArrayType(self);
    self.jlrlist = {}
    self.shllist = {}

    for k, v in pairs(cardList) do
        if v ~= nil then
            local singleCardData = CardDataModel.New();
            singleCardData.cardXlsxData = v;
            singleCardData.isUpArray = 0;
            singleCardData.teamId = 0;
            singleCardData.skillList = {};
            for i = 1, #cardXlsx[v.id].Skill do
                local skillData = skillXlsx[cardXlsx[v.id].Skill[i]];
                local skillIcon = skillData.Icon;
                local skilClientData = SkillData:GetInstance():GetSkillItemByCardIDAndSkillID(v.id, cardXlsx[v.id].Skill[i]);
                if skilClientData ~= nil then
                    table.insert(singleCardData.skillList, { icon = skillIcon, id = skilClientData.id })
                end

            end
            for a, b in ipairs(v.wearSkills) do
                local skillData = skillXlsx[SkillData:GetInstance().skills[b].templateId];
                if skillData ~= nil then
                    local skillIcon = skillData.Icon;
                    table.insert(singleCardData.skillList, { icon = skillIcon, id = SkillData:GetInstance().skills[b].id })
                end

            end
            if self.crystalType == 0 or v.crystalType == self.crystalType then
                if v.type == 2 then
                    table.insert(self.shllist, singleCardData);
                else
                    table.insert(self.jlrlist, singleCardData);
                end
            end
        end
    end
end

--解析PVP自己的阵容数据，敌方数据开始时才会在view中收到
local function InitPVPBattleData(self)
    local arenaTeam = UserData:GetInstance():GetBattleInfoData(9);
    if self.saveEmBattle then
        arenaTeam = UserData:GetInstance():GetBattleInfoData(8);
    end
    local myTransPosition = {2, 1, 3}
    for k, v in ipairs(arenaTeam) do
        if v ~= nil then
            if v.host ~= nil then
                for j = 1, #self.jlrlist do
                    if v.host.cardId == self.jlrlist[j].cardXlsxData.id then
                        self.jlrlist[j].isUpArray = 1;
                        self.roles[1][myTransPosition[v.position + 1]] = self.jlrlist[j];
                        break
                    end
                end
            end
            if v.guardian ~= nil then
                for j = 1, #self.shllist do
                    if v.guardian.cardId == self.shllist[j].cardXlsxData.id then
                        self.shllist[j].isUpArray = 1;
                        self.roles[2][myTransPosition[v.position + 1]] = self.shllist[j];
                        break
                    end
                end
            end
        end
    end
end

--解析PVE阵容数据
local function InitPVEBattleData(self)
    local enemyTeamData = {};
    local enemyGuridData = {};
    local battlePackages = BattleFieldManager:GetInstance().battlePackages
    local selfBattleData = UserData:GetInstance():GetBattleInfoData(UIUtil.GetKeyByBattleType(self.arrayType))
    local enemyTransPosition = {2, 3, 1}
    --解析UserData存储的己方阵容
    if not selfBattleData._is_null then
        selfBattleData = UpLimitCard(self, selfBattleData)
        for k, v in ipairs(selfBattleData) do
            if v ~= nil then
                if v.host ~= nil then
                    local jlrCardID = BattleAssistFunction.GetCardIdByTeamAndEntityId(BattleEnum.BattlePlayerType.MINE, v.host.cardId)
                    if jlrCardID ~= nil and jlrCardID ~= 0 and self.arrayType ~= BattleEnum.BattleType.GUIDE then
                        for j = 1, #self.jlrlist do
                            if jlrCardID == self.jlrlist[j].cardXlsxData.id then
                                self.jlrlist[j].isUpArray = 1;
                                self.roles[1][myTransPosition[v.position + 1]] = self.jlrlist[j];
                                break
                            end
                        end
                    end
                    ---引导关卡会用到自己没有的卡牌
                    if self.arrayType == BattleEnum.BattleType.GUIDE and self.roles[1][myTransPosition[v.position + 1]] == nil then
                        self.roles[1][myTransPosition[v.position + 1]] = {cardXlsxData = BattleAssistFunction.GetEmBattle2DCardData(BattleEnum.BattlePlayerType.MINE, v.host.cardId)};
                    end
                    if v.guardian ~= nil then
                        local shlCardID = BattleAssistFunction.GetCardIdByTeamAndEntityId(BattleEnum.BattlePlayerType.MINE, v.guardian.cardId)
                        if shlCardID ~= nil and shlCardID ~= 0 and self.arrayType ~= BattleEnum.BattleType.GUIDE then
                            for j = 1, #self.shllist do
                                if shlCardID == self.shllist[j].cardXlsxData.id then
                                    self.shllist[j].isUpArray = 1;
                                    self.roles[2][myTransPosition[v.position + 1]] = self.shllist[j];
                                    break
                                end
                            end
                        end
                        ---引导关卡会用到自己没有的卡牌
                        if self.arrayType == BattleEnum.BattleType.GUIDE and self.roles[2][myTransPosition[v.position + 1]] == nil then
                            self.roles[2][myTransPosition[v.position + 1]] = {cardXlsxData = BattleAssistFunction.GetEmBattle2DCardData(BattleEnum.BattlePlayerType.MINE, v.guardian.cardId)};
                        end
                    end
                end

            end
        end
        if self.arrayType == BattleEnum.BattleType.GUIDE then
            self.teachRoles = selfBattleData
        end
    end

    for k, v in ipairs(battlePackages.enemyTeam) do
        if v ~= nil then
            local cardXlsxData = BattleAssistFunction.GetEmBattle2DCardData(BattleEnum.BattlePlayerType.ENEMY, v.entityId);
            self.enemyRoles[1][enemyTransPosition[v.position + 1]] = {cardXlsxData = cardXlsxData};
            table.insert(enemyTeamData, {entityId = v.entityId, position = v.position});
            if not v.callSkill._is_null and v.callSkill.guardianId > 0 then
                ---敌方召唤守护灵需要的水晶信息从协议中获取
                local cardSHLXlsxData = BattleAssistFunction.GetEmBattle2DCardData(BattleEnum.BattlePlayerType.ENEMY, v.callSkill.guardianId);
                cardSHLXlsxData.crystalType = v.callSkill.crytalType
                cardSHLXlsxData.callCost = v.callSkill.crytalCount
                cardSHLXlsxData.type = 2
                self.enemyRoles[2][enemyTransPosition[v.position + 1]] = {cardXlsxData = cardSHLXlsxData};
                table.insert(enemyGuridData, {entityId = v.callSkill.guardianId, position = v.position});
            end
        end
    end
    self.load_enemyTeam = enemyTeamData
    self.load_enemyGuard = enemyGuridData
end

-- 刷新全部数据
local function OnRefresh(self)
    self:UIBroadcast(UIMessageNames.UIEMBATTLE2D_ON_REFRESH)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
end

-- 打开(PVP敌方信息，是否只设置防守阵型)
local function OnEnable(self, data, saveEmBattle,_isRebindScene)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.isRebindScene=_isRebindScene;
    self.roles = { { nil, nil, nil }, { nil, nil, nil } };
    self.enemyRoles = { { nil, nil, nil }, { nil, nil, nil } };
    self.teachRoles = {};--集训营需要的阵容数据
    self.crystalType = 0;--0=全部 1=红 2=黄 3=蓝
    self.arrayType = BattleFieldManager:GetInstance().battleType;
    InitEmBattleData(self);
    SortCardList(self, 1);
    SortCardList(self, 2);
    self.saveEmBattle = false;
    if saveEmBattle == true then
        self.saveEmBattle = true;
        InitPVPBattleData(self);
    else
        if self.arrayType == BattleEnum.BattleType.PVP then
            self.enemyUserData = data;
            InitPVPBattleData(self);
        else
            InitPVEBattleData(self);
            self.enemyPower = GetLevelPower(self)
        end
    end
    OnRefresh(self)
end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_UIEMBATTLE2D_LIST_ITEM_SORT, SortCardList);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_UIEMBATTLE2D_LIST_ITEM_SORT, SortCardList);
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UIEmBattle2DModel.OnCreate = OnCreate
UIEmBattle2DModel.OnEnable = OnEnable
UIEmBattle2DModel.OnAddListener = OnAddListener
UIEmBattle2DModel.OnRemoveListener = OnRemoveListener
UIEmBattle2DModel.OnDisable = OnDisable
UIEmBattle2DModel.OnDestroy = OnDestroy
UIEmBattle2DModel.GetLevelPower = GetLevelPower

return UIEmBattle2DModel