--[[
--note:
各阵法的配置
各阵法阵眼效果的配置
colums:
{McId,阵眼ID} ,{Name,阵法名称} ,{Icon,阵法图标} ,{LearnCost[1].Id,消耗道具ID1} ,{LearnCost[1].Val,消耗道具数量1} ,{LearnCost[2].Id,消耗道具ID2} ,{LearnCost[2].Val,消耗道具数量2} ,{HbIdx,货币下标} ,{Order,顺位ID} ,{Pos,阵位} ,{Lv,等级} ,{Prop[1].Id,属性ID1} ,{Prop[1].Val,属性值1} ,{Prop[2].Id,属性ID2} ,{Prop[2].Val,属性值2} ,{Prop[3].Id,属性ID3} ,{Prop[3].Val,属性值3} ,{Desc,描述}
primary key:
#0 [阵法]: McId
#1 [阵眼效果]: McId,Pos,Lv
]]
local _T = LangUtil.Language
return{
	[101] = {
		Name = "九襄地玄",
		Icon = "img1.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608001,Val = 100}},
		HbIdx = 1,
		Order = 1,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	},
	[102] = {
		Name = "卫公折冲",
		Icon = "img2.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608002,Val = 100}},
		HbIdx = 1,
		Order = 2,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	},
	[103] = {
		Name = "金刚伏魔",
		Icon = "img3.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608003,Val = 100}},
		HbIdx = 1,
		Order = 3,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	},
	[104] = {
		Name = "花月凌风",
		Icon = "img4.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608004,Val = 100}},
		HbIdx = 1,
		Order = 4,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	},
	[105] = {
		Name = "落星惊鸿",
		Icon = "img5.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608005,Val = 100}},
		HbIdx = 1,
		Order = 5,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	},
	[106] = {
		Name = "北斗七星",
		Icon = "img6.jpg",
		LearnCost = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1608006,Val = 100}},
		HbIdx = 1,
		Order = 6,
		[1] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[2] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		},
		[3] = {
			[1] = {Prop = {[1] = {Id = 101,Val = 10},[2] = {Id = 102,Val = 5},[3] = {Id = 103,Val = 50}},Desc = "攻击力+10  防御力+5  生命值+50"},
			[2] = {Prop = {[1] = {Id = 101,Val = 20},[2] = {Id = 102,Val = 10},[3] = {Id = 103,Val = 100}},Desc = "攻击力+20  防御力+10  生命值+100"},
			[3] = {Prop = {[1] = {Id = 101,Val = 30},[2] = {Id = 102,Val = 15},[3] = {Id = 103,Val = 150}},Desc = "攻击力+30  防御力+15  生命值+150"},
			[4] = {Prop = {[1] = {Id = 101,Val = 40},[2] = {Id = 102,Val = 20},[3] = {Id = 103,Val = 200}},Desc = "攻击力+40  防御力+20  生命值+200"},
			[5] = {Prop = {[1] = {Id = 101,Val = 50},[2] = {Id = 102,Val = 25},[3] = {Id = 103,Val = 250}},Desc = "攻击力+50  防御力+25  生命值+250"},
			[6] = {Prop = {[1] = {Id = 101,Val = 60},[2] = {Id = 102,Val = 30},[3] = {Id = 103,Val = 300}},Desc = "攻击力+60  防御力+30  生命值+300"},
			[7] = {Prop = {[1] = {Id = 101,Val = 70},[2] = {Id = 102,Val = 35},[3] = {Id = 103,Val = 350}},Desc = "攻击力+70  防御力+35  生命值+350"},
			[8] = {Prop = {[1] = {Id = 101,Val = 80},[2] = {Id = 102,Val = 40},[3] = {Id = 103,Val = 400}},Desc = "攻击力+80  防御力+40  生命值+400"},
			[9] = {Prop = {[1] = {Id = 101,Val = 90},[2] = {Id = 102,Val = 45},[3] = {Id = 103,Val = 450}},Desc = "攻击力+90  防御力+45  生命值+450"}
		}
	}
}