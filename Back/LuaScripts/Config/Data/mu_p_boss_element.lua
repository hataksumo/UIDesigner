--[[
output from excel MuPBoss.千机黑刹.xlsx
--note:

colums:
{ID,ID} ,{ElementName,可交互元素名} ,{ElementType,1 - 障碍物
2 - 建筑
3 - 宝箱
4 - 道具
5 - 机关
6 - 法阵
7 - 获得随机道具
8 - 精英
9 - 首领} ,{ElementModel,可交互元素在探索地图中的模型} ,{ElementLogo,可交互元素在小地图中的图标} ,{ElementIcon,可交互元素在UI中的图标} ,{ElementEventDes,有选项的事件描述
无选项的事件飘字} ,{EventOptionDes[1],选项1描述
探索道具Tips文本} ,{EventOption[1].ID,执行的功能ID
选项点选执行功能
道具使用功能
1001 - 消耗道具，掉落物品
2001 - 消耗行动力，触发事件
2002 - 消耗行动力，掉落物品
5001 - 随机刷新元素
9999 - 开始战斗} ,{EventOption[1].Param1,选项1参数1} ,{EventOption[1].Param2,选项1参数2} ,{EventOptionDes[2],选择2描述} ,{EventOption[2].ID,执行的功能ID
选项点选执行功能
道具使用功能
1001 - 消耗道具，掉落物品
2001 - 消耗行动力，触发事件
2002 - 消耗行动力，掉落物品
5001 - 随机刷新元素} ,{EventOption[2].Param1,选项2参数1} ,{EventOption[2].Param2,选项2参数2} ,{EventOptionDes[3],选择3描述} ,{EventOption[3].ID,执行的功能ID} ,{EventOption[3].Param,选项3参数1}
primary key:
#0 [千机黑刹元素配置表]: ID
]]
local _T = LangUtil.Language
return{
	[1010] = {ID = 1010,ElementName = _T("石块"),ElementType = 1,ElementModel = "barrier",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】前方遇到【石块】堵路，请选择：",EventOptionDes = {[1] = "【1】将其摧毁：消耗%d个【斧头】",[2] = "【2】绕开它"},EventOption = {[1] = {ID = 1001,Param1 = 2,Param2 = 4050},[2] = {ID = 0}}},
	[1020] = {ID = 1020,ElementName = _T("大树"),ElementType = 1,ElementModel = "barrier",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】前方遇到一棵【大树】，请选择：",EventOptionDes = {[1] = "【1】将其摧毁：消耗%d个【斧头】",[2] = "【2】绕开它"},EventOption = {[1] = {ID = 1001,Param1 = 1,Param2 = 4050},[2] = {ID = 0}}},
	[2010] = {ID = 2010,ElementName = _T("圣坛"),ElementType = 2,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【圣坛】，这里散发淡淡的光芒，你感到可以从中获得新的力量",EventOptionDes = {[1] = "【1】领悟力量：扣除%d点行动力，随机获得一种祝福状态",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 2011,Param1 = 5,Param2 = 4},[2] = {ID = 0}}},
	[2020] = {ID = 2020,ElementName = _T("商店"),ElementType = 2,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【商店】，但这里已经人去楼空了",EventOptionDes = {[1] = "【1】搜索：扣除%d点行动力，随机获得一个道具",[2] = "【2】离开"},EventOption = {[1] = {ID = 2001,Param1 = 5,Param2 = 7010},[2] = {ID = 0}}},
	[2030] = {ID = 2030,ElementName = _T("民居"),ElementType = 2,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【民居】，主人很热情，可以在这休息一下，或者……",EventOptionDes = {[1] = "【1】休息：扣除%d点行动力，获得【身轻如燕】状态",[2] = "【2】打劫：随机获得道具，同时随机获得一种诅咒状态"},EventOption = {[1] = {ID = 2031,Param1 = 5,Param2 = 201},[2] = {ID = 2032,Param1 = 3,Param2 = 7010}}},
	[2040] = {ID = 2040,ElementName = _T("诊所"),ElementType = 2,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【诊所】，但这里已经没有医生，只能自己治疗了；请选择治疗方案：",EventOptionDes = {[1] = "【1】简单包扎：消耗%d点行动力，每位寄灵人恢复%d%%生命值",[2] = "【2】消耗%d点行动力，恢复%d%%生命值，移除所有负面状态",[3] = "【3】暂不治疗"},EventOption = {[1] = {ID = 2041,Param1 = 10,Param2 = 10},[2] = {ID = 2042,Param1 = 50,Param2 = 50},[3] = {ID = 0}}},
	[2050] = {ID = 2050,ElementName = _T("离火柱"),ElementType = 2,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【离火柱】，离火仿佛烧开了空间之门",EventOptionDes = {[1] = "【1】变更阵容：扣除%d点行动力，只能更换当前队伍的阵容",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 2051,Param1 = 10},[2] = {ID = 0}}},
	[3010] = {ID = 3010,ElementName = _T("铜质宝箱"),ElementType = 3,ElementModel = "event",ElementLogo = "ui_t_Stage_017",ElementIcon = "ui_t_Stage_017",ElementEventDes = "是否打开【铜质宝箱】？",EventOptionDes = {[1] = "【1】打开：扣除%d点行动力",[2] = "【2】暂不打开"},EventOption = {[1] = {ID = 2001,Param1 = 5,Param2 = 7010},[2] = {ID = 0}}},
	[3020] = {ID = 3020,ElementName = _T("银质宝箱"),ElementType = 3,ElementModel = "event",ElementLogo = "ui_t_Stage_018",ElementIcon = "ui_t_Stage_018",ElementEventDes = "是否打开【银质宝箱】？",EventOptionDes = {[1] = "【1】打开：扣除%d点行动力",[2] = "【2】暂不打开"},EventOption = {[1] = {ID = 2001,Param1 = 10,Param2 = 7010},[2] = {ID = 0}}},
	[3030] = {ID = 3030,ElementName = _T("金质宝箱"),ElementType = 3,ElementModel = "event",ElementLogo = "ui_t_Stage_019",ElementIcon = "ui_t_Stage_019",ElementEventDes = "是否打开【金质宝箱】？",EventOptionDes = {[1] = "【1】打开：扣除%d点行动力",[2] = "【2】暂不打开"},EventOption = {[1] = {ID = 2001,Param1 = 15,Param2 = 7010},[2] = {ID = 0}}},
	[3110] = {ID = 3110,ElementName = _T("上锁的银质宝箱"),ElementType = 3,ElementModel = "event",ElementLogo = "ui_t_Stage_023",ElementIcon = "ui_t_Stage_023",ElementEventDes = "这个【银质宝箱】被锁住了，请选择一种打开方式：",EventOptionDes = {[1] = "【1】正常打开：消耗%d个【钥匙】",[2] = "【2】暴力打开：扣除%d点行动力",[3] = "【3】暂不打开"},EventOption = {[1] = {ID = 1001,Param1 = 1,Param2 = 4060},[2] = {ID = 2002,Param1 = 5},[3] = {ID = 0}}},
	[3120] = {ID = 3120,ElementName = _T("上锁的金质宝箱"),ElementType = 3,ElementModel = "event",ElementLogo = "ui_t_Stage_024",ElementIcon = "ui_t_Stage_024",ElementEventDes = "这个【金质宝箱】被锁住了，请选择一种打开方式：",EventOptionDes = {[1] = "【1】正常打开：消耗%d个【钥匙】",[2] = "【2】暴力打开：扣除%d点行动力",[3] = "【3】.暂不打开"},EventOption = {[1] = {ID = 1001,Param1 = 2,Param2 = 4060},[2] = {ID = 2002,Param1 = 10},[3] = {ID = 0}}},
	[4010] = {ID = 4010,ElementName = _T("生命药水"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【生命药水】",EventOptionDes = {[1] = "点击使用，为当前队伍全员回复%d%%生命值"},EventOption = {[1] = {Param1 = 50}}},
	[4020] = {ID = 4020,ElementName = _T("体力药水"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【体力药水】",EventOptionDes = {[1] = "点击使用，为当前队伍增加%d点行动力"},EventOption = {[1] = {Param1 = 100}}},
	[4030] = {ID = 4030,ElementName = _T("强体药剂"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【强体药剂】",EventOptionDes = {[1] = "点击使用，移除当前队伍的【泰山压顶】状态"},EventOption = {[1] = {Param1 = 101}}},
	[4040] = {ID = 4040,ElementName = _T("驱散卷轴"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【驱散卷轴】",EventOptionDes = {[1] = "点击使用，随机移除当前队伍的一个诅咒状态"},EventOption = {[1] = {Param1 = 3}}},
	[4050] = {ID = 4050,ElementName = _T("斧头"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【斧头】",EventOptionDes = {[1] = "劈石伐木的利器"}},
	[4060] = {ID = 4060,ElementName = _T("钥匙"),ElementType = 4,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【钥匙】",EventOptionDes = {[1] = "没有一把钥匙打不开的宝箱；如果有，那就两把"}},
	[5010] = {ID = 5010,ElementName = _T("机关1"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】踩到了一个【机关】，隐约听到有“咔咔”声传来……",EventOption = {[1] = {ID = 5001,Param1 = 3,Param2 = 6010}}},
	[5011] = {ID = 5011,ElementName = _T("机关2"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】踩到了一个【机关】，隐约听到有“咔咔”声传来……",EventOption = {[1] = {ID = 5001,Param1 = 2,Param2 = 6020}}},
	[5020] = {ID = 5020,ElementName = _T("毒刺"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】一不留神，踩到了地上的毒刺……",EventOption = {[1] = {ID = 5020,Param1 = 101}}},
	[5030] = {ID = 5030,ElementName = _T("骨头"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】不知踩到了什么，好像有人在说‘我诅咒你……’",EventOption = {[1] = {ID = 5030,Param1 = 3}}},
	[5040] = {ID = 5040,ElementName = _T("捕兽夹"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】受到【捕兽夹】攻击，损失%d点生命值",EventOption = {[1] = {ID = 5040,Param1 = 20}}},
	[5050] = {ID = 5050,ElementName = _T("地雷"),ElementType = 5,ElementModel = "event",ElementEventDes = "【%s】受到【地雷】攻击，损失%d点生命值",EventOption = {[1] = {ID = 5050,Param1 = 9,Param2 = 20}}},
	[6010] = {ID = 6010,ElementName = _T("削弱属性法阵"),ElementType = 6,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【削弱属性法阵】，3个同名法阵中均有队伍时，移除%s的【王者祝福】；若%s未获得王者祝福，则使其获得【虚弱诅咒】，全属性降低%d%",EventOptionDes = {[1] = "【1】在此等待：该队伍在法阵生效前，将无法移动",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 6001}}},
	[6011] = {ID = 6011,ElementName = _T("降低攻击法阵"),ElementType = 6,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【降低攻击法阵】，3个同名法阵中均有队伍时，移除%s的【攻击祝福】；若%s未获得攻击祝福，则使其获得【无力诅咒】，攻击降低%d%",EventOptionDes = {[1] = "【1】在此等待：该队伍在法阵生效前，将无法移动",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 6002}}},
	[6012] = {ID = 6012,ElementName = _T("降低防御法阵"),ElementType = 6,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【降低防御法阵】，3个同名法阵中均有队伍时，移除%s的【防御祝福】；若%s未获得防御祝福，则使其获得【迟钝诅咒】，防御降低%d%",EventOptionDes = {[1] = "【1】在此等待：该队伍在法阵生效前，将无法移动",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 6003}}},
	[6013] = {ID = 6013,ElementName = _T("减少生命法阵"),ElementType = 6,ElementModel = "event",ElementLogo = "ui_t_c2_648",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】进入了【减少生命法阵】，3个同名法阵中均有队伍时，移除%s的【生命祝福】；若%s未获得生命祝福，则使其获得【衰老诅咒】，生命降低%d%",EventOptionDes = {[1] = "【1】在此等待：该队伍在法阵生效前，将无法移动",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 6004}}},
	[7010] = {ID = 7010,ElementName = _T("随机探索道具"),ElementType = 7,ElementModel = "event",ElementIcon = "ui_t_c2_648",ElementEventDes = "【%s】捡到1个【%s】"},
	[8010] = {ID = 8010,ElementName = _T("精英"),ElementType = 8,ElementEventDes = "【%s】遇到到【%s】，是否开始战斗？",EventOptionDes = {[1] = "【1】开始战斗",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 9999},[2] = {ID = 0}}},
	[9010] = {ID = 9010,ElementName = _T("首领"),ElementType = 9,ElementEventDes = "【%s】遇到到【%s】，是否开始首领战？",EventOptionDes = {[1] = "【1】开始战斗",[2] = "【2】过会再来"},EventOption = {[1] = {ID = 9999},[2] = {ID = 0}}}
}