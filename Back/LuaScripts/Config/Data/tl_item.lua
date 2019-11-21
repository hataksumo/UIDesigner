--[[
output from excel item.道具.xlsx
--note:

colums:
{ID,唯一键} ,{Name,名字} ,{InitNum,初始数量} ,{Icon,图标} ,{ItemType,物品类型} ,{Quality,品级1-绿2-蓝3-紫4-橙} ,{ShortDes,简单描述} ,{CanOverlap,最大叠加数量：0-无限制，其他数量-叠加上限} ,{ItemSource,物品获得方式} ,{CanSell,是否可出售} ,{SellGetCoin,出售单价} ,{ShowBag,是否在背包中显示0不显示1显示} ,{ShowBagTab,在背包中那一页显示1-材料2-寄灵人碎片3-守护灵碎片4-消耗5-宝箱6-装备
9-国战资源，显示用，不进入背包} ,{UseType,使用类型
0 不可用
1 宝箱
2 体力药水} ,{Param,参数列表} ,{TL_type,消失类型(-1不消失，1是时间消失，2是日期消失)} ,{TL_time,消失时间（秒）} ,{TL_date,消失日期} ,{AddJump.id,加号跳转功能ID
1.打开UI  2.商品ID  3.打开关卡} ,{AddJump.param,加号跳转参数} ,{Des,详情描述} ,{JumpId[1],跳转ID} ,{JumpId[2],跳转ID}
primary key:
#0 [探查剧情道具]: ID
]]
local _T = LangUtil.Language
return{
	[101010121] = {Name = _T("现场情况"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("地面被水冲过，并无明显脚印痕迹")},--现场情况
	[101010122] = {Name = _T("尸体情况"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("死亡时间，17日晚21:00左右。尸体身上有淤青，疑似生前与人搏斗过，头部受创有明显血迹")},--尸体情况
	[101010123] = {Name = _T("草丛中的白手套"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("普通医用白手套")},--草丛中的白手套
	[101010124] = {Name = _T("白手套指纹"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("数字和被害人生日一样")},--白手套指纹
	[101010125] = {Name = _T("船票"),Icon = "head_nmj_1102050",ItemType = 3,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("神秘的船票，可以通往河水下游")},--船票
	[101010126] = {Name = _T("锁着的死者手机"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("手机未解锁")},--锁着的死者手机
	[101010127] = {Name = _T("解锁的手机"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("20：30拨出电话给刘姗姗，通话时间两分钟\r\n20:45发给沈梦的信息 对不起，刚才对你说话语气重了些，那件事就当是酒后一时糊涂，忘了吧，希望我们还是朋友")},--解锁的手机
	[101010128] = {Name = _T("死者背包"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("背包里有1管已开封的空胰岛素和1管崭新的胰岛素针剂")},--死者背包
	[101010129] = {Name = _T("漂流物"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("用过的针剂，一双透明手套，2支用过的速效胰岛素针剂，一针30单位")},--漂流物
	[101010130] = {Name = _T("病历"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("秦漠是糖尿病病人，需要长期注射胰岛素")},--病历
	[101010131] = {Name = _T("详细尸检"),Icon = "head_nmj_1102050",ItemType = 2,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("死者头部受创，但伤口较浅并不致死。手臂上有未闭合针眼，疑似死前不久被注射过药物，但尸体并无中毒痕迹")},--详细尸检
	[101010132] = {Name = _T("紫外灯"),Icon = "head_nmj_1102050",ItemType = 3,ItemSource = 0,CanSell = 0,SellGetCoin = 0,ShowBag = true,ShowBagTab = 1,UseType = 0,Des = _T("可以照射出指纹")}--紫外灯
}