--[[
output from excel drill.教学关卡.xlsx
--note:

colums:
{ID,唯一键} ,{Name,关卡名称} ,{Desc,描述} ,{GuideTXT[1],引导文本} ,{GuideTXT[2],引导文本} ,{GuideTXT[3],引导文本} ,{TagID,所属标签页ID} ,{DrillLv,教学关卡} ,{Award[1].id,道具ID1} ,{Award[1].val,道具数量1} ,{Award[2].id,道具ID2} ,{Award[2].val,道具数量2} ,{BossImg,Boss原画} ,{LastId,上一关id} ,{NeedLevel,等级限制} ,{SceneName,场景名字} ,{MapPosId,地图坐标ID}
primary key:
#0 [教学关卡]: ID
]]
local _T = LangUtil.Language
return{
	[1400001] = {Name = "敌人吸血教学",Desc = "使用技能快速获取水晶来击败敌人",GuideTXT = {[1] = "<color=#df4c4c>守护灵</color>拥有远远强于<color=#df4c4c>寄灵人</color>的战斗能力"},TagID = 1,DrillLv = 101,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_gy_1102001",LastId = 0,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--敌人吸血教学
	[1400002] = {Name = "水晶削减教学",Desc = "利用削减水晶能力拖延敌方召唤，快速击杀其寄灵人",GuideTXT = {[1] = "在合适的时机<color=#df4c4c>削减敌人水晶</color>，可以有效延缓敌人召唤守护灵"},TagID = 1,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_xc_1102002",LastId = 1400001,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--水晶削减教学
	[1400003] = {Name = "集中行动教学",Desc = "当某个敌人威胁过大时，尝试集中某个角色行动优先击杀该敌人",GuideTXT = {[1] = "有时战斗能力强的敌方角色需要被<color=#df4c4c>优先击杀</color>"},TagID = 2,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_dw_1102003",LastId = 0,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--集中行动教学
	[1400004] = {Name = "追击教学",Desc = "触发追击技能意味着只使用1个行动位就释放了2个甚至3个技能",GuideTXT = {[1] = "攻击达到<color=#df4c4c>一定次数</color>才能打破敌人身上的护盾"},TagID = 2,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_gy_1102001",LastId = 1400003,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--追击教学
	[1400005] = {Name = "行动顺序教学",Desc = "合理安排行动顺序很重要",GuideTXT = {[1] = "注意观察敌人血量，合理安排<color=#df4c4c>技能释放顺序</color>，会让通关变得更简单"},TagID = 2,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000},[2] = {id = 1602001,val = 3}},BossImg = "draw_xc_1102002",LastId = 1400004,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--行动顺序教学
	[1400006] = {Name = "输出效率教学",Desc = "有时需要先清理杂鱼，再集中高伤害技能攻击一个目标",GuideTXT = {[1] = "强力的技能不要浪费在不重要的敌人上"},TagID = 2,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000},[2] = {id = 1602001,val = 3}},BossImg = "draw_dw_1102003",LastId = 1400005,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--输出效率教学
	[1400007] = {Name = "水晶诅咒教学",Desc = "通过水晶诅咒机制可以获得大量水晶",GuideTXT = {[1] = "<color=#df4c4c>绝技</color>通常能造成更高伤害",[2] = "<color=#df4c4c>合理使用</color>技能可以获得<color=#df4c4c>额外的水晶</color>"},TagID = 1,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000},[2] = {id = 1602001,val = 3}},BossImg = "draw_gy_1102001",LastId = 1400002,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--水晶诅咒教学
	[1400008] = {Name = "避难与驱散",Desc = "避难状态中的敌人不受到任何直接伤害类的攻击",GuideTXT = {[1] = "避难状态中的敌人不受到任何直接伤害类的攻击"},TagID = 3,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_xc_1102002",LastId = 0,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--避难与驱散
	[1400009] = {Name = "不死",Desc = "特定技能可以斩杀处于不死状态中的项羽",GuideTXT = {[1] = "特定技能可以斩杀处于不死状态中的项羽"},TagID = 3,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000},[2] = {id = 1602001,val = 3}},BossImg = "draw_dw_1102003",LastId = 1400008,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--不死
	[1400010] = {Name = "综合测试1",Desc = "试着自己通关吧！",GuideTXT = {[1] = "敲黑板了，<color=#df4c4c>本关没有提示！</color>"},TagID = 4,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000}},BossImg = "draw_dw_1102003",LastId = 0,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51},--综合测试1
	[1400011] = {Name = "综合测试2",Desc = "试着自己通关吧！",GuideTXT = {[1] = "敲黑板了，<color=#df4c4c>本关没有提示！</color>"},TagID = 4,DrillLv = 13,Award = {[1] = {id = 1401002,val = 5000},[2] = {id = 1602001,val = 3}},BossImg = "draw_dw_1102003",LastId = 1400010,NeedLevel = 1,SceneName = "Map_chilianjie_4-2",MapPosId = 51}--综合测试2
}