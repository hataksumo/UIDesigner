--[[
-- added by wsh @ 2017-12-05
-- 数据管理系统：消息系统
-- 注意：
-- 1、理论上，网络层状态数据到来，只需要操作数据中心修改逻辑数据，不要直接修改游戏逻辑
-- 2、网络层操作数据到来，等同于用户操作，操作Ctrl层（MVC架构）或者System（ECS架构），让它们来操作数据层
-- 3、游戏UI模块各Model层监听数据中心消息提取各个Window关注的模型数据
--]]

local Messenger = require "Framework.Common.Messenger"
local unpack = unpack or table.unpack

local DataManager = BaseClass("DataManager", Singleton);
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local function __init(self)
	self.data_message_center = Messenger.New()
end

local function __delete(self)
	self.data_message_center = nil
end

-- 注册消息
local function AddListener(self, e_type, e_listener, ...)
	self.data_message_center:AddListener(e_type, e_listener, ...)
end

-- 发送消息
local function Broadcast(self, e_type, ...)
	self.data_message_center:Broadcast(e_type, ...)
end

-- 注销消息
local function RemoveListener(self, e_type, e_listener)
	self.data_message_center:RemoveListener(e_type, e_listener)
end


--初始化登陆数据
local function InitLoginData(self,data)
	RedPointData:GetInstance():InitRed()
	UserData:GetInstance():ParseServerData(data)
	SkillData:GetInstance():ParseSkillListFromServer(data.skills)   ---插槽技能背包(由于解析卡牌会用到插槽技能数据，插槽技能解析要放在卡牌之前）
	CardData:GetInstance():ParseCardListFromServer(data.cards)      ---卡牌
	MailData:GetInstance():SetMailRedPointState( data.mailRed==2)   ---邮件红点推送
	MailData:GetInstance():SetMailIsGetAll(data.mailHave==2) 		---是否有邮件
	CacodemonData:GetInstance():UpdateEarningsTimes(data.yieldNum)  ---恶灵来袭的收益次数
	GiftData:GetInstance():RequestGiftData()                         ---请求礼包数据
	TaskData:GetInstance():OnParserHellTask(data.hellMission)        --成就
	TaskData:GetInstance():GetMainTaskData(data.majorMission) 	    ---获取主线任务数据


	DRBossData:GetInstance():CheckGameStatus()
	--ArenaData:GetInstance():OpenArena()							---竞技场请求获取当前分段
	--ArenaPVPData:GetInstance():GetRequestInfo()					---实时竞技请求当前的信息
	BackpackData:GetInstance():GetSerBagData()                      --请求背包数据


	--楼花古

	NetManager:GetInstance():InsetQueneMessage( MsgIDDefine.PBCHAPTER_GET_ALL_CHAPTER_REQUEST,nil,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("出错了~")
			return
		end
		UIManager:GetInstance():CloseWindow(UIWindowNames.UILogin)
		MapData:GetInstance():ParseMapData(msg_obj.Packages)
		HangupData:GetInstance():ParseServerData(msg_obj.Packages.teamInfos)
		local group = GuideManager:GetInstance():SetGuideData(data.guide)
		GuideWeakCheckManager:GetInstance():SetWeakGuideData(data.weakGuide)


		EquipData:GetInstance():GetSerEquipData()---请求装备
		TaskData:GetInstance():RequestGetAllDaily()				---请求任务数
		TongLingData:GetInstance():GetTongLingData()           --请求通灵数据
		LuHuaGuLouData:GetInstance():SendGetReedTowerRequest()--楼花鼓楼请求
		TestHoardData:GetInstance():GetAllTestHoardData();---请求失恋宝库
		BiographyData:GetInstance():GetAllBiographyData();---请求传记
        CarnivalData:GetInstance():RequestGetCarnivalData();--嘉年华
		if group >= 5 or group <= 0 then
			SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
		end
	end)
	CS.UnityEngine.PlayerPrefs.SetInt("explore_tip",1);
end
--清理数据
local function ClearData(self)
	BackpackData:GetInstance():Delete()
	UserData:GetInstance():Delete()
	GuideCheckManager:GetInstance():Delete()
	GuideWeakCheckManager:GetInstance():Delete()
	GuideGroup:GetInstance():Delete()
	GuideManager:GetInstance():Delete()
	StoryManager:GetInstance():Delete()
	MapData:GetInstance():Delete()
	FriendData:GetInstance():Delete()
	ChatData:GetInstance():Delete()
	RedPointData:GetInstance():Delete()
	EquipData:GetInstance():Delete()
	DRBossData:GetInstance():Delete()
end




DataManager.__init = __init
DataManager.__delete = __delete
DataManager.AddListener = AddListener
DataManager.Broadcast = Broadcast
DataManager.RemoveListener = RemoveListener
DataManager.InitLoginData = InitLoginData
DataManager.ClearData = ClearData
return DataManager