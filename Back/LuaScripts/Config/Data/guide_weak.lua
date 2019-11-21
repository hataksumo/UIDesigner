--[[
output from excel guide.引导.xlsx
--note:

colums:
{ID,ID} ,{group,组} ,{step,步骤} ,{HandleType,手势引导方式
1-点击
2-拖拽3背景黑固定时间点背景} ,{IsHide,画布蒙黑} ,{Layer,打开界面的层} ,{NeedTime,动效等待时间} ,{NeedScene,需要场景} ,{NeedUI,需要UI} ,{ShowBeginPos,手指从中心开始  true       从上次的位置开始 false} ,{NeedEvent,需要等待的事件名} ,{MidEventType,步骤中等待事件 触发类型} ,{MidEvent,步骤中等待事件} ,{RearTime,后置时间（进入这一步之后多长时间进行点击/继续下一步）} ,{ShowFiger,是否显示手指} ,{Voice,音效} ,{TargetPath,位置} ,{TalkIcon,对话框UI文件名
带人像的-002
不带人像的-003} ,{Desc,描述} ,{Notice,通知服务器} ,{ClickTag,点击类型
1-UI
2-3D物品）} ,{ClickEvent,3D物品点击触发事件的编号} ,{BoxSizeX,3D物件可点击区域的偏移Clolloder} ,{BoxSizeY,3D物件可点击区域的偏移Clolloder} ,{MoveX,3D物件可点击区域的偏移补偿移动} ,{MoveY,3D物件可点击区域的偏移补偿移动} ,{Nextgroup,是否直接下一步} ,{GuideBG,执行完后
背景是否打开
等待下一步的逻辑}
primary key:
#0 [guide_weak]: ID
]]
local _T = LangUtil.Language
return{
	[1001] = {group = 1, SetSon=true, step = 1,condition=103,HandleType = 1,IsHide = true,ShowBeginPos = true,
			  TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout", TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1, ClickEvent = 3,
			  BoxSizeX = 250,BoxSizeY =150,MoveX = -105,MoveY = 0,FigerX=100,FigerY=-100},--主界面点击挑战
	[1002] = {group = 1, SetSon=true, step = 2,HandleType = 1,IsHide = true,ShowBeginPos = true,NeedUI = "UIChallengeEntrance",
			  Voice = "-1",TargetParent ="UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel", TargetPath = "UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel/SoloBoss_UIButton",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = true,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =450,BoxSizeY =450,MoveX = 350,MoveY = -220,TalkX = -301,TalkY = -92,FigerX=100,FigerY=-100},--进入挑战选择
	[1003] = {group =1, SetSon=false, step = 3,HandleType = 6,Layer = "BackgroudLayer",NeedUI = "UICacodemon",ShowBeginPos = true,
			  TalkIcon = "ui_t_Guide_003",Desc = "-1",ClickTag = 1, MoveX = 800,MoveY = -500},--选择挑战  点击任意位置GG

	[1004] = {group = 2, SetSon=true, step = 1,condition=102,HandleType = 1,IsHide = true,ShowBeginPos = true,
			  TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout", TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1, ClickEvent = 3,
			  BoxSizeX = 250,BoxSizeY =150,MoveX = -105,MoveY = 0,FigerX=100,FigerY=-100},--主界面点击挑战
	[1005] = {group = 2, SetSon=true, step = 2,HandleType = 1,IsHide = true,ShowBeginPos = true,NeedUI = "UIChallengeEntrance",
			  Voice = "-1",TargetParent ="UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel", TargetPath = "UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel/LHGL_UIButton",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = true,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =420,BoxSizeY =420,MoveX = -110,MoveY = -110,TalkX = -110,TalkY = -92,FigerX=100,FigerY=-100},--进入挑战选择
	[1006] = {group = 2, SetSon=false, step = 3,HandleType = 6,Layer = "BackgroudLayer",NeedUI = "UILhglNew",ShowBeginPos = true,
			  TalkIcon = "ui_t_Guide_003",Desc = "-1",ClickTag = 1, MoveX = 800,MoveY = -500,FigerX=50,FigerY=-50},--选择挑战

	[1007] = {group = 3, SetSon=true, need_pos=1, step = 1,condition=312,HandleType = 1,IsHide = true,ShowBeginPos = true,MidEventType = -1,
			  TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout/RightActiveObject/CarnivalBtn", TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/RightActiveObject/CarnivalBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = true,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =150,BoxSizeY = 150,MoveX =0,MoveY = 0,FigerX=50,FigerY=-50},--进入嘉年华

	[1008] = {group = 4, SetSon=true, step = 1,condition=311,HandleType = 1,IsHide = true,ShowBeginPos = true,MidEventType = -1,
			  MidEvent = "-1",RearTime = 0,ShowFiger =true,Voice = "-1",TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout",
			  TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/arenaBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1, ClickEvent = 4,
			  BoxSizeX = 250,BoxSizeY = 150,MoveX = -85,MoveY = 270,FigerX=100,FigerY=-100},--主界面点击竞技场
	[1009] = {group = 4, SetSon=true, step = 2,HandleType = 1,IsHide = true,ShowBeginPos = true,MidEventType = -1,NeedUI = "UIArenaForChoice",
			  MidEvent = "-1",RearTime = 0,ShowFiger =true,Voice = "-1",TargetParent ="UIRoot/NormalLayer/UIArenaForChoice/BgRoot", TargetPath = "UIRoot/NormalLayer/UIArenaForChoice/BgRoot/arena_one_UIButton",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = true,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =3000,BoxSizeY = 3000,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=300,FigerY=-300},
	[1010] = {group = 4, SetSon=false, step = 3,HandleType = 6,Layer = "BackgroudLayer",NeedUI = "UIArenaMain",ShowBeginPos = true,
			  TalkIcon = "ui_t_Guide_003",Desc = "-1",ClickTag = 1, MoveX = 740,MoveY = -240,FigerX=50,FigerY=-50},--进入竞技场选择

	[1011] = {group = 5, SetSon=true, step = 1,--[[condition=105,--]]HandleType = 1,IsHide = true,ShowBeginPos = true,
			  TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout", TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/MainBtn/challengeBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1, ClickEvent = 3,
			  BoxSizeX = 250,BoxSizeY =150,MoveX = -105,MoveY = 0,FigerX=100,FigerY=-100},--主界面点击挑战
	[1012] = {group = 5, SetSon=true, step = 2,HandleType = 1,IsHide = true,ShowBeginPos = true,NeedUI = "UIChallengeEntrance",
			  Voice = "-1",TargetParent ="UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel", TargetPath = "UIRoot/BackgroudLayer/UIChallengeEntrance/BgRoot/EntrancePanel/TeachingLevel_UIButton",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = true,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =550,BoxSizeY = 550,MoveX = -620,MoveY = -90,TalkX = -301,TalkY = -92,FigerX=100,FigerY=-100},--进入挑战选择
	[1013] = {group = 5, SetSon=false, step = 3,HandleType = 6,Layer = "BackgroudLayer",NeedUI = "UITrainingCamp",ShowBeginPos = true,
			  TalkIcon = "ui_t_Guide_003",Desc = "-1",ClickTag = 1, MoveX = 800,MoveY = 230,FigerX=50,FigerY=-50},--选择挑战

	[1014] = {group = 20, SetSon=true, step = 1,HandleType = 1,IsHide = true,ShowBeginPos = true,
			  TargetParent ="UIRoot/BackgroudLayer/UITestMain/parentLayout/rightLayout/maoxianBtn", TargetPath = "UIRoot/BackgroudLayer/UITestMain/parentLayout/rightLayout/maoxianBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1, ClickEvent = 1,
			  BoxSizeX = 220,BoxSizeY = 200,MoveX = 0,MoveY = 30,FigerX=100,FigerY=-100},--点击冒险

	[1015] = {group = 30,step = 1,HandleType = 1,IsHide = true,Layer = "BackgroudLayer",ShowBeginPos = true, ShowFiger =true,Voice = "-1", TargetPath = "UIRoot/BackgroudLayer/UIExploreMain/ParentLayout/GoHeadBtn",TalkIcon = "ui_t_Guide_003",Desc = "点击前进",
              ClickIsSkill = false,ClickTag = 4,ClickEvent = -1,
              BoxSizeX = 560,BoxSizeY = 180,MoveX = -20,MoveY = -30,TalkX = -301,TalkY = -92},--探险前进

	[1016] = {group = 40,SetSon=false,step = 1,HandleType = 2,Layer = "BackgroudLayer",ShowBeginPos = true,MidEventType = -1,
			  MidEvent = "-1",RearTime = 0,ShowFiger =true,Voice = "-1", TargetPath = "",TalkIcon = "ui_t_Guide_003",Desc = "-1",
			Notice = false,ClickIsSkill = false,ClickTag = 4,MoveX = 0,MoveY = 0 },--拖拽

    [1017] = {group = 50,SetSon=true,step = 1,HandleType = 1,Layer = "NormalLayer",ShowBeginPos = true,
             ShowFiger =true,Voice = "-1", TargetParent = "UIRoot/NormalLayer/UILevelNewDetail/RightLayout/UICardBackAniRoot/RewardsLayout/arrayBtn",TalkIcon = "ui_t_Guide_003",Desc = "-1",
			  TargetPath = "UIRoot/NormalLayer/UILevelNewDetail/RightLayout/UICardBackAniRoot/RewardsLayout/arrayBtn",
			  Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1,
              ClickEvent = -1,BoxSizeX = 200,BoxSizeY = 100,MoveX = 0,MoveY = 0,FigerX=50,FigerY=-50},--打开步阵

    [1018] = {group = 60,SetSon=false,step = 1,HandleType = 5,IsHide = true,Layer = "BackgroudLayer",ShowBeginPos = true,MidEventType = -1,
              MidEvent = "-1",RearTime = 0,ShowFiger =true,Voice = "-1",TalkIcon = "ui_t_Guide_003",Desc = "-1",
              Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1,
              ClickEvent = -1,MoveX = 0,MoveY = 0},--拖拽

	[1019] = {group = 70, SetSon=true, step = 1,HandleType = 1,IsHide = true,ShowBeginPos = true,
			  TargetParent ="UIRoot/BackgroudLayer/UILevelMainNew/ParentLayout/TargetRewardPanel", TargetPath = "UIRoot/BackgroudLayer/UILevelMainNew/ParentLayout/TargetRewardPanel/targetFrameBtn",
			  TalkIcon = "ui_t_Guide_003",Desc = "-1", Jump = 0,Notice = false,ClickIsSkill = false,ClickTag = 1,
			  BoxSizeX =160,BoxSizeY = 160,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--进入关卡领奖

	[1020] = {group = 100,JumpGroupParm=10101, SetSon=true,SetGuide=true, step = 1,HandleType =100,IsHide = true,ShowBeginPos = true,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  ClickTalk=true,TalkIcon = "ui_t_c2_463",Desc = "没有使用灵气技能，召唤守护灵会慢人一步呦，是否继续?",ShowCanBtn=2,ClickNotNext=true,
			  ClickTag = 1,BoxSizeX =120,BoxSizeY = 120,MoveX =-50,MoveY = -450,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10101
	[1021] = {group = 100,  step = 2,HandleType =100,IsHide = true,ShowBeginPos = true,NeedEvent="ON_GUIDE_CRY_PLAY_OVER_ROUND",NeedEventRound=2,NeedUI="UIBattleIn",
			  TargetParent ="UIRoot/NormalLayer/UIBatt leIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  ClickTag = 1,JumpParm=10101,ShowFiger=true,Layer="NormalLayer",
			  BoxSizeX =100,BoxSizeY = 100,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10101
	[1022] = {group = 100,  step = 3,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			   TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Hero/Role2_Hero_Icon",
			  BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10101
	[1023] = {group = 100, step = 4,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  MaskRes = "UI/Prefabs/Other/Guide_3_8.prefab", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/BattleStateControlModule/Image_Start",
			  BoxSizeX =220,BoxSizeY =220,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10101

	[1024] = {group = 101,  step = 1,HandleType =104,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",NeedEvent="ON_GUIDE_CRY_PLAY_OVER",
			  TalkIcon="ui_t_c2_463",Desc = "发生意外,全力输出,直接使用曹焱兵的阎王炮技能可以额外获取1个红色灵气,加速召唤守护灵！",
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/Friend/1",PathX=150,PathY=150,Path_PosX=-170,Path_PosY=-300,
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Hero/Role2_Crystal",ParentX=150,ParentY=150,Parent_PosX=-270,Parent_PosY=-485,
			  CloneEffectPath="Effect/Prefab/UI/fx_ui_guide_crystal_mask.prefab", BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,FigerX=50,FigerY=-50},--10103
	[1025] = {group = 101,  step = 2,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  Desc = "在特定条件下使用灵气技能可以获得额外的灵气",Tip1_X=-80,Tip1_Y=-350,
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,FigerX=50,FigerY=-50},--10103
	[1026] = {group = 101,  step = 3,HandleType =104,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",NeedEvent="UI_Guide_Skill_Add_CryEvent",
			  Desc = "曹焱兵的技能处于第一行动位时可多获得1个红色灵气,大部分角色都有额外方式获得更多灵气",Tip1_X=-50,Tip1_Y=-300,
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/SkillCardPanel/1",PathX=200,PathY=200,Path_PosX=-250,Path_PosY=45,
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/add_cry",ParentX=250,ParentY=150,Parent_PosX=-100,Parent_PosY=-350,Parent_SonX=-30,Parent_SonY=0,
			  BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10103
	[1027] = {group = 101,  step = 4,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Hero/Role2_Hero_Icon",
			  BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10103
	[1028] = {group = 101, step =5,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  MaskRes = "UI/Prefabs/Other/Guide_3_8.prefab",TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/BattleStateControlModule/Image_Start",
			  BoxSizeX =220,BoxSizeY =220,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10103
	[1029] = {group = 102,  step = 1,HandleType =101,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  ClickTag = 1,Layer="NormalLayer", ClickTalk=true,TalkIcon = "ui_t_c2_463",Desc = "你的操作方式会使你召唤守护灵变晚，是否继续？",
			  Tip_X=-600,Tip_Y=-350,Tip1_X=-80,Tip1_Y=-350,Tip2_X=560,Tip2_Y=-350,ShowCanBtn=2,},--10109
	[1030] = {group = 103,  step = 1,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  NeedEvent="ON_GUIDE_CRY_PLAY_OVER_ROUND",NeedEventRound=3,NeedUI="UIBattleIn",
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  JumpParm=10110,BoxSizeX =100,BoxSizeY = 100,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--11010
	[1031] = {group = 103,  step = 2,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Hero/Role2_Hero_Icon",
			  JumpGroupParm=10110,BoxSizeX =140,BoxSizeY = 140,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10110
	[1032] = {group = 103, step =3,HandleType =100,IsHide = true,ShowBeginPos = true, ClickTag = 1,ShowFiger=true,Layer="NormalLayer",
			  MaskRes = "UI/Prefabs/Other/Guide_3_8.prefab",TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/BattleStateControlModule/Image_Start",
			 BoxSizeX =220,BoxSizeY =220,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10103
	[1033] = {group = 104,  step = 1,HandleType =103,SetGuide=true,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",ClickNotNext=true,ClickBtn=2,
			  ClickTag = 1,Layer="NormalLayer", ClickTalk=true,TalkIcon = "ui_t_c2_463",BeginDes="中间的怪物在场时，他的队友每回合都能获得可以吸收大量伤害的护盾",Desc = "如果不先击杀中间的敌人，通关难度会变大，是否继续？",
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn1/Role2_Btn1_Icon",
			  TargetParent1 ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn2", TargetPath1 = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role2/Role2_Btn2/Role2_Btn2_Icon",
			  ShowCanBtn=2,BoxSizeX =120,BoxSizeY = 120,MoveX1 = -50,MoveY1 = -450,MoveX2 = 80,MoveY2 = -450,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10201
	[1034] = {group = 105,SetGuide=true, step = 1,HandleType =103,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",ClickNotNext=true,ClickBtn=1,
			  ClickTag = 1,Layer="NormalLayer", ClickTalk=true,TalkIcon = "ui_t_c2_463",BeginDes="敌人带有很强的增益效果，没把握1回合击杀时最好先把该效果驱散掉",Desc = "这样操作可能导致通关失败，是否继续？",
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role3/Role3_Btn1", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role3/Role3_Btn1/Role3_Btn1_Icon",
			  ShowCanBtn=2,BoxSizeX =120,BoxSizeY = 120,MoveX = 450,MoveY = -450,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10301
	[1035] = {group = 106,  step = 1,HandleType =103,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",ClickNotNext=true,
			  ClickTag = 1,Layer="NormalLayer", ClickTalk=true,TalkIcon = "ui_t_c2_463",BeginDes="中间这个怪物在场时,1回合内没有行动的角色会受到伤害，请合理分配行动位",Desc = "这样操作可能导致通关失败，是否继续？",
			  ShowCanBtn=2,BoxSizeX =96,BoxSizeY = 96,MoveX = 0,MoveY = 0,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10401
	[1036] = {group = 107,SetGuide=true, step = 1,HandleType =103,NeedEvent="ON_GUIDE_CRY_PLAY_OVER",NeedUI="UIBattleIn",ClickNotNext=true,ClickBtn=1,
			  ClickTag = 1,Layer="NormalLayer", ClickTalk=true,TalkIcon = "ui_t_c2_463",BeginDes="这个怪物的特点是能大幅削弱敌人，请注意自己的状态",Desc = "这样操作可能导致通关失败，是否继续？",
			  TargetParent ="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role3/Role3_Btn2", TargetPath = "UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/Role3/Role3_Btn2/Role3_Btn2_Icon",
			  ShowCanBtn=2,BoxSizeX =120,BoxSizeY = 120,MoveX = 600,MoveY = -450,TalkX = -301,TalkY = -92,FigerX=50,FigerY=-50},--10501
}

