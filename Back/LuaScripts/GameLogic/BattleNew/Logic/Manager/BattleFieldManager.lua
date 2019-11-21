---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guoyu.
--- DateTime: 2018/11/26 10:02
---
local BattleFieldManager=BaseClass("BattleFieldManager",Singleton)
local function __init(self)
    --当前战斗关卡Id
    self.fightId=0
    --战斗类型
    self.battleType=0
    --站位配置id
    self.sceneConfigId=0
    --进入战场服务器数据
    self.battlePackages=nil
    --新手战斗数据包路径
    self.battlePath = nil
    --是否是中途加入战斗
    self.middleEnterBattle = false
    --是否是下一关
    self.resetBattle = false
    --自己的阵容
    self.pve_myTeam = nil
    self.pve_myGuard = nil
    self.battleEnemyTeam = nil
    --战斗场景加载英雄
    self.battleLoadPackage = nil
end




-- 析构函数
local function __delete(self)

end

BattleFieldManager.__init=__init
BattleFieldManager.__delete=__delete
return BattleFieldManager