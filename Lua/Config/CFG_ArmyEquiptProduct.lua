--[[
--note:
兵装建设的表
colums:
{id,ID} ,{name,名字} ,{factory,工厂ID} ,{bdlvreq,兵工厂等级需求} ,{timecost,建造时间} ,{wide,宽度} ,{cost[1].id,消耗道具ID1} ,{cost[1].num,消耗道具数量1} ,{cost[2].id,消耗道具ID2} ,{cost[2].num,消耗道具数量2} ,{cost[3].id,消耗道具ID3} ,{cost[3].num,消耗道具数量3} ,{cost[4].id,消耗道具ID4} ,{cost[4].num,消耗道具数量4} ,{cost[5].id,消耗道具ID5} ,{cost[5].num,消耗道具数量5} ,{cost[6].id,消耗道具ID6} ,{cost[6].num,消耗道具数量6}
primary key:
#0 [兵装建造]: id
]]
return{
	[1] = {bdlvreq = 1,cost = {[1] = {id = 3,num = 100}},factory = 1,name = "刀兵",timecost = 6,wide = 1},
	[2] = {bdlvreq = 3,cost = {[1] = {id = 3,num = 100},[2] = {id = 5,num = 10}},factory = 2,name = "轻弓兵",timecost = 6,wide = 1},
	[3] = {bdlvreq = 6,cost = {[1] = {id = 3,num = 200},[2] = {id = 5,num = 20}},factory = 3,name = "轻骑兵",timecost = 12,wide = 2},
	[4] = {bdlvreq = 7,cost = {[1] = {id = 3,num = 500},[2] = {id = 5,num = 50}},factory = 1,name = "床弩",timecost = 60,wide = 5},
	[5] = {bdlvreq = 10,cost = {[1] = {id = 3,num = 400},[2] = {id = 5,num = 40},[3] = {id = 6,num = 40}},factory = 1,name = "禁卫军",timecost = 24,wide = 2},
	[6] = {bdlvreq = 11,cost = {[1] = {id = 3,num = 400},[2] = {id = 5,num = 40},[3] = {id = 6,num = 40}},factory = 2,name = "强弓兵",timecost = 24,wide = 2},
	[7] = {bdlvreq = 12,cost = {[1] = {id = 3,num = 800},[2] = {id = 5,num = 80},[3] = {id = 6,num = 80}},factory = 2,name = "强骑兵",timecost = 48,wide = 4},
	[8] = {bdlvreq = 12,cost = {[1] = {id = 3,num = 800},[2] = {id = 5,num = 80},[3] = {id = 6,num = 80}},factory = 3,name = "强枪兵",timecost = 48,wide = 2},
	[9] = {bdlvreq = 13,cost = {[1] = {id = 3,num = 1000},[2] = {id = 5,num = 100},[3] = {id = 6,num = 100}},factory = 3,name = "冲车",timecost = 120,wide = 10},
	[10] = {bdlvreq = 13,cost = {[1] = {id = 3,num = 1000},[2] = {id = 5,num = 100},[3] = {id = 6,num = 100}},factory = 4,name = "投石车",timecost = 120,wide = 10},
	[11] = {bdlvreq = 15,cost = {[1] = {id = 3,num = 1500},[2] = {id = 5,num = 150},[3] = {id = 6,num = 150},[4] = {id = 7,num = 150}},factory = 1,name = "精锐骑兵",timecost = 90,wide = 3},
	[12] = {bdlvreq = 15,cost = {[1] = {id = 3,num = 1500},[2] = {id = 5,num = 150},[3] = {id = 6,num = 150},[4] = {id = 7,num = 150}},factory = 1,name = "精锐枪兵",timecost = 90,wide = 3},
	[13] = {bdlvreq = 16,cost = {[1] = {id = 3,num = 5000},[2] = {id = 5,num = 500},[3] = {id = 6,num = 500},[4] = {id = 7,num = 500}},factory = 1,name = "霹雳车",timecost = 600,wide = 10},
	[14] = {bdlvreq = 17,cost = {[1] = {id = 3,num = 5000},[2] = {id = 5,num = 500},[3] = {id = 6,num = 500},[4] = {id = 7,num = 500}},factory = 2,name = "井阑",timecost = 600,wide = 10},
	[15] = {bdlvreq = 18,cost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200},[3] = {id = 6,num = 200},[4] = {id = 7,num = 200},[5] = {id = 8,num = 200}},factory = 5,name = "蝙蝠兵",timecost = 120,wide = 2},
	[16] = {bdlvreq = 18,cost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200},[3] = {id = 6,num = 200},[4] = {id = 7,num = 200},[5] = {id = 8,num = 200}},factory = 5,name = "角鹰兽",timecost = 120,wide = 2},
	[17] = {bdlvreq = 18,cost = {[1] = {id = 3,num = 3000},[2] = {id = 5,num = 300},[3] = {id = 6,num = 300},[4] = {id = 7,num = 300},[5] = {id = 7,num = 300}},factory = 6,name = "弓骑兵",timecost = 180,wide = 3},
	[18] = {bdlvreq = 18,cost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200},[3] = {id = 6,num = 200},[4] = {id = 7,num = 200},[5] = {id = 7,num = 200}},factory = 6,name = "斧头兵",timecost = 120,wide = 2},
	[19] = {bdlvreq = 19,cost = {[1] = {id = 3,num = 5000},[2] = {id = 5,num = 500},[3] = {id = 6,num = 500},[4] = {id = 7,num = 500},[5] = {id = 7,num = 500}},factory = 6,name = "象兵",timecost = 600,wide = 10},
	[20] = {bdlvreq = 19,cost = {[1] = {id = 3,num = 5000},[2] = {id = 5,num = 500},[3] = {id = 6,num = 500},[4] = {id = 7,num = 500},[5] = {id = 7,num = 500}},factory = 6,name = "虎豹骑",timecost = 300,wide = 5},
	[21] = {bdlvreq = 19,cost = {[1] = {id = 3,num = 3000},[2] = {id = 5,num = 300},[3] = {id = 6,num = 300},[4] = {id = 7,num = 300},[5] = {id = 7,num = 300}},factory = 6,name = "陷阵营(new)",timecost = 180,wide = 3}
}