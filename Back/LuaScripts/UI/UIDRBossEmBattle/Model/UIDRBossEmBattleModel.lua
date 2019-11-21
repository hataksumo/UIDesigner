
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIDRBossEmBattleModel = BaseClass("UIDRBossEmBattleModel", UIBaseModel)
local base = UIBaseModel

local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction = require "GameLogic.BattleNew.BattleAssistFunction"
local HeroCardData = {
    cardXlsxData = 0, --xlsx数据
    isUpArray = 0, --是否上阵
    teamId = 0, --所属队伍
}
local CardDataModel = DataClass("HeroCardData", HeroCardData);

--排序卡牌
local function SortCardList(self, list)
    table.sort(list, function(a, b)
        local r
        --上阵
        if a.isUpArray == b.isUpArray then
            --所属队伍
            if a.teamId == b.teamId then
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
                r = a.teamId < b.teamId;
            end
        else
            r = a.isUpArray > b.isUpArray;
        end
        return r;
    end)
end

--初始化寄灵人和守护灵列表
local function InitEmBattleData(self)
    local cardList = CardData:GetInstance().cards
    self.jlrlist = {}
    self.shllist = {}

    for k, v in pairs(cardList) do
        if v ~= nil then
            local singleCardData = CardDataModel.New();
            singleCardData.cardXlsxData = v;
            singleCardData.isUpArray = 0;
            singleCardData.teamId = 0;
            if v.type == 2 then
                table.insert(self.shllist, singleCardData);
            else
                table.insert(self.jlrlist, singleCardData);
            end
        end
    end
end

--解析队伍数据
local function InitTeamBattleData(self)
    local selfBattleData = DRBossData:GetInstance().battle_team
    local myTransPosition = {2, 1, 3}
    --解析UserData存储的己方阵容
    if not selfBattleData._is_null then
        for k, v in ipairs(selfBattleData) do
            if not v._is_null and not v.team._is_null then
                for m, n in ipairs(v.team) do
                    if n.host ~= nil then
                        local jlrCardID = BattleAssistFunction.GetCardIdByTeamAndEntityId(BattleEnum.BattlePlayerType.MINE, n.host.cardId)
                        if jlrCardID ~= nil and jlrCardID ~= 0 then
                            for j = 1, #self.jlrlist do
                                if jlrCardID == self.jlrlist[j].cardXlsxData.id then
                                    self.jlrlist[j].isUpArray = 1;
                                    self.jlrlist[j].teamId = k;
                                    self.roles[k][1][myTransPosition[n.position + 1]] = self.jlrlist[j];
                                    break
                                end
                            end
                        end
                        if n.guardian ~= nil then
                            local shlCardID = BattleAssistFunction.GetCardIdByTeamAndEntityId(BattleEnum.BattlePlayerType.MINE, n.guardian.cardId)
                            if shlCardID ~= nil and shlCardID ~= 0 then
                                for j = 1, #self.shllist do
                                    if shlCardID == self.shllist[j].cardXlsxData.id then
                                        self.shllist[j].isUpArray = 1;
                                        self.shllist[j].teamId = k;
                                        self.roles[k][2][myTransPosition[n.position + 1]] = self.shllist[j];
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
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
    self.roles = {{{ nil, nil, nil }, { nil, nil, nil }},{{ nil, nil, nil }, { nil, nil, nil }},{{ nil, nil, nil }, { nil, nil, nil }} };
    InitEmBattleData(self)
    SortCardList(self, self.jlrlist);
    SortCardList(self, self.shllist);
    InitTeamBattleData(self)
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听

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

UIDRBossEmBattleModel.OnCreate = OnCreate
UIDRBossEmBattleModel.OnEnable = OnEnable
UIDRBossEmBattleModel.OnRefresh = OnRefresh
UIDRBossEmBattleModel.OnAddListener = OnAddListener
UIDRBossEmBattleModel.OnRemoveListener = OnRemoveListener
UIDRBossEmBattleModel.OnDisable = OnDisable
UIDRBossEmBattleModel.OnDestroy = OnDestroy
UIDRBossEmBattleModel.SortCardList = SortCardList

return UIDRBossEmBattleModel