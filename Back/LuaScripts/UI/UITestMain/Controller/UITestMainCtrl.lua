--[[
-- added by wsh @ 2018-02-26
-- UITestMain控制层
--]]
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local UITestMainCtrl = BaseClass("UITestMainCtrl", UIBaseCtrl)


local function SendEnterFightRequest(self)
	local msd_id = MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.fightId=1
	Logger.Log("进入战斗数据")
	NetManager:GetInstance():SendMessage(msd_id, msg,self.EnterFightResponse)
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_RESPONSE,self.EnterFightResponse,self)
end
local function EnterFightResponse(msg_obj)
	Logger.Log("进去战斗请求回复")
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_RESPONSE,sender.EnterFightResponse)
	if msg_obj.OpCode==0 then
		BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages
		SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
	end
end

local function StartFighting(self)
	--SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
	--SendEnterFightRequest(self)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UIBattleIn)
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_OPEN_WINDOW, "LevelPoint")
end
--[[
	临时登出操作
]]
local function OpenHandBook(self)
	--UISpecial:GetInstance():UITipText("功能未开放")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIDrawCardHandBook)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UITipText,"功能未开放")
	--SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UIMask)
end
--打开芦花鼓楼界面
local function OpenLhglWindow(self)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UILhglMain,1);
end
--打开挑戰整合界面
local function OpenChallengeWindow(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIChallengeEntrance);
end
--打开通灵界面
local function OpenTongLinWindow (self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UITongLin);
end
--打开个人boss界面
local function OpenSoloBossWindow(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UISoloBoss,1)
end

local function OpenEmBattle(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UITeaching)
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle)
--[[	if self.hurt then
		self.hurt = false
		UIFuzzy:GetInstance():CloseFuzzy("UIMailView")
	else
		self.hurt = true
		UIFuzzy:GetInstance():ShowFuzzy("UIMailView")
	end]]
end

local function OpenCardPool(self,type)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICardPool,type)
end

local function OpenShop(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIWindowShopMain);
end

local function SetMailRedPointState(self)
	return MailData:GetInstance().isShowRedPoint
end

local function OpenGMPanel(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIGMCommand)
end

local function OpenHangUpPanel(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIHangupLevel)
end
---打开任务界面
local function OpenDailyTask(self)
	TaskData:GetInstance():RequestGetAllDaily()
end
local function OpenJlrfj(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIJlrChipExchange)
end

---打开神器界面
local function RequestOpenArtifact(self)
	local get_relic_info_id = MsgIDDefine.PBTEAM_GET_RELIC_INFO_REQUEST
	local get_relic_info = (MsgIDMap[get_relic_info_id])()
	NetManager:GetInstance():SendMessage(get_relic_info_id,get_relic_info,self.OpenArtifact)
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBTEAM_GET_RELIC_INFO_RESPONSE,self.OpenArtifact,self)
end

local function OpenArtifact(msg_obj)
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBTEAM_GET_RELIC_INFO_RESPONSE,self.OpenArtifact)
	if msg_obj.OpCode ~= 0 then
		Logger.Log("ERROR PBTEAM_GET_RELIC_INFO_RESPONSE~~")
		return
	else
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIArtifact,msg_obj.Packages.relic)
	end
end
--临时打开技能背包
local function OpenSZMain(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UISkillBackPack)
end
--打开收集界面
local function OpenSJWindow(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UISJMainView)
end

--打开阵法界面
local function OpenZFWindow(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIZhenFa)
end

local function OnTestBtnClick(self)
	--NetManager:GetInstance():Logout()
	--SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)


	--self:SendEnterTeachFightRequest(1400002)
	--self:SendEnterTeachFightRequest(1400001)
	--self:SendEnterSoloFightRequest(1502002)
	--self:SendEnterSoloFightRequest(1400001)
	--self:SendEnterSoloFightRequest(1501002)
	--MapData:GetInstance():SyncSoloBossRequest() -- 同步个人boss数据
	--self:SendRelicLevelUpRequest(9)
	self:SendRelicLevelUpRequest(1)
end

function UITestMainCtrl:SendRelicLevelUpRequest(moduleId)
	--pve_enter_teach_fight_request
	local msd_id = MsgIDDefine.PBUSER_RELIC_LEVEL_UP_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.moduleId = moduleId
	Logger.LogVars("升级神器id : ",moduleId)

	local callbackFunc = function(self, msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.LogVars("error； ".." OpCode :"..msg_obj.OpCode.." error id : "..msg_obj.Packages.id .. " error msg : "..msg_obj.Packages.msg)
			return
		end
		local newLevel = msg_obj.Packages.level
		local lastModuleId = msg_obj.Params
		Logger.LogVars("newLevel : ",newLevel," lastModuleId : ",lastModuleId)
	end
	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self, callbackFunc),moduleId)
end


function UITestMainCtrl:SendEnterSoloFightRequest(fightId)
	--pve_enter_teach_fight_request
	local msd_id = MsgIDDefine.PBFIGHT_PVE_ENTER_SOLO_FIGHT_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.fightId = fightId
	Logger.LogVars("进入个人boss关卡战斗数据 : ",fightId)

	local callbackFunc = function(self, msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.LogVars("error； ".." OpCode :"..msg_obj.OpCode.." error id : "..msg_obj.Packages.id .. " error msg : "..msg_obj.Packages.msg)
			return
		end

		-- 正常处理
		--Logger.Log("正常 SendEnterSoloFightRequest； ".." msg : "..table.dump(msg_obj.Packages,nil,10))
		--Logger.LogAny(msg_obj.Packages.myTeam,"myTeam")
		--if msg_obj.Packages.aaa._is_null then
		--
		--end
		local teamParam = {}
		if not msg_obj.Packages.myTeam._is_null then
			for k, v in ipairs(msg_obj.Packages.myTeam) do
				local entity = {
					Id = v.entityId,
					position = v.position,
				}
				if not v.callSkill._is_null and v.callSkill.guardianId ~= nil then
					entity.guardianId=v.callSkill.guardianId
				else
					entity.guardianId = 0
				end
				table.insert(teamParam,entity)
			end
		end

		--local teamParam = {
		--	{
		--		Id = 1101007,
		--		guardianId = 1102002,
		--		position = 1,
		--	},
		--	{
		--		Id = 1101003,
		--		guardianId = 1102001,
		--		position = 2,
		--	}
		--}

		Logger.LogAny(teamParam,"teamParam")
		self:SendPveBattleStartRequest(teamParam)
	end
	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self, callbackFunc))
end


function UITestMainCtrl:SendEnterTeachFightRequest(fightId)
	--pve_enter_teach_fight_request
	local msd_id = MsgIDDefine.PBFIGHT_PVE_ENTER_TEACH_FIGHT_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.fightId = fightId
	Logger.Log("进入教学关卡战斗数据")

	local callbackFunc = function(self, msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("error； ".." OpCode :"..msg_obj.OpCode.." error id : "..msg_obj.Packages.id .. " error msg : "..msg_obj.Packages.msg)
			return
		end
		self:SendPveBattleStartRequest({})
		-- 正常处理
		Logger.Log("正常 SendEnterTeachFightRequest； ".." msg : "..table.dump(msg_obj.Packages,nil,10))
	end
	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self, callbackFunc))
end

function UITestMainCtrl:SendPveBattleStartRequest(roles)
	local msd_id = MsgIDDefine.PBFIGHT_PVE_START_REQUEST
	local msg = (MsgIDMap[msd_id])()
	for k,v in pairs(roles) do
		local battleGroup=msg.battleGroup:add()
		battleGroup.hostId=v.Id
		battleGroup.guardianId=v.guardianId
		battleGroup.position=v.position
	end

	local callbackFunc = function(self, msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("error； ".." OpCode :"..msg_obj.OpCode.." error id : "..msg_obj.Packages.id .. " error msg : "..msg_obj.Packages.msg)
			return
		end
		self:SendPveActionRequest(0,false,true)
		-- 正常处理
		Logger.Log("正常 SendPveBattleStartRequest； ".." msg : "..table.dump(msg_obj.Packages,nil,10))
	end

	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self, callbackFunc))
end



function UITestMainCtrl:SendPveActionRequest(teamId,standby,quickPass)
	local msd_id = MsgIDDefine.PBFIGHT_PVE_ACTION_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.teamId=teamId
	msg.standby=standby
	msg.quickPass=quickPass

	local callbackFunc = function(self, msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("error； ".." OpCode :"..msg_obj.OpCode.." error id : "..msg_obj.Packages.id .. " error msg : "..msg_obj.Packages.msg)
			return
		end
		-- 正常处理
		Logger.Log("正常 SendPveActionRequest； ".." msg : "..table.dump(msg_obj.Packages,nil,10))
	end

	NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self, callbackFunc))
end


function UITestMainCtrl:SendEnterNationLogic()
	NationCtrlManager:GetInstance():EnterNationLogicNew()
end

function UITestMainCtrl:SendEnterPVP(type)
	--国战玩家状态  1 未进入过国战  2已经在国战中
	--NationCtrlManager:GetInstance():LoginNation()
	--local func = function (self)
	--	SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
	--end
	--local callback = Bind(self,func)
	--NationCtrlManager:GetInstance():GetNationLoginData(callback)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIPVPMatch,type)
end

local function SendPvpArenaBtn()
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaPvp)
end

--function UITestMainCtrl:SwitchNationScene(self)
--	--SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
--end

--请求
local function  RequestQuestionRewardRequest(self)
	local msdId = MsgIDDefine.PBUSER_QUESTION_REWARD_REQUEST
	--local msdObj = MsgIDMap[msdId]()
	NetManager:GetInstance():SendMessage(msdId,nil,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		local questionTimes=UserData:GetInstance().questionTimes+1;
		UserData:GetInstance():SetQuestionTimes(questionTimes);
		UIManager:GetInstance():Broadcast(UIMessageNames.UI_SURVEY_REFRESH);
	end)
end

UITestMainCtrl.RequestQuestionRewardRequest=RequestQuestionRewardRequest;
UITestMainCtrl.SendPvpArenaBtn = SendPvpArenaBtn
UITestMainCtrl.OpenZFWindow = OpenZFWindow
UITestMainCtrl.OpenHangUpPanel = OpenHangUpPanel
UITestMainCtrl.StartFighting = StartFighting
UITestMainCtrl.OpenHandBook = OpenHandBook
UITestMainCtrl.OpenCardPool = OpenCardPool
UITestMainCtrl.OpenEmBattle = OpenEmBattle
UITestMainCtrl.OpenGMPanel = OpenGMPanel
UITestMainCtrl.OpenSZMain=OpenSZMain
UITestMainCtrl.OpenDailyTask = OpenDailyTask
UITestMainCtrl.SetMailRedPointState=SetMailRedPointState
UITestMainCtrl.SendEnterFightRequest=SendEnterFightRequest
UITestMainCtrl.EnterFightResponse=EnterFightResponse
UITestMainCtrl.OnTestBtnClick=OnTestBtnClick
UITestMainCtrl.OpenLhglWindow=OpenLhglWindow
UITestMainCtrl.OpenArtifact = OpenArtifact
UITestMainCtrl.OpenSoloBossWindow=OpenSoloBossWindow
UITestMainCtrl.RequestOpenArtifact = RequestOpenArtifact
UITestMainCtrl.OpenShop=OpenShop
UITestMainCtrl.OpenJlrfj=OpenJlrfj
UITestMainCtrl.OpenSJWindow=OpenSJWindow
UITestMainCtrl.OpenTongLinWindow=OpenTongLinWindow
UITestMainCtrl.OpenChallengeWindow=OpenChallengeWindow

return UITestMainCtrl