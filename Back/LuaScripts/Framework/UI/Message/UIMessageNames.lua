--[[
-- added by wsh @ 2017-11-30
-- UI消息定义，手动添加
-- 定义格式：模块名_ON_事件描述 = "驼峰式消息名"
-- 注意：
-- 1、这类型的消息只在UI模块中流通，View层只关注这里的消息，由Model层发送
-- 2、如果窗口足够简单，那每次数据变化时发送OnRefresh消息就可以了，View层进行整体刷新，以避免消息臃肿
--]]

local UIMessageNames = {
    -- 框架消息
    UIFRAME_ON_WINDOW_CREATE = "UIFrameOnWindowCreeate",
    UIFRAME_ON_WINDOW_OPEN = "UIFrameOnWindowOpen",
    UIFRAME_ON_WINDOW_CLOSE = "UIFrameOnWindowClose",
    UIFRAME_ON_WINDOW_DESTROY = "UIFrameOnWindowDestroy",
    --资源
    ON_SOME_COIN_NUM_CHANGE = "OnSomeCoinNumChange", --某种货币数量改变
    ON_GOLD_NUM_CHANGE = "OnGoldNumChange", --金币数量改变
    ON_DIAMOND_NUM_CHANGE = "OnDiamondNumChange", --钻石数量改变
    ON_GUARD_EXP_NUM_CHANGE = "OnGuardExpNumChange", --守护灵经验数量改变
    ON_HOST_EXP_NUM_CHANGE = "OnHostExtNumChange", --寄灵人经验数量改变
    ON_SKILL_EXP_NUM_CHANGE = "OnSkillExpNumChange", --技能经验数量改变
    ON_STAMINA_NUM_CHANGE = "OnStaminaNumChange", --体力数量改变
    ON_HONOR_NUM_CHANGE = "OnHonorNumChange", --荣誉值改表
    ON_MUSIC_MUTE_SET = "OnMusicMuteSet", --音乐静音设置
    -- 模块消息添加到下面
    -- UILogin模块
    UILOGIN_ON_SELECTED_SVR_CHG = "UILoginOnSelectedSvrChg",
    UI_ARTIFACT_RESET_BODY_DATA = "UI_ARTIFACT_RESET_BODY_DATA",
    --金币兑换模块
    CONFIRM_ONE_TIMES = "ConfirmOneTimes",
    CONFIRM_FIVE_TIMES = "ConfirmFiveTimes",
    --确认金币兑换模块
    CONFIRM_ONE_TIMES_Exchange = "ConfirmOneTimesExchange",
    CONFIRM_FIVE_TIMES_Exchange = "ConfirmFiveTimesExchange",
    -- UICardPool模块
    UI_CARD_POOL_SELECT_CARD_POOL = "UI_CARD_POOL_SELECT_CARD_POOL";
    UI_CARD_DETAIL_ON_CLOSE = "UICardDetailOnClose",
    UI_LEARN_SKILL_ON_SELECT_SKILL = "UILearnSkillOnSelectSkill",
    UI_CARD_DETAIL_REFRESH = "UICardDetailsRefresh",
    UI_SKILL_REFRESH = "UISkillRefresh",
    UI_CARD_POOL_REFRESH = "UICardPoolRefresh",
    UI_CARD_WEAPON_REFRESH = "UICardWeaponRefresh",
    UI_WEAPON_STRENGTH_REFRESH = "UIWeaponStrengthRefresh",
    UI_WEAPON_UNSEAL_REFRESH = "UIWeaponUnsealRefresh",
    --UIMap模块
    UIMAP_ON_CHAPTER_REFRESH = "UIMapOnChapterRefresh",
    UIMAP_ON_LEVEL_REFRESH = "UIMapOnLevelRefresh",
    UIMAP_ON_REFRESH_CHAPTER_BOX = "UIMAP_ON_REFRESH_CHAPTER_BOX", --章节领取宝箱刷新
    UIMAP_ON_UPDATE_UI_BOX = "UIMAINCITY_STAMINA_UPDATE", --刷新界面的章节宝箱显示
    UIMAP_SWITCH_CAM_LOOK = "UIMapSwitchCamLook",
    -- UIBackpack模块
    UIBACKPACK_ON_SELECT_CARD = "UIBackpackOnSelectCard",
    UIMAIN_TASK_DATA_UPDATE = "UIMainTaskDataUpdate",
    --活动副本
    --单人boss
    UI_SOLO_BOSS_ON_SELECT_LEVEL = "UISoloBossOnSelectLevel",
    UI_SOLO_BOSS_REFRESH = "UISoloBossRefresh",
    --战斗模块
    UIBATTLE_ON_ROUND = "UIBattleOnRound",
    UIBATTLE_SELECT_SKILL = "UIBattleSelectSkill",
    UIBATTLE_SELECT_SKILL_BACK = "UIBattleSelectSkillBack",
    UIBATTLE_TEAM_TIP_SHOW = "UIBattleTeamTipShow",
    UIBATTLE_TEAM_TIP_HIDE = "UIBattleTeamTipHide",
    UIEMBATTLE_CHANGE__CAM = "UIEmBattleChangeCam",
    UIBATTLE_CRYSTAL_CHANGE = "UIBattleCrystalChange",
    UIBATTLE_UI_HIDE = "UIBattleUIHide",
    UIBATTLE_CALL_SWITCH = "UIBattleCallSwitch",
    UIBATTLE_SHOW_BLOOD = "UIBattleShowBlood",
    UIBATTLE_SHOW_ALL_BLOOD = "UIBattleShowAllBlood",
    UIBATTLE_HIDE_All_BLOOD = "UIBattleHideAllBlood",
    UIBATTLE_QUIT = "UIBattleQuit",
    UIBATTLE_GET_ROLE_DATA = "UIBattleGetRoleData",
    UIBATTLE_BACK_ROLE_DATA = "UIBattleBackRoleData",
    UIBATTLE_ROUND_TIP = "UIBattleRoundTip",
    UIBATTLE_ENEMY_INFO_END = "UIBattleEnemyInfoEnd",
    UIBATTLE_WIN__CAM = "UIBattleWinCam",
    UIBATTLE_CANCEL_SKILL = "UIBattleCancelSkill",
    UIEMBATTLE_CHANGE__CAMFOV = "UIEmBattleChangeCamFov",
    UIBATTLE_RESET_ENTER = "UIBATTLE_RESET_ENTER",
    UIBATTLE_RESET_ENTER_BATTLE = "UIBATTLE_RESET_ENTER_BATTLE",
    UIBATTLE_REFRESH_BLOOD_CRY = "UIBATTLE_REFRESH_BLOOD_CRY",
    UIBATTLE_SET_TIME_SCALE_MULT = "UIBATTLE_SET_TIME_SCALE_MULT",
    UIBATTLE_HERO_DIALOG_TIP = "UIBATTLE_HERO_DIALOG_TIP",
    UIBATTLE_MONSTER_DIALOG_TIP = "UIBATTLE_MONSTER_DIALOG_TIP",
    UIBATTLE_HERO_DIRECTION_TIP = "UIBATTLE_HERO_DIRECTION_TIP",
    UIBATTLE_HERO_POWER_TIP = "UIBATTLE_HERO_POWER_TIP",
    UIBATTLE_SIMPLE_THREE_STATE = "UIBATTLE_SIMPLE_THREE_STATE",
    UIBATTLE_PLAY_STORY = "UIBATTLE_PLAY_STORY",
    UIBATTLE_PLAY_CRY_ANIM = "UIBATTLE_PLAY_CRY_ANIM",
    UIBATTLE_PLAY_GETCRY_EFFECT = "UIBATTLE_PLAY_GETCRY_EFFECT",
    -- UIEmBattle模塊
    UIEMBATTLE_ON_REFRESH = "UIEmBattleOnRefresh",
    UIEMBATTLE_ON_SWITCHLIST = "UIEmBattleOnListSwitch",
    UIEMBATTLE_ON_CHECK_DRAG = "UIEmBattleOnCheckDrag",
    UIEMBATTLE_ON_FILTER_CLICK = "UIEMBATTLE_ON_FILTER_CLICK",
    UIEMBATTLE_ON_REFRESH_FLITER_UI = "UIEMBATTLE_ON_REFRESH_FLITER_UI",
    UIEMBATTLE_ON_SET_LAYOUT_ALPHA = "UIEMBATTLE_ON_SET_LAYOUT_ALPHA", --设置界面的透明度
    UIEMBATTLE_ON_SELECT_ZHENFA = "UIEMBATTLE_ON_SELECT_ZHENFA", --阵法选择后刷新数据
    UIEMBATTLE_ON_SELECT_ZHENFA_REFRESH = "UIEMBATTLE_ON_SELECT_ZHENFA_REFRESH", --UI界面阵法选择刷新
    UIEMBATTLE_ON_CLICK_SINGLE_CARD = "UIEMBATTLE_ON_CLICK_SINGLE_CARD"; --卡牌详情点击
    -- 2D布阵模块
    UIEMBATTLE2D_ON_REFRESH = "UIEMBATTLE2D_ON_REFRESH",
    UIEMBATTLE2D_ON_CLICK_SINGLE_CARD = "UIEMBATTLE2D_ON_CLICK_SINGLE_CARD",
    UIEMBATTLE2D_ON_ENEMY_READY = "UIEMBATTLE2D_ON_ENEMY_READY",
    UIEMBATTLE2D_ON_ENEMY_GROUP = "UIEMBATTLE2D_ON_ENEMY_GROUP",
    UIEMBATTLE2D_ON_LOADING_COMPLETE = "UIEMBATTLE2D_ON_LOADING_COMPLETE",
    --邮件相关的刷新
    UISINGLE_MAIL_REAR_STATE_UPDATE = "UISingleMailReadStateUpdate",
    UISINGLE_MAIL_DELEGATE_UPDATE = "UISingleMailDelegateUpdate",
    UIALLMAIL_GET_UPDATE_STATE = "UIAllMailGetUpdateState",
    --主城邮件红点的刷新
    UIMAINCITY_MAILREDPOINT_UPDATE = "UIMaincityMailRedpointUpdate",
    UIMAINCITY_CHAT_UPDATE = "UIMAINCITY_CHAT_UPDATE", --主城聊天信息更新
    UI_RESET_GET_NEW_CARD_STATE = "UI_RESET_GET_NEW_CARD_STATE", --重置抽卡状态
    UI_AGAIN_GET_NEW_CARD = "UI_AGAIN_GET_NEW_CARD",--再来一次抽卡通知
    --网络模块
    UI_NET_CONNECT_FAIL = "UI_NET_CONNECT_FAIL", -- 网络连接失败
    UI_SHOW_CARD_RESULT_STATE = "UI_SHOW_CARD_RESULT_STATE", --翻完牌显示按钮
    --体力
    UIMAINCITY_STAMINA_UPDATE = "UIMaincityStaminaUpdate",
    --实时竞技场战报刷新
    UI_ARENA_PVP_REPORT_UPDATE = "UIArenaPvpReportUpdate",
    --实时竞技场排行榜
    UI_ARENA_PVP_RANK_UPDATE = "UI_ARENA_PVP_RANK_UPDATE",
    --技能卡槽升级成功
    UISKILL_BACKPACK_LV_SUCCEED = "UISkillBackpackLvSucceed",
    --卡槽技能兑换数据刷新
    UISKILL_EXCHANGE_SUCCEED = "UISkillExchangeSucced",
    UISKILL_EXCHANGE_SKILL_DATA = "UISkillExchangeSkillData",
    --获取技能经验界面刷新
    UI_GET_SKILL_EXP_ON_SELECT_ITEM = "UIGetSkillExpOnSelectItem",
    UI_GET_SKILL_EXP_REFRESH = "UIGetSkillExpRefresh",
    UIMAINCITY_OPEN_WINDOW = "UIMaincityOpenWindow",
    UIMAINCITY_BACK_SCENE = "UIMaincityBackScene",
    UI_GET_NEW_CARD_IMG_STATE = "UI_GET_NEW_CARD_IMG_STATE",
    --寄灵人碎片分解界面刷新
    UI_JLRCHIP_EXC_ON_SELECT_ITEM = "UIJlrChipExchangeOnSelectItem",
    UI_JLRCHIP_EXC_REFRESH = "UIJlrChipExchangeRefresh",
    UI_ARTIFACT_IMG_HIDE = "UI_ARTIFACT_IMG_HIDE",
    --物品刷新
    UPDATE_ITEM_COUNT = "UpdateItemCount",
    --弹幕的事件
    UI_DAN_MU_EVENT = "UI_DAN_MU_EVENT",
     --竞技场战报刷新
    UPDATE_ARENA_REPORT_DATA = "UpdateArenaReportData",
    UPDATE_ARENA_RANK_LIST_DATA = "UpdateArenaRankListData",
    UPDATE_BOX_STATE_DATA = "UpdateBoxStateData",
    UPDATE_ARENA_CHALLENGE_PEO_DATA = "UpdateArenaChallengePeoData",
    ARENA_CLOSE_SEND_SHOW_TIPS = "ArenaCloseSendShowTips", --- 竞技场关闭发送通知
    ARENA_RESET_PK_PLAYER_SEND_MESSAGE = "ArenaResetPkPlayerSendMessage", ---竞技场刷新三个人
    ARENA_TICK_NUM_UPDATE = "ArenaTickNumUpdate",
    --芦花鼓楼
    UILHGL_INIT_UI_SHOW = "UILHGL_INIT_UI_SHOW",
    UILHGL_SET_CUR_CAMP = "UILHGL_SET_CUR_CAMP", --设置当前芦花鼓楼选中的副本
    --派遣挂机
    UIHANGUP_CHANGE = "UIHangup_Change",
    UIHANGUP_REFRESH = "UIHangup_Refresh",
    UIPATROL_CHANGE = "UIPatrol_Change",
    UIUPDATE_ITEM_LIST = "UIUpdate_Item_List",
    UIPATROL_BUY_UPDATE = "UIPatrol_Buy_Update",
    --关卡
    UILEVELMAIN_CHANGE = "UILevelMain_Change",
    UILEVELMAIN_REFRESH = "UILevelMain_Refresh",
    UILEVELMAIN__LEVEL_REFRESH = "UILevelMain_Refresh",
    UILEVELMAIN_REFRESH_CHAPTER_BOX = "UILevelMain__Refresh_Chapter_Box", --章节领取宝箱刷新
    UILEVELMAIN_BACK_MIANCITY="UILEVELMAIN_BACK_MIANCITY",--关卡返回主城
    UI_TARGET_AWARD_UPDATE = "UI_TARGET_AWARD_UPDATE",
    --UIPATROL_CHANGE = "UIPatrol_Change",
    --UIUPDATE_ITEM_LIST = "UIUpdate_Item_List",
    --UIPATROL_BUY_UPDATE = "UIPatrol_Buy_Update",
    --抽卡
    UIGACHA_SET_MASK_ACTIVE = "UIGACHA_SET_MASK_ACTIVE",
    UIARENA_QUICK_ATTACK_MASK_ACTIVE = "UIARENA_QUICK_ATTACK_MASK_ACTIVE",
    UIGACHA_SET_NIUDAN_CAM_ACTIVE = "UIGACHA_SET_NIUDAN_CAM_ACTIVE",
    UIGACHA_SET_RESULT_MASK_ACTIVE = "UIGACHA_SET_RESULT_MASK_ACTIVE",
    UIGACHA_RESULT_REFRESH = "UIGACHA_RESULT_REFRESH", --抽卡结算刷新
    UIGACHA_RESULT_UI_REFRESH = "UIGACHA_RESULT_UI_REFRESH", --抽卡结算ui刷新
    UI_CHAT_SHOW_ACTIVE = "UI_CHAT_SHOW_ACTIVE",
    --收集
    UICOLLECT_INFO_UPDATE = "UICollect_Info_Update",
    UICOLLECT_COIN_UPDATE = "UICollect_Coin_Update",
    --商店
    UISHOP_REFRESH_ITEM = "UISHOP_REFRESH_ITEM",
    UISHOP_BUY_UPDATE = "UISHOP_BUY_UPDATE",
    --神器
    UI_ARTIFACT_LV_UP_UPDATE = "UI_ARTIFACT_LV_UP_UPDATE",
    --通灵
    UI_TONGLING_DATA_UPDATA = "UI_TONGLING_DATA_UPDATA",
    --阵法
    UICIRCLE_INFO_UPDATE = "UICircle_Info_Update",
    UI_BACK_MAIN_GET_NEW_CARD_STATE = "UI_BACK_MAIN_GET_NEW_CARD_STATE",
    --登录天数
    ON_SEVEN_GIFT_DAY_END = "On_Seven_Gift_Day_End",
    --获得的奖励物品
    ON_SEVEN_GIFT_DAY_REWARD_END = "On_Seven_Gift_Day_Reward_End",
    --登录时长
    ON_ONLINE_GIFT_MINUTE_END = "On_Online_Gift_Minute_End",
    --获得的奖励物品
    ON_ONLINE_GIFT_MINUTE_REWARD_END = "On_Seven_Gift_Minute_Reward_End",
    --使在线时长增长时间为零
    ON_ONLINE_GIFT_SECOND_ADD_TOZERO = "On_Online_Gift_Second_Add_Tozero",
    --神器部件升级
    ON_ARTIFACT_BODY_LV_UP_DATA = "ON_ARTIFACT_BODY_LV_UP_DATA",
    --聊天
    ONCHAT_UPDATE = "OnChatUpdate",
    --卡牌英雄变化通知刷新
    UI_CARD_HERO_CHANGE = "UICardHeroChange",
    --卡牌子界面数据刷新
    UI_CARD_HERO_CHANGE_SON = "UICardHeroChangeSon",
    --卡牌换类型了
    UI_CARD_HERO_TYPE_CHANGE = "UICardHeroTypeChange",
    --领取刷新每日任务数据
    UPDATE_TASK_EVERYDAY_DATA = "UpdateTaskEveryDayTask",
    --领取刷新成就任务数据
    UPDATE_TASK_ACHIEVEMENT_DATA = "UpdateTaskAchievementTask",
    --Card Poor 改变类型
    UI_CARD_POOR_CHANGE_TYPE = "UICardPoorChangeType",
    --好友系统
    ON_SERCH_FRIEND_INFO = "OnSerchFriendInfo",
    ON_FRIEND_LIST_REFRESH = "OnFriendListRefresh",
    ON_OPEN_FRIEND_CHAT = "OnOpenFriendChat",
    --设置
    CHANGE_HEAD_OR_FRAME = "CHANGE_HEAD_OR_FRAME", --更换头像或者头像框
    UI_SETTTING_ONREFRESH = "UI_SETTTING_ONREFRESH", --刷新設置UI
    UI_SETTTING_ONDATAREFRESH = "UI_SETTTING_ONDATAREFRESH", --刷新設置UIData
    --剩余购买体力次数，今天购买体力数
    PURCHASE_PHYSICAL_NUMBER = "PURCHASE_PHYSICAL_NUMBER",
    --购买体力药剂完成
    PURCHASE_PHYSICAL_FINISH = "PurchasePhysicalFinish",
    --体力药剂数量获取完成
    GET_HAVEPHYSICAL_NUMBER_FINISH = "GetHavePhysicalNumberFinish",
    --体力药剂使用成功
    USING_HAVEPHYSICAL_NUMBER_SUCCESS = "UsingHavePhysicalNumberSuccess",
    --今日还未购买体力
    PURCHASE_PHYSICAL_NUMBER_ZERO = "Purchase_Physical_Number_Zero",
    --使用了体力药剂
    USING_PHYSICAL = "Using_Physical",
    --获得上一次体力恢复时间的时间点
    RECOVER_PHYSICAL_TIME = "RecoverPhysicalTime",
    --距离下次体力回复时间
    RECOVER_TIME_NEXT = "RecoverTimeNext",
    --等级礼包
    LEVEL_GIFT = "LevelGift",
    --已领取的最大等级礼包
    LEVEL_GIFT_MAX = "LevelGiftMax",
    --红点系统
    ON_RED_POINT_CHANGE = "ON_RED_POINT_CHANGE",
    --升星回调
    UI_CARD_STAR_REFRESH = "UI_CARD_STAR_REFRESH",
    --注册通知ui展示
    UI_GET_REGISTER_STATE_DATA = "UI_GET_REGISTER_STATE_DATA",
    UI_GET_SERVER_LIST_DATA = "UI_GET_SERVER_LIST_DATA",
    UI_CELL_SKILL_UPDATE = "UICellSkillUpdate",
    UI_PVP_ARENA_BOX_DATA_UPDATE = "UI_PVP_ARENA_BOX_DATA_UPDATE",
    UI_GET_NEW_CARD_SHOW_WIN = "UI_GET_NEW_CARD_SHOW_WIN",
    --七日礼包红点状态
    --SEVEN_GIFT_RED_POINT="SevenGiftRedPoint",
    --排行榜相关
    LEFT_ITEMTYPE1_CLICK = "LEFT_ITEMTYPE1_CLICK",
    LEFT_ITEMTYPE2_CLICK = "LEFT_ITEMTYPE2_CLICK",
    --等级礼包窗体是否显示
    LELVE_WINDOW_SHOW = "LevelWindowShow",
    --七日礼包窗体是否显示
    SEVENDAY_LELVE_WINDOW_SHOW = "SevenDayWindowShow",
    --在线礼包窗体是否显示
    ONLINE_WINDOW_SHOW = "OnlineWindowShow",
    REFRESH_RANK = "REFRESH_RANK",
    --引导刷新
    UI_Guide_UpdateUIEvent="UI_Guide_UpdateUIEvent",
    --引导设置Tip状态
    UI_GUIDE_TIP_STATUS="UI_GUIDE_TIP_STATUS",
    --引导打开界面回调
    ON_GUIDE_FUN = "OnGuideFun",
    --弱引导打开界面回调
    ON_WEAKGUIDE_FUN="ON_WEAKGUIDE_FUN",
    --摄像机移动回调
    ON_GUIDE_MAINSCENE_CAMERA_MOVE = "OnGuideMainSceneCameraMove",
    --3D物体点击回调
    ON_3DOBJ_CLICK_FUN = "On3dObjClickFun",
    --金币兑换完成
    ON_EXCHANGE_COIN = "ON_EXCHANGE_COIN",
    --主城玩家等級更新
    UPDATE_MAIN_CITY_PLAYER_LV = "UPDATE_MAIN_CITY_PLAYER_LV",
    --更新在线界面刷新

    ----新界面Over

    ON_CHANGE_ONLINE = "ON_CHANGE_ONLINE",
    --更新等级礼包显示数据
    ON_CHANGE_LV = "ON_CHANGE_LV",
    ----技能突破刷新
    UI_SKILL_BREAK_THROUGH_UPDATE = "UI_SKILL_BREAK_THROUGH_UPDATE",
    ---任务红点
    UPDATE_TASK_RED_POINT_STATE = "UPDATE_TASK_RED_POINT_STATE",

    --玩家獄道
    UI_USERHELL_REFRESH = "UI_USERHELL_REFRESH",
    --新卡牌数据

    --集训营
    UITRAININGCAMP_ON_SELECTITEM = "UITrainingCampItemSelect",

    ----新界面begin
    UI_CARD_SUCCESS = "UI_CARD_SUCCESS", --升星成功
    UI_CARD_POOL_ON_SELECT_CARD = "UICardPoolOnSelectCard",
    UI_NEWCARD_CHANGE_TYPE = "UI_NEWCARD_CHANGE_TYPE",
    UI_NEWCARD_BREAK_SUCCESS = "UI_NEWCARD_BREAK_SUCCESS",
    UI_NEWCARD_HEROEFFECT="UI_NEWCARD_HEROEFFECT",
    UI_NEWCARD_SKILL_UPDATE = "UI_NEWCARD_SKILL_UPDATE",
    UI_GLCARD_ON_REFRESH = "UI_GLCARD_ON_REFRESH",--刷新卡牌攻略信息
    UI_CARD_NATION_DATA_REFRESH = "UI_CARD_NATION_DATA_REFRESH",
    ----新界面Over
    --新关卡
    UI_LEVEL_SET_SELECT_TYPE = "UI_LEVEL_SET_SELECT_TYPE",
    UI_LEVEL_BOX_REFRESH="UI_LEVEL_BOX_REFRESH",--刷新节宝箱
    --嘉年华
    UI_CARNIVAL_OPEN_STATE = "UI_CARNIVAL_OPEN_STATE",
    UI_CARNIVAL_RED_STATE = "UI_CARNIVAL_RED_STATE",
    UI_CARNIVAL_VIEW_REFRESH = "UI_CARNIVAL_VIEW_REFRESH",
    --试炼宝库
    UI_TESTHOARD_VIEW_REFRESH = "UI_TESTHOARD_VIEW_REFRESH",
    UI_TESTHOARD_SELECT_LEFT = "UI_TESTHOARD_SELECT_LEFT",
    --传记副本
    UI_BIOGRAPHY_VIEW_REFRESH = "UI_BIOGRAPHY_VIEW_REFRESH",
    --卡牌红点
    UI_CARD_RED="UI_CARD_RED",

    UI_NEW_FUN_OPEN_GET_POS_END="UI_NEW_FUN_OPEN_GET_POS_END",--功能开启查找按年位置结束
    UI_LD_REWARD_REFRESH="UI_LD_REWARD_REFRESH",--主角征集奖励界面刷新
    UI_LD_TAKE_REWARD_REFRESH="UI_LD_TAKE_REWARD_REFRESH",--主角征集领取奖励刷新
    --多人boss
    UI_WORLD_BOSS_TEAM_REFRESH = "UI_WORLD_BOSS_TEAM_REFRESH", --队伍刷新
    UI_WORLD_BOSS_SELECT_TEAM = "UI_WORLD_BOSS_SELECT_TEAM", --选择队伍
    UI_WORLD_BOSS_MOVE_TEAM = "UI_WORLD_BOSS_MOVE_TEAM",
    UI_WORLD_BOSS_ROOM_REFRESH = "UI_WORLD_BOSS_ROOM_REFRESH",-- 房间界面刷新
    UI_WORLD_BOSS_ROOM_CALLPOSITION = "UI_WORLD_BOSS_ROOM_CALLPOSITION",--玩家喊话
    UI_WORLD_BOSS_ROOM_INVITELIST = "UI_WORLD_BOSS_ROOM_INVITELIST",--显示邀请好友列表
    UI_WORLD_BOSS_ROOM_INVITE_REFRESH = "UI_WORLD_BOSS_ROOM_INVITE_REFRESH",--刷新邀请界面
    UI_WORLD_BOSS_GAME_EVENT = "UI_WORLD_BOSS_GAME_EVENT",--触发游戏中的事件
    UI_GET_NEW_CARD_REFRESH="UI_GET_NEW_CARD_REFRESH",--抽卡数据刷新
    UI_LD_RED_POINT_REFRESH="UI_LD_RED_POINT_REFRESH",--乐斗领取奖励红点刷新
    -------------------------------灵探------------------------------------
    UI_LT_MAIN_REFRESH="UI_LT_MAIN_REFRESH",--;灵探主界面数据刷新
    UI_LT_REFRESH_NEXT_DIALOG="UI_LT_REFRESH_NEXT_DIALOG",--灵探刷新下一条聊天内容
    ------------------------------国战相关---------------------------------
    ---建筑名字的刷新
    --UI_NATION_BUILDING_NAME_REFRESH = "UI_NATION_BUILDING_NAME_REFRESH",
    --UI_NATION_BUILDING_NAME_ACTIVATE = "UI_NATION_BUILDING_NAME_ACTIVATE",      --建筑激活，名字刷新
    ---攻城战
    UI_NATION_SIEGE_STATE_REFRESH = "UI_NATION_SIEGE_STATE_REFRESH",            --攻城战建筑的开战状态的刷新
    UI_NATION_SIEGE_STATE_CHANGE = "UI_NATION_SIEGE_STATE_CHANGE",              --攻城战开启结束切换
    UI_NATION_SIEGE_ATTACKTEAM_UPDATE = "UI_NATION_SIEGE_ATTACKTEAM_UPDATE",    --攻城战杀敌，进攻方数据更新
    UI_NATION_SIEGE_DEFENDTEAM_UPDATE = "UI_NATION_SIEGE_DEFENDTEAM_UPDATE",    --攻城战杀敌，防守方数据更新
    UI_NATION_SIEGE_ROUND_UPDATE = "UI_NATION_SIEGE_ROUND_UPDATE",              --攻城战杀敌，每一轮的状态更新
    UI_NATION_SIEGE_KILL_ACTIVE_END = "UI_NATION_SIEGE_KILL_ACTIVE_END", --国战攻城战杀敌结束
    ---接战区
    UI_NATION_WARCELL_TIME_REFRESH = "UI_NATION_WARCELL_TIME_REFRESH",          --接战区地块的放弃时间刷新
    UI_NATION_WARCELL_TEAM_UPDATE = "UI_NATION_WARCELL_TEAM_UPDATE",            --接战区地块的队伍数据更新
    UI_NATION_WARCELL_UPDATE_DETAIL = "UI_NATION_WARCELL_UPDATE_DETAIL",        --更新某个接战区的详情界面
    ---国战主界面资源刷新
    UI_NATION_MAIN_USER_RESOURCE_UPDATE = "UI_NATION_MAIN_USER_RESOURCE_UPDATE",
    ---国战主界面声望刷新
    UI_NATION_MAIN_USER_FAME_UPDATE = "UI_NATION_MAIN_USER_FAME_UPDATE",
    ---国战卡牌招募界面招募结束事件
    UI_NATION_CHARGE_ITEM_CHARGE_END = "UI_NATION_CHARGE_ITEM_CHARGE_END",
    ---国战城镇tip刷新通知
    UI_NATION_TOWN_BUILDING_TIP_FLUSH = "UI_NATION_TOWN_BUILDING_TIP_FLUSH",
    ---国战剿匪详情tip刷新通知
    UI_NATION_BANDITS_TIP_FLUSH = "UI_NATION_BANDITS_TIP_FLUSH",
    ---国战剿匪详情tip出错关闭
    UI_NATION_BANDITS_TIP_ERROR = "UI_NATION_BANDITS_TIP_ERROR",

    --国战坐标收藏界面刷新
    ON_NATION_POS_PANEL_REFRESH = "ON_NATION_POS_PANEL_REFRESH",
    UI_NATION_POS_COLLECT_DELETE = "UI_NATION_POS_COLLECT_DELETE",

    --国战主线任务界面刷新
    UI_NATION_MAIN_TASK_REFRESH = "UI_NATION_MAIN_TASK_REFRESH",

    ---国战世界地图
    UI_NATION_WORLD_MAP_REFRESH_POSITION = "UI_NATION_WORLD_MAP_REFRESH_POSITION",  --刷新坐标文本
    UI_NATION_WORLD_MAP_REFRESH_ROAD_LINE = "UI_NATION_WORLD_MAP_REFRESH_ROAD_LINE",  --刷新寻路路线
    UI_NATION_WORLD_MAP_TOWN_ACTIVE = "UI_NATION_WORLD_MAP_TOWN_ACTIVE",      --建筑激活，名字刷新

    ---国战占领界面
    UI_NATION_OCCUPY_LAND_REFRESH = "UI_NATION_OCCUPY_LAND_REFRESH",  --占领领地面板刷新
    UI_NATION_OCCUPY_LAND_TYPE_REFRESH = "UI_NATION_OCCUPY_LAND_TYPE_REFRESH",  --占领领地类型界面刷新

    ---国战讨伐区
    UI_NATION_PUNITIVE_OUTLAW_REFRESH = "UI_NATION_PUNITIVE_OUTLAW_REFRESH", --讨伐区，怪物更新
    UI_NATION_PUNITIVE_SELECT_AREA = "UI_NATION_PUNITIVE_SELECT_AREA", --选中某个分区
    UI_NATION_PUNITIVE_TEAM_REFRESH = "UI_NATION_PUNITIVE_TEAM_REFRESH", --刷新当前逃犯，队伍的数据
    UI_NATION_PUNITIVE_SEARCH_MONSTER = "UI_NATION_PUNITIVE_SEARCH_MONSTER", --搜索某个逃犯
    UI_NATION_PUNITIVE_SELECT_MONSTER = "UI_NATION_PUNITIVE_SELECT_MONSTER", --选择某个逃犯
    UI_NATION_PUNITIVE_REFRESH_SEARCH = "UI_NATION_PUNITIVE_REFRESH_SEARCH", --刷新搜索面板
    UI_NATION_PUNITIVE_REMOVE_TEAMDATA = "UI_NATION_PUNITIVE_REMOVE_TEAMDATA", --删除某个队伍数据

    ---国战资源区
    UI_NATION_RESOURCE_ResPoint_REFRESH = "UI_NATION_RESOURCE_ResPoint_REFRESH", --资源区，资源点更新
    UI_NATION_RESOURCE_SELECT_AREA = "UI_NATION_RESOURCE_SELECT_AREA", --选中某个分区
    UI_NATION_RESOURCE_SELECT_AREA_REFRESH = "UI_NATION_RESOURCE_SELECT_AREA_REFRESH", --选择某个分区，刷新UI
    UI_NATION_RESOURCE_TEAM_REFRESH = "UI_NATION_RESOURCE_TEAM_REFRESH", --刷新当前资源点，队伍的数据
    UI_NATION_RESOURCE_SELECT_ResPoint = "UI_NATION_RESOURCE_SELECT_ResPoint", --选择某个资源点
    UI_NATION_RESOURCE_REFRESH_SEARCH = "UI_NATION_RESOURCE_REFRESH_SEARCH", --刷新搜索面板
    UI_NATION_RESOURCE_REMOVE_TEAMDATA = "UI_NATION_RESOURCE_REMOVE_TEAMDATA", --删除某个队伍数据 ---未使用
    UI_NATION_RESOURCE_UPDATE_DETAIL = "UI_NATION_RESOURCE_UPDATE_DETAIL", --更新某个资源点详情界面
    UI_NATION_RESOURCE_SET_FIND_TARGET_RES = "UI_NATION_RESOURCE_SET_FIND_TARGET_RES", --设置要跳转的资源区的某个资源点
    UI_NATION_RESOURCE_FIND_ONE_RES = "UI_NATION_RESOURCE_FIND_ONE_RES", --跳转到某个资源点所在分区，并标识

    UI_NATION_GUARDIAN_UPDATE = "UI_NATION_GUARDIAN_UPDATE",

    --View 更新国战AP资源
    UI_NATION_RESOURCEAP_VALUE = "UI_NATION_RESOURCEAP_VALUE",
    ----View 更新国战物资资源
    --UI_NATION_RESOURCE_VALUE = "UI_NATION_RESOURCE_VALUE",
    --View 更新国战某城镇储备军力
    UI_NATION_TOWN_ARMY_RESERVE_VALUE = "UI_NATION_TOWN_ARMY_RESERVE_VALUE",

    --UI 主城弹出按钮 弹出窗口关闭消息
    UI_NATION_BUILDINFO_CLOSE = "UI_NATION_BUILDINFO_CLOSE",

    --获得声望等级
    NATION_USER_FAME_LEVEL = "NATION_USER_FAME_LEVEL",

    --国战建筑信息
    NATION_BUILDING_INFO_FLUSH = "NATION_BUILDING_INFO_FLUSH",
    --国战卡牌上阵成功
    NATION_CARD_DRAG_SUCCESS = "NATION_CARD_DRAG_SUCCESS",
    --国战卡牌上阵队伍信息刷新
    NATION_CARD_DRAG_FLUSH = "NATION_CARD_DRAG_FLUSH",
    --国战卡牌下阵成功
    NATION_CARD_DRAG_DOWN_SUCCESS = "NATION_CARD_DRAG_DOWN_SUCCESS",
    --国战初始化数据成功
    NATION_CARD_REQUEST_DATA_SUCCESS = "NATION_CARD_REQUEST_DATA_SUCCESS",

    --国战队伍界面返回按钮点击
    ON_NATION_TEAM_BACKBUTTON_CLICK = "ON_NATION_TEAM_BACKBUTTON_CLICK",
    --国战队伍一级界面卡牌加号点击
    ON_DEPLOYBEFORECONFIGURE_BUTTON_CLICK = "ON_DEPLOYBEFORECONFIGURE_BUTTON_CLICK",
    --国战队伍配置界面
    ON_NATION_TEAM_CONFIG_UI_REFRESH = "ON_NATION_TEAM_CONFIG_UI_REFRESH",
    --国战选择队伍界面刷新
    ON_NATION_SELECTTEAM_REFRESH = "ON_NATION_SELECTTEAM_REFRESH",
    UI_NATION_SET_TEAM_INFO_DATA = "UINationSetTeamInfoData",
    UI_NATION_MAIN_TEAM_UI_FLUSH = "UI_NATION_MAIN_TEAM_UI_FLUSH",
    UI_NATION_MY_TEAM_SIDE_FLUSH = "UI_NATION_MY_TEAM_SIDE_FLUSH",
    --开始征兵后回调刷界面
    UI_NATION_CHAGE_DATA = "UINationChage",


    --国战科技主界面刷新
    ON_NATION_SCIENCEMAIN_REFRESH = "ON_NATION_SCIENCEMAIN_REFRESH",    --刷新所有的科技
    ON_NATION_SCIENCE_MAIN_ONE_REFRESH = "ON_NATION_SCIENCE_MAIN_ONE_REFRESH",  --刷新一个科技
    --国战科技信息界面刷新
    ON_NATION_SCIENCEINFO_REFRESH = "ON_NATION_SCIENCEINFO_REFRESH",


    ---国战联盟相关
    UI_NATION_UNION_PLAYER_DETAIL_USER_UNION_FLUSH = "UI_NATION_UNION_PLAYER_DETAIL_USER_UNION_FLUSH", --查看玩家联盟信息我的联盟数据变更
    UI_NATION_UNION_DETAIL_USER_UNION_FLUSH = "UI_NATION_UNION_DETAIL_USER_UNION_FLUSH", --查看其他玩家联盟不满足条件时刷新
    UI_NATION_UNION_CONDITION_SET_USER_UNION_FLUSH = "UI_NATION_UNION_CONDITION_SET_USER_UNION_FLUSH", -- 条件设置不满足条件时刷新
    UI_NATION_UNION_JOIN_UNION_LIST_USER_UNION_FLUSH = "UI_NATION_UNION_JOIN_UNION_LIST_USER_UNION_FLUSH",		--联盟加入联盟列表我的联盟变动
    UI_NATION_UNION_JOIN_UNION_LIST_FLUSH = "UI_NATION_UNION_JOIN_UNION_LIST_FLUSH", --联盟加入联盟列表刷新

    UI_NATION_UNION_SEARCH_LIST_FLUSH = "UI_NATION_UNION_SEARCH_LIST_FLUSH", --联盟加入联盟搜索模式刷新

    UI_NATION_UNION_INVITE_UNION_LIST_FLUSH = "UI_NATION_UNION_INVITE_UNION_LIST_FLUSH",		--联盟邀请联盟列表刷新
    UI_NATION_UNION_LOG_RANK_REFRESH = "UI_NATION_UNION_LOG_RANK_REFRESH",		--联盟日志攻城排行榜刷新

    ---国战联盟加入条件设置
    UI_NATION_UNION_CONDITION_SET = "UI_NATION_UNION_CONDITION_SET", --联盟加入条件设置

    UI_NATION_UNION_REFRESH_LOG = "UI_NATION_UNION_REFRESH_LOG",    --联盟日志刷新

    UI_NATION_UNION_USER_UNION_TAB_DATA_FLUSH = "UI_NATION_UNION_USER_UNION_TAB_DATA_FLUSH",		--联盟我的联盟页签刷新
    UI_NATION_UNION_MY_UNION_TABS_RES_SWITCH="UI_NATION_UNION_MY_UNION_TABS_RES_SWITCH",--国战联盟页签切换
    ON_NATION_UNION_MEMBER_CTRL_SETBTN_CLICK="ON_NATION_UNION_MEMBER_CTRL_SETBTN_CLICK",--联盟成员设置点击
    ON_NATION_UNION_MEMBER_CTRL_POSITION_CLICK="ON_NATION_UNION_MEMBER_CTRL_POSITION_CLICK",--职位管理
    ON_NATION_UNION_MEMBER_CTRL_TICHU_CLICK="ON_NATION_UNION_MEMBER_CTRL_TICHU_CLICK",--踢出联盟
    ON_NATION_UNION_MEMBER_CTRL_GRANT_CLICK="ON_NATION_UNION_MEMBER_CTRL_GRANT_CLICK",--禅让盟主
    ON_NATION_UNION_MEMBER_CTRL_FANGQI_CLICK="ON_NATION_UNION_MEMBER_CTRL_FANGQI_CLICK",--放弃职务
    ON_NATION_UNION_MEMBER_CTRL_POSITION_MANAGER_CLICK="ON_NATION_UNION_MEMBER_CTRL_POSITION_MANAGER_CLICK",--职位任命
    ON_NATION_UNION_MANAGER_SUB_TAB_REFLUSH="ON_NATION_UNION_MANAGER_SUB_TAB_REFLUSH",--国战联盟二级界面管理界面列表刷新
    ON_NATION_UNION_MEMBER_SUB_TAB_REFLUSH="ON_NATION_UNION_MEMBER_SUB_TAB_REFLUSH",--国战联盟二级界面成员界面列表刷新

    ---国战新队伍
    ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE = "ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE", -- 队伍详情侧边栏刷新
    ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE = "ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE",-- 队伍详情侧边栏关闭
    -- 国战征募
    UI_NATION_RECRUIT_MODE_CHANGE = "UI_NATION_RECRUIT_MODE_CHANGE",-- 队伍征募切换快速征兵和普通征兵
    UI_NATION_RECRUIT_CARD_CHANGE = "UI_NATION_RECRUIT_CARD_CHANGE", -- 新的征兵事件
    UI_NATION_EVENT_VIEW_REFRESH = "UI_NATION_EVENT_VIEW_REFRESH", -- 国战纪事刷新

    UI_NATION_BATTLE_LOGS_VIEW_REFRESH = "UI_NATION_BATTLE_LOGS_VIEW_REFRESH", -- 国战战斗日志界面刷新

    -- 国战守军恢复相关
    UI_NATION_DEF_RECOVER_TOWN_ACTIVE = "UI_NATION_DEF_RECOVER_TOWN_ACTIVE", --国战守军UI显示隐藏通知

    --引导打开界面回调
    UI_NATION_GUIDE_NEXT = "UI_NATION_GUIDE_NEXT",
    ---------------------------------------------------------------

    UI_LEVEL_REFRESH = "UI_LEVEL_REFRESH", --关卡刷新
    UI_CHAPTER_SELECT = "UI_CHAPTER_SELECT", --章节选中
    UI_CHAPTER_SELECT_REFRESH = "UI_CHAPTER_SELECT_REFRESH", --章节选中刷新
    UI_CHAPTER_GET_BOX = "UI_CHAPTER_GET_BOX", --章节宝箱领取
    UI_CHAPTER_GET_BOX_REFRESH = "UI_CHAPTER_GET_BOX_REFRESH", --章节领取宝箱刷新
    UI_SHOW_LEVEL_MAIN = "UI_SHOW_LEVEL_MAIN", --显示关卡主界面
    --恶灵入侵
    UI_CACODEMON_SELECT_GROUP = "UI_CACODEMON_SELECT_GROUP",
    UI_CACODEMON_REFRESH_GROUP = "UI_CACODEMON_REFRESH_GROUP",
    UI_CACODEMON_REFRESH_GROUPLIST = "UI_CACODEMON_REFRESH_GROUPLIST",

    --探险 begin
    UI_EXPLORE_TEAM_VIEW_SHOW="UI_EXPLORE_TEAM_VIEW_SHOW",
    UI_EXPLORE_TEAM_REFRESH="UI_EXPLORE_TEAM_REFRESH",--探险队伍保存刷新
    UI_EXPLORE_TAKE_REWARD_REFRESH="UI_EXPLORE_TAKE_REWARD_REFRESH",--探险领取奖励刷新
    UI_EXPLORE_MAX_LV_REFRESH="UI_EXPLORE_MAX_LV_REFRESH",--探险最大关卡刷新
    UI_EXPLORE_CHANGE_CHAPTER="UI_EXPLORE_CHANGE_CHAPTER",--切换章节
    UI_MODEL_EXPLORE_CHANGE_CHAPTER="UI_MODEL_EXPLORE_CHANGE_CHAPTER",--model层切换章节
    UI_EXPLORE_TAKE_REWARD_MAIN_REFRESH="UI_EXPLORE_TAKE_REWARD_MAIN_REFRESH",--主界面领取奖励刷新
    UI_EXPLORE_MAIN_CHANGE_TEAM="UI_EXPLORE_MAIN_CHANGE_TEAM",--探险切换队伍
    UI_EXPLORE_CHANGE_TEAM_REFRESH="UI_EXPLORE_CHANGE_TEAM_REFRESH",--探险切换队伍界面刷新
    UI_EXPLORE_RETURN_MAIN="UI_EXPLORE_RETURN_MAIN",--探险返回主城
    UI_EXPLORE_REWARD_UP="UI_EXPLORE_REWARD_UP",--探险奖励提升
    --探险 end
    UI_TEST_MAIN_SHOW="UI_TEST_MAIN_SHOW",--隐藏主城界面显示
    UI_LEVEL_SHOW_PANEL="UI_LEVEL_SHOW_PANEL",--中地图显示界面
    UI_DAILY_MISSION_REFRESH="UI_DAILY_MISSION_REFRESH",--日常任務刷新

    --卡牌装备
    UI_EQUIP_FILTER="UI_EQUIP_FILTER",--卡牌装备过滤
    UI_EQUIP_REFRESH="UI_EQUIP_REFRESH",--卡牌刷新
    UI_DECOMPOSE_QUAILITY_FILTER_BY_TYPE="UI_DECOMPOSE_QUAILITY_FILTER_BY_TYPE",--装备熔炼
    UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH="UI_DECOMPOSE_QUAILITY_FILTER_REFRRESH";--装备熔炼刷新
    UI_EQUIP_PROP_REFRESH="UI_EQUIP_PROP_REFRESH";--装备属性界面刷新
    UI_EQUIP_FORGE_DATA_REFRESH="UI_EQUIP_FORGE_DATA_REFRESH",--装备锻造数据刷新
    UI_EQUIP_FORGE_UI_REFRESH="UI_EQUIP_FORGE_UI_REFRESH",--装备锻造界面刷新
    UI_CARD_ALL_EQUIP_FORCE_REFRESH="UI_CARD_ALL_EQUIP_FORCE_REFRESH",--单个卡牌的总装备战力
    UI_CARD_UPDATE_POWER_BY_EQUIP="UI_CARD_UPDATE_POWER_BY_EQUIP",--装备更新战斗力
    --问卷调成
    UI_SURVEY_REFRESH="UI_SURVEY_REFRESH",--问卷调查次数刷新
    UI_SURVEY_RED_POINT_REFRESH = "UI_SURVEY_RED_POINT_REFRESH",--问卷调查红点刷新
    --跑马灯
    UI_ON_HORSE_LAMP_UPDATE = "UI_ON_HORSE_LAMP_UPDATE",
    --多人Boss 开启 关闭
    UI_MUL_PEOPLE_BOSS_STATUS="UI_MUL_PEOPLE_BOSS_STATUS",
    --灵探系统
    UI_LT_SEARCH_EVENT_RESULT = "UI_LT_SEARCH_EVENT_RESULT",
    UI_LT_SEARCH_COUNT_REFRESH="UI_LT_SEARCH_COUNT_REFRESH",--灵探搜查次数刷新
    --刷新启动引导数据
    UI_GUIDE_BUTTON_DATA = "UI_GUIDE_BUTTON_DATA",
    --显示主城新功能图标开启
    UI_MAIN_CTIY_NEW_FUN_OPEN="UI_MAIN_CTIY_NEW_FUN_OPEN",

}

return ConstClass("UIMessageNames", UIMessageNames)