--Generated By msgid-gen-lua Do not Edit
local config = {
	PBSERVER_REGISTER_GATEWAY_REQUEST = 10002, 
	PBSERVER_REGISTER_GATEWAY_RESPONSE = 10003, 
	PBSERVER_REGISTER_ONLINE_USER_REQUEST = 10004, 
	PBSERVER_REGISTER_ONLINE_USER_RESPONSE = 10005, 
	PBSERVER_TIME_SYNC_REQUEST = 10008, 
	PBSERVER_TIME_SYNC_RESPONSE = 10009, 
	PBSERVER_UNREGISTER_ONLINE_USER_REQUEST = 10010, 
	PBSERVER_UNREGISTER_ONLINE_USER_RESPONSE = 10011, 
	PBSERVER_REMOVE_CACHE_REQUEST = 10014, 
	PBSERVER_REMOVE_CACHE_RESPONSE = 10015, 
	PBSERVER_GM_REQUEST = 10016, 
	PBSERVER_GM_RESPONSE = 10017, 
	PBUSER_FIGHT_LOGIN_REQUEST = 19998, 
	PBUSER_FIGHT_LOGIN_RESPONSE = 19999, 
	PBUSER_LOGIN_REQUEST = 20000, 
	PBUSER_LOGIN_RESPONSE = 20001, 
	PBUSER_ENTER_GAME_REQUEST = 20002, 
	PBUSER_ENTER_GAME_RESPONSE = 20003, 
	PBUSER_NOVICE_GUIDE_REQUEST = 20004, 
	PBUSER_NOVICE_GUIDE_RESPONSE = 20005, 
	PBUSER_GUIDE_LOG_REQUEST = 20006, 
	PBUSER_GUIDE_LOG_RESPONSE = 20007, 
	PBUSER_CHAT_TO_SERVER_REQUEST = 20008, 
	PBUSER_CHAT_TO_SERVER_RESPONSE = 20009, 
	PBUSER_GET_CHAT_INFO_REQUEST = 20010, 
	PBUSER_GET_CHAT_INFO_RESPONSE = 20011, 
	PBUSER_GET_ALL_BAG_REQUEST = 20012, 
	PBUSER_GET_ALL_BAG_RESPONSE = 20013, 
	PBUSER_GM_COMMAND = 20014, 
	PBUSER_GM_INDICATION = 20015, 
	PBITEM_SELL_ITEM_REQUEST = 20016, 
	PBITEM_SELL_ITEM_RESPONSE = 20017, 
	PBUSER_GET_ADD_MAIL_REQUEST = 20020, 
	PBUSER_GET_ADD_MAIL_RESPONSE = 20021, 
	PBUSER_SET_MAIL_READ_REQUEST = 20022, 
	PBUSER_SET_MAIL_READ_RESPONSE = 20023, 
	PBUSER_GET_MAIL_REWARD_REQUEST = 20024, 
	PBUSER_GET_MAIL_REWARD_RESPONSE = 20025, 
	PBUSER_DELETE_MAIL_REQUEST = 20026, 
	PBUSER_DELETE_MAIL_RESPONSE = 20027, 
	PBUSER_ONE_KEY_DELETE_MAILS_REQUEST = 20028, 
	PBUSER_ONE_KEY_DELETE_MAILS_RESPONSE = 20029, 
	PBUSER_ONE_KEY_GET_MAILS_REWARD_REQUEST = 20030, 
	PBUSER_ONE_KEY_GET_MAILS_REWARD_RESPONSE = 20031, 
	PBUSER_SYC_STAMINA_REQUEST = 20032, 
	PBUSER_SYC_STAMINA_RESPONSE = 20033, 
	PBUSER_RECONNECT_REQUEST = 20034, 
	PBUSER_RECONNECT_RESPONSE = 20035, 
	PBITEM_OPEN_CHEST_REQUEST = 20036, 
	PBITEM_OPEN_CHEST_RESPONSE = 20037, 
	PBTEAM_RELIC_LEVEL_UP_REQUEST = 20038, 
	PBTEAM_RELIC_LEVEL_UP_RESPONSE = 20039, 
	PBTEAM_GET_RELIC_INFO_REQUEST = 20040, 
	PBTEAM_GET_RELIC_INFO_RESPONSE = 20041, 
	PBUSER_DAY_FLUSH_REQUEST = 20042, 
	PBITEM_BUY_GOODS_REQUEST = 20044, 
	PBITEM_BUY_GOODS_RESPONSE = 20045, 
	PBITEM_GET_GOODS_REQUEST = 20046, 
	PBITEM_GET_GOODS_RESPONSE = 20047, 
	PBUSER_STORY_TAKE_REQUEST = 20048, 
	PBUSER_STORY_TAKE_RESPONSE = 20049, 
	PBUSER_STORY_SAVE_REQUEST = 20050, 
	PBUSER_STORY_SAVE_RESPONSE = 20051, 
	PBITEM_COIN_EXCHANGE_REQUEST = 20052, 
	PBITEM_COIN_EXCHANGE_RESPONSE = 20053, 
	PBUSER_SET_USER_NAME_REQUEST = 20054, 
	PBUSER_SET_USER_NAME_RESPONSE = 20055, 
	PBUSER_SET_USER_HEAD_FRAME_REQUEST = 20056, 
	PBUSER_SET_USER_HEAD_FRAME_RESPONSE = 20057, 
	PBITEM_BUY_AND_USE_REQUEST = 20058, 
	PBITEM_BUY_AND_USE_RESPONSE = 20059, 
	PBITEM_GET_CARNIVAL_GOODS_REQUEST = 20060, 
	PBITEM_GET_CARNIVAL_GOODS_RESPONSE = 20061, 
	PBITEM_BUY_CARNIVAL_GOODS_REQUEST = 20062, 
	PBITEM_BUY_CARNIVAL_GOODS_RESPONSE = 20063, 
	PBUSER_GUIDE_REWARD_REQUEST = 20064, 
	PBUSER_GUIDE_REWARD_RESPONSE = 20065, 
	PBUSER_GAME_DAY_FLUSH_REQUEST = 20066, 
	PBUSER_QUESTION_REWARD_REQUEST = 20068, 
	PBUSER_QUESTION_REWARD_RESPONSE = 20069, 
	PBUSER_PLAYER_DATA_REQUEST = 20070, 
	PBUSER_PLAYER_DATA_RESPONSE = 20071, 
	PBUSER_HEAD_LIST_REQUEST = 20072, 
	PBUSER_HEAD_LIST_RESPONSE = 20073, 
	PBUSER_LD_REWARD_REQUEST = 20074, 
	PBUSER_LD_REWARD_RESPONSE = 20075, 
	PBUSER_LD_OPEN_REQUEST = 20076, 
	PBUSER_LD_OPEN_RESPONSE = 20077, 
	PBCARD_CARD_UP_LEVEL_REQUEST = 30000, 
	PBCARD_CARD_UP_LEVEL_RESPONSE = 30001, 
	PBCARD_HELL_UP_LEVEL_REQUEST = 30002, 
	PBCARD_HELL_UP_LEVEL_RESPONSE = 30003, 
	PBCARD_STUDY_SKILL_BLANK_REQUEST = 30004, 
	PBCARD_STUDY_SKILL_BLANK_RESPONSE = 30005, 
	PBCARD_SKILL_UP_LEVEL_REQUEST = 30006, 
	PBCARD_SKILL_UP_LEVEL_RESQPNSE = 30007, 
	PBCARD_UNLOCK_PERSONAL_WEAPON_REQUEST = 30010, 
	PBCARD_UNLOCK_PERSONAL_WEAPON_RESPONSE = 30011, 
	PBCARD_STRENGTH_PERSONAL_WEAPON_REQUEST = 30012, 
	PBCARD_STRENGTH_PERSONAL_WEAPON_RESPONSE = 30013, 
	PBCARD_UNSEAL_PERSONAL_WEAPON_REQUEST = 30014, 
	PBCARD_UNSEAL_PERSONAL_WEAPON_RESPONSE = 30015, 
	PBCARD_CARD_CHANGE_WEAPON_REQUEST = 30016, 
	PBCARD_CARD_CHANGE_WEAPON_RESPONSE = 30017, 
	PBCARD_DRAW_LIST_REQUEST = 30028, 
	PBCARD_DRAW_LIST_RESPONSE = 30029, 
	PBCARD_CARD_RANDOM_REQUEST = 30030, 
	PBCARD_CARD_RANDOM_RESPONSE = 30031, 
	PBCARD_SKILL_EXCHANGE_REQUEST = 30032, 
	PBCARD_SKILL_EXCHANGE_RESPONSE = 30033, 
	PBCARD_FRAGMENT_DECOMPOSE_REQUEST = 30034, 
	PBCARD_FRAGMENT_DECOMPOSE_RESPONSE = 30035, 
	PBCARD_SYNTHETIC_CARD_REQUEST = 30036, 
	PBCARD_SYNTHETIC_CARD_RESPONSE = 30037, 
	PBCARD_ALL_CARD_CHANNELING_REQUEST = 30038, 
	PBCARD_ALL_CARD_CHANNELING_RESPONSE = 30039, 
	PBCARD_CARD_CHANNELING_REQUEST = 30040, 
	PBCARD_CARD_CHANNELING_RESPONSE = 30041, 
	PBCARD_CARD_UP_STAR_REQUEST = 30042, 
	PBCARD_CARD_UP_STAR_RESPONSE = 30043, 
	PBCARD_SKILL_BREAK_REQUEST = 30044, 
	PBCARD_SKILL_BREAK_RESPONSE = 30045, 
	PBCARD_CARD_DEVELOP_REQUEST = 30046, 
	PBCARD_CARD_DEVELOP_RESPONSE = 30047, 
	PBCARD_CARD_DEVELOP_RESULT_REQUEST = 30048, 
	PBCARD_CARD_DEVELOP_RESULT_RESPONSE = 30049, 
	PBCARD_CARD_XILIAN_REQUEST = 30050, 
	PBCARD_CARD_XILIAN_RESPONSE = 30051, 
	PBCARD_CARD_XILIAN_RESULT_REQUEST = 30052, 
	PBCARD_CARD_XILIAN_RESULT_RESPONSE = 30053, 
	PBCARD_HELL_REWARD_REQUEST = 30054, 
	PBCARD_HELL_REWARD_RESPONSE = 30055, 
	PBCARD_HELL_UP_REQUEST = 30056, 
	PBCARD_HELL_UP_RESPONSE = 30057, 
	PBMISSION_HELL_INFO_REQUEST = 30058, 
	PBMISSION_HELL_INFO_RESPONSE = 30059, 
	PBFIGHT_PVE_ENTER_FIGHT_REQUEST = 40000, 
	PBFIGHT_PVE_ENTER_FIGHT_RESPONSE = 40001, 
	PBFIGHT_PVE_START_REQUEST = 40002, 
	PBFIGHT_PVE_START_RESPONSE = 40003, 
	PBFIGHT_CONVERT_CRYTALS_REQUEST = 40004, 
	PBFIGHT_CONVERT_CRYTALS_RESPONSE = 40005, 
	PBFIGHT_PVE_ACTION_REQUEST = 40006, 
	PBFIGHT_PVE_ACTION_RESPONSE = 40007, 
	PBFIGHT_PVE_TEST_REQUEST = 40008, 
	PBFIGHT_PVE_TEST_RESPONSE = 40009, 
	PBFIGHT_CHOOSE_SKILL_REQUEST = 40010, 
	PBFIGHT_CHOOSE_SKILL_RESPONSE = 40011, 
	PBFIGHT_LEAVE_FIGHT_REQUEST = 40012, 
	PBFIGHT_LEAVE_FIGHT_RESPONSE = 40013, 
	PBFIGHT_ENEMY_INFO_REQUEST = 40014, 
	PBFIGHT_ENEMY_INFO_RESPONSE = 40015, 
	PBTEAM_BATTLE_ARRAY_STUDY_REQUEST = 40100, 
	PBTEAM_BATTLE_ARRAY_STUDY_RESPONSE = 40101, 
	PBTEAM_BATTLE_ARRAY_POSITION_REQUEST = 40102, 
	PBTEAM_BATTLE_ARRAY_POSITION_RESPONSE = 40103, 
	PBTEAM_COLLECT_MISSION_ACTIVATE_REQUEST = 40104, 
	PBTEAM_COLLECT_MISSION_ACTIVATE_RESPONSE = 40105, 
	PBTEAM_COLLECT_GROUP_ACTIVATE_REQUEST = 40106, 
	PBTEAM_COLLECT_GROUP_ACTIVATE_RESPONSE = 40107, 
	PBTEAM_COLLECT_ITEM_DESCOMPOSE_REQUEST = 40108, 
	PBTEAM_COLLECT_ITEM_DESCOMPOSE_RESPONSE = 40109, 
	PBTEAM_COLLECT_INFO_REQUEST = 40110, 
	PBTEAM_COLLECT_INFO_RESPONSE = 40111, 
	PBTEAM_BATTLE_ARRAY_INFO_REQUEST = 40112, 
	PBTEAM_BATTLE_ARRAY_INFO_RESPONSE = 40113, 
	PBCHAPTER_GET_ALL_CHAPTER_REQUEST = 50000, 
	PBCHAPTER_GET_ALL_CHAPTER_RESPONSE = 50001, 
	PBCHAPTER_GET_CHAPTER_CHEST_REQUEST = 50002, 
	PBCHAPTER_GET_CHAPTER_CHEST_RESPONSE = 50003, 
	PBCHAPTER_SAVE_TEAM_REQUEST = 50004, 
	PBCHAPTER_SAVE_TEAM_RESPONSE = 50005, 
	PBCHAPTER_USE_ONHOOK_ITEM_REQUEST = 50006, 
	PBCHAPTER_USE_ONHOOK_ITEM_RESPONSE = 50007, 
	PBCHAPTER_SET_ONHOOK_TEAM_REQUEST = 50008, 
	PBCHAPTER_SET_ONHOOK_TEAM_RESPONSE = 50009, 
	PBCHAPTER_GET_ONHOOK_REWARD_REQUEST = 50010, 
	PBCHAPTER_GET_ONHOOK_REWARD_RESPONSE = 50011, 
	PBCHAPTER_GET_REED_TOWER_REQUEST = 50012, 
	PBCHAPTER_GET_REED_TOWER_RESPONSE = 50013, 
	PBFIGHT_ENTER_REED_FIGHT_REQUEST = 50014, 
	PBFIGHT_ENTER_REED_FIGHT_RESPONSE = 50015, 
	PBFIGHT_PVE_ENTER_TEACH_FIGHT_REQUEST = 50016, 
	PBFIGHT_PVE_ENTER_TEACH_FIGHT_RESPONSE = 50017, 
	PBCHAPTER_CHAPTER_REWARD_REQUEST = 50018, 
	PBCHAPTER_CHAPTER_REWARD_RESPONSE = 50019, 
	PBCHAPTER_LEVEL_CHEST_REQUEST = 50020, 
	PBCHAPTER_LEVEL_CHEST_RESPONSE = 50021, 
	PBFIGHT_PVE_ENTER_ARENA_REQUEST = 50022, 
	PBFIGHT_PVE_ENTER_ARENA_RESPONSE = 50023, 
	PBFIGHT_PVE_ARENA_QUICK_PASS_REQUEST = 50024, 
	PBFIGHT_PVE_ARENA_QUICK_PASS_RESPONSE = 50025, 
	PBCHAPTER_GET_ONHOOK_REWARD_INFO_REQUEST = 50026, 
	PBCHAPTER_GET_ONHOOK_REWARD_INFO_RESPONSE = 50027, 
	PBFIGHT_PVE_ARENA_QUICK_PASS_END_REQUEST = 50028, 
	PBFIGHT_PVE_ARENA_QUICK_PASS_END_RESPONSE = 50029, 
	PBCHAPTER_ONHOOK_ALL_INFO_REQUEST = 50030, 
	PBCHAPTER_ONHOOK_ALL_INFO_RESPONSE = 50031, 
	PBCHAPTER_GET_ONHOOK_ALL_REWARD_REQUEST = 50032, 
	PBCHAPTER_GET_ONHOOK_ALL_REWARD_RESPONSE = 50033, 
	PBCHAPTER_GET_REED_RANK_REQUEST = 50034, 
	PBCHAPTER_GET_REED_RANK_RESPONSE = 50035, 
	PBCHAPTER_STORY_ENTER_REQUEST = 50036, 
	PBCHAPTER_STORY_ENTER_RESPONSE = 50037, 
	PBFIGHT_CACODEMON_FIGHT_REQUEST = 50038, 
	PBFIGHT_CACODEMON_FIGHT_RESPONSE = 50039, 
	PBFIGHT_GET_CACODEMON_LIST_REQUEST = 50040, 
	PBFIGHT_GET_CACODEMON_LIST_RESPONSE = 50041, 
	PBCHAPTER_HAVECLEAR_TEACH_CHAPTER_REQUEST = 50042, 
	PBCHAPTER_HAVECLEAR_TEACH_CHAPTER_RESPONSE = 50043, 
	PBCHAPTER_SAVE_ONHOOK_TEAM_REQUEST = 50044, 
	PBCHAPTER_SAVE_ONHOOK_TEAM_RESPONSE = 50045, 
	PBCHAPTER_GET_ONHOOK_LIST_REQUEST = 50046, 
	PBCHAPTER_GET_ONHOOK_LIST_RESPONSE = 50047, 
	PBCHAPTER_ONHOOK_MOVE_TO_NEXT_CHAPTER_REQUEST = 50048, 
	PBCHAPTER_ONHOOK_MOVE_TO_NEXT_CHAPTER_RESPONSE = 50049, 
	PBFIGHT_ENTER_DAILY_FIGHT_REQUEST = 50050, 
	PBFIGHT_ENTER_DAILY_FIGHT_RESPONSE = 50051, 
	PBCHAPTER_ALL_DAILY_LEVEL_REQUEST = 50052, 
	PBCHAPTER_ALL_DAILY_LEVEL_RESPONSE = 50053, 
	PBCHAPTER_PASS_DAILY_LEVEL_REQUEST = 50054, 
	PBCHAPTER_PASS_DAILY_LEVEL_RESPONSE = 50055, 
	PBCHAPTER_GET_CARD_BIOGRAPHY_LIST_REQUEST = 50056, 
	PBCHAPTER_GET_CARD_BIOGRAPHY_LIST_RESPONSE = 50057, 
	PBFIGHT_ENTER_CARD_BIOGRAPHY_REQUEST = 50058, 
	PBFIGHT_ENTER_CARD_BIOGRAPHY_RESPONSE = 50059, 
	PBCHAPTER_OPEN_ONHOOK_NEXT_CHAPTER_REQUEST = 50060, 
	PBCHAPTER_OPEN_ONHOOK_NEXT_CHAPTER_RESPONSE = 50061, 
	PBCHAPTER_RESET_BIOGRAPHY_TIMES_REQUEST = 50062, 
	PBCHAPTER_RESET_BIOGRAPHY_TIMES_RESPONSE = 50063, 
	PBCHAPTER_BUY_BIOGRAPHY_TIMES_REQUEST = 50064, 
	PBCHAPTER_BUY_BIOGRAPHY_TIMES_RESPONSE = 50065, 
	PBCHAPTER_SWEEP_BIOGRAPHY_REQUEST = 50066, 
	PBCHAPTER_SWEEP_BIOGRAPHY_RESPONSE = 50067, 
	PBINDICATION_NEW_MAIL_INDICATION = 60001, 
	PBSERVER_KICK_USER_INDICATION = 60002, 
	PBINDICATION_DAY_FLUSH_INDICATION = 60005, 
	PBINDICATION_GAME_DAY_FLUSH_INDICATION = 60006, 
	PBINDICATION_MISSION_INDICATION = 60007, 
	PBINDICATION_FRIEND_CHAT_INDICATION = 60009, 
	PBINDICATION_FRIEND_APPLY_INDICATION = 60011, 
	PBINDICATION_SYSC_SOURCE_INDICATION = 60013, 
	PBINDICATION_CACODEMON_INBREAK_NOTIFY = 60014, 
	PBINDICATION_CACODEMON_YEILDNUM_INDICATION = 60015, 
	PBINDICATION_SYSC_CRUSADE_TEAM_LIST = 60017, 
	PBINDICATION_CRUSADE_MY_TEAM = 60018, 
	PBINDICATION_SYSC_SOURCE_POS_STATE = 60019, 
	PBINDICATION_SYSC_OTHER_SOURCE_AREA = 60020, 
	PBINDICATION_NATION_POS_ABANDON_TEAM_BAK = 60021, 
	PBINDICATION_KILL_ENEMY_TEAM_BACK = 60022, 
	PBINDICATION_SYSC_ATTACK_TEAM_INDICATION = 60023, 
	PBINDICATION_WAR_BUILDING_KILL_ENEMY_END_INDICATION = 60024, 
	PBINDICATION_SYSC_DEFEND_TEAM_INDICATION = 60025, 
	PBINDICATION_SYSC_SYSTEM_TEAM_INDICATION = 60026, 
	PBINDICATION_UNION_APPLY_AGREE_INDICATION = 60027, 
	PBINDICATION_SYS_CHAT_INDICATION = 60028, 
	PBINDICATION_SYSC_USER_CELL_INDICATION = 60029, 
	PBINDICATION_UNION_POSITION_INDICATION = 60030, 
	PBINDICATION_UNION_LEADER_INDICATION = 60031, 
	PBINDICATION_UNION_EXP_INDICATION = 60032, 
	PBINDICATION_WAR_BUILDING_KILL_ENEMY_TIME_INDICATION = 60033, 
	PBINDICATION_NATION_PVE_START_INDICATION = 60034, 
	PBINDICATION_NATION_TEAM_STAY_INDICATION = 60035, 
	PBINDICATION_NATION_PVE_END_INDICATION = 60036, 
	PBINDICATION_NATION_COLLECT_END_INDICATION = 60037, 
	PBINDICATION_NATION_PVP_END_INDICATION = 60038, 
	PBINDICATION_UNION_MEMBER_INDICATION = 60039, 
	PBINDICATION_NATION_ARMY_PATH_INDICATION = 60040, 
	PBINDICATION_NATION_RETURN_BACK_INDICATION = 60041, 
	PBINDICATION_NATION_ACHIEVE_MISSION_INDICATION = 60042, 
	PBINDICATION_SYNC_NATION_UNION_APPLY_INDICATION = 60043, 
	PBINDICATION_SYNC_UNION_ACTIVE_TOWN_INDICATION = 60044, 
	PBINDICATION_PAOMADENG_INDICATION = 60045, 
	PBINDICATION_NATION_NOTIF_RED_INDICATION = 60046, 
	PBINDICATION_BROADCAST_BATTLE_INDICATION = 60047, 
	PBINDICATION_BUILDING_HOLD_INDICATION = 60048, 
	PBPVP_MATCH_INDICATION = 61000, 
	PBPVP_BATTLE_GROUP_INDICATION = 61001, 
	PBPVP_CONVERT_CRYTALS_INDICATION = 61002, 
	PBPVP_ACTION_INDICATION = 61003, 
	PBPVP_TEAM_READY_INDICATION = 61004, 
	PBPVP_LOADING_END_INDICATION = 61005, 
	PBPVP_FIGHT_ERROR_INDICATION = 61006, 
	PBDRBOSS_ENTER_PLAYER_INDICATION = 62001, 
	PBDRBOSS_LEAVE_ROOM_INDICATION = 62002, 
	PBDRBOSS_KICKOUT_ROOM_INDICATION = 62003, 
	PBDRBOSS_MEMBER_CALL_INDICATION = 62004, 
	PBDRBOSS_MEMBER_ISREADY_INDICATION = 62005, 
	PBDRBOSS_INVITE_INDICATION = 62006, 
	PBDRBOSS_FLUSH_BOSS_INDICATION = 62007, 
	PBDRBOSS_EXPLORE_START_INDICATION = 62008, 
	PBDRBOSS_EXPLORE_MOVE_INDICATION = 62009, 
	PBDRBOSS_KILL_ELITE_INDICATION = 62010, 
	PBDRBOSS_KILL_BOSS_INDICATION = 62011, 
	PBDRBOSS_BOSS_HP_INDICATION = 62012, 
	PBARENA_GET_ARENA_INFO_REQUEST = 70000, 
	PBARENA_GET_ARENA_INFO_RESPONSE = 70001, 
	PBARENA_GET_ARENA_RANK_REQUEST = 70002, 
	PBARENA_GET_ARENA_RANK_RESPONSE = 70003, 
	PBARENA_GET_ARENA_REPORT_REQUEST = 70004, 
	PBARENA_GET_ARENA_REPORT_RESPONSE = 70005, 
	PBARENA_FLUSH_MATCH_REQUEST = 70006, 
	PBARENA_FLUSH_MATCH_RESPONSE = 70007, 
	PBARENA_SAVE_DEFENSE_TEAM_REQUEST = 70008, 
	PBARENA_SAVE_DEFENSE_TEAM_RESPONSE = 70009, 
	PBARENA_GET_POINT_REWARD_REQUEST = 70010, 
	PBARENA_GET_POINT_REWARD_RESPONSE = 70011, 
	PBARENA_BUY_CHALLENGE_TICK_REQUEST = 70012, 
	PBARENA_BUY_CHALLENGE_TICK_RESPONSE = 70013, 
	PBARENA_REPORT_REQUEST = 70014, 
	PBARENA_REPORT_RESPONSE = 70015, 
	PBPVP_MATCH_REQUEST = 71000, 
	PBPVP_MATCH_RESPONSE = 71001, 
	PBPVP_TEAM_READY_REQUEST = 71002, 
	PBPVP_TEAM_READY_RESPONSE = 71003, 
	PBPVP_RESET_BATTLE_REQUEST = 71004, 
	PBPVP_RESET_BATTLE_RESPONSE = 71005, 
	PBPVP_MATCH_SERVER_REQUEST = 71006, 
	PBPVP_PVP_SERVER_REQUEST = 71007, 
	PBPVP_PVP_ACTION_REQUEST = 71008, 
	PBPVP_PVP_ACTION_RESPONSE = 71009, 
	PBPVP_GET_PVP_ARENA_INFO_REQUEST = 71010, 
	PBPVP_GET_PVP_ARENA_INFO_RESPONSE = 71011, 
	PBPVP_GET_PVP_ARENA_REWARD_REQUEST = 71012, 
	PBPVP_GET_PVP_ARENA_REWARD_RESPONSE = 71013, 
	PBPVP_CANCEL_TEAM_REQUEST = 71014, 
	PBPVP_CANCEL_TEAM_RESPONSE = 71015, 
	PBPVP_LOADING_END_REQUEST = 71016, 
	PBPVP_LOADING_END_RESPONSE = 71017, 
	PBPVP_GET_PVP_ARENA_RANK_REQUEST = 71018, 
	PBPVP_GET_PVP_ARENA_RANK_RESPONSE = 71019, 
	PBPVP_GET_ALLSERVER_PVP_ARENA_RANK_REQUEST = 71020, 
	PBPVP_GET_ALLSERVER_PVP_ARENA_RANK_RESPONSE = 71021, 
	PBPVP_GET_PVP_ARENA_REPORT_REQUEST = 71022, 
	PBPVP_GET_PVP_ARENA_REPORT_RESPONSE = 71023, 
	PBPVP_PVP_REPORT_REQUEST = 71024, 
	PBPVP_PVP_REPORT_RESPONSE = 71025, 
	PBMISSION_GET_LEVEL_GIFT_REQUEST = 80000, 
	PBMISSION_GET_LEVEL_GIFT_RESPONSE = 80001, 
	PBMISSION_GET_ONLINE_GIFT_REQUEST = 80002, 
	PBMISSION_GET_ONLINE_GIFT_RESPONSE = 80003, 
	PBMISSION_GET_SEVEN_DAY_GIFT_REQUEST = 80004, 
	PBMISSION_GET_SEVEN_DAY_GIFT_RESPONSE = 80005, 
	PBMISSION_GET_ALL_ACHIEVE_REQUEST = 80006, 
	PBMISSION_GET_ALL_ACHIEVE_RESPONSE = 80007, 
	PBMISSION_GET_ALL_DAILY_REQUEST = 80008, 
	PBMISSION_GET_ALL_DAILY_RESPONSE = 80009, 
	PBMISSION_DAILY_REWARD_REQUEST = 80012, 
	PBMISSION_DAILY_REWARD_RESPONSE = 80013, 
	PBMISSION_GET_NEW_PERSON_INFO_REQUEST = 80014, 
	PBMISSION_GET_NEW_PERSON_INFO_RESPONSE = 80015, 
	PBMISSION_MAJOR_REWARD_REQUEST = 80016, 
	PBMISSION_MAJOR_REWARD_RESPONSE = 80017, 
	PBMISSION_GET_ALL_CARNIVAL_REQUEST = 80018, 
	PBMISSION_GET_ALL_CARNIVAL_RESPONSE = 80019, 
	PBMISSION_CARNIVAL_REWARD_REQUEST = 80020, 
	PBMISSION_CARNIVAL_REWARD_RESPONSE = 80021, 
	PBMISSION_CARNIVAL_INTEGRAL_REWARD_REQUEST = 80022, 
	PBMISSION_CARNIVAL_INTEGRAL_REWARD_RESPONSE = 80023, 
	PBMISSION_GET_ACHIEVE_REWARD_REQUEST = 80024, 
	PBMISSION_GET_ACHIEVE_REWARD_RESPONSE = 80025, 
	PBRELATION_GET_FRIND_LIST_REQUEST = 90000, 
	PBRELATION_GET_FRIND_LIST_RESPONSE = 90001, 
	PBRELATION_GET_CHAT_LIST_REQUEST = 90002, 
	PBRELATION_GET_CHAT_LIST_RESPONSE = 90003, 
	PBRELATION_CHAT_TO_FRIEND_REQUEST = 90004, 
	PBRELATION_CHAT_TO_FRIEND_RESPONSE = 90005, 
	PBRELATION_DEAL_FRIEND_REQUEST = 90006, 
	PBRELATION_DEAL_FRIEND_RESPONSE = 90007, 
	PBRELATION_SEARCH_FRIEND_REQUEST = 90010, 
	PBRELATION_SEARCH_FRIEND_RESPONSE = 90011, 
	PBRELATION_GET_RECOMMEND_FRIEND_REQUEST = 90013, 
	PBRELATION_GET_RECOMMEND_FRIEND_RESPONSE = 90014, 
	PBEQUIP_WEAR_EQUIP_REQUEST = 100001, 
	PBEQUIP_WEAR_EQUIP_RESPONSE = 100002, 
	PBEQUIP_GET_ALL_EQUIP_REQUEST = 100003, 
	PBEQUIP_GET_ALL_EQUIP_RESPONSE = 100004, 
	PBEQUIP_DISBOARD_EQUIP_REQUEST = 100005, 
	PBEQUIP_DISBOARD_EQUIP_RESPONSE = 100006, 
	PBEQUIP_SMELT_EQUIP_REQUEST = 100007, 
	PBEQUIP_SMELT_EQUIP_RESPONSE = 100008, 
	PBEQUIP_AUTHENTICATE_EQUIP_REQUEST = 100009, 
	PBEQUIP_AUTHENTICATE_EQUIP_RESPONSE = 100010, 
	PBEQUIP_INTENSIFY_EQUIP_REQUEST = 100011, 
	PBEQUIP_INTENSIFY_EQUIP_RESPONSE = 100012, 
	PBEQUIP_AUTOMATIC_EQUIP_REQUEST = 100013, 
	PBEQUIP_AUTOMATIC_EQUIP_RESPONSE = 100014, 
	PBEQUIP_GET_CARD_ALL_EQUIP_FIGHTING_REQUEST = 100015, 
	PBEQUIP_GET_CARD_ALL_EQUIP_FIGHTING_RESPONSE = 100016, 
	PBDRBOSS_CREATE_ROOM_REQUEST = 110001, 
	PBDRBOSS_CREATE_ROOM_RESPONSE = 110002, 
	PBDRBOSS_SEARCH_ROOM_REQUEST = 110003, 
	PBDRBOSS_SEARCH_ROOM_RESPONSE = 110004, 
	PBDRBOSS_MATCH_ROOM_REQUEST = 110005, 
	PBDRBOSS_MATCH_ROOM_RESPONSE = 110006, 
	PBDRBOSS_ENTER_ROOM_REQUEST = 110007, 
	PBDRBOSS_ENTER_ROOM_RESPONSE = 110008, 
	PBDRBOSS_SET_PASSWORD_REQUEST = 110009, 
	PBDRBOSS_SET_PASSWORD_RESPONSE = 110010, 
	PBDRBOSS_CHANGE_LEADER_REQUEST = 110011, 
	PBDRBOSS_CHANGE_LEADER_RESPONSE = 110012, 
	PBDRBOSS_KICKOUT_ROOM_REQUEST = 110013, 
	PBDRBOSS_KICKOUT_ROOM_RESPONSE = 110014, 
	PBDRBOSS_LEAVE_ROOM_REQUEST = 110015, 
	PBDRBOSS_LEAVE_ROOM_RESPONSE = 110016, 
	PBDRBOSS_CHANGE_POSITION_REQUEST = 110017, 
	PBDRBOSS_CHANGE_POSITION_RESPONSE = 110018, 
	PBDRBOSS_BOSS_LIST_REQUEST = 110019, 
	PBDRBOSS_BOSS_LIST_RESPONSE = 110020, 
	PBDRBOSS_FLUSH_BOSS_REQUEST = 110021, 
	PBDRBOSS_FLUSH_BOSS_RESPONSE = 110022, 
	PBDRBOSS_UPDATE_TEAM_REQUEST = 110023, 
	PBDRBOSS_UPDATE_TEAM_RESPONSE = 110024, 
	PBDRBOSS_MEMBER_CALL_REQUEST = 110025, 
	PBDRBOSS_MEMBER_CALL_RESPONSE = 110026, 
	PBDRBOSS_MEMBER_ISREADY_REQUEST = 110027, 
	PBDRBOSS_MEMBER_ISREADY_RESPONSE = 110028, 
	PBDRBOSS_INVITE_MEMBER_REQUEST = 110029, 
	PBDRBOSS_INVITE_MEMBER_RESPONSE = 110030, 
	PBDRBOSS_SEND_INVITE_REQUEST = 110031, 
	PBDRBOSS_SEND_INVITE_RESPONSE = 110032, 
	PBDRBOSS_EXPLORE_START_REQUEST = 110033, 
	PBDRBOSS_EXPLORE_START_RESPONSE = 110034, 
	PBDRBOSS_EXPLORE_MOVE_REQUEST = 110035, 
	PBDRBOSS_EXPLORE_MOVE_RESPONSE = 110036, 
	PBDRBOSS_EXPLORE_EVENT_REQUEST = 110037, 
	PBDRBOSS_EXPLORE_EVENT_RESPONSE = 110038, 
	PBDRBOSS_EXPLORE_ITEM_REQUEST = 110039, 
	PBDRBOSS_EXPLORE_ITEM_RESPONSE = 110040, 
	PBDRBOSS_EXPLORE_FIGHT_REQUEST = 110041, 
	PBDRBOSS_EXPLORE_FIGHT_RESPONSE = 110042, 
	PBDRBOSS_TEAM_CALL_REQUEST = 110043, 
	PBDRBOSS_TEAM_CALL_RESPONSE = 110044, 
	PBDRBOSS_EXPLORE_END_REQUEST = 110045, 
	PBEXPLORATORY_CHANGE_CITY_REQUEST = 120001, 
	PBEXPLORATORY_CHANGE_CITY_RESPONSE = 120002, 
	PBEXPLORATORY_SEARCH_EVENT_REQUEST = 120003, 
	PBEXPLORATORY_SEARCH_EVENT_RESPONSE = 120004, 
	PBEXPLORATORY_USE_TLITEM_REQUEST = 120005, 
	PBEXPLORATORY_USE_TLITEM_RESPONSE = 120006, 
	PBEXPLORATORY_CHECK_INTO_CLUE_REQUEST = 120007, 
	PBEXPLORATORY_CHECK_INTO_CLUE_RESPONSE = 120008, 
	PBEXPLORATORY_CHAT_WITH_NPC_REQUEST = 120009, 
	PBEXPLORATORY_CHAT_WITH_NPC_RESPONSE = 1200010, 
	PBNATION_G_TO_N_GET_NEW_CARD_REQUEST = 401001, 
	PBNATION_G_TO_N_GET_NEW_CARD_RESPONSE = 401002, 
	PBNATION_N_TO_G_SYNC_DAILY_REQUEST = 401003, 
	PBNATION_N_TO_G_SYNC_DAILY_RESPONSE = 401004, 
	PBNATION_N_TO_G_SYNC_ACHIVE_REQUEST = 401005, 
	PBNATION_N_TO_G_SYNC_ACHIVE_RESPONSE = 401006, 
	PBNATION_N_TO_G_UNION_ID_REQUEST = 401007, 
	PBNATION_N_TO_G_UNION_ID_RESPONSE = 401008, 
	PBNATION_N_TO_G_UNION_EMAIL_REQUEST = 401009, 
	PBNATION_N_TO_G_UNION_EMAIL_RESPONSE = 401010, 
	PBNATION_G_TO_N_MISS_REWARD_REQUEST = 501001, 
	PBNATION_G_TO_N_MISS_REWARD_RESPONSE = 501002, 
	PBNATION_G_TO_N_MISS_FINISH_REQUEST = 501003, 
	PBNATION_G_TO_N_MISS_FINISH_RESPONSE = 501004, 
	PBNATION_G_TO_N_UPDATE_CARD_REQUEST = 501005, 
	PBNATION_G_TO_N_UPDATE_CARD_RESPONSE = 501006, 
	PBNATION_G_TO_N_GM_REQUEST = 501007, 
	PBNATION_G_TO_N_GM_RESPONSE = 501008, 
	PBNATION_G_TO_N_CURRENCY_REQUEST = 501009, 
	PBNATION_G_TO_N_CURRENCY_RESPONSE = 501010, 
	PBNATION_N_TO_G_CURRENCY_REQUEST = 401011, 
	PBNATION_N_TO_G_CURRENCY_RESPONSE = 401012, 
	PBNATION_N_TO_G_GUIDE_REQUEST = 401013, 
	PBNATION_N_TO_G_GUIDE_RESPONSE = 401014, 
	PBNATION_ENTER_NATION_REQUEST = 500000, 
	PBNATION_ENTER_NATION_RESPONSE = 500001, 
	PBNATION_CHOICE_ASCRIPTION_REQUEST = 500002, 
	PBNATION_CHOICE_ASCRIPTION_RESPONSE = 500003, 
	PBNATION_SYNC_NATION_RESOURCE_REQUEST = 500004, 
	PBNATION_SYNC_NATION_RESOURCE_RESPONSE = 500005, 
	PBNATION_SYNC_NATION_FAME_REQUEST = 500006, 
	PBNATION_SYNC_NATION_FAME_RESPONSE = 500007, 
	PBNATION_NATION_FIGHT_LOGS_REQUEST = 500008, 
	PBNATION_NATION_FIGHT_LOGS_RESPONSE = 500009, 
	PBNATION_NATION_EVENT_REQUEST = 500010, 
	PBNATION_NATION_EVENT_RESPONSE = 500011, 
	PBNATION_NATION_EVENT_REWARD_REQUEST = 500012, 
	PBNATION_NATION_EVENT_REWARD_RESPONSE = 500013, 
	PBNATION_NATION_OPEN_POS_COLLECT_REQUEST = 500014, 
	PBNATION_NATION_OPEN_POS_COLLECT_RESPONSE = 500015, 
	PBNATION_NATION_ADD_POS_COLLECT_REQUEST = 500016, 
	PBNATION_NATION_ADD_POS_COLLECT_RESPONSE = 500017, 
	PBNATION_NATION_REMOVE_POS_COLLECT_REQUEST = 500018, 
	PBNATION_NATION_REMOVE_POS_COLLECT_RESPONSE = 500019, 
	PBNATION_NATION_RENAME_POS_COLLECT_REQUEST = 500020, 
	PBNATION_NATION_RENAME_POS_COLLECT_RESPONSE = 500021, 
	PBNATION_NATION_MAJOR_REWARD_REQUEST = 500022, 
	PBNATION_NATION_MAJOR_REWARD_RESPONSE = 500023, 
	PBNATION_NATION_OCCUPY_INFO_REQUEST = 500024, 
	PBNATION_NATION_OCCUPY_INFO_RESPONSE = 500025, 
	PBNATION_NATION_CRUSADE_SEARCH_REQUEST = 500026, 
	PBNATION_NATION_CRUSADE_SEARCH_RESPONSE = 500027, 
	PBNATION_GET_BRON_REGION_REQUEST = 500028, 
	PBNATION_GET_BRON_REGION_RESPONSE = 500029, 
	PBNATION_NATION_OPEN_REQUEST = 500030, 
	PBNATION_NATION_OPEN_RESPONSE = 500031, 
	PBNATION_MAP_GET_NATION_RECT_CELL_DATA_REQUEST = 510000, 
	PBNATION_MAP_GET_NATION_RECT_CELL_DATA_RESPONSE = 510001, 
	PBNATION_MAP_GET_NATION_ROLE_TOWNS_REQUEST = 510002, 
	PBNATION_MAP_GET_NATION_ROLE_TOWNS_RESPONSE = 510003, 
	PBNATION_MAP_GET_NATION_WAR_BUILDING_REQUEST = 510004, 
	PBNATION_MAP_GET_NATION_WAR_BUILDING_RESPONSE = 510005, 
	PBNATION_MAP_GET_NATION_WAR_CELL_REQUEST = 510006, 
	PBNATION_MAP_GET_NATION_WAR_CELL_RESPONSE = 510007, 
	PBNATION_MAP_GET_NATION_TOWN_BUILDING_REQUEST = 510008, 
	PBNATION_MAP_GET_NATION_TOWN_BUILDING_RESPONSE = 510009, 
	PBNATION_MAP_GET_REWARD_BOX_REQUEST = 5100010, 
	PBNATION_MAP_GET_REWARD_BOX_RESPONSE = 5100011, 
	PBNATION_MAP_ABANDON_SOURCE_DEFEND_REQUEST = 5100012, 
	PBNATION_MAP_ABANDON_SOURCE_DEFEND_RESPONSE = 5100013, 
	PBNATION_MAP_CANCEL_ABANDON_SOURCE_REQUEST = 5100014, 
	PBNATION_MAP_CANCEL_ABANDON_SOURCE_RESPONSE = 5100015, 
	PBNATION_MAP_GET_NATION_SCREEN_WAR_CELL_REQUEST = 5100016, 
	PBNATION_MAP_GET_NATION_SCREEN_WAR_CELL_RESPONSE = 5100017, 
	PBNATION_MAP_ABANDON_CELL_DEFEND_REQUEST = 5100018, 
	PBNATION_MAP_ABANDON_CELL_DEFEND_RESPONSE = 5100019, 
	PBNATION_MAP_CANCEL_ABANDON_CELL_REQUEST = 5100020, 
	PBNATION_MAP_CANCEL_ABANDON_CELL_RESPONSE = 5100021, 
	PBNATION_MAP_GET_WAR_BUILDING_RANKING_REQUEST = 5100022, 
	PBNATION_MAP_GET_WAR_BUILDING_RANKING_RESPONSE = 5100023, 
	PBNATION_MAP_ABANDON_SOURCE_CHECK_REQUEST = 5100024, 
	PBNATION_MAP_ABANDON_SOURCE_CHECK_RESPONSE = 5100025, 
	PBNATION_TEAM_GET_NATION_TEAMS_REQUEST = 520000, 
	PBNATION_TEAM_GET_NATION_TEAMS_RESPONSE = 520001, 
	PBNATION_TEAM_TEAM_MOVE_REQUEST = 520002, 
	PBNATION_TEAM_TEAM_MOVE_RESPONSE = 520003, 
	PBNATION_TEAM_EXCHANGE_TEAM_CARD_REQUEST = 520004, 
	PBNATION_TEAM_EXCHANGE_TEAM_CARD_RESPONSE = 520005, 
	PBNATION_TEAM_RESET_ARMY_GROUP_REQUEST = 520008, 
	PBNATION_TEAM_RESET_ARMY_GROUP_RESPONSE = 520009, 
	PBNATION_TEAM_UNLOCK_ARMY_GROUP_REQUEST = 520010, 
	PBNATION_TEAM_UNLOCK_ARMY_GROUP_RESPONSE = 520011, 
	PBNATION_TEAM_CONVERT_TEAM_ARMY_GROUP_REQUEST = 520012, 
	PBNATION_TEAM_CONVERT_TEAM_ARMY_GROUP_RESPONSE = 520013, 
	PBNATION_TEAM_FIGHTING_BANDITS_REQUEST = 520014, 
	PBNATION_TEAM_FIGHTING_BANDITS_RESPONSE = 520015, 
	PBNATION_TEAM_FLUSH_NATION_TEAM_REQUEST = 520016, 
	PBNATION_TEAM_FLUSH_NATION_TEAM_RESPONSE = 520017, 
	PBNATION_TEAM_TEAM_BACK_REQUEST = 520018, 
	PBNATION_TEAM_TEAM_BACK_RESPONSE = 520019, 
	PBNATION_TEAM_TEAM_DISPATCH_REQUEST = 520020, 
	PBNATION_TEAM_TEAM_DISPATCH_RESPONSE = 520021, 
	PBNATION_TEAM_TEAM_SOURCE_REQUSET = 520022, 
	PBNATION_TEAM_TEAM_SOURCE_RESPONSE = 520023, 
	PBNATION_TEAM_TEAM_OPEN_CRUSADE_REQUEST = 520024, 
	PBNATION_TEAM_TEAM_OPEN_CRUSADE_RESPONSE = 520025, 
	PBNATION_TEAM_FIGHTING_CRUSADE_REQUEST = 520026, 
	PBNATION_TEAM_FIGHTING_CRUSADE_RESPONSE = 520027, 
	PBNATION_TEAM_TEAM_OPEN_CRUSADE_INTERIOR_REQUEST = 520028, 
	PBNATION_TEAM_TEAM_OPEN_CRUSADE_INTERIOR_RESPONSE = 520029, 
	PBNATION_TEAM_TEAM_CLOSE_CRUSADE_INTERIOR_REQUEST = 520030, 
	PBNATION_TEAM_TEAM_CLOSE_CRUSADE_INTERIOR_RESPONSE = 520031, 
	PBNATION_TEAM_TEAM_OPEN_SOURCE_REQUEST = 520032, 
	PBNATION_TEAM_TEAM_OPEN_SOURCE_RESPONSE = 520033, 
	PBNATION_TEAM_TEAM_OPEN_SOURCE_TARGET_INFO_REQUEST = 520034, 
	PBNATION_TEAM_TEAM_OPEN_SOURCE_TARGET_INFO_RESPONSE = 520035, 
	PBNATION_TEAM_TEAM_CLOSE_SOURCE_REQUEST = 520036, 
	PBNATION_TEAM_TEAM_CLOSE_SOURCE_RESPONSE = 520037, 
	PBNATION_TEAM_TEAM_BATTLE_AREA_REQUSET = 520038, 
	PBNATION_TEAM_TEAM_BATTLE_AREA_RESPONSE = 520039, 
	PBNATION_TEAM_TEAM_OPEN_BATTLE_AREA_TARGET_INFO_REQUEST = 520040, 
	PBNATION_TEAM_TEAM_OPEN_BATTLE_AREA_TARGET_INFO_RESPONSE = 520041, 
	PBNATION_TEAM_TEAM_WAR_BUILDING_REQUEST = 520042, 
	PBNATION_TEAM_TEAM_WAR_BUILDING_RESPONSE = 520043, 
	PBNATION_TEAM_TEAM_BREAK_BUILDING_REQUEST = 520044, 
	PBNATION_TEAM_TEAM_BREAK_BUILDING_RESPONSE = 520045, 
	PBNATION_TEAM_TEAM_KILL_ENEMY_REQUEST = 520046, 
	PBNATION_TEAM_TEAM_KILL_ENEMY_RESPONSE = 520047, 
	PBNATION_TEAM_TEAM_OPEN_KILL_ENEMY_REQUEST = 520048, 
	PBNATION_TEAM_TEAM_OPEN_KILL_ENEMY_RESPONSE = 520049, 
	PBNATION_TEAM_TEAM_SYNC_BATTLE_REQUEST = 520050, 
	PBNATION_TEAM_TEAM_SYNC_BATTLE_RESPONSE = 520051, 
	PBNATION_TEAM_TEAM_OPEN_DEFEND_REQUEST = 520052, 
	PBNATION_TEAM_TEAM_OPEN_DEFEND_RESPONSE = 520053, 
	PBNATION_TEAM_TEAM_CROSS_VERIFY_REQUEST = 520054, 
	PBNATION_TEAM_TEAM_CROSS_VERIFY_RESPONSE = 520055, 
	PBNATION_TEAM_TEAM_COST_GEM_BACK_REQUEST = 520056, 
	PBNATION_TEAM_TEAM_COST_GEM_BACK_RESPONSE = 520057, 
	PBNATION_TEAM_TEAM_SYNC_COLLECT_RES_REQUEST = 520058, 
	PBNATION_TEAM_TEAM_SYNC_COLLECT_RES_RESPONSE = 520059, 
	PBNATION_TEAM_TEAM_SYNC_PATH_REQUEST = 520060, 
	PBNATION_TEAM_TEAM_SYNC_PATH_RESPONSE = 520061, 
	PBNATION_TEAM_UNLOCK_TALENT_REQUEST = 520062, 
	PBNATION_TEAM_UNLOCK_TALENT_RESPONSE = 520063, 
	PBNATION_TEAM_FIGHT_LOG_LIST_REQUEST = 520064, 
	PBNATION_TEAM_FIGHT_LOG_LIST_RESPONSE = 520065, 
	PBNATION_TEAM_FIGHT_LOG_ALL_READ_REQUEST = 520066, 
	PBNATION_TEAM_FIGHT_LOG_ALL_READ_RESPONSE = 520067, 
	PBNATION_TEAM_TEAM_BANDITS_RECOVERY_TIME_REQUEST = 520068, 
	PBNATION_TEAM_TEAM_BANDITS_RECOVERY_TIME_RESPONSE = 520069, 
	PBNATION_CARD_GET_NATION_CARDS_REQUEST = 530000, 
	PBNATION_CARD_GET_NATION_CARDS_RESPONSE = 530001, 
	PBNATION_CARD_CONSCRIPTION_REQUEST = 530002, 
	PBNATION_CARD_CONSCRIPTION_RESPONSE = 530003, 
	PBNATION_CARD_STOP_CONSCRIPTION_REQUEST = 530004, 
	PBNATION_CARD_STOP_CONSCRIPTION_RESPONSE = 530005, 
	PBNATION_CARD_SYNC_NATION_ONE_CARD_REQUEST = 530006, 
	PBNATION_CARD_SYNC_NATION_ONE_CARD_RESPONSE = 530007, 
	PBNATION_GET_TECHS_REQUEST = 531000, 
	PBNATION_GET_TECHS_RESPONSE = 531001, 
	PBNATION_TECH_RESEARCH_REQUEST = 531002, 
	PBNATION_TECH_RESEARCH_RESPONSE = 531003, 
	PBSERVER_TECH_TIMER_REQUEST = 531004, 
	PBSERVER_TECH_TIMER_RESPONSE = 531005, 
	PBNATION_TECH_STOP_REQUEST = 531006, 
	PBNATION_TECH_STOP_RESPONSE = 531007, 
	PBNATION_TECH_FINISH_REQUEST = 531008, 
	PBNATION_TECH_FINISH_RESPONSE = 531009, 
	PBNATION_BUY_TECH_QUEUE_REQUEST = 531010, 
	PBNATION_BUY_TECH_QUEUE_RESPONSE = 531011, 
	PBNATION_SYNC_TECH_REQUEST = 531012, 
	PBNATION_SYNC_TECH_RESPONSE = 531013, 
	PBNATION_UNION_CREATE_UNION_REQUEST = 532000, 
	PBNATION_UNION_CREATE_UNION_RESPONSE = 532001, 
	PBNATION_UNION_UNION_LIST_REQUEST = 532002, 
	PBNATION_UNION_UNION_LIST_RESPONSE = 532003, 
	PBNATION_UNION_SEARCH_UNION_REQUEST = 532004, 
	PBNATION_UNION_SEARCH_UNION_RESPONSE = 532005, 
	PBNATION_UNION_UNION_INFO_REQUEST = 532006, 
	PBNATION_UNION_UNION_INFO_RESPONSE = 532007, 
	PBNATION_UNION_UNION_MEMBER_REQUEST = 532008, 
	PBNATION_UNION_UNION_MEMBER_RESPONSE = 532009, 
	PBNATION_UNION_APPLY_UNION_REQUEST = 532010, 
	PBNATION_UNION_APPLY_UNION_RESPONSE = 532011, 
	PBNATION_UNION_APPLY_LIST_REQUEST = 532012, 
	PBNATION_UNION_APPLY_LIST_RESPONSE = 532013, 
	PBNATION_UNION_DEAL_APPLY_REQUEST = 532014, 
	PBNATION_UNION_DEAL_APPLY_RESPONSE = 532015, 
	PBNATION_UNION_SET_APPLY_REQUEST = 532016, 
	PBNATION_UNION_SET_APPLY_RESPONSE = 532017, 
	PBNATION_UNION_LEAVE_UNION_REQUEST = 532018, 
	PBNATION_UNION_LEAVE_UNION_RESPONSE = 532019, 
	PBNATION_UNION_KICKOUT_UNION_REQUEST = 532020, 
	PBNATION_UNION_KICKOUT_UNION_RESPONSE = 532021, 
	PBNATION_UNION_GRANT_UNION_REQUEST = 532022, 
	PBNATION_UNION_GRANT_UNION_RESPONSE = 532023, 
	PBNATION_UNION_GIVEUP_POSITION_REQUEST = 532024, 
	PBNATION_UNION_GIVEUP_POSITION_RESPONSE = 532025, 
	PBNATION_UNION_UPDATE_NOTICE_REQUEST = 532026, 
	PBNATION_UNION_UPDATE_NOTICE_RESPONSE = 532027, 
	PBNATION_UNION_INVITE_UNION_REQUEST = 532028, 
	PBNATION_UNION_INVITE_UNION_RESPONSE = 532029, 
	PBNATION_UNION_DEAL_INVITE_REQUEST = 532030, 
	PBNATION_UNION_DEAL_INVITE_RESPONSE = 532031, 
	PBNATION_UNION_POSITION_MANAGER_REQUEST = 532032, 
	PBNATION_UNION_POSITION_MANAGER_RESPONSE = 532033, 
	PBNATION_UNION_INVITE_LIST_REQUEST = 532034, 
	PBNATION_UNION_INVITE_LIST_RESPONSE = 532035, 
	PBNATION_UNION_UNION_REFRESH_REQUEST = 532036, 
	PBNATION_UNION_UNION_REFRESH_RESPONSE = 532037, 
	PBNATION_UNION_MEMBER_INFO_REQUEST = 532038, 
	PBNATION_UNION_MEMBER_INFO_RESPONSE = 532039, 
	PBNATION_UNION_INVITE_RECOMMEND_REQUEST = 532040, 
	PBNATION_UNION_INVITE_RECOMMEND_RESPONSE = 532041, 
	PBNATION_UNION_EVENT_LIST_REQUEST = 532042, 
	PBNATION_UNION_EVENT_LIST_RESPONSE = 532043, 
	PBNATION_UNION_BUILDING_HOLD_REQUEST = 532044, 
	PBNATION_UNION_BUILDING_HOLD_RESPONSE = 532045, 
	PBNATION_UNION_UNION_RANKS_REQUEST = 532046, 
	PBNATION_UNION_UNION_RANKS_RESPONSE = 532047, 
	PBNATION_UNION_UNION_EMAIL_REQUEST = 532048, 
	PBNATION_UNION_UNION_EMAIL_RESPONSE = 532049, 
	PBNATION_UNION_UPDATE_UNION_INFO_REQUEST = 532050, 
	PBNATION_UNION_UPDATE_UNION_INFO_RESPONSE = 532051, 
}
return config
