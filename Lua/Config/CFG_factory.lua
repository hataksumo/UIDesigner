--[[
--note:
记录装备生产建筑的信息
colums:
{type,建筑类型} ,{name,建筑名字} ,{product,可建造的军备} ,{help_col,辅助列} ,{lv,等级} ,{productive,产能} ,{queuenum,队列数} ,{upcost[1].id,升级资源ID1} ,{upcost[1].num,升级资源数量1} ,{upcost[2].id,升级资源ID2} ,{upcost[2].num,升级资源数量2} ,{upcost[3].id,升级资源ID3} ,{upcost[3].num,升级资源数量3} ,{upcost[4].id,升级资源ID4} ,{upcost[4].num,升级资源数量4} ,{uptime,升级时间}
primary key:
#0 [军工厂]: type
#1 [军工厂等级]: type,help_col,lv
]]
return{
	[1] = {name = "步兵军备厂",product = {1,5,8,12,18,21},lvs = {
			[1] = {productive = 20,queuenum = 3,upcost = {[1] = {id = 3,num = 100}},uptime = 20},
			[2] = {productive = 50,queuenum = 3,upcost = {[1] = {id = 3,num = 200}},uptime = 40},
			[3] = {productive = 100,queuenum = 3,upcost = {[1] = {id = 3,num = 400}},uptime = 80},
			[4] = {productive = 150,queuenum = 3,upcost = {[1] = {id = 3,num = 600}},uptime = 120},
			[5] = {productive = 200,queuenum = 4,upcost = {[1] = {id = 3,num = 1200},[2] = {id = 5,num = 120}},uptime = 180},
			[6] = {productive = 250,queuenum = 4,upcost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200}},uptime = 240},
			[7] = {productive = 300,queuenum = 4,upcost = {[1] = {id = 3,num = 2400},[2] = {id = 5,num = 240}},uptime = 300},
			[8] = {productive = 350,queuenum = 4,upcost = {[1] = {id = 3,num = 2800},[2] = {id = 5,num = 280}},uptime = 600},
			[9] = {productive = 400,queuenum = 4,upcost = {[1] = {id = 3,num = 3200},[2] = {id = 5,num = 320}},uptime = 900},
			[10] = {productive = 500,queuenum = 5,upcost = {[1] = {id = 3,num = 4400},[2] = {id = 5,num = 440},[3] = {id = 5,num = 440}},uptime = 1200},
			[11] = {productive = 750,queuenum = 5,upcost = {[1] = {id = 3,num = 20000},[2] = {id = 5,num = 2000},[3] = {id = 5,num = 2000}},uptime = 2700},
			[12] = {productive = 1000,queuenum = 5,upcost = {[1] = {id = 3,num = 40000},[2] = {id = 5,num = 4000},[3] = {id = 5,num = 4000}},uptime = 3600},
			[13] = {productive = 1250,queuenum = 5,upcost = {[1] = {id = 3,num = 64000},[2] = {id = 5,num = 6400},[3] = {id = 5,num = 6400}},uptime = 4500},
			[14] = {productive = 1500,queuenum = 5,upcost = {[1] = {id = 3,num = 90000},[2] = {id = 5,num = 9000},[3] = {id = 5,num = 9000}},uptime = 4500},
			[15] = {productive = 2000,queuenum = 7,upcost = {[1] = {id = 3,num = 120000},[2] = {id = 5,num = 12000},[3] = {id = 5,num = 12000},[4] = {id = 6,num = 12000}},uptime = 4500},
			[16] = {productive = 2500,queuenum = 7,upcost = {[1] = {id = 3,num = 162000},[2] = {id = 5,num = 16200},[3] = {id = 5,num = 16200},[4] = {id = 6,num = 16200}},uptime = 4500},
			[17] = {productive = 3000,queuenum = 7,upcost = {[1] = {id = 3,num = 220000},[2] = {id = 5,num = 22000},[3] = {id = 5,num = 22000},[4] = {id = 6,num = 22000}},uptime = 4500},
			[18] = {productive = 3500,queuenum = 7,upcost = {[1] = {id = 3,num = 300000},[2] = {id = 5,num = 30000},[3] = {id = 5,num = 30000},[4] = {id = 6,num = 30000}},uptime = 4500},
			[19] = {productive = 4000,queuenum = 7,upcost = {[1] = {id = 3,num = 400000},[2] = {id = 5,num = 40000},[3] = {id = 5,num = 40000},[4] = {id = 6,num = 40000}},uptime = 4500},
			[20] = {productive = 5000,queuenum = 10,upcost = {[1] = {id = 3,num = 500000},[2] = {id = 5,num = 50000},[3] = {id = 5,num = 50000},[4] = {id = 6,num = 50000}},uptime = 4500}
		}},
	[2] = {name = "弓兵装备厂",product = {2,6,15,16,17},lvs = {
			[1] = {productive = 20,queuenum = 3,upcost = {[1] = {id = 3,num = 100}},uptime = 20},
			[2] = {productive = 50,queuenum = 3,upcost = {[1] = {id = 3,num = 200}},uptime = 40},
			[3] = {productive = 100,queuenum = 3,upcost = {[1] = {id = 3,num = 400}},uptime = 80},
			[4] = {productive = 150,queuenum = 3,upcost = {[1] = {id = 3,num = 600}},uptime = 120},
			[5] = {productive = 200,queuenum = 4,upcost = {[1] = {id = 3,num = 1200},[2] = {id = 5,num = 120}},uptime = 180},
			[6] = {productive = 250,queuenum = 4,upcost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200}},uptime = 240},
			[7] = {productive = 300,queuenum = 4,upcost = {[1] = {id = 3,num = 2400},[2] = {id = 5,num = 240}},uptime = 300},
			[8] = {productive = 350,queuenum = 4,upcost = {[1] = {id = 3,num = 2800},[2] = {id = 5,num = 280}},uptime = 600},
			[9] = {productive = 400,queuenum = 4,upcost = {[1] = {id = 3,num = 3200},[2] = {id = 5,num = 320}},uptime = 900},
			[10] = {productive = 500,queuenum = 5,upcost = {[1] = {id = 3,num = 4400},[2] = {id = 5,num = 440},[3] = {id = 5,num = 440}},uptime = 1200},
			[11] = {productive = 750,queuenum = 5,upcost = {[1] = {id = 3,num = 20000},[2] = {id = 5,num = 2000},[3] = {id = 5,num = 2000}},uptime = 2700},
			[12] = {productive = 1000,queuenum = 5,upcost = {[1] = {id = 3,num = 40000},[2] = {id = 5,num = 4000},[3] = {id = 5,num = 4000}},uptime = 3600},
			[13] = {productive = 1250,queuenum = 5,upcost = {[1] = {id = 3,num = 64000},[2] = {id = 5,num = 6400},[3] = {id = 5,num = 6400}},uptime = 4500},
			[14] = {productive = 1500,queuenum = 5,upcost = {[1] = {id = 3,num = 90000},[2] = {id = 5,num = 9000},[3] = {id = 5,num = 9000}},uptime = 4500},
			[15] = {productive = 2000,queuenum = 7,upcost = {[1] = {id = 3,num = 120000},[2] = {id = 5,num = 12000},[3] = {id = 5,num = 12000},[4] = {id = 6,num = 12000}},uptime = 4500},
			[16] = {productive = 2500,queuenum = 7,upcost = {[1] = {id = 3,num = 162000},[2] = {id = 5,num = 16200},[3] = {id = 5,num = 16200},[4] = {id = 6,num = 16200}},uptime = 4500},
			[17] = {productive = 3000,queuenum = 7,upcost = {[1] = {id = 3,num = 220000},[2] = {id = 5,num = 22000},[3] = {id = 5,num = 22000},[4] = {id = 6,num = 22000}},uptime = 4500},
			[18] = {productive = 3500,queuenum = 7,upcost = {[1] = {id = 3,num = 300000},[2] = {id = 5,num = 30000},[3] = {id = 5,num = 30000},[4] = {id = 6,num = 30000}},uptime = 4500},
			[19] = {productive = 4000,queuenum = 7,upcost = {[1] = {id = 3,num = 400000},[2] = {id = 5,num = 40000},[3] = {id = 5,num = 40000},[4] = {id = 6,num = 40000}},uptime = 4500},
			[20] = {productive = 5000,queuenum = 10,upcost = {[1] = {id = 3,num = 500000},[2] = {id = 5,num = 50000},[3] = {id = 5,num = 50000},[4] = {id = 6,num = 50000}},uptime = 4500}
		}},
	[3] = {name = "骑兵装备厂",product = {3,7,11,19,20},lvs = {
			[1] = {productive = 20,queuenum = 3,upcost = {[1] = {id = 3,num = 100}},uptime = 20},
			[2] = {productive = 50,queuenum = 3,upcost = {[1] = {id = 3,num = 200}},uptime = 40},
			[3] = {productive = 100,queuenum = 3,upcost = {[1] = {id = 3,num = 400}},uptime = 80},
			[4] = {productive = 150,queuenum = 3,upcost = {[1] = {id = 3,num = 600}},uptime = 120},
			[5] = {productive = 200,queuenum = 4,upcost = {[1] = {id = 3,num = 1200},[2] = {id = 5,num = 120}},uptime = 180},
			[6] = {productive = 250,queuenum = 4,upcost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200}},uptime = 240},
			[7] = {productive = 300,queuenum = 4,upcost = {[1] = {id = 3,num = 2400},[2] = {id = 5,num = 240}},uptime = 300},
			[8] = {productive = 350,queuenum = 4,upcost = {[1] = {id = 3,num = 2800},[2] = {id = 5,num = 280}},uptime = 600},
			[9] = {productive = 400,queuenum = 4,upcost = {[1] = {id = 3,num = 3200},[2] = {id = 5,num = 320}},uptime = 900},
			[10] = {productive = 500,queuenum = 5,upcost = {[1] = {id = 3,num = 4400},[2] = {id = 5,num = 440},[3] = {id = 5,num = 440}},uptime = 1200},
			[11] = {productive = 750,queuenum = 5,upcost = {[1] = {id = 3,num = 20000},[2] = {id = 5,num = 2000},[3] = {id = 5,num = 2000}},uptime = 2700},
			[12] = {productive = 1000,queuenum = 5,upcost = {[1] = {id = 3,num = 40000},[2] = {id = 5,num = 4000},[3] = {id = 5,num = 4000}},uptime = 3600},
			[13] = {productive = 1250,queuenum = 5,upcost = {[1] = {id = 3,num = 64000},[2] = {id = 5,num = 6400},[3] = {id = 5,num = 6400}},uptime = 4500},
			[14] = {productive = 1500,queuenum = 5,upcost = {[1] = {id = 3,num = 90000},[2] = {id = 5,num = 9000},[3] = {id = 5,num = 9000}},uptime = 4500},
			[15] = {productive = 2000,queuenum = 7,upcost = {[1] = {id = 3,num = 120000},[2] = {id = 5,num = 12000},[3] = {id = 5,num = 12000},[4] = {id = 6,num = 12000}},uptime = 4500},
			[16] = {productive = 2500,queuenum = 7,upcost = {[1] = {id = 3,num = 162000},[2] = {id = 5,num = 16200},[3] = {id = 5,num = 16200},[4] = {id = 6,num = 16200}},uptime = 4500},
			[17] = {productive = 3000,queuenum = 7,upcost = {[1] = {id = 3,num = 220000},[2] = {id = 5,num = 22000},[3] = {id = 5,num = 22000},[4] = {id = 6,num = 22000}},uptime = 4500},
			[18] = {productive = 3500,queuenum = 7,upcost = {[1] = {id = 3,num = 300000},[2] = {id = 5,num = 30000},[3] = {id = 5,num = 30000},[4] = {id = 6,num = 30000}},uptime = 4500},
			[19] = {productive = 4000,queuenum = 7,upcost = {[1] = {id = 3,num = 400000},[2] = {id = 5,num = 40000},[3] = {id = 5,num = 40000},[4] = {id = 6,num = 40000}},uptime = 4500},
			[20] = {productive = 5000,queuenum = 10,upcost = {[1] = {id = 3,num = 500000},[2] = {id = 5,num = 50000},[3] = {id = 5,num = 50000},[4] = {id = 6,num = 50000}},uptime = 4500}
		}},
	[4] = {name = "机械制造厂",product = {4,9,10,13,14},lvs = {
			[1] = {productive = 20,queuenum = 3,upcost = {[1] = {id = 3,num = 100}},uptime = 20},
			[2] = {productive = 50,queuenum = 3,upcost = {[1] = {id = 3,num = 200}},uptime = 40},
			[3] = {productive = 100,queuenum = 3,upcost = {[1] = {id = 3,num = 400}},uptime = 80},
			[4] = {productive = 150,queuenum = 3,upcost = {[1] = {id = 3,num = 600}},uptime = 120},
			[5] = {productive = 200,queuenum = 4,upcost = {[1] = {id = 3,num = 1200},[2] = {id = 5,num = 120}},uptime = 180},
			[6] = {productive = 250,queuenum = 4,upcost = {[1] = {id = 3,num = 2000},[2] = {id = 5,num = 200}},uptime = 240},
			[7] = {productive = 300,queuenum = 4,upcost = {[1] = {id = 3,num = 2400},[2] = {id = 5,num = 240}},uptime = 300},
			[8] = {productive = 350,queuenum = 4,upcost = {[1] = {id = 3,num = 2800},[2] = {id = 5,num = 280}},uptime = 600},
			[9] = {productive = 400,queuenum = 4,upcost = {[1] = {id = 3,num = 3200},[2] = {id = 5,num = 320}},uptime = 900},
			[10] = {productive = 500,queuenum = 5,upcost = {[1] = {id = 3,num = 4400},[2] = {id = 5,num = 440},[3] = {id = 5,num = 440}},uptime = 1200},
			[11] = {productive = 750,queuenum = 5,upcost = {[1] = {id = 3,num = 20000},[2] = {id = 5,num = 2000},[3] = {id = 5,num = 2000}},uptime = 2700},
			[12] = {productive = 1000,queuenum = 5,upcost = {[1] = {id = 3,num = 40000},[2] = {id = 5,num = 4000},[3] = {id = 5,num = 4000}},uptime = 3600},
			[13] = {productive = 1250,queuenum = 5,upcost = {[1] = {id = 3,num = 64000},[2] = {id = 5,num = 6400},[3] = {id = 5,num = 6400}},uptime = 4500},
			[14] = {productive = 1500,queuenum = 5,upcost = {[1] = {id = 3,num = 90000},[2] = {id = 5,num = 9000},[3] = {id = 5,num = 9000}},uptime = 4500},
			[15] = {productive = 2000,queuenum = 7,upcost = {[1] = {id = 3,num = 120000},[2] = {id = 5,num = 12000},[3] = {id = 5,num = 12000},[4] = {id = 6,num = 12000}},uptime = 4500},
			[16] = {productive = 2500,queuenum = 7,upcost = {[1] = {id = 3,num = 162000},[2] = {id = 5,num = 16200},[3] = {id = 5,num = 16200},[4] = {id = 6,num = 16200}},uptime = 4500},
			[17] = {productive = 3000,queuenum = 7,upcost = {[1] = {id = 3,num = 220000},[2] = {id = 5,num = 22000},[3] = {id = 5,num = 22000},[4] = {id = 6,num = 22000}},uptime = 4500},
			[18] = {productive = 3500,queuenum = 7,upcost = {[1] = {id = 3,num = 300000},[2] = {id = 5,num = 30000},[3] = {id = 5,num = 30000},[4] = {id = 6,num = 30000}},uptime = 4500},
			[19] = {productive = 4000,queuenum = 7,upcost = {[1] = {id = 3,num = 400000},[2] = {id = 5,num = 40000},[3] = {id = 5,num = 40000},[4] = {id = 6,num = 40000}},uptime = 4500},
			[20] = {productive = 5000,queuenum = 10,upcost = {[1] = {id = 3,num = 500000},[2] = {id = 5,num = 50000},[3] = {id = 5,num = 50000},[4] = {id = 6,num = 50000}},uptime = 4500}
		}}
}