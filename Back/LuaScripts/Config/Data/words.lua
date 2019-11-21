--[[
output from excel tip.提示表.xlsx
--note:

colums:
{Id,ID} ,{Words,文本}
primary key:
#0 [文本表]: Id
#1 [国战文本表]: Id
]]
local _T = LangUtil.Language
if ddt["words"] ~= nil then
	return ddt["words"]
end
local data = {
	[100001] = _T("使用【加速令】立即获得%s分钟奖励"),--探险界面使用【探险令】加速提示
	[100002] = _T("通关普通<color=#FEC200>%s</color>-%s开启"),--探险界面章节开启普通条件显示
	[100003] = _T("通关困难<color=#FEC200>%s</color>-%s开启"),--探险界面章节开启困难条件显示
	[100004] = _T("活动"),--公告界面活动按钮
	[100005] = _T("公告"),--公告界面公告按钮
	[100006] = _T("等级上限提升至%s级"),--卡牌详情进阶时等级提示
	[100007] = _T("本日"),--商店界面
	[100008] = _T("本周"),--商店界面
	[100009] = _T("本月"),--商店界面
	[100010] = _T("%s剩余<color=#3F793F>%s</color>次"),--商店界面日期购买提示
	[100011] = _T("%d折"),--商店折扣
	[100012] = _T("探险队伍的数量：<color=#FEC200>%s</color>/%s"),--探险队伍数量显示
	[100013] = _T("全部"),--邮件系统全部
	[100014] = _T("系统"),--邮件系统系统
	[100015] = _T("战报"),--邮件系统战报
	[100016] = _T("删除"),--邮件删除按钮
	[100017] = _T("领取"),--邮件领取按钮
	[100018] = _T("守护灵"),--备战界面守护灵页签
	[100019] = _T("寄灵人"),--备战界面寄灵人页签
	[100020] = _T("<color=red>使用失败，<color=#00ECFF>【加速令】</color>不足</color>"),--探险界面【探险令】不足提示
	[100021] = _T("没有队伍，无法清空"),--探险界面清空队伍提示
	[100022] = _T("没有队伍，无法探险"),--探险界面队伍提示
	[100023] = _T("当前队伍已满"),--探险界面选择英雄提示
	[100024] = _T("探险队伍已满"),--探险界面队伍满提示
	[100025] = _T("通关普通<color=#FEC200>%s</color>-%s开启探险点后再试"),--探险界面中间关卡点条件提示
	[100026] = _T("通关困难<color=#FEC200>%s</color>-%s开启探险点后再试"),--探险界面中间关卡点条件提示
	[100027] = _T("材料不足"),--通用材料不足提示
	[100028] = _T("经验不足"),--通用经验不足提示
	[100029] = _T("通关剧情<color=#FEC200>%s</color>-%s开启"),--开启探险功能提示
	[100030] = _T("探险加速完成，消耗<color=green>【加速令】*1</color>"),--探险加速完成提示
	[100031] = _T("暂无邮件"),--无邮件信息提示
	[100032] = _T("没有邮件可操作"),--没有领取和没邮件删除通用提示
	[100033] = _T("至少需要上阵一名寄灵人方可开战"),--布阵无卡牌提示
	[100034] = _T("守护灵无法单独上阵"),--布阵守护灵上阵提示
	[100035] = _T("行动次数已达上限"),--技能无法释放提示
	[100036] = _T("寄灵人已阵亡"),--技能无法释放提示
	[100037] = _T("异常状态，无法使用"),--技能无法释放提示
	[100038] = _T("被动技能，无法使用"),--技能无法释放提示
	[100039] = _T("冷却时间剩余%s回合"),--技能无法释放提示
	[100040] = _T("水晶不足，无法释放"),--技能无法释放提示
	[100041] = _T("技能已选取，点击上方行动框可取消"),--技能无法释放提示
	[100042] = _T("未携带守护灵，无法召唤"),--技能无法释放提示
	[100043] = _T("技能未解锁"),--技能无法释放提示
	[100044] = _T("未装备武灵技"),--技能无法释放提示
	[100045] = _T("功能暂未开放！"),--通用功能未开放提示
	[100046] = _T("使用数量超限！"),--通用使用弹窗上限提示
	[100047] = _T("该角色不能升星"),--卡牌详情升星页签提示
	[100048] = _T("该角色没有专属武器"),--卡牌详情专属武器页签提示
	[100049] = _T("点击--"),--卡牌详情专属未知页签提示
	[100050] = _T("操作频繁"),--通用点击按钮频繁
	[100051] = _T("体力不足"),--体力不足
	[100052] = _T("请按照规范输入信息！"),--登陆注册界面提示
	[100053] = _T("账号输入太短或太长！"),--登陆注册界面提示
	[100054] = _T("密码输入太短或太长！"),--登陆注册界面提示
	[100055] = _T("两次输入的密码不一致！"),--登陆注册界面提示
	[100056] = _T("服务器暂未开启！"),--服务器异常提示
	[100057] = _T("该用户账号异常！"),--服务器异常提示
	[100058] = _T("该用户不在白名单内！"),--服务器异常提示
	[100059] = _T("服务器暂未开启！"),--服务器异常提示
	[100060] = _T("<color=#B33A3A>货币不足！</color>"),--技能兑换提示
	[100061] = _T("用户名或密码错误！"),--登陆注册界面提示
	[100062] = _T("该用户已存在！"),--登陆注册界面提示
	[100063] = _T("激活码不存在！"),--登陆注册界面提示
	[100064] = _T("激活码已使用！"),--登陆注册界面提示
	[100065] = _T("普通关卡不能复刷"),--关卡详情界面
	[100066] = _T("<color=green>【挑战券】</color>不足"),--个人boss界面提示
	[100067] = _T("暂无可领取的奖励"),--派遣巡逻领奖提示
	[100068] = _T("<color=#55FF00>激活成功</color>"),--武灵技激活成功提示
	[100069] = _T("神器等级无法超过其组件中的最小等级！"),--神器界面提示
	[100070] = _T("等级已达上限"),--通用等级上限提示
	[100071] = _T("没有探险中的队伍"),--探险界面提示
	[100072] = _T("请先移除黑名单"),--好友系统按钮组提示
	[100073] = _T("是否与%s解除好友关系？"),--好友系统删除好友提示
	[100074] = _T("该难度未开启"),--个人boss界面提示
	[100075] = _T("通关上一关开启"),--教学关卡提示
	[100076] = _T("结算回合，无法退出"),--战斗退出异常提示
	[100077] = _T("最大字数不超过50"),--聊天提示
	[100078] = _T("聊天内容不能为空"),--聊天提示
	[100079] = _T("<color=green>【竞武券】</color>不足，请购买后再进行挑战"),--竞技场提示
	[100080] = _T("您当前积分已经达到黄金段位，请退出重进"),--竞技场提示
	[100081] = _T("灵玉不足"),--通用货币不足提示
	[100082] = _T("未上榜"),--竞技场提示
	[100083] = _T("恶灵大举入侵，勇士们快去击杀，捍卫中土大陆"),--刷新跑马灯
	[100084] = _T("恶灵还有5分钟入侵，勇士们快做准备，捍卫中土大陆"),--刷新前5分钟跑马灯
	[100085] = _T("地狱道"),--地狱道标题
	[100086] = _T("地狱道"),--等级标题1
	[100087] = _T("晋阶后开启"),--晋阶后开启标题2
	[100088] = _T("晋阶条件"),--晋阶条件标题3
	[100089] = _T("*需要完成所有晋阶条件"),--晋阶按钮上面文字
	[100090] = _T("当前"),--当前等级
	[100091] = _T("晋阶"),--晋阶标签
	[100092] = _T("晋阶"),--晋阶按钮名字
	[100093] = _T("等级"),--地狱道开启功能等级类型
	[100094] = _T("解锁"),--地狱道开启功能解锁类型
	[100095] = _T("开启"),--地狱道开启功能开启类型
	[100096] = _T("获得"),--地狱道开启功能获得类型
	[100097] = _T("成功"),--晋阶成功标题
	[100098] = _T("点击任意位置关闭"),--点击任意位置关闭
	[100099] = _T("本店由曹焱兵火速配送!  !"),--本店由曹焱兵火速配送!  !
	[100100] = _T("获取寄灵石"),--获取寄灵石
	[100101] = _T("适度娱乐，理性消费"),--适度娱乐，理性消费
	[100102] = _T("商店"),--商店
	[100103] = _T("购买数量"),--购买数量
	[100104] = _T("购买需要"),--购买需要
	[100105] = _T("货币不足！"),--货币不足！
	[100106] = _T("购买"),--购买
	[100107] = _T("购 买"),--购 买
	[100108] = _T("芦花古楼"),--芦花古楼
	[100109] = _T("暂无奖励"),--暂无奖励
	[100110] = _T("功能暂未开放！"),--功能暂未开放！
	[100111] = _T("敬请期待"),--敬请期待
	[100112] = _T("第%s关"),--第%s关
	[100113] = _T("通关数"),--通关数
	[100114] = _T("第%s关通关奖励"),--第%s关通关奖励
	[100115] = _T("寄灵人"),--寄灵人
	[100116] = _T("守护灵"),--守护灵
	[100117] = _T("每日奖励"),--每日奖励
	[100118] = _T("芦花商店"),--芦花商店
	[100119] = _T("芦花排行"),--芦花排行
	[100120] = _T("用卡范围"),--用卡范围
	[100121] = _T("开始挑战"),--开始挑战
	[100122] = _T("第"),--第
	[100123] = _T("关"),--关
	[100124] = _T("%s门用卡范围"),--%s门用卡范围
	[100125] = _T("尚未获得"),--尚未获得
	[100126] = _T("当前累积每日奖励"),--当前累积每日奖励
	[100127] = _T("每次通关都会使每日奖励更丰厚 每日奖励0点发放至邮箱"),--每次通关会增加奖励 次日0点邮件发放
	[100128] = _T("已完成"),--已完成
	[100129] = _T("冒险"),--冒险界面标题
	[100130] = _T("已领取过宝箱奖励"),--冒险章节星数宝箱已领取提示
	[100131] = _T("没有守护灵了，快去找灵槐树感灵吧~"),--布阵时，无可上阵的守护灵，点击守护灵阵位提示
	[100132] = _T("快使用<color=red>%s</color>，加速绝技释放。#迟迟不用<color=red>%s</color>，看来你还没领悟战斗的关键。"),--引导守护灵使用水晶技能
	[100133] = _T("其他人都有<color=red>守护灵</color>保护，为什么我没有？#没有<color=red>守护灵</color>，战斗前借也要借一个来！#战斗不带<color=red>守护灵</color>，靠吼输出么？！"),--寄灵人无守护灵
	[100134] = _T("装备背包已满，请尽快清理"),--装备数量已达上限
	[100135] = _T("装备强化次数已达当前等级上限"),--装备强化等级已达上限
	[100136] = _T("今日的重置次数已达上限"),--传记副本重置次数
	[100137] = _T("%s详细掉落"),--传记副本详细掉落title
	[100138] = _T("今日购买次数已用完"),--传记副本收益总次数
	[100139] = _T("花费<color=#ffffff00><quad size=20 x=0 y=0 width=3 /></color>x%s重置此传记副本？"),--传记副本重置提示
	[100140] = _T("今日可重置次数：%s"),--传记副本可重置次数
	[100141] = _T("尚未拥有可开启传记副本的守护灵"),--未拥有可开启传记副本的卡牌
	[100142] = _T("今日剩余总次数：%s/%s"),--传记副本总次数
	[100143] = _T("推荐战力：%s"),--传记副本推荐战力
	[100144] = _T("今日剩余次数%s/%s"),--单个传记副本今日剩余次数
	[100145] = _T("重置"),--传记副本重置
	[100146] = _T("扫荡"),--传记副本扫荡
	[100147] = _T("挑战"),--传记副本挑战
	[100148] = _T("%s级解锁"),--传记副本解锁
	[100149] = _T("通关%s解锁"),--传记副本挑战
	[100150] = _T("<color=#ec6b60>%s</color>必须上阵"),--布阵卡牌必须上阵
	[100151] = _T("已领取"),--嘉年华已领取
	[100152] = _T("未达成"),--嘉年华未达成
	[100153] = _T("领 取"),--嘉年华领取
	[100154] = _T("前往"),--嘉年华前往
	[100155] = _T("%s天%s"),--嘉年华倒计时
	[100156] = _T("灵玉不足，无法购买"),--嘉年华购买道具提示灵玉不足，无法购买
	[100157] = _T("购买此道具？"),--嘉年华购买道具提示
	[100158] = _T("活动在第%s天开启"),--嘉年华开启天数
	[100159] = _T("嘉年华日期出错"),--嘉年华日期错误提示
	[100160] = _T("玩家等级不足"),--试炼宝库玩家等级不足提示
	[100161] = _T("开启等级：%s级"),--试炼宝库开启等级
	[100162] = _T("剩余次数：%s/%s"),--试炼宝库剩余次数
	[100163] = _T("次数不足"),--试炼宝库次数不足提示
	[100164] = _T("挑战等级:%s"),--试炼宝库挑战等级
	[100165] = _T("快速挑战"),--试炼宝库快速挑战
	[100166] = _T("进入挑战"),--试炼宝库进入挑战
	[100167] = _T("战力"),--布阵界面战力
	[100168] = _T("先手值"),--布阵界面先手值
	[100169] = _T("双方已就绪，战斗即将开始！！"),--布阵界面提示文本
	[100170] = _T("已准备，倒计时结束前可继续调整阵容！！"),--布阵界面提示文本
	[100171] = _T("对手正在排兵布阵，请稍后......"),--布阵界面提示文本
	[100172] = _T("准备就绪"),--布阵界面提示文本
	[100173] = _T("请为[%s]选择守护灵"),--布阵界面选择守护灵title
	[100174] = _T("请上阵至少一个寄灵人"),--布阵界面提示文本
	[100175] = _T("竞技场中途不可退出"),--布阵界面提示文本
	[100176] = _T("拖动卡牌至此"),--布阵界面提示文本
	[100177] = _T("已出战"),--布阵界面寄灵人出战
	[100178] = _T("已选择"),--布阵界面守护灵选中
	[100179] = _T("生命"),--卡牌属性
	[100180] = _T("防御"),--卡牌属性
	[100181] = _T("攻击"),--卡牌属性
	[100182] = _T("攻城值"),--卡牌属性
	[100183] = _T("我的服务器"),--服务器列表
	[100184] = _T("推荐服务器"),--服务器列表
	[100185] = _T("上次登录的服务器"),--服务器列表
	[100186] = _T("有角色的服务器"),--服务器列表
	[100187] = _T("爆满"),--服务器列表
	[100188] = _T("拥挤"),--服务器列表
	[100189] = _T("流畅"),--服务器列表
	[100190] = _T("维护"),--服务器列表
	[100191] = _T("选择服务器"),--服务器列表
	[100192] = _T("点击屏幕开始游戏"),--登录界面
	[100193] = _T("抵制不良游戏  拒绝盗版游戏  注意自我保护  谨防受骗上当\n适度游戏益脑  沉迷游戏伤身  合理安排时间  享受健康生活"),--登录界面
	[100194] = _T("游戏版本号："),--登录界面
	[100195] = _T("资源版本号："),--登录界面
	[100196] = _T("注销会使自动登录功能失效,请确认您没有忘记用户名和密码,是否确定注销?"),--登录界面
	[100197] = _T("确定"),--登录界面
	[100198] = _T("取消"),--登录界面
	[100199] = _T("登录成功"),--登录界面
	[100200] = _T("成就积分"),--任务
	[100201] = _T("成就"),--任务
	[100202] = _T("日常"),--任务
	[100203] = _T("日常任务"),--任务
	[100204] = _T("成就总览"),--任务
	[100205] = _T("感灵"),--抽卡
	[100206] = _T("单抽"),--抽卡按钮
	[100207] = _T("十抽"),--抽卡按钮
	[100208] = _T("跳过动画"),--抽卡选项
	[100209] = _T("自动翻面"),--抽卡选项
	[100210] = _T("再抽一次"),--抽卡结果界面按钮
	[100211] = _T("继续十抽"),--抽卡结果界面按钮
	[100212] = _T("竞技场"),--竞技场
	[100213] = _T("最强 6 人战力"),--竞技场
	[100214] = _T("当前积分"),--竞技场
	[100215] = _T("积分奖励"),--竞技场
	[100216] = _T("防守阵营"),--竞技场
	[100217] = _T("本周胜场"),--竞技场
	[100218] = _T("快速挑战"),--竞技场
	[100219] = _T("挑  战"),--竞技场
	[100220] = _T("对阵"),--竞技场
	[100221] = _T("挑战成功"),--竞技场
	[100222] = _T("排行"),--竞技场
	[100223] = _T("挑战失败"),--竞技场
	[100224] = _T("奖励宝箱"),--宝箱界面
	[100225] = _T("实时竞技场"),--实时竞技场
	[100226] = _T("当前段位"),--实时竞技场
	[100227] = _T("晋级积分"),--实时竞技场
	[100228] = _T("天梯模式"),--实时竞技场
	[100229] = _T("休闲模式"),--实时竞技场
	[100230] = _T("开启时间"),--实时竞技场
	[100231] = _T("胜率"),--实时竞技场
	[100232] = _T("赛季奖励"),--实时竞技场
	[100233] = _T("本服奖励"),--实时竞技场
	[100234] = _T("胜场"),--实时竞技场
	[100235] = _T("每周1,2,3,4,5,6,7,开启"),--实时竞技场
	[100236] = _T("12:00-13:3018:00-19:00"),--实时竞技场
	[100237] = _T("竞技排名奖励"),--实时竞技场
	[100238] = _T("竞技积分奖励"),--实时竞技场
	[100239] = _T("奖励每日22:00邮件发放"),--实时竞技场
	[100240] = _T("当前"),--实时竞技场
	[100241] = _T("头像"),--实时竞技场
	[100242] = _T("名称"),--实时竞技场
	[100243] = _T("积分"),--实时竞技场
	[100244] = _T("白 银"),--实时竞技场
	[100245] = _T("黄 金"),--实时竞技场
	[100246] = _T("排名"),--实时竞技场
	[100247] = _T("本服"),--实时竞技场
	[100248] = _T("全服"),--实时竞技场
	[100249] = _T("段位"),--实时竞技场
	[100250] = _T("胜利"),--实时竞技场
	[100251] = _T("失败"),--实时竞技场
	[100252] = _T("场次"),--实时竞技场
	[100253] = _T("取消匹配"),--实时竞技场
	[100254] = _T("正在匹配旗鼓相当的对手......"),--实时竞技场
	[100255] = _T("达到%s级解锁"),--神器界面
	[100256] = _T("【%s】不足"),--抽卡花钻石确认对话框标题
	[100257] = _T("本次单抽共需："),--单抽花钻石确认对话框文本
	[100258] = _T("本次十抽共需："),--十抽花钻石确认对话框文本
	[200001] = _T("兵力已经达到上限"),--1
	[200002] = _T("充能中"),--征兵Item
	[200003] = _T("立即完成"),--征兵Item
	[200004] = _T("是否确认开始征募"),--征兵
	[200005] = _T("提示"),--征兵
	[200006] = _T("确定"),--征兵
	[200007] = _T("取消"),--征兵
	[200008] = _T("无可征兵队伍"),--征兵
	[200009] = _T("无可停止队伍"),--征兵
	[200010] = _T("城镇状态："),--城镇状态title
	[200011] = _T("地形："),--城镇地形title
	[200012] = _T("储备军力："),--储备军力title
	[200013] = _T("联盟占领收益"),--收益标题
	[200014] = _T("杀敌"),--杀敌按钮文字
	[200015] = _T("攻城"),--攻城按钮文字，队伍布阵，队伍详情界面
	[200016] = _T("放弃"),--放弃按钮文字
	[200017] = _T("确定--"),--文字提示
	[200018] = _T("配置"),--队伍配置
	[200019] = _T("调动"),--队伍调动
	[200020] = _T("Lv"),--等级
	[200021] = _T("目标信息"),--剿匪面板title_name
	[200022] = _T("取消"),--文字提示
	[200023] = _T("统御等级 Lv"),--统御等级文字
	[200024] = _T("难度"),--难度title
	[200025] = _T("地形"),--地形title
	[200026] = _T("概率掉落"),--概率掉落title
	[200027] = _T("攻打"),--攻打按钮文字
	[200028] = _T("城镇点已被占领"),--提示城镇占领状态
	[200029] = _T("提<size=40>示</size>"),--文字提示
	[200030] = _T("地形："),--资源区地形title
	[200031] = _T("是否确定放弃该接战区？\n (确定放弃，"),--文字提示
	[200032] = _T("加入联盟"),--加入联盟按钮文字
	[200033] = _T("进入"),--进入资源区按钮文字
	[200034] = _T("免战时间内无法放弃占领"),--免战时间内提示文字
	[200035] = _T("目标处于免战状态，无法出征"),--免战状态提示文字
	[200036] = _T("目前没有队伍前往"),--没有队伍文字提示
	[200037] = _T("采集收益"),--采集收益按钮文字
	[200038] = _T("放弃占领"),--放弃占领按钮文字
	[200039] = _T("驻守"),--驻守按钮文字
	[200040] = _T("撤退"),--撤退按钮文字
	[200041] = _T("中立"),--中立文字提示
	[200042] = _T("取消放弃"),--取消放弃文字
	[200043] = _T("收藏"),--收藏按钮文字
	[200044] = _T("分享"),--分享按钮文字
	[200045] = _T("耐久"),--耐久title
	[200046] = _T("免战时间"),--免战时间title
	[200047] = _T("守军"),--守军title
	[200048] = _T("(确定放弃，%s分钟后失去该领地)"),--通用
	[200049] = _T("归属"),--归属title
	[200050] = _T("分钟后失去该领地)"),--文字提示
	[200051] = _T("创建联盟"),--创建联盟按钮文字
	[200052] = _T("联盟邀请"),--联盟邀请按钮文字
	[200053] = _T("点击输入搜索名称"),--搜索提示文字
	[200054] = _T("搜索联盟"),--搜索联盟按钮文字
	[200055] = _T("联盟"),--联盟title
	[200056] = _T("+%d/小时"),--收益
	[200057] = _T("等级"),--等级title
	[200058] = _T("成员"),--成员title
	[200059] = _T("所属域"),--所属域title
	[200060] = _T("战场队伍"),--战场队伍title
	[200061] = _T("驻守队伍"),--驻守队伍title
	[200062] = _T("占领"),--占领title
	[200063] = _T("势力值"),--势力值title
	[200064] = _T("正在前往"),--队伍状态
	[200065] = _T("战斗中"),--队伍状态
	[200066] = _T("正在撤退"),--队伍状态
	[200067] = _T("采集中"),--队伍状态
	[200068] = _T("正在前往"),--队伍状态
	[200069] = _T("驻守中"),--队伍状态
	[200070] = _T("统御 Lv"),--统御等级
	[200071] = _T("区"),--区字
	[200072] = _T("攻城战未开启，目前无法行动"),--杀敌按钮描述
	[200073] = _T("非联盟成员，无法参加攻城战"),--杀敌按钮描述
	[200074] = _T("无过路权限，无法前往！"),--杀敌按钮描述
	[200075] = _T("防守方阵营成员无法进行破城战"),--破城按钮描述
	[200076] = _T("未配置队伍，请先配置队伍"),--破城按钮描述
	[200077] = _T("城市耐久已降为零，无法继续进攻"),--破城按钮描述
	[200078] = _T("后开启"),--开启文字
	[200079] = _T("后结束"),--结束
	[200080] = _T("攻城已结束！"),--攻城战开启关闭
	[200081] = _T("攻城已开启！"),--攻城战开启关闭
	[200082] = _T("归属："),--归属文字
	[200083] = _T("地形："),--地形文字
	[200084] = _T("攻城战："),--攻城战文字
	[200085] = _T("耐久："),--耐久文字
	[200086] = _T("守军："),--守军文字
	[200087] = _T("统御Lv."),--统御等级
	[200088] = _T("%s后可加入"),--倒计时
	[200089] = _T("取消申请"),--取消申请按钮文字
	[200090] = _T("申请"),--申请按钮文字
	[200091] = _T("加入"),--加入按钮文字
	[200092] = _T("联盟名称"),--联盟名称title
	[200093] = _T("不超过%s个字"),--提示文本
	[200094] = _T("联盟公告"),--联盟公告title
	[200095] = _T("点击输入"),--提示文本
	[200096] = _T("申请条件"),--申请条件title
	[200097] = _T("创建条件"),--创建条件title
	[200098] = _T("接受"),--接受按钮文字
	[200099] = _T("拒绝"),--拒绝按钮文字
	[200100] = _T("暂无邀请"),--没有联盟邀请文字说明
	[200101] = _T("暂无联盟"),--没有联盟文字说明
	[200102] = _T("详情"),--详情title
	[200103] = _T("盟主:"),--盟主title
	[200104] = _T("成员:"),--成员title
	[200105] = _T("占领:"),--占领title
	[200106] = _T("所属域:"),--所属域title
	[200107] = _T("势力值:"),--势力值title
	[200108] = _T("查看"),--队伍布阵界面
	[200109] = _T("军力值"),--队伍布阵界面，队伍详情界面
	[200110] = _T("征募"),--队伍布阵界面
	[200111] = _T("未上阵寄灵人，无法召唤守护灵"),--队伍布阵界面
	[200112] = _T("选择守护灵"),--队伍布阵界面
	[200113] = _T("卡牌处于征募中，无法配置"),--队伍布阵界面
	[200114] = _T("已布阵对应的守护灵，无法下阵寄灵人"),--队伍布阵界面
	[200115] = _T("行军"),--队伍布阵界面
	[200116] = _T("战斗"),--队伍布阵界面
	[200117] = _T("采集"),--队伍布阵界面
	[200118] = _T("返回"),--队伍布阵界面
	[200119] = _T("重伤"),--队伍布阵界面
	[200120] = _T("队伍一"),--队伍布阵界面
	[200121] = _T("队伍二"),--队伍布阵界面
	[200122] = _T("队伍三"),--队伍布阵界面
	[200124] = _T("攻城战"),--队伍布阵界面
	[200125] = _T("未配置"),--队伍布阵界面
	[200126] = _T("未选中队伍不能打开军团配置！"),--队伍布阵界面
	[200127] = _T("队伍处于非待命状态,不可以征募"),--队伍布阵界面
	[200128] = _T("队伍处于非待命状态,不可以配置"),--队伍布阵界面
	[200129] = _T("队伍详情"),--队伍详情界面
	[200130] = _T("出征"),--选择队伍出征界面
	[200131] = _T("选择队伍"),--选择队伍出征界面
	[200132] = _T("领地数已达上限，继续出征将无法占领"),--选择队伍出征界面
	[200133] = _T("本次采集收益将超出储量上限"),--选择队伍出征界面
	[200134] = _T("目的地"),--选择队伍出征界面
	[200135] = _T("行军时间"),--选择队伍出征界面
	[200136] = _T("到达时间"),--选择队伍出征界面
	[200137] = _T("队伍处于非待命状态，无法选择"),--选择队伍出征界面
	[200138] = _T("有卡牌处于征兵状态，无法选择"),--选择队伍出征界面
	[200139] = _T("有卡牌处于受伤状态，无法选择"),--选择队伍出征界面
	[200140] = _T("有卡牌处于行动力不足，无法选择"),--选择队伍出征界面
	[200141] = _T("处于同一城镇，无法选择"),--选择队伍出征界面
	[200142] = _T("该队伍正在征募，无法选择"),--选择队伍出征界面
	[200143] = _T("切换分区出错！"),--资源区主界面
	[200144] = _T("搜索错误的目标"),--资源区主界面
	[200145] = _T("请选择要搜索的目标！"),--资源区主界面
	[200146] = _T("搜索"),--资源区主界面
	[200147] = _T("输入搜索区"),--资源区主界面
	[200148] = _T("该分区不存在！"),--资源区主界面
	[200149] = _T("占领信息"),--资源区主界面
	[200150] = _T("没有找到该等级的怪物"),--讨伐区主界面
	[200151] = _T("该逃犯不存在！"),--讨伐区主界面
	[200152] = _T("统御"),--讨伐区详情界面
	[200153] = _T("首战奖励"),--首战奖励title
	[200154] = _T("联盟全体成员"),--联盟全体成员title
	[200155] = _T("战功排名"),--战功排名title
	[200156] = _T("破城"),--破城title
	[200157] = _T("占领联盟"),--占领联盟文字
	[200158] = _T("攻城战排行榜"),--攻城战排行榜title
	[200159] = _T("参战"),--攻城战主界面
	[200160] = _T("备战"),--攻城战主界面
	[200161] = _T("系统守军"),--攻城战主界面
	[200162] = _T("队伍正在战斗无法撤退"),--攻城战主界面
	[200163] = _T("杀敌战已结束"),--攻城战主界面
	[200164] = _T("已结束"),--攻城战主界面
	[200165] = _T("准备"),--攻城战主界面
	[200166] = _T("进行"),--攻城战主界面
	[200167] = _T("无"),--攻城战主界面
	[200168] = _T("%s轮"),--攻城战主界面
	[200169] = _T("第%s轮[%s]"),--攻城战主界面
	[200170] = _T("进攻方队列"),--攻城战主界面
	[200171] = _T("防守方队列"),--攻城战主界面
	[200172] = _T("派遣"),--攻城战主界面
	[200173] = _T("战场信息"),--攻城战主界面
	[200174] = _T("当前阶段"),--攻城战主界面
	[200175] = _T("城市守军"),--攻城战主界面
	[200176] = _T("己方阵营"),--攻城战主界面
	[200177] = _T("阶段详情"),--攻城战主界面
	[200178] = _T("进行中"),--攻城战主界面
	[200179] = _T("总轮次"),--攻城战主界面
	[200180] = _T("防守方"),--攻城战主界面
	[200181] = _T("进攻方"),--攻城战主界面
	[200182] = _T("国战频道"),--坐标分享弹窗
	[200183] = _T("联盟频道"),--坐标分享弹窗
	[200184] = _T("分享坐标"),--坐标分享弹窗
	[200185] = _T("收藏数量： %s"),--坐标收藏界面
	[200186] = _T("标记定位"),--坐标收藏界面
	[200187] = _T("名字太长"),--收藏坐标弹窗
	[200188] = _T("名字不能有空格字符"),--收藏坐标弹窗
	[200189] = _T("添加收藏"),--收藏坐标弹窗
	[200190] = _T("点击修改名称"),--收藏坐标弹窗
	[200191] = _T("标记目标"),--收藏坐标弹窗
	[200192] = _T("接战区"),--占领的领地界面
	[200193] = _T("资源点"),--占领的领地界面
	[200194] = _T("撤销"),--占领的领地界面
	[200195] = _T("全选"),--占领的领地界面
	[200196] = _T("领地"),--占领的领地界面
	[200197] = _T("类型"),--占领的领地界面
	[200198] = _T("坐标"),--占领的领地界面
	[200199] = _T("统计"),--占领的领地界面
	[200200] = _T("该资源区内尚无占领领地"),--占领的领地界面
	[200201] = _T("免战期间无法放弃！"),--占领的领地界面
	[200202] = _T("是否确定放弃该领地？ "),--占领的领地界面
	[200203] = _T("已满级"),--科技界面
	[200204] = _T("科技"),--科技界面
	[200205] = _T("资源不足，无法升级"),--科技界面
	[200206] = _T("升级消耗"),--科技界面
	[200207] = _T("所需时间:"),--科技界面
	[200208] = _T("资源不足"),--科技界面
	[200209] = _T("升级"),--科技界面
	[200210] = _T("已升至最高级"),--科技界面
	[200211] = _T("升级条件："),--科技界面
	[200212] = _T("（满级激活）"),--科技界面
	[200213] = _T("<color=#3e793f>（已激活）</color>"),--科技界面
	[200214] = _T("升级状态已发生变化"),--科技界面
	[200215] = _T("您目前研发队列已达上限"),--科技界面
	[200216] = _T("您目前免费研发队列已达上限，是否消耗<color=#3E793F>%d灵玉</color>研发？"),--科技界面
	[200217] = _T("取消只返还80%的资源,是否确认"),--科技界面
	[200218] = _T("灵玉不足，无法立即完成"),--科技界面
	[200219] = _T("确定花费<color=#3E793F>%d灵玉</color>完成操作吗？"),--科技界面
	[200220] = _T("条件设置"),--联盟条件设置弹窗
	[200221] = _T("设置联盟加入方式"),--联盟条件设置弹窗
	[200222] = _T("关闭申请"),--联盟条件设置弹窗
	[200223] = _T("任何人申请即可加入"),--联盟条件设置弹窗
	[200224] = _T("申请后，需要接受才可加入"),--联盟条件设置弹窗
	[200225] = _T("玩家信息"),--联盟玩家信息简介弹窗
	[200226] = _T("所属联盟"),--联盟玩家信息简介弹窗
	[200227] = _T("本周贡献:"),--联盟玩家信息简介弹窗
	[200228] = _T("总贡献:"),--联盟玩家信息简介弹窗
	[200229] = _T("本周战功:"),--联盟玩家信息简介弹窗
	[200230] = _T("%s产量+%f%%"),--联盟主界面
	[200231] = _T("个人介绍"),--联盟玩家信息简介弹窗
	[200232] = _T("暂无占领"),--联盟主界面占领页签
	[200233] = _T("总量:"),--联盟主界面
	[200234] = _T("总量:%d万"),--联盟主界面
	[200235] = _T("本周:"),--联盟主界面
	[200236] = _T("本周:%d万"),--联盟主界面
	[200237] = _T("%m月%d日"),--联盟主界面
	[200238] = _T("<color=#FFFFFF>，点击查看</color><color=#FEC200>攻城战排行榜</color>"),--联盟主界面
	[200239] = _T("%s产量+%d%%"),--联盟主界面
	[200240] = _T("当前职位没有管理权限，无法进行管理操作"),--联盟主界面
	[200241] = _T("请输入%s个以内字符公告!"),--联盟主界面
	[200242] = _T("是否确认踢出成员"),--联盟主界面
	[200243] = _T("是否确认禅让盟主"),--联盟主界面
	[200244] = _T("是否确认放弃职位"),--联盟主界面
	[200245] = _T("联盟中有其他成员，无法解散联盟"),--联盟主界面
	[200246] = _T("是否确认解散联盟"),--联盟主界面
	[200247] = _T("是否确认退出联盟"),--联盟主界面
	[200248] = _T("是否确认罢免成员"),--联盟主界面
	[200249] = _T("是否确认任命成员"),--联盟主界面
	[200250] = _T("您已被移除联盟"),--联盟主界面
	[200251] = _T("全体邮件发送成功！"),--联盟主界面
	[200252] = _T("联盟邮件"),--联盟主界面
	[200253] = _T("邮件内容不能为空"),--联盟主界面
	[200254] = _T("贡献"),--联盟主界面
	[200255] = _T("本周战功"),--联盟主界面
	[200256] = _T("我的信息"),--联盟主界面
	[200257] = _T("发送邮件"),--联盟主界面
	[200258] = _T("收件人"),--联盟主界面
	[200259] = _T("标题"),--联盟主界面
	[200260] = _T("全体成员"),--联盟主界面
	[200261] = _T("点击输入标题"),--联盟主界面
	[200262] = _T("点击输入正文"),--联盟主界面
	[200263] = _T("联盟公告"),--联盟主界面
	[200264] = _T("请输入公告..."),--联盟主界面
	[200265] = _T("联盟加成"),--联盟主界面
	[200266] = _T("占领加成"),--联盟主界面
	[200267] = _T("暂无加成"),--联盟主界面
	[200268] = _T("等级:"),--联盟主界面
	[200269] = _T("%s产量+%s"),--联盟主界面
	[200270] = _T("申请管理"),--联盟主界面
	[200271] = _T("邀请"),--联盟主界面
	[200272] = _T("暂无申请"),--联盟主界面
	[200273] = _T("操作"),--联盟主界面
	[200274] = _T("禅让盟主"),--联盟主界面
	[200275] = _T("职位管理"),--联盟主界面
	[200276] = _T("请出联盟"),--联盟主界面
	[200277] = _T("放弃职位"),--联盟主界面
	[200278] = _T("解散联盟"),--联盟主界面
	[200279] = _T("退出联盟"),--联盟主界面
	[200280] = _T("同意"),--联盟主界面
	[200281] = _T("已同意"),--联盟主界面
	[200282] = _T("已拒绝"),--联盟主界面
	[200283] = _T("已邀请"),--联盟主界面
	[200284] = _T("暂无日志"),--联盟主界面
	[200285] = _T("事件"),--联盟主界面
	[200286] = _T("nil"),--联盟主界面
	[200287] = _T("建筑"),--联盟主界面
	[200288] = _T("副盟主"),--联盟主界面
	[200289] = _T("指挥官"),--联盟主界面
	[200290] = _T("精英"),--联盟主界面
	[200291] = _T("罢免"),--联盟主界面
	[200292] = _T("任命"),--联盟主界面
	[200293] = _T("行动力"),--卡牌的国战属性页签
	[200294] = _T("统御达到%s级 解锁"),--卡牌的国战属性页签
	[200295] = _T("国战"),--卡牌的国战属性页签
	[200296] = _T("国战属性"),--卡牌的国战属性页签
	[200297] = _T("国战天赋"),--卡牌的国战属性页签
	[200298] = _T("奖励已领取"),--记事奖励提示文字
	[200299] = _T("未加入联盟或所在联盟未达成目标下，不能领取奖励"),--记事奖励提示文字
	[200300] = _T("未达成目标，不能领取奖励"),--记事奖励提示文字
	[200301] = _T("达成时间： "),--记事奖励提示文字
	[200302] = _T("剩余时间  "),--记事奖励提示文字
	[200303] = _T("达成联盟"),--记事奖励提示文字
	[200304] = _T("当前排名"),--记事奖励提示文字
	[200305] = _T("快去领取奖励吧~"),--记事奖励提示文字
	[200306] = _T("纪事"),--记事奖励提示文字
	[200307] = _T("国战纪事"),--记事奖励提示文字
	[200308] = _T("暂时没有赛季功能"),--记事奖励提示文字
	[200309] = _T("功能开放"),--记事奖励提示文字
	[200310] = _T("奖励"),--记事奖励提示文字
	[200311] = _T("完成时间："),--记事奖励提示文字
	[200312] = _T("暂未开启"),--记事奖励提示文字
	[200313] = _T("征募"),--国战征募界面
	[200314] = _T("列表"),--国战征募界面
	[200315] = _T("征募消耗"),--国战征募界面
	[200316] = _T("立即征募"),--国战征募界面
	[200317] = _T("储备军力"),--国战征募界面
	[200318] = _T("最大数量"),--国战征募界面
	[200319] = _T("停止征募"),--国战征募界面
	[200320] = _T("确认征募"),--国战征募界面
	[200321] = _T("军力值已达上限"),--国战征募界面
	[200322] = _T("征集数量:"),--国战征募界面
	[200323] = _T("耗时:"),--国战征募界面
	[200324] = _T("立即完成招募"),--国战征募界面
	[200325] = _T("征募中:"),--国战征募界面
	[200326] = _T("未配置"),--国战征募界面
	[200327] = _T("提前停止征募将只返还未完成征募数量所需%s的资源，是否确定停止征募？"),--国战征募界面
	[200328] = _T("    是否把角色移离队伍？移离队伍后，角色的军力值将会消失，并返还%s的充能资源"),--国战资源返还界面
	[200329] = _T("是否确定军团转换:"),--国战资源返还界面
	[200330] = _T("返回资源"),--国战资源返还界面
	[200331] = _T("转换军团"),--国战资源返还界面
	[200332] = _T("返回资源"),--国战资源返还界面
	[200333] = _T("确定？"),--国战资源返还界面标题
	[200334] = _T("军团"),--国战军团界面
	[200335] = _T("列表"),--国战军团界面
	[200336] = _T("可解锁军团数量:"),--国战军团界面
	[200337] = _T("队伍处于非待命状态，无法进行转换"),--国战军团界面
	[200338] = _T("队伍内存在处于征募中状态的角色，无法进行转换"),--国战军团界面
	[200339] = _T("当前可解锁军团数量已达上限，无法继续解锁"),--国战军团界面
	[200340] = _T("是否确定解锁该军团？"),--国战军团界面
	[200341] = _T("是否确定重置该军团？"),--国战军团界面
	[200342] = _T("灵玉不足"),--国战军团界面
	[200343] = _T("有队伍处于非待命状态，无法进行重置"),--国战军团界面
	[200344] = _T("军团特性"),--国战军团界面
	[200345] = _T("<color=#DE4C4C>未解锁</color>"),--国战军团界面
	[200346] = _T("<color=#31C020>使用中</color>"),--国战军团界面
	[200347] = _T("转换"),--国战军团界面
	[200348] = _T("解锁"),--国战军团界面
	[200349] = _T("<color=#DE4C4C>初始军团无法重置</color>"),--国战军团界面
	[200350] = _T("重置"),--国战军团界面
	[200351] = _T("出发地"),--选择队伍出征界面
	[200352] = _T("确定要跳转到%s吗"),--国战战报诚征跳转提示
	[200353] = _T("灵玉不足，无法立即返回"),--国战队伍tip
	[200354] = _T("是否确定消耗<color=#3E793F>灵玉%s</color>立即返回？"),--国战队伍tip
	[200355] = _T("错误"),--国战队伍详尽状态
	[200356] = _T("队伍类型为Null"),--国战队伍详尽状态
	[200357] = _T("行军"),--国战队伍详尽状态
	[200358] = _T("返回"),--国战队伍详尽状态
	[200359] = _T("驻守"),--国战队伍详尽状态
	[200360] = _T("待命"),--国战队伍详尽状态
	[200361] = _T("负伤"),--国战队伍详尽状态
	[200362] = _T("征募"),--国战队伍详尽状态
	[200363] = _T("攻城战中"),--国战队伍详尽状态
	[200364] = _T("战斗中"),--国战队伍详尽状态
	[200365] = _T("采集中"),--国战队伍详尽状态
	[200366] = _T("未配置"),--国战队伍详尽状态
	[200367] = _T("请输入%s个以内中文字符联盟名称!"),--国战联盟文字描述
	[200368] = _T("%s 后才能创建联盟"),--国战联盟文字描述
	[200369] = _T("声望等级不足!"),--国战联盟文字描述
	[200370] = _T("灵玉不足!"),--国战联盟文字描述
	[200371] = _T("请输入联盟名称!"),--国战联盟文字描述
	[200372] = _T("请输入%s个以内字符公告!"),--国战联盟文字描述
	[200373] = _T("%s 后才能加入联盟"),--国战联盟文字描述
	[200374] = _T("联盟人数已满!"),--国战联盟文字描述
	[200375] = _T("是否确定接受邀请加入%s联盟"),--国战联盟文字描述
	[200376] = _T("任何人均可加入"),--国战联盟文字描述
	[200377] = _T("需要申请待审批后加入"),--国战联盟文字描述
	[200378] = _T("声望等级Lv.%d"),--国战联盟文字描述
	[200379] = _T("消耗灵玉%d"),--国战联盟文字描述
	[200380] = _T("进攻"),--国战战报日志
	[200381] = _T("防守"),--国战战报日志
	[200382] = _T("全部"),--国战战报日志
	[200383] = _T("只看自己"),--国战战报日志
	[200384] = _T("只看同盟"),--国战战报日志
	[200385] = _T("日志"),--国战战报日志
	[200386] = _T("剩余兵力/总兵力"),--国战战报日志
	[200387] = _T("全部标记已读"),--国战战报日志
	[200388] = _T("名"),--名
	[200389] = _T("暂无描述"),--描述
	[200390] = _T("激活"),--状态
	[200391] = _T("角色不在当前城镇内，无法进行配置"),--状态描述
	[200392] = _T("没有可用的队伍"),--队伍描述
	[200393] = _T("第三阵位未解锁，不能配置角色"),--条件描述
	[200394] = _T("域都"),--建筑名字
	[200395] = _T("卫都"),--建筑名字
	[200396] = _T("关隘"),--建筑名字
	[200397] = _T("城镇"),--建筑名字
	[200398] = _T("资源区"),--建筑名字
	[200399] = _T("讨伐区"),--建筑名字
	[200400] = _T("世界地图"),--世界地图title
	[200401] = _T("是否确定选择<color=#03CB00>"),--提示文字描述
	[200402] = _T("</color>作为出生域？"),--提示文字描述
	[200403] = _T("出生域选择"),--出生域描述title
	[200404] = _T("争夺之地，不可选择"),--选择出生域时的描述
	[200405] = _T("该域当前人数已满，请选择其他域"),--选择出生域时的描述
	[200406] = _T("该域尚未开启，请选择其他域"),--选择出生域时的描述
	[200407] = _T("提<size=40>示</size>"),--选择出生域时的描述
	[200408] = _T("未开放"),--选择出生域时的描述
	[200409] = _T("可选择"),--选择出生域时的描述
	[200410] = _T("攻城排行榜"),--联盟攻城排行榜
	[200411] = _T("杀敌排行"),--联盟攻城排行榜
	[200412] = _T("攻城排行"),--联盟攻城排行榜
	[200413] = _T("名次"),--联盟攻城排行榜
	[200414] = _T("玩家名称"),--联盟攻城排行榜
	[200415] = _T("积分"),--联盟攻城排行榜
	[200416] = _T("无人上榜"),--联盟攻城排行榜
	[200417] = _T("关闭"),--联盟攻城排行榜
	[200418] = _T("军力上限"),--卡牌的国战属性页签
	[200419] = _T("克制效果"),--国战军团界面
	[200420] = _T("第%s名获得钻石%s"),--国战纪事
	[200421] = _T("暂时没有联盟达成"),--国战纪事
	[200422] = _T("需解锁采集科技"),--资源区弹窗采集按钮下方
	[200423] = _T("需解锁驻守科技")--资源区
}
ddt["words"] = data
SetLooseReadonly(data)
return data