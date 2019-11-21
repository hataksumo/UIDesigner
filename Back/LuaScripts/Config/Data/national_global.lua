--[[
output from excel national_global国战全局.xlsx
--note:

colums:
{Key,键} ,{valueN,数值型值} ,{valueS,字符串型值} ,{valueB,布尔值} ,{valueNA,数值数组型值} ,{valueSA,字符串数组型值}
primary key:
#0 [国战-全局表]: Key
]]
local _T = LangUtil.Language
if ddt["national_global"] ~= nil then
	return ddt["national_global"]
end
local data = {
	FunctionSpdAdd = {0.3,0.3,0,0,0,0},--1.调动 2.剿匪 3.出征(打资源点/讨伐怪/接战区地块)  4.驻守 5.攻城战破城出征 6.攻城战杀敌派遣
	MoveWalkAn = 8.7,--走路移动速度公式an
	MoveWalkBn = -6,--走路移动速度公式bn
	MoveFlyAn = 8.7,--直飞移动速度公式an
	MoveFlyBn = -6,--直飞移动速度公式bn
	QuickReturn = 20,--队伍-立即返回消耗钻石
	CollectTime = 600,--队伍-采集所需时间(秒)
	NaPveRoundLimit = 15,--国战PVE战斗回合限制
	NaPvpRoundLimit = 15,--国战PVP战斗回合限制
	CollectCost = 20,--队伍-采集消耗行动力
	CollectDecree = 3,--队伍-采集消耗军令
	TechQueue = 2,--科技-研发队列数量
	TechPayCost = 50,--科技-付费队列购买消耗钻石
	TechPayQueue = 2,--科技-付费队列数量上限
	PointNameLimit = 10,--坐标-收藏改名字符限制
	PointNumLimit = 10,--坐标-收藏数量上限
	AP_MAX = 100,--行动力-卡牌基础上限
	RecruitReturnLimit = 100,--需卡牌兵力大于X时，进行停止招募、下阵时才会返还资源。
	GlobalCostLimit = 30,--初始队伍cost限制
	EscRate = 0.3,--战后兵力/可携带兵力上限<该值，队伍进入败退状态
	DamageLimit = 0.3,--战后兵力/可携带兵力上限<该值，队伍进入重伤状态
	ForceRatioc = 1000000,--卡牌战力折算系数c
	AtkRatiob = 0.5,--攻击系数b
	AtkRatioa = 1,--攻击系数a
	StatusRecord = 300,--pve守军恢复状态时间限制（秒）
	BattlePause = 3.8,--播战斗动画的间隔时间（秒）
	InitalArmyLimit = 100,--初始兵力上限增加量
	InitalArmyCount = 100,--初始兵力
	AtkRatiod = 0.55,--攻击系数d
	FirstMarch = 5--新手引导出征行军时间（秒）
}
ddt["national_global"] = data
SetLooseReadonly(data)
return data