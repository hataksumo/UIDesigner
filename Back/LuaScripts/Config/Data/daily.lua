--[[
output from excel daily.日常任务.xlsx
--note:
客户端配置每日任务的表
colums:
{ID,唯一键} ,{Name,任务名称} ,{Des,任务描述} ,{ModuleType,模块类型
1、卡牌层
9001、国战-赛季1} ,{LvLimit,等级限制} ,{Condition,条件类型} ,{Param[1],达成条件参数1定义} ,{Param[2],达成条件参数2定义} ,{Reward[1].id,掉落ID1} ,{Reward[1].val,掉落数量1} ,{UserExp,队伍经验}
primary key:
#0 [日常任务]: ID
]]
local _T = LangUtil.Language
return{
	[101] = {Name = _T("登录"),Des = _T("登陆游戏，感受镇魂街的魅力"),ModuleType = 1,LvLimit = 32,Condition = 4090101,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[102] = {Name = _T("购买游戏币"),Des = _T("进行%s次游戏币购买"),ModuleType = 1,LvLimit = 32,Condition = 4080101,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[103] = {Name = _T("世界留言"),Des = _T("进行%s次世界喊话"),ModuleType = 1,LvLimit = 32,Condition = 4020101,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[104] = {Name = _T("使用1次牧守令"),Des = _T("使用%d次牧守令进行快速挂机"),ModuleType = 1,LvLimit = 32,Condition = 2040201,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[105] = {Name = _T("守护灵升级"),Des = _T("进行%s次守护灵升级"),ModuleType = 1,LvLimit = 32,Condition = 1010101,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[106] = {Name = _T("技能升级"),Des = _T("进行%s次插槽技能升级"),ModuleType = 1,LvLimit = 32,Condition = 1040201,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[107] = {Name = _T("专属武器强化"),Des = _T("进行%s次专属武器强化"),ModuleType = 1,LvLimit = 32,Condition = 1030101,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[108] = {Name = _T("获取技能经验"),Des = _T("进行%s次技能经验分解"),ModuleType = 1,LvLimit = 32,Condition = 1040401,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[109] = {Name = _T("神器升级"),Des = _T("进行%s次神器部件升级"),ModuleType = 1,LvLimit = 32,Condition = 1020201,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[110] = {Name = _T("普通守护灵扭蛋"),Des = _T("进行%s次普通守护灵扭蛋"),ModuleType = 1,LvLimit = 32,Condition = 4060103,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[111] = {Name = _T("杂货店采购"),Des = _T("杂货店购买%s次商品"),ModuleType = 1,LvLimit = 32,Condition = 4010102,Param = {[1] = 3,[2] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[112] = {Name = _T("恶灵入侵"),Des = _T("击杀%d次恶灵"),ModuleType = 1,LvLimit = 32,Condition = 2030101,Param = {[1] = 2,[2] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[113] = {Name = _T("芦花古楼"),Des = _T("参与%s次芦花古楼"),ModuleType = 1,LvLimit = 32,Condition = 2020102,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[114] = {Name = _T("个人竞技"),Des = _T("参与%s次个人竞技"),ModuleType = 1,LvLimit = 32,Condition = 3010201,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[115] = {Name = _T("实时竞技"),Des = _T("参与%s次实时竞技"),ModuleType = 1,LvLimit = 32,Condition = 3020201,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[116] = {Name = _T("征募"),Des = _T("进行%s次征募"),ModuleType = 9001,LvLimit = 40,Condition = 90304,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[117] = {Name = _T("讨伐"),Des = _T("攻打%s次讨伐区野怪"),ModuleType = 9001,LvLimit = 40,Condition = 90203,Param = {[1] = 1,[2] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[118] = {Name = _T("攻打资源点"),Des = _T("攻打%s次任意资源点"),ModuleType = 9001,LvLimit = 40,Condition = 90208,Param = {[1] = 1,[2] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[119] = {Name = _T("调动"),Des = _T("进行%s次队伍调动"),ModuleType = 9001,LvLimit = 40,Condition = 90209,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1},
	[120] = {Name = _T("资源采集"),Des = _T("进行%s次队资源采集"),ModuleType = 9001,LvLimit = 40,Condition = 90106,Param = {[1] = 1},Reward = {[1] = {id = 1401002,val = 100}},UserExp = 1}
}