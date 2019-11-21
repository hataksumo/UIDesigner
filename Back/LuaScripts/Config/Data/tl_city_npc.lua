--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{PersonId,人物Id} ,{Name,人物名字} ,{HeadPic,人物头像} ,{DialogTopId,首次问候对话组Id} ,{TopicId,话题Id} ,{Type,类型
1.玩家发起
2.NPC发起} ,{Hello,玩家发起问候} ,{IniDialogId,初始对话Id} ,{UlockDialogIds,解锁对话组Id} ,{NPCRsp,NPC回复} ,{PlayerRspNxtId[1],玩家回复下一个结点ID1} ,{PlayerRspNxtId[2],玩家回复下一个结点ID2} ,{PlayerRspContent[1],玩家回复1} ,{PlayerRspContent[2],玩家回复2}
primary key:
#0 [微信联系人]: PersonId
#1 [对白主题]: PersonId,HelpCol,TopicId
#2 [对白]: PersonId,HelpCol,TopicId,HelpCol1,DialogId
]]
local _T = LangUtil.Language
return{
	[101] = {
		PersonId = 101,
		Name = "刘珊珊",
		HeadPic = "head_nmj_1102050",
		DialogTopId = 10100,
		Topics = {
			[10100] = {PersonId = 101,TopicId = 10100,Type = 2,Hello = nil,IniDialogId = 1010101},
			[10101] = {
				PersonId = 101,
				TopicId = 10101,
				Type = 1,
				Hello = "刘珊珊介绍案情",
				IniDialogId = 1010101,
				Dialogs = {
					[1010101] = {PersonId = 101,TopicId = 10101,NPCRsp = "你好，你就是负责这次案件的侦探先生吗？",PlayerRspNxtId = {[1] = 1010102,[2] = -1},PlayerRspContent = {[1] = "是的，现在能和我详细说说案件的情况吗？"}},--刘珊珊介绍案情
					[1010102] = {PersonId = 101,TopicId = 10101,NPCRsp = "现在我们大家都很慌，不知道怎么办才好",PlayerRspNxtId = {[1] = -1,[2] = -1}},--刘珊珊介绍案情
					[1010103] = {PersonId = 101,TopicId = 10101,NPCRsp = "秦漠死了......",PlayerRspNxtId = {[1] = 1010104},PlayerRspContent = {[1] = "秦漠？"}},--刘珊珊介绍案情
					[1010104] = {PersonId = 101,TopicId = 10101,NPCRsp = "这次出来玩的有5个人，我、我的男朋友汪大东、沈梦、沈梦的男朋友林宣，还有秦漠。",PlayerRspNxtId = {[1] = -1,[2] = -1}},--刘珊珊介绍案情
					[1010105] = {PersonId = 101,TopicId = 10101,NPCRsp = "6月17日是秦漠生日，约我们一起去山上露营，晚上8点秦漠说要去看星星，结果当晚就没有回来。"},--刘珊珊介绍案情
					[1010106] = {PersonId = 101,TopicId = 10101,NPCRsp = "第二天在丽水河岸发现了他的尸体",PlayerRspNxtId = {[1] = 1010107},PlayerRspContent = {[1] = "大致情况我了解了，我先去案发地看一下情况"}},--刘珊珊介绍案情
					[1010107] = {PersonId = 101,TopicId = 10101,NPCRsp = "好的，我会再联系您的",PlayerRspNxtId = {[1] = -1,[2] = -1}}--刘珊珊介绍案情
				}
			},
			[10102] = {
				Dialogs = {
					[1010201] = {PersonId = 101,TopicId = 10102,NPCRsp = "我听姗姗说了，希望您可以帮我们找出真凶",PlayerRspNxtId = {[1] = 1010202,[2] = 1010203},PlayerRspContent = {[1] = "你和秦漠的关系？",[2] = "你的男朋友林轩？"}},--沈梦介绍案情1
					[1010202] = {PersonId = 101,TopicId = 10102,NPCRsp = "人文历史最没意思了，我们聊自然地理吧",PlayerRspNxtId = {[1] = -1,[2] = -1}},--沈梦介绍案情
					[1010203] = {PersonId = 101,TopicId = 10102,NPCRsp = "我也很喜欢自然地理，我这里有个地球仪送给你",PlayerRspNxtId = {[1] = -1,[2] = -1}}--沈梦介绍案情
				}
			},
			[10103] = {
				PersonId = 101,
				TopicId = 10103,
				Type = 1,
				Hello = "我想跟你聊事件A",
				IniDialogId = 1010301,
				Dialogs = {
					[1010301] = {PersonId = 101,TopicId = 10103,NPCRsp = "想了解事件1，请回答我一个问题，英语卷选啥得分高",PlayerRspNxtId = {[1] = 1010302,[2] = 1010303},PlayerRspContent = {[1] = "我猜英语卷选C得分高",[2] = "我猜英语卷选B得分高"}},--沈梦介绍案情
					[1010302] = {PersonId = 101,TopicId = 10103,NPCRsp = "好像很多人都这么说唉",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "然而，我每次都选A，我就是不一样"}},--沈梦介绍案情
					[1010303] = {PersonId = 101,TopicId = 10103,NPCRsp = "不是好多人说选C得分高么",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "然而，我每次都选D，我就是不一样"}},--许墨-事件1-3
					[1010304] = {PersonId = 101,TopicId = 10103,NPCRsp = "你真是有意思",PlayerRspNxtId = {[1] = -1,[2] = -1}}--许墨-事件1-4
				}
			},
			[10104] = {
				PersonId = 101,
				TopicId = 10104,
				Type = 1,
				Hello = "我想跟你聊事件B",
				IniDialogId = 1010401,
				Dialogs = {
					[1010401] = {PersonId = 101,TopicId = 10104,NPCRsp = "隔壁小明，很会生活啊",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "小明吸烟喝酒烫头，他一定是魔术师",[2] = "小明吸烟喝酒烫头，他一定是不是好人"}},--许墨-事件2-1
					[1010402] = {PersonId = 101,TopicId = 10104,NPCRsp = "你以为是于谦么",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "……",[2] = "对啊，于谦的魔术超好玩"}},--许墨-事件2-2
					[1010403] = {PersonId = 101,TopicId = 10104,NPCRsp = "蛤？",PlayerRspNxtId = {[1] = 1010405,[2] = -1},PlayerRspContent = {[1] = "其实啦，人不可貌相。"}},--许墨-事件2-3
					[1010404] = {PersonId = 101,TopicId = 10104,NPCRsp = "其实我也吸烟喝酒烫头，哈哈",PlayerRspNxtId = {[1] = 1010405,[2] = -1},PlayerRspContent = {[1] = "其实啦，人不可貌相。"}},--许墨-事件2-4
					[1010405] = {PersonId = 101,TopicId = 10104,NPCRsp = "哈哈，我同意你的观点",PlayerRspNxtId = {[1] = -1,[2] = -1}}--许墨-事件2-5
				}
			}
		}
	},
	[102] = {
		PersonId = 102,
		Name = "沈梦",
		HeadPic = "head_nmj_1102050",
		DialogTopId = 10200,
		Topics = {
			[10200] = {PersonId = 102,TopicId = 10200,Type = 2,Hello = nil,IniDialogId = 1010101},
			[10201] = {
				PersonId = 102,
				TopicId = 10201,
				Type = 1,
				Hello = "沈梦聊天1",
				IniDialogId = 1020101,
				Dialogs = {
					[1010108] = {PersonId = 102,TopicId = 10201,NPCRsp = "你好，侦探先生，我是沈梦",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "你好"}}--沈梦介绍案情1
				}
			},
			[10202] = {PersonId = 102,TopicId = 10202,Type = 1,Hello = "极净乐土真的棒极了",IniDialogId = 1020101},
			[10203] = {PersonId = 102,TopicId = 10203,Type = 1,Hello = "我想跟你聊下事件C",IniDialogId = 1020201}
		}
	},
	[103] = {
		PersonId = 103,
		Name = "林轩",
		HeadPic = "head_nmj_1102050",
		DialogTopId = 10300,
		Topics = {
			[10201] = {
				Dialogs = {
					[1020101] = {PersonId = 103,TopicId = 10201,NPCRsp = "你也看过这个视频么",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "对呀，好多男孩子都喜欢看",[2] = "和风宅舞最美了"}},--水桥舞-极净乐土-1
					[1020102] = {PersonId = 103,TopicId = 10201,NPCRsp = "切，死变态",PlayerRspNxtId = {[1] = 1020104,[2] = -1},PlayerRspContent = {[1] = "….."}},--水桥舞-极净乐土-2
					[1020103] = {PersonId = 103,TopicId = 10201,NPCRsp = "有品位，快给姐跳一段",PlayerRspNxtId = {[1] = 1020104,[2] = -1},PlayerRspContent = {[1] = "……"}},--水桥舞-极净乐土-3
					[1020104] = {PersonId = 103,TopicId = 10201,NPCRsp = "哈哈哈哈",PlayerRspNxtId = {[1] = -1,[2] = -1}}--水桥舞-极净乐土-4
				}
			},
			[10202] = {
				Dialogs = {
					[1020201] = {PersonId = 103,TopicId = 10202,NPCRsp = "怎么想到会找我？",PlayerRspNxtId = {[1] = -1,[2] = -1},PlayerRspContent = {[1] = "因为你长得漂亮啊",[2] = "据说这件事情和一个仪式有关"}},--水桥舞-事件C-1
					[1020202] = {PersonId = 103,TopicId = 10202,NPCRsp = "小伙子，最真甜",PlayerRspNxtId = {[1] = -1,[2] = -1}},--水桥舞-事件C-2
					[1020203] = {PersonId = 103,TopicId = 10202,NPCRsp = "我这里有一本关于这个仪式的日记，不知是否对你有所帮助",PlayerRspNxtId = {[1] = -1,[2] = -1}}--水桥舞-事件C-3
				}
			}
		}
	},
	[104] = {PersonId = 104,Name = "汪大东",HeadPic = "head_nmj_1102050",DialogTopId = 10400}
}