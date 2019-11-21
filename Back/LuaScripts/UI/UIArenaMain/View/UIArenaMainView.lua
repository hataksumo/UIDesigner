
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaMainView = BaseClass("UIArenaMainView", UIBaseView)
local base = UIBaseView
local UIArenaReportWrapItem = require"UI.UIArenaMain.Component.UIArenaReportWrapItem"
local UIArenaRankWrapItem = require "UI.UIArenaMain.Component.UIArenaRankWrapItem"
local arena_message = DataUtil.GetData("arena_message")
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local itemList = DataUtil.GetData("item")
local isClick =true


---刷新排行榜列表
local function UpdateRankList(self)
	self.rank_data = self.model.arena_rank_data
	if self.rank_data ~= nil and #self.rank_data > 0 then
		self.rank_scroll_view_content:SetLength(table.count(self.rank_data))
		self.rank_scroll_view_content:SetGridPositionByIndex(0)
		self.rank_scroll_view_content.gameObject:SetActive(true)
	else
		self.rank_scroll_view_content:SetLength(0)
		self.rank_scroll_view_content.gameObject:SetActive(false)
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
--[[	self.closeUIButton = self:AddComponent(UIButton, "TitlebgImg/Back_UIButton/close_UIButton")
	self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)]]
	--self.closeUIText = self:AddComponent(UIText, "TitlebgImg/Back_UIButton/close_UIButton")

	self.arena_titleUIText = self:AddComponent(UIText, "UITextPanel/arena_title_UIText")

--[[	self.helpUIButton = self:AddComponent(UIButton, "TitlebgImg/help_UIButton")
	self.helpUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenComHelpInfo()
	end)]]
	self.time_info_Text = self:AddComponent(UIText, "UIPlayerInfo/time_info_Text")
	self.receive_time_Btn = self:AddComponent(UIButton,"UIPlayerInfo/receive_time_Btn")
	self.receive_time_Btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_cost_num_text:SetText(math.floor(self.arena_assess_data.FlushPrice))
		self.take_cost_tips.gameObject:SetActive(true)
	end)

    ---玩家自身信息获取
	self.player_iconUIButton = self:AddComponent(UIButton, "UIImgPanel/player_icon_UIButton")
    self.player_icon_img = self:AddComponent(UIImage,"UIImgPanel/player_icon_UIButton",AtlasConfig.DynamicTex)
	self.player_fromUIImage = self:AddComponent(UIImage, "UIImgPanel/player_from_UIImage",AtlasConfig.DynamicTex)
    ---积分奖励按钮
	self.score_rewardUIButton = self:AddComponent(UIButton, "UIImgPanel/score_reward_UIButton")
    self.score_rewardUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenScoreAwardList()
	end)
	---防守阵容按钮
	self.team_posUIButton = self:AddComponent(UIButton, "UIImgPanel/team_pos_UIButton")
	self.team_posUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.NORMAL
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D, nil, true)
	end)
	self.scoresilder = self:AddComponent(UISlider, "UIImgPanel/score_scrollbar")

	self.player_nameUIText = self:AddComponent(UIText, "UITextPanel/player_name_UIText")

	--self.levelUIText = self:AddComponent(UIText, "UITextPanel/level_num_UIText")

	self.level_numUIText = self:AddComponent(UIText, "UITextPanel/level_num_UIText")

	self.fighting_numUIText = self:AddComponent(UIText, "UITextPanel/fighting_num_UIText")
	self.fighting_numUIText:SetText(DataUtil.GetClientText(100213))
	self.fight_score_numUIText = self:AddComponent(UIText, "UITextPanel/fight_score_num_UIText")
	self.fight_score_numUIText:SetText(DataUtil.GetClientText(100214))
	self.score_numUIText = self:AddComponent(UIText, "UITextPanel/score_num_UIText")

	self.now_score_numUIText = self:AddComponent(UIText, "UITextPanel/now_score_num_UIText")

	self.has_getUIText = self:AddComponent(UIText, "UITextPanel/has_get_UIText")

	self.has_get_score_numUIText = self:AddComponent(UIText, "UITextPanel/has_get_score_num_UIText")

	self.week_winUIText = self:AddComponent(UIText, "UITextPanel/week_win_UIText")
	self.week_winUIText:SetText(DataUtil.GetClientText(100217))
	self.week_win_numUIText = self:AddComponent(UIText, "UITextPanel/week_win_num_UIText")

	self.score_rewardUIText = self:AddComponent(UIText, "UITextPanel/score_reward_UIText")
	self.score_rewardUIText:SetText(DataUtil.GetClientText(100215))
	self.team_posUIText = self:AddComponent(UIText, "UITextPanel/team_pos_UIText")
	self.team_posUIText:SetText(DataUtil.GetClientText(100216))
	self.select_img = UIUtil.FindTrans(self.transform,"UIImgPanel/select_UIButton")
	self.select_text = self:AddComponent(UIText,"UIImgPanel/select_UIButton/select_UIText")
	self.attack_info = UIUtil.FindTrans(self.transform,"UIPlayerInfo")
	self.report_info = UIUtil.FindTrans(self.transform,"UIReportPanel")
	self.rank_info = UIUtil.FindTrans(self.transform,"UIRankPanel")
	---挑战对手三个人信息获取
	self.playerone_iconUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerone/playerone_icon_UIButton")
	self.playerone_iconUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenGuardTeamInfo(self.arenaChallengeData[1])
	end)
	self.playerone_icon_img = self:AddComponent(UIImage,"UIPlayerInfo/playerone/playerone_icon_UIButton",AtlasConfig.DynamicTex)
	self.playerone_fromUIImage = self:AddComponent(UIImage, "UIPlayerInfo/playerone/playerone_from_UIImage",AtlasConfig.DynamicTex)
	self.playerone_img = UIUtil.FindTrans(self.transform,"UIPlayerInfo/playerone/playerone_Image")
	self.playerone_qualityUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerone/playerone_quality_UIButton")
	self.playerone_qualityUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveArenaQuickPassRequest(0,0,0,0,self.arenaChallengeData[1].uid)
	end)
	self.playerone_challengeUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerone/playerone_challenge_UIButton")
	self.playerone_challengeUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveEnterArenaRequest(0,0,0,nil,0)
		ArenaData:GetInstance().pk_player_uid = self.arenaChallengeData[1].uid
		isClick =true
	end)
	self.playerone_nameUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_name_UIText")
    
	--self.playerone_levelUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_level_num_UIText")
    
	self.playerone_level_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_level_num_UIText")
    
	self.playerone_score_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_score_num_UIText")
    
	self.playerone_win_add_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_win_add_num_UIText")
    self.playerone_state_UIText = self:AddComponent(UIText,"UIPlayerInfo/playerone/playerone_state_UIImg/playerone_state_UIText")
	self.playerone_qualityUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_quality_UIText")
	self.playerone_qualityUIText:SetText(DataUtil.GetClientText(100218))
    --self.playerone_state_img = self:AddComponent(UIImage,"UIPlayerInfo/playerone/playerone_state_img",AtlasConfig.Arena)
	self.playerone_state_obj_img = self:AddComponent(UIImage,"UIPlayerInfo/playerone/playerone_state_UIImg",AtlasConfig.DynamicTex)
	self.playerone_challengeUIText = self:AddComponent(UIText, "UIPlayerInfo/playerone/playerone_challenge_UIText")
	self.playerone_challengeUIText:SetText(DataUtil.GetClientText(100219))
	self.playertwo_iconUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playertwo/playertwo_icon_UIButton")
	self.playertwo_iconUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenGuardTeamInfo(self.arenaChallengeData[2])
	end)
	self.playertwo_icon_img = self:AddComponent(UIImage,"UIPlayerInfo/playertwo/playertwo_icon_UIButton",AtlasConfig.DynamicTex)
	self.playertwo_fromUIImage = self:AddComponent(UIImage, "UIPlayerInfo/playertwo/playertwo_from_UIImage",AtlasConfig.DynamicTex)

	self.playertwo_qualityUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playertwo/playertwo_quality_UIButton")
	self.playertwo_qualityUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveArenaQuickPassRequest(1,0,0,0,self.arenaChallengeData[2].uid)
	end)
	self.playertwo_challengeUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playertwo/playertwo_challenge_UIButton")
	self.playertwo_challengeUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveEnterArenaRequest(1,0,0,nil,0)
		ArenaData:GetInstance().pk_player_uid = self.arenaChallengeData[2].uid
		isClick =true
	end)
	self.playertwo_nameUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_name_UIText")
    
	--self.playertwo_levelUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_level_num_UIText")
    
	self.playertwo_level_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_level_num_UIText")
	self.playertwo_img = UIUtil.FindTrans(self.transform,"UIPlayerInfo/playertwo/playertwo_Image")
	self.playertwo_score_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_score_num_UIText")
    self.playertwo_state_UIText = self:AddComponent(UIText,"UIPlayerInfo/playertwo/playertwo_state_UIImg/playertwo_state_UIText")
	self.playertwo_win_add_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_win_add_num_UIText")
	self.playertwo_state_obj_img = self:AddComponent(UIImage,"UIPlayerInfo/playertwo/playertwo_state_UIImg",AtlasConfig.DynamicTex)
	--self.playertwo_state_img = self:AddComponent(UIImage,"UIPlayerInfo/playertwo/playertwo_state_img",AtlasConfig.Arena)
	self.playertwo_qualityUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_quality_UIText")
	self.playertwo_challengeUIText = self:AddComponent(UIText, "UIPlayerInfo/playertwo/playertwo_challenge_UIText")

	self.playerthree_iconUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerthree/playerthree_icon_UIButton")
	self.playerthree_iconUIButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenGuardTeamInfo(self.arenaChallengeData[3])
	end)
	self.playerthree_icon_img = self:AddComponent(UIImage,"UIPlayerInfo/playerthree/playerthree_icon_UIButton",AtlasConfig.DynamicTex)
	self.playerthree_fromUIImage = self:AddComponent(UIImage, "UIPlayerInfo/playerthree/playerthree_from_UIImage",AtlasConfig.DynamicTex)

	self.playerthree_qualityUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerthree/playerthree_quality_UIButton")
	self.playerthree_qualityUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveArenaQuickPassRequest(2,0,0,0,self.arenaChallengeData[3].uid)
	end)
	self.playerthree_challengeUIButton = self:AddComponent(UIButton, "UIPlayerInfo/playerthree/playerthree_challenge_UIButton")
	self.playerthree_challengeUIButton:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401007) < 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100079))
			return
		end
		if ArenaData:GetInstance().arena_score > ArenaData:GetInstance().rank_critical_score then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100080))
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:PveEnterArenaRequest(2,0,0,nil,0)
		ArenaData:GetInstance().pk_player_uid = self.arenaChallengeData[3].uid
		isClick =true
	end)
	self.playerthree_nameUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_name_UIText")
    
	--self.playerthree_levelUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_level_UIText")
    
	self.playerthree_level_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_level_num_UIText")
	self.playerthree_img = UIUtil.FindTrans(self.transform,"UIPlayerInfo/playerthree/playerthree_Image")
	self.playerthree_score_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_score_num_UIText")
    self.playerthree_state_UIText = self:AddComponent(UIText,"UIPlayerInfo/playerthree/playerthree_state_UIImg/playerthree_state_UIText")
	self.playerthree_win_add_numUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_win_add_num_UIText")
	self.playerthree_state_obj_img = self:AddComponent(UIImage,"UIPlayerInfo/playerthree/playerthree_state_UIImg",AtlasConfig.DynamicTex)
    --self.playerthree_state_img = self:AddComponent(UIImage,"UIPlayerInfo/playerthree/playerthree_state_img",AtlasConfig.Arena)
	self.playerthree_qualityUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_quality_UIText")
	self.playerthree_challengeUIText = self:AddComponent(UIText, "UIPlayerInfo/playerthree/playerthree_challenge_UIText")

	---宝箱相关信息获取
	self.box1_get_reward_btn = self:AddComponent(UIButton,"UIImgPanel/box1_bg_Img/box1_get_Img")
	self.box1_get_reward_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:SendGetBoxRewardById(self.arena_main_data.arena_boxes[1].id)
	end)
	self.box1_anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"UIImgPanel/box1_bg_Img/box1_get_Img")
	self.box1_icon_btn = self:AddComponent(UIButton,"UIImgPanel/box1_bg_Img/box1_icon_Img")
	self.box1_icon_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenArenaBox(self.arena_main_data.arena_boxes[1],self.arena_main_data.arena_boxes[1].victory_num)
	end)
	self.box2_get_reward_btn = self:AddComponent(UIButton,"UIImgPanel/box2_bg_Img/box2_get_Img")
	self.box2_get_reward_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:SendGetBoxRewardById(self.arena_main_data.arena_boxes[2].id)
	end)
	self.box2_anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"UIImgPanel/box2_bg_Img/box2_get_Img")
	self.box2_icon_btn = self:AddComponent(UIButton,"UIImgPanel/box2_bg_Img/box2_icon_Img")
	self.box2_icon_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenArenaBox(self.arena_main_data.arena_boxes[2],self.arena_main_data.arena_boxes[2].victory_num)
	end)
	self.box3_get_reward_btn = self:AddComponent(UIButton,"UIImgPanel/box3_bg_Img/box3_get_Img")
	self.box3_get_reward_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:SendGetBoxRewardById(self.arena_main_data.arena_boxes[3].id)
	end)
	self.box3_anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"UIImgPanel/box3_bg_Img/box3_get_Img")
	self.box3_icon_btn = self:AddComponent(UIButton,"UIImgPanel/box3_bg_Img/box3_icon_Img")
	self.box3_icon_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenArenaBox(self.arena_main_data.arena_boxes[3],self.arena_main_data.arena_boxes[3].victory_num)
	end)

	self.box1_has_get_trans = UIUtil.FindTrans(self.transform,"UIImgPanel/box1_bg_Img/box1_has_get_Img")

	self.box2_has_get_trans = UIUtil.FindTrans(self.transform,"UIImgPanel/box2_bg_Img/box2_has_get_Img")

	self.box3_has_get_trans = UIUtil.FindTrans(self.transform,"UIImgPanel/box3_bg_Img/box3_has_get_Img")
	self.box1_numUIText = self:AddComponent(UIText, "UITextPanel/box1_num_UIText")
	self.box2_numUIText = self:AddComponent(UIText, "UITextPanel/box2_num_UIText")
	self.box3_numUIText = self:AddComponent(UIText, "UITextPanel/box3_num_UIText")

	---右侧按钮信息
	self.attack_btn =self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/attackBtn")
	self.attack_btn_text = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/attackBtn/attackText")
	self.attack_btn_text:SetText(DataUtil.GetClientText(100220))
	self.attack_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.select_img,self.attack_btn.transform)
		self.select_text:SetText(DataUtil.GetClientText(100220))
		self.attack_info.gameObject:SetActive(true)
		self.report_info.gameObject:SetActive(false)
		self.rank_info.gameObject:SetActive(false)
	end)
	self.report_btn =self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/reportBtn")
	self.report_btn_text = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/reportBtn/reportText")
	self.report_btn_text:SetText(DataUtil.GetClientText(100015))
	self.report_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.select_img,self.report_btn.transform)
		self.select_text:SetText(DataUtil.GetClientText(100015))
		self.ctrl:RequestArenaReport()
		self.attack_info.gameObject:SetActive(false)
		self.report_info.gameObject:SetActive(true)
		self.rank_info.gameObject:SetActive(false)
	end)
	self.rank_btn =self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/rankBtn")
	self.rank_btn_text = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/rankBtn/rankText")
	self.rank_btn_text:SetText(DataUtil.GetClientText(100222))
	self.rank_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.select_img,self.rank_btn.transform)
		self.select_text:SetText(DataUtil.GetClientText(100222))
		if isClick then
			self.ctrl:RequestGetArenaRank(0)
			isClick = false
		end
		TimerManager:GetInstance():SimpleTimerArgs(300,function()
			isClick =true
		end ,self,true)
		self.attack_info.gameObject:SetActive(false)
		self.report_info.gameObject:SetActive(false)
		self.rank_info.gameObject:SetActive(true)
	end)
	self.attackUIText = self:AddComponent(UIText, "UITextPanel/attack_UIText")
	self.reportUIText = self:AddComponent(UIText, "UITextPanel/report_UIText")
	self.rankUIText = self:AddComponent(UIText, "UITextPanel/rank_UIText")
    
	---战报相关
	self.report_scroll_view_content=self:AddComponent(UIWrapGroup3D,"UIReportPanel/UIReportScrolRect/UIReportGrad",UIArenaReportWrapItem)
	---排行相关
	self.rank_scroll_view_content=self:AddComponent(UIWrapGroup3D,"UIRankPanel/rankScrollRect/rankGrid",UIArenaRankWrapItem)
	self.rank_scroll_view_content.gameObject:SetActive(false)
	---弹窗提示
--[[	self.take_cost_tip_close_btn = self:AddComponent(UIButton,"UITakeCostTip/cost_tip_close_btn")
	self.take_cost_tip_close_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_cost_tips.gameObject:SetActive(false)
	end)]]
	self.take_cost_tip_cancel_btn = self:AddComponent(UIButton,"UITakeCostTip/cost_tip_cancel_btn")
	self.take_cost_tip_cancel_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_cost_tips.gameObject:SetActive(false)
	end)
	self.take_cost_tip_enter_btn = self:AddComponent(UIButton,"UITakeCostTip/cost_tip_enter_btn")
	self.take_cost_tip_enter_btn:SetOnClick(function ()
		---写购买刷新逻辑
		if BackpackData:GetInstance():GetItemNumById(1401010) >= self.arena_assess_data.FlushPrice then
			self.ctrl:RequestFlushMatch(1,true)
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100081))
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_cost_tips.gameObject:SetActive(false)
	end)
	self.take_cost_tip_take_img = self:AddComponent(UIImage,"UITakeCostTip/take_img",AtlasConfig.DynamicTex)
    self.take_cost_tip_take_img:SetSpriteName(SpriteDefine.Coin_Icon_Diamond)
	self.take_cost_num_text = self:AddComponent(UIText,"UITakeCostTip/cost_num_text")
    ---
--[[	self.arena_cost_tip_close_btn = self:AddComponent(UIButton,"UIArenaFinishTip/cost_finish_close_btn")
	self.arena_cost_tip_close_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		---跳转回主城逻辑
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaMain)
		self.arena_finish_tips.gameObject:SetActive(false)
	end)]]
	self.arena_cost_tip_enter_btn = self:AddComponent(UIButton,"UIArenaFinishTip/cost_finish_enter_btn")
	self.arena_cost_tip_enter_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		---跳转回主城逻辑
		self.ctrl:CloseSelf()
		self.arena_finish_tips.gameObject:SetActive(false)
	end)
	---
--[[	self.take_cost_tip_close_btn = self:AddComponent(UIButton,"UITakeTicketBuyTip/cost_tipbuy_close_btn")
	self.take_cost_tip_close_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_ticket_tips.gameObject:SetActive(false)
	end)]]
	self.take_cost_cancel_btn = self:AddComponent(UIButton,"UITakeTicketBuyTip/cost_tipbuy_cancel_btn")
	self.take_cost_cancel_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_ticket_tips.gameObject:SetActive(false)
	end)
	self.take_cost_tip_enter_btn = self:AddComponent(UIButton,"UITakeTicketBuyTip/cost_tipbuy_enter_btn")
	self.take_cost_tip_enter_btn:SetOnClick(function ()
		if BackpackData:GetInstance():GetItemNumById(1401010) >= self.count then
			self.ctrl:BuyChallengeTickRequest(self.count)
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100081))
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.take_ticket_tips.gameObject:SetActive(false)
	end)
	self.take_cost_tick_num_text = self:AddComponent(UIText,"UITakeTicketBuyTip/cost_tipbuy_num_text")
	self.take_cost_tips = UIUtil.FindTrans(self.transform,"UITakeCostTip")--花费代币刷新时间弹窗
	self.arena_finish_tips = UIUtil.FindTrans(self.transform,"UIArenaFinishTip")--竞技场结束提示弹窗
	self.take_ticket_tips = UIUtil.FindTrans(self.transform,"UITakeTicketBuyTip")--花费代币购买挑战次数弹窗
	self.take_cost_tips.gameObject:SetActive(false)
	self.arena_finish_tips.gameObject:SetActive(false)
	self.take_ticket_tips.gameObject:SetActive(false)

	---排行榜相关信息
	self.rank_one_btn = self:AddComponent(UIButton,"UIRankPanel/bg/rankOneButton")--白银按钮
	self.rank_one_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.rank_select_img,self.rank_one_btn.transform)
		self.rank_scroll_view_content.gameObject:SetActive(true)
		UpdateRankList(self)
		if self.arena_main_data.self_rank == 0 then
			self.rank_text:SetText(DataUtil.GetClientText(100082))
		else
			self.rank_text:SetText(math.floor(self.arena_main_data.self_rank))
		end
	end)
	self.rank_one_btn.gameObject:SetActive(false)
	self.rank_two_btn = self:AddComponent(UIButton,"UIRankPanel/bg/rankTwoButton")--黄金按钮
	self.rank_two_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.SetBtnParent(self,self.rank_select_img,self.rank_two_btn.transform)
		self.rank_scroll_view_content.gameObject:SetActive(false)
		self.rank_text:SetText(DataUtil.GetClientText(100082))
	end)
	self.rank_two_btn.gameObject:SetActive(false)
	self.rank_select_img = UIUtil.FindTrans(self.transform,"UIRankPanel/bg/selectArenaImg")
	self.rank_select_img.gameObject:SetActive(false)
	self.rank_icon_img = self:AddComponent(UIImage,"UIRankPanel/bg/playerIconImg",AtlasConfig.DynamicTex)
	self.rank_frame_img = self:AddComponent(UIImage,"UIRankPanel/bg/playerfromImg",AtlasConfig.DynamicTex)
	self.rank_text = self:AddComponent(UIText,"UIRankPanel/bg/myRankNumText")
	self.rank_name_text = self:AddComponent(UIText,"UIRankPanel/bg/myNameText")
	self.rank_score_text = self:AddComponent(UIText,"UIRankPanel/bg/myscoreNumText")
	self.quick_attack_tip = UIUtil.FindTrans(self.transform,"UIqualickAttackTip")
	self.quick_attack_tip.gameObject:SetActive(false)
	self.rankOneText = self:AddComponent(UIText,"UIRankPanel/bg/rankOneText")
	self.rankOneText:SetText(DataUtil.GetClientText(100244))
	self.rankOneText.gameObject:SetActive(false)
	self.rankTwoText = self:AddComponent(UIText,"UIRankPanel/bg/rankTwoText")
	self.rankTwoText:SetText(DataUtil.GetClientText(100245))
	self.rankTwoText.gameObject:SetActive(false)
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIArenaMain,ResourceBarType.ARENA,self)
	UIUtil.CreatCloseBtnComponent(self,self.resourceBarParent,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf();
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIArenaMain")
	end,function()UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIArenaMain") end ,DataUtil.GetClientText(100212),true,1)
	self.rankText1 = self:AddComponent(UIText,"UIRankPanel/bg/rankText1")
	self.iconText = self:AddComponent(UIText,"UIRankPanel/bg/iconText")
	self.nameText1 = self:AddComponent(UIText,"UIRankPanel/bg/nameText1")
	self.scoreText1 = self:AddComponent(UIText,"UIRankPanel/bg/scoreText1")
	self.rankText1:SetText(DataUtil.GetClientText(100246))
	self.iconText:SetText(DataUtil.GetClientText(100241))
	self.nameText1:SetText(DataUtil.GetClientText(100242))
	self.scoreText1:SetText(DataUtil.GetClientText(100243))
end
---刷新战报列表
local function UpdateReportList(self)
	self.report_data = self.model.arena_report_data
	if self.report_data ~= nil and #self.report_data > 0 then
		self.report_scroll_view_content.gameObject:SetActive(true)
		self.report_scroll_view_content:SetLength(table.count(self.report_data))
		self.report_scroll_view_content:ResetToBeginning()
	else
		self.report_scroll_view_content.gameObject:SetActive(false)
		--self.report_scroll_view_content:ResetToBeginning()
	end

end



--设置按钮的父物体
local function SetBtnParent(self,child,parent)
	child.transform:SetParent(parent)
	child.localScale=Vector3.New(1,1,1)
	child.anchoredPosition=Vector2.New(0,0)
	--child:SetAsFirstSibling()
	child.gameObject:SetActive(true)
end

local function GetSinglePlayerData(self)
	self.player_nameUIText:SetText(UserData:GetInstance().name)
	self.level_numUIText:SetText(math.floor(UserData:GetInstance().pLevel))
	self.rank_name_text:SetText(UserData:GetInstance().name)
	self.player_icon_img:SetSpriteName(itemList[UserData:GetInstance().pHead].Icon)
	self.player_fromUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemList[UserData:GetInstance().pHead].Quality))
	self.rank_icon_img:SetSpriteName(itemList[UserData:GetInstance().pHead].Icon)
	self.rank_frame_img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemList[UserData:GetInstance().pHead].Quality))

end

---刷新分数信息
local function UpdateScoreInfo(self)
	self.now_score_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_score))
	self.fight_score_numUIText:SetText(math.floor(self.arena_main_data.player_fighting_num))
	self.has_get_score_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_win_num) .. "/"..self.arena_main_data.arena_boxes[3].victory_num)
	self.week_win_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_win_times).."/"..math.floor(ArenaData:GetInstance().arena_all_times))
	if self.arena_main_data.self_rank == 0 then
		self.rank_text:SetText(DataUtil.GetClientText(100082))
	else
		self.rank_text:SetText(math.floor(ArenaData:GetInstance().arena_rank))
	end
	self.rank_score_text:SetText(math.floor(ArenaData:GetInstance().arena_score))
	for _, v in pairs(self.arena_main_data.arena_boxes) do
		if v.state == 1 and ArenaData:GetInstance().arena_win_num >= v.victory_num then
			v.state = 2
		end
	end
	self:UpdateBoxData()
end

---检测对手是否需要刷新
local function CheckUpdatePkPlayerInfo(self)
	if ArenaData:GetInstance().pk_player_data == nil or #ArenaData:GetInstance().pk_player_data == 0 then
		return
	end
	self.count = 0
	for _, v in pairs(ArenaData:GetInstance().pk_player_data) do
		if v.challenge_state ==  1 then
			self.count = self.count + 1
		end
	end
	if  self.count == 3 then
		self.ctrl:RequestFlushMatch(0,true)
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	CheckUpdatePkPlayerInfo(self)
	self.arena_main_data = self.model.arena_main_data
	if self.arena_main_data ==nil then
		return
	end
	self:OnRefresh()
	self.SetBtnParent(self,self.select_img,self.attack_btn.transform)
	self.select_text:SetText(DataUtil.GetClientText(100220))
	self.attack_info.gameObject:SetActive(true)
	self.report_info.gameObject:SetActive(false)
	self.rank_info.gameObject:SetActive(false)
	GetSinglePlayerData(self)
	self:UpdateChallengePeoData()
end

local function CreatCountDown(self)
	self.curTime = self.curTime - 1
	local formatTime = os.date("%M:%S",self.curTime)
	self.time_info_Text:SetText(formatTime)
	if self.curTime > 0 then
		self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, self.CreatCountDown,self,true)
	elseif 	self.curTime == 0 then
		self.ctrl:RequestFlushMatch(0,true)
	else
		TimerManager:GetInstance():SimpleTimerStop(self.timer)
	end
end

---刷新时间
local function UpdateTime(self)
	local curTime  = math.floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000 - self.model.timer_info)
	self.arena_assess_data = arena_message[1]
	ArenaData:GetInstance().timer_take_num = self.arena_assess_data.FlushPrice
	local second_time =self.arena_assess_data.FlushTime - curTime
	if second_time >0 then
		local formatTime = os.date("%M:%S",second_time)
		self.curTime = second_time
		self.time_info_Text:SetText(formatTime)
		self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, self.CreatCountDown,self,true)
	else
		self.ctrl:RequestFlushMatch(0,true)
	end
end

---更新宝箱数据
local function UpdateBoxData(self)
	self.arena_main_data = self.model.arena_main_data
	self.box1_icon_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[1].state==1 or self.arena_main_data.arena_boxes[1].state==3)
	self.box1_get_reward_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[1].state==2)
	if self.arena_main_data.arena_boxes[1].state==2 then
		self.box1_anim.enabled=true;
		self.box1_anim:Play("fx_ui_c_RewardList_frame_UIImage")
	else
		self.box1_anim:Rebind()
		self.box1_anim.enabled=false
	end
	self.box1_has_get_trans.gameObject:SetActive(self.arena_main_data.arena_boxes[1].state==3)
	self.box2_icon_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[2].state==1 or self.arena_main_data.arena_boxes[2].state==3)
	self.box2_get_reward_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[2].state==2)
	if self.arena_main_data.arena_boxes[2].state==2 then
		self.box2_anim.enabled=true;
		self.box2_anim:Play("fx_ui_c_RewardList_frame_UIImage")
	else
		self.box2_anim:Rebind()
		self.box2_anim.enabled=false
	end
	self.box2_has_get_trans.gameObject:SetActive(self.arena_main_data.arena_boxes[2].state==3)
	self.box3_icon_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[3].state==1 or self.arena_main_data.arena_boxes[3].state==3)
	self.box3_get_reward_btn.gameObject:SetActive(self.arena_main_data.arena_boxes[3].state==2)
	if self.arena_main_data.arena_boxes[3].state==2 then
		self.box3_anim.enabled=true;
		self.box3_anim:Play("fx_ui_c_RewardList_frame_UIImage")
	else
		self.box3_anim:Rebind()
		self.box3_anim.enabled=false
	end
	self.box3_has_get_trans.gameObject:SetActive(self.arena_main_data.arena_boxes[3].state==3)
	if ArenaData:GetInstance().arena_win_num >= self.arena_main_data.arena_boxes[1].victory_num then
		self.box1_numUIText:SetText(self.arena_main_data.arena_boxes[1].victory_num.."/"..self.arena_main_data.arena_boxes[1].victory_num)
	else
		self.box1_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_win_num).."/"..self.arena_main_data.arena_boxes[1].victory_num)
	end
	if ArenaData:GetInstance().arena_win_num >= self.arena_main_data.arena_boxes[2].victory_num then
		self.box2_numUIText:SetText(self.arena_main_data.arena_boxes[2].victory_num.."/"..self.arena_main_data.arena_boxes[2].victory_num)
	else
		self.box2_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_win_num).."/"..self.arena_main_data.arena_boxes[2].victory_num)
	end
	if ArenaData:GetInstance().arena_win_num >= self.arena_main_data.arena_boxes[3].victory_num then
		self.box3_numUIText:SetText(self.arena_main_data.arena_boxes[3].victory_num.."/"..self.arena_main_data.arena_boxes[3].victory_num)
	else
		self.box3_numUIText:SetText(math.floor(ArenaData:GetInstance().arena_win_num).."/"..self.arena_main_data.arena_boxes[3].victory_num)
	end
	self.scoresilder:SetValue(math.floor(ArenaData:GetInstance().arena_win_num)/self.arena_main_data.arena_boxes[3].victory_num)
end

---更新挑战对手数据
local function UpdateChallengePeoData(self, _isUpdate)
	UpdateScoreInfo(self)
	if _isUpdate then
		if self.timer ~= nil then
			TimerManager:GetInstance():SimpleTimerStop(self.timer)
		end
		self:UpdateTime(self)
	end
	self.arenaChallengeData = ArenaData:GetInstance().pk_player_data
	self.playerone_icon_img:SetSpriteName(self.arenaChallengeData[1].challenge_icon)
	self.playerone_fromUIImage:SetSpriteName(self.arenaChallengeData[1].challenge_frame)
	self.playerone_nameUIText:SetText(self.arenaChallengeData[1].challenge_name)
	self.playerone_level_numUIText:SetText(math.floor(self.arenaChallengeData[1].challenge_lv))
	self.playerone_score_numUIText:SetText(math.floor(self.arenaChallengeData[1].challenge_score))
	self.playerone_win_add_numUIText:SetText(arena_message[1].VictoryPoint[1])
	if self.arenaChallengeData[1].challenge_state == 0 then
		self.playerone_qualityUIButton.gameObject:SetActive(true)
		self.playerone_challengeUIButton.gameObject:SetActive(true)
        self.playerone_qualityUIText.gameObject:SetActive(true)
        self.playerone_challengeUIText.gameObject:SetActive(true)
		self.playerone_state_UIText.gameObject:SetActive(false)
		--self.playerone_state_img.gameObject:SetActive(false)
		self.playerone_img.gameObject:SetActive(false)
		self.playerone_state_obj_img.gameObject:SetActive(false)
	elseif self.arenaChallengeData[1].challenge_state == 1 then
		self.playerone_qualityUIButton.gameObject:SetActive(false)
		self.playerone_challengeUIButton.gameObject:SetActive(false)
        self.playerone_qualityUIText.gameObject:SetActive(false)
        self.playerone_challengeUIText.gameObject:SetActive(false)
		self.playerone_state_UIText.gameObject:SetActive(true)
		--self.playerone_state_img.gameObject:SetActive(true)
		self.playerone_img.gameObject:SetActive(true)
		--self.playerone_state_img:SetSpriteName("ui_t_Arena_017")
		self.playerone_state_UIText:SetText("<color=#427942>"..DataUtil.GetClientText(100221).."</color>")
		self.playerone_state_obj_img.gameObject:SetActive(true)
		--self.playerone_state_obj_img:SetSpriteName("ui_t_Arena_010")
	else
		self.playerone_qualityUIButton.gameObject:SetActive(false)
		self.playerone_challengeUIButton.gameObject:SetActive(false)
        self.playerone_qualityUIText.gameObject:SetActive(false)
        self.playerone_challengeUIText.gameObject:SetActive(false)
		self.playerone_state_UIText.gameObject:SetActive(true)
		--self.playerone_state_img.gameObject:SetActive(true)
		self.playerone_img.gameObject:SetActive(true)
		--self.playerone_state_img:SetSpriteName("ui_t_Arena_016")
		self.playerone_state_UIText:SetText("<color=#DE4C4B>"..DataUtil.GetClientText(100223).."</color>")
		self.playerone_state_obj_img.gameObject:SetActive(true)
		--self.playerone_state_obj_img:SetSpriteName("ui_t_Arena_009")
	end

	self.playertwo_icon_img:SetSpriteName(self.arenaChallengeData[2].challenge_icon)
	self.playertwo_fromUIImage:SetSpriteName(self.arenaChallengeData[2].challenge_frame)
	self.playertwo_nameUIText:SetText(self.arenaChallengeData[2].challenge_name)
	self.playertwo_level_numUIText:SetText(math.floor(self.arenaChallengeData[2].challenge_lv))
	self.playertwo_score_numUIText:SetText(math.floor(self.arenaChallengeData[2].challenge_score))
	self.playertwo_win_add_numUIText:SetText(math.floor(arena_message[1].VictoryPoint[2]))
	if self.arenaChallengeData[2].challenge_state == 0 then
		self.playertwo_qualityUIButton.gameObject:SetActive(true)
		self.playertwo_challengeUIButton.gameObject:SetActive(true)
        self.playertwo_qualityUIText.gameObject:SetActive(true)
        self.playertwo_challengeUIText.gameObject:SetActive(true)
		self.playertwo_state_UIText.gameObject:SetActive(false)
		--self.playertwo_state_img.gameObject:SetActive(false)
		self.playertwo_img.gameObject:SetActive(false)
		self.playertwo_state_obj_img.gameObject:SetActive(false)
	elseif self.arenaChallengeData[2].challenge_state == 1 then
		self.playertwo_qualityUIButton.gameObject:SetActive(false)
		self.playertwo_challengeUIButton.gameObject:SetActive(false)
        self.playertwo_qualityUIText.gameObject:SetActive(false)
        self.playertwo_challengeUIText.gameObject:SetActive(false)
		self.playertwo_state_UIText.gameObject:SetActive(true)
		--self.playertwo_state_img.gameObject:SetActive(true)
		self.playertwo_img.gameObject:SetActive(true)
		--self.playertwo_state_img:SetSpriteName("ui_t_Arena_017")
		self.playertwo_state_UIText:SetText("<color=#427942>"..DataUtil.GetClientText(100221).."</color>")
		self.playertwo_state_obj_img.gameObject:SetActive(true)
		--self.playertwo_state_obj_img:SetSpriteName("ui_t_Arena_010")
	else
		self.playertwo_qualityUIButton.gameObject:SetActive(false)
		self.playertwo_challengeUIButton.gameObject:SetActive(false)
        self.playertwo_qualityUIText.gameObject:SetActive(false)
        self.playertwo_challengeUIText.gameObject:SetActive(false)
		self.playertwo_state_UIText.gameObject:SetActive(true)
		self.playertwo_img.gameObject:SetActive(true)
		--self.playertwo_state_img.gameObject:SetActive(true)
		--self.playertwo_state_img:SetSpriteName("ui_t_Arena_016")
		self.playertwo_state_UIText:SetText("<color=#DE4C4B>"..DataUtil.GetClientText(100223).."</color>")
		self.playertwo_state_obj_img.gameObject:SetActive(true)
		--self.playertwo_state_obj_img:SetSpriteName("ui_t_Arena_009")
	end

	self.playerthree_icon_img:SetSpriteName(self.arenaChallengeData[3].challenge_icon)
	self.playerthree_fromUIImage:SetSpriteName(self.arenaChallengeData[3].challenge_frame)
	self.playerthree_nameUIText:SetText(self.arenaChallengeData[3].challenge_name)
	self.playerthree_level_numUIText:SetText(math.floor(self.arenaChallengeData[3].challenge_lv))
	self.playerthree_score_numUIText:SetText(math.floor(self.arenaChallengeData[3].challenge_score))
	self.playerthree_win_add_numUIText:SetText(math.floor(arena_message[1].VictoryPoint[3]))
	if self.arenaChallengeData[3].challenge_state == 0 then
		self.playerthree_qualityUIButton.gameObject:SetActive(true)
		self.playerthree_challengeUIButton.gameObject:SetActive(true)
        self.playerthree_qualityUIText.gameObject:SetActive(true)
        self.playerthree_challengeUIText.gameObject:SetActive(true)
		self.playerthree_state_UIText.gameObject:SetActive(false)
		self.playerthree_img.gameObject:SetActive(false)
		--self.playerthree_state_img.gameObject:SetActive(false)
		self.playerthree_state_obj_img.gameObject:SetActive(false)
	elseif self.arenaChallengeData[3].challenge_state == 1 then
		self.playerthree_qualityUIButton.gameObject:SetActive(false)
		self.playerthree_challengeUIButton.gameObject:SetActive(false)
        self.playerthree_qualityUIText.gameObject:SetActive(false)
        self.playerthree_challengeUIText.gameObject:SetActive(false)
		self.playerthree_state_UIText.gameObject:SetActive(true)
		self.playerthree_img.gameObject:SetActive(true)
		--self.playerthree_state_img.gameObject:SetActive(true)
		--self.playerthree_state_img:SetSpriteName("ui_t_Arena_017")
		self.playerthree_state_UIText:SetText("<color=#427942>"..DataUtil.GetClientText(100221).."</color>")
		self.playerthree_state_obj_img.gameObject:SetActive(true)
		--self.playerthree_state_obj_img:SetSpriteName("ui_t_Arena_010")
	else
		self.playerthree_qualityUIButton.gameObject:SetActive(false)
		self.playerthree_challengeUIButton.gameObject:SetActive(false)
        self.playerthree_qualityUIText.gameObject:SetActive(false)
        self.playerthree_challengeUIText.gameObject:SetActive(false)
		self.playerthree_state_UIText.gameObject:SetActive(true)
		self.playerthree_img.gameObject:SetActive(true)
		--self.playerthree_state_img.gameObject:SetActive(true)
		--self.playerthree_state_img:SetSpriteName("ui_t_Arena_016")
		self.playerthree_state_UIText:SetText("<color=#DE4C4B>"..DataUtil.GetClientText(100223).."</color>")
		self.playerthree_state_obj_img.gameObject:SetActive(true)
		--self.playerthree_state_obj_img:SetSpriteName("ui_t_Arena_009")
	end
end

local function ShowTipsForCloseArena(self)
	self.arena_finish_tips.gameObject:SetActive(true)
end

local function OnRefresh(self)
	-- 各组件刷新
	self:UpdateTime(self)
end

---复仇回调
local function OnRevengeClick(self, _data)
	self.ctrl:PveEnterArenaRequest(0,0,0,_data.arena_report_id,0)
	isClick =true
end

---战斗回放
local function OnBattleReturnPlay(self, _data)
	self.ctrl:RequestRevengeReport(_data)
end

local function SetTipActive(self,_isActive)
	self.quick_attack_tip.gameObject:SetActive(_isActive)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UPDATE_ARENA_REPORT_DATA, UpdateReportList)
	self:AddUIListener(UIMessageNames.UPDATE_ARENA_RANK_LIST_DATA, UpdateRankList)
	self:AddUIListener(UIMessageNames.UPDATE_BOX_STATE_DATA, UpdateBoxData)
	self:AddUIListener(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA, UpdateChallengePeoData)
	self:AddUIListener(UIMessageNames.ARENA_CLOSE_SEND_SHOW_TIPS,ShowTipsForCloseArena)
	self:AddUIListener(UIMessageNames.ARENA_TICK_NUM_UPDATE,UpdateScoreInfo)
	self:AddUIListener(UIMessageNames.UIARENA_QUICK_ATTACK_MASK_ACTIVE,SetTipActive)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UPDATE_ARENA_REPORT_DATA, UpdateReportList)
	self:RemoveUIListener(UIMessageNames.UPDATE_ARENA_RANK_LIST_DATA, UpdateRankList)
	self:RemoveUIListener(UIMessageNames.UPDATE_BOX_STATE_DATA, UpdateBoxData)
	self:RemoveUIListener(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,UpdateChallengePeoData)
	self:RemoveUIListener(UIMessageNames.ARENA_CLOSE_SEND_SHOW_TIPS,ShowTipsForCloseArena)
	self:RemoveUIListener(UIMessageNames.ARENA_TICK_NUM_UPDATE,UpdateScoreInfo)
	self:RemoveUIListener(UIMessageNames.UIARENA_QUICK_ATTACK_MASK_ACTIVE,SetTipActive)
end

local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	TimerManager:GetInstance():SimpleTimerStop(self.timer)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIArenaMain);
end

UIArenaMainView.OnCreate = OnCreate
UIArenaMainView.OnEnable = OnEnable
UIArenaMainView.UpdateTime = UpdateTime
UIArenaMainView.CreatCountDown = CreatCountDown
UIArenaMainView.SetBtnParent = SetBtnParent
UIArenaMainView.OnRefresh = OnRefresh
UIArenaMainView.OnAddListener = OnAddListener
UIArenaMainView.OnRemoveListener = OnRemoveListener
UIArenaMainView.OnDisable = OnDisable
UIArenaMainView.OnDestroy = OnDestroy
UIArenaMainView.UpdateBoxData = UpdateBoxData
UIArenaMainView.OnRevengeClick = OnRevengeClick
UIArenaMainView.OnBattleReturnPlay = OnBattleReturnPlay
UIArenaMainView.UpdateChallengePeoData = UpdateChallengePeoData

return UIArenaMainView
