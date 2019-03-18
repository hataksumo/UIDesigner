--[[
--note:

colums:
{id,ID} ,{cardGroup,卡牌组} ,{relic,神器组} ,{prop[1],Atk} ,{prop[2],Def} ,{prop[3],HP} ,{prop[4],Crit} ,{prop[5],CritDmg} ,{prop[6],EffectHit} ,{prop[7],EffectResist} ,{prop[8],AtkRate} ,{prop[9],DefRate} ,{prop[10],HPRate} ,{prop[11],AtkExt} ,{prop[12],DefExt} ,{prop[13],HPExt} ,{prop[14],Block} ,{prop[15],DefIgnor} ,{prop[16],R}
primary key:
#0 [关卡]: id
]]
return{
	[1] = {cardGroup = 1,relic = 1},
	[2] = {cardGroup = 2,relic = 2},
	[3] = {cardGroup = 2,relic = 3},
	[4] = {cardGroup = 2,relic = 4},
	[5] = {cardGroup = 2,relic = 5},
	[6] = {cardGroup = 2,relic = 6}
}