--[[
output from excel guide.引导.xlsx
--note:

colums:
{ID,ID} ,{group,组} ,{step,步骤} ,{HandleType,手势引导方式
1-点击指定UI区域
2-上阵寄灵人
3-背景黑固定时间点背景
10-剧情引导
30-不能操作类型
31-点击国战场景
32-点击国战UI
-1-点击任意继续} ,{LogName,Log输出} ,{Desc,描述} ,{Jump,可跳过的到达stepId} ,{GroupJump,可跳过的跳过组Id} ,{Notice,通知服务器} ,{NeedTime,动效等待时间} ,{NeedScene,需要场景} ,{NeedUI,需要UI} ,{NeedUIType,ui打开还是关闭 
1-UI打开 
2-UI关闭 
3-查看是否在顶} ,{NeedEvent,前置触发条件需要等待的事件名} ,{Layer,打开界面的层} ,{ClickTag,点击类型
1-UI  
2-3D物品
3-点击奖励特殊处理
10-国战地图
11-国战UI} ,{ClickTagParamType,点击标签参数类型
1我的城镇
2我附近的城镇} ,{ClickEvent,3D物品点击触发事件的编号} ,{ClickEventParas,点击参数} ,{TargetId,移动目标
这里指的是UI可点击的目标id也就是参数 GetGuidePosById} ,{TargetView,UI
这里指的是UI可点击的目标界面 GetGuidePosById} ,{TargetPath,位置
如果targetId和TargetView没有则找TargetPath} ,{IsHide,画布蒙黑} ,{HideUI,是否关闭UI} ,{OverEvent,剧情结束后回调} ,{RearTime,后置时间（进入这一步之后多长时间进行点击/继续下一步）} ,{GuideBG,执行完后
背景是否打开
等待下一步的逻辑} ,{TalkIcon,对话框UI文件名
小人头像} ,{TalkX,对话框x} ,{TalkY,对话框y} ,{BoxSizeX,3D物件可点击区域的偏移Clolloder} ,{BoxSizeY,3D物件可点击区域的偏移Clolloder} ,{MoveX,3D物件可点击区域的偏移补偿移动} ,{MoveY,3D物件可点击区域的偏移补偿移动} ,{ShowFiger,是否显示UI手指} ,{ShowBeginPos,手指从中心开始  true       从上次的位置开始 false} ,{LoadRes,加载的路径
可能需要复制一份点击} ,{Voice,音效} ,{TargetType,目标类型
只有1类型
GetGuidePosById
10类型} ,{OverFun,结束回调事件
1-结束以后是否返回主城} ,{AwardId,点击获得奖励} ,{ClickIsSkill,点击的是否是技能} ,{StoryID,劇情ID} ,{MidEventType,步骤中等待事件 触发类型
1-
2-} ,{UnlockID,解锁ID} ,{MidEvent,步骤中等待事件}
primary key:
#0 [nation_guide]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,group = 20000,step = 1,HandleType = 30,LogName = "国战镜头到出生城镇_20000_1",NeedScene = "NationScene",ClickTag = 1,IsHide = false,OverEvent = "Data_Nation_Camera_Move_End",GuideBG = true,ShowFiger = true,ShowBeginPos = false},
	[2] = {ID = 2,group = 20000,step = 2,HandleType = 31,LogName = "国战点击出生城镇_20000_2",Desc = "这里是我们镇压灵域计划的起点，我们的初始城镇，点击城镇进行队伍配置",NeedScene = "NationScene",ClickTag = 1,ClickTagParamType = 1,IsHide = true,GuideBG = true,BoxSizeX = 200,BoxSizeY = 200,MoveX = 2,MoveY = 70,ShowFiger = true,ShowBeginPos = true},
	[3] = {ID = 3,group = 20000,step = 3,HandleType = 32,LogName = "国战点击城镇配置_20000_3",Desc = "点击配置按钮",NeedScene = "NationScene",NeedUI = "UINationTownBuildInfo",NeedUIType = 1,ClickTag = 1,ClickTagParamType = 1,TargetPath = "Map_empty_nation_Root[SCENE_NODE]/SceneCanvas/UINationTownBuildInfo/SizeChangeRoot/mask/root/activeGroup/Buttons/configButton",IsHide = true,GuideBG = true,ShowFiger = true,ShowBeginPos = false}
}