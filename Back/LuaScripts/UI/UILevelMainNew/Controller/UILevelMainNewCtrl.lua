
--[[
-- 控制层
--]]

local UILevelMainNewCtrl = BaseClass("UILevelMainNewCtrl", UIBaseCtrl)
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction = require "GameLogic.BattleNew.BattleAssistFunction"

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILevelMainView)
end


--显示单个通关宝箱奖励
local function ShowPassBoxTips(self,_boxList,_boxId,_state,_levelId)
	local xlsxBoxData=_boxList[_boxId];
	if xlsxBoxData then
		local boxData= CommBoxTipModel.New();
		local str=math.floor(_levelId/10000) ==1 and "普通" or "困难";
		boxData.title=string.format("通关%s%s-%s",str,math.floor(_levelId/100)%100,math.floor(_levelId%100));
		boxData.des="达到条件可获得以下奖励";
		boxData.isShowStar=false;
		boxData.showIcon="ui_t_c2_099";
		boxData.rewardList={};
		boxData.state=_state;
		for i, v in ipairs(xlsxBoxData.Award) do
			table.insert(boxData.rewardList,{id=v.Id,num=v.Val});
		end
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBoxInfoTip,boxData);
	end

end

--显示宝箱内容
local function ShowBoxTips(self,chapterId,star,_state)
	local mapdata = MapData:GetInstance()
	local chapterInfo = mapdata:GetChapterInfobyChapterid(chapterId)
	local maxstars = chapterInfo._Stars
	local boxData= CommBoxTipModel.New();
	maxstars=maxstars>star and star or maxstars;
	boxData.title=string.format("%s/%s",maxstars,star);
	boxData.des="达到条件可获得以下奖励";
	boxData.isShowStar=true;
	boxData.showIcon="ui_t_c2_099";
	boxData.rewardList={};
	boxData.state=_state;
	for i, v in ipairs(chapterInfo._StarBox[star]._boxTrData.Award) do
		table.insert(boxData.rewardList,{id=v.Id,num=v.Val});
	end
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBoxInfoTip,boxData);
end

--领取章节宝箱
local function SendGetChapterChestRequest(self,chapterId,star)
	local msdId = MsgIDDefine.PBCHAPTER_GET_CHAPTER_CHEST_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.chapterId = chapterId;
	msdObj.star = star;
	self.chapterId,self.star=chapterId,star;
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,Bind(self,self.OnRecvGetChapterChest))
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBCHAPTER_GET_CHAPTER_CHEST_RESPONSE,self.OnRecvGetChapterChest,self)
end
--章节宝箱回复
local function OnRecvGetChapterChest(self,msg_obj)
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBCHAPTER_GET_CHAPTER_CHEST_RESPONSE,self.OnRecvGetChapterChest)
	if msg_obj.OpCode ~= 0 then
		Logger.Log("OnRecvGetChapterChest出错了~"..msg_obj.OpCode)
		return
	end
	MapData:GetInstance():RefreshChapterAward(self.chapterId,self.star);
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_CHAPTER_GET_BOX);
	DataUtil.ParseDropItem(msg_obj.Packages.drop)
	if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.drop) then
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.drop)
	end
end

--领取目标奖励
local function TargetAwardRequest(self,_data)
	local award_id = MsgIDDefine.PBCHAPTER_CHAPTER_REWARD_REQUEST
	local award_info = (MsgIDMap[award_id])()
	award_info.reward = _data.nowId
	--GuideGroup:GetInstance():SetGuideServerStep(award_info)
	NetManager:GetInstance():SendMessage(award_id,award_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBCHAPTER_CHAPTER_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DataUtil.ParseDropItem(msg_obj.Packages.drop)
			if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.drop) then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.drop)
			end
			MapData:GetInstance().targetAwardId = _data.nowId
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_TARGET_REWARD_UPDATE)
		end
	end)
end

local function StartTraining(self,_id)
	--开启训练，通知服务器，开始战斗
	local msg_id = MsgIDDefine.PBFIGHT_PVE_ENTER_TEACH_FIGHT_REQUEST
	local msg = MsgIDMap[msg_id]()
	msg.fightId = _id
	MapData:GetInstance().cur_teach_id =_id
	BattleFieldManager:GetInstance().fightId = msg.fightId
	BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.TEACHING
	local teach_level=DataUtil.GetData("teach_level");
	BattleFieldManager:GetInstance().sceneConfigId = teach_level[_id].MapPosId
	NetManager:GetInstance():SendMessage(msg_id, msg, function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		BattleFieldManager:GetInstance().battlePackages = msg_obj.Packages.enterFight
		--SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
		--UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
		BattleAssistFunction.EnterGameJumpEmbattle()
	end)
end


--领取节宝箱奖励
local function LevelChestRequest(self,_levelId)
	local award_id = MsgIDDefine.PBCHAPTER_LEVEL_CHEST_REQUEST
	local award_info = (MsgIDMap[award_id])()
	award_info.levelId = _levelId
	NetManager:GetInstance():SendMessage(award_id,award_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBCHAPTER_LEVEL_CHEST_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DataUtil.ParseDropItem(msg_obj.Packages.drop)
			if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.drop) then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.drop)
			end
			MapData:GetInstance():SetLevelBoxRewardList(_levelId);
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_LEVEL_BOX_REWARD_REFRESH)
		end
	end)
end

UILevelMainNewCtrl.LevelChestRequest=LevelChestRequest;
UILevelMainNewCtrl.ShowPassBoxTips=ShowPassBoxTips;
UILevelMainNewCtrl.StartTraining=StartTraining;
UILevelMainNewCtrl.CloseSelf = CloseSelf
UILevelMainNewCtrl.ShowBoxTips=ShowBoxTips
UILevelMainNewCtrl.TargetAwardRequest = TargetAwardRequest
UILevelMainNewCtrl.SendGetChapterChestRequest=SendGetChapterChestRequest
UILevelMainNewCtrl.OnRecvGetChapterChest=OnRecvGetChapterChest

return UILevelMainNewCtrl