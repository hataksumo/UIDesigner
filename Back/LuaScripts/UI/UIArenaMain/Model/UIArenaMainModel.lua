
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

---竞争场主界面的数据结构
local ArenaMainInfoData = {
	---玩家名字
	player_name = "",
	---玩家头像
	player_icon = "",
	---玩家头像框
	player_frame = "",
	---玩家等级
	player_lv = 0,
	---最强6人战力
	player_fighting_num = 0,
	---当前积分
	player_score_num = 0,
	---已获得胜点
	win_num = 0,
	---本周胜场数
	attack_win_times = 0,
	---本周战斗总场数
	attack_all_times = 0,
	---挑战券数量
	arena_ticket_num = 0,
	---荣誉值
	arena_honor_num = 0,
	---自身排名
	self_rank = 0,
	---可领取的宝箱id
	arena_has_boxes_id = {},
	---宝箱数据
	arena_boxes = {}
}

---宝箱数据
local BoxData = {
	id = 0,
	victory_num = 0,
	type = 0,
	--状态 1未领取 2可领取 3已领取
	state = 0,
	awardDataList = {}
}
---阵容数据
local Team = {
	host1 = 0,
	guard1 = 0,
	host2 = 0,
	guard2 = 0,
	host3 = 0,
	guard3 = 0,
}

---挑战对手数据
local ArenaChallengeData = {
	---uid
	uid = 0,
	---对手名字
	challenge_name = "",
	---对手头像
	challenge_icon = "",
	---对手头像框
	challenge_frame = "",
	---对手等级
	challenge_lv = 0,
	---对手积分
	challenge_score = "",
	---对手胜点
	challenge_win_num = 0,
	---挑战状态  0没挑战 1成功  2失败
	challenge_state = 0,
    ---战报时间戳
    report_times = 0,
    ---是否复仇过0没有1复仇过
    is_revenge = 0,
    ---战报类型 1进攻胜利 2进攻失败 3防守胜利 4防守失败
    result_type = 0,
	---排名
	rank_num = 0,
	---战报id
	arena_report_id = "",
	---阵容信息
	TeamData = {},
	---阵容等级
	TeamLv = {},
	---阵容战力
	fightValue = 0
}

local UIArenaMainModel = BaseClass("UIArenaMainModel", UIBaseModel)
local base = UIBaseModel
local allCardData = DataUtil.GetData("card")
local allItemData = DataUtil.GetData("item")
local arena_victory_data = DataUtil.GetData("arena_victory")
local arena_main_info_data = DataClass("arena_main_info_data",ArenaMainInfoData)
local arena_challenge_data = DataClass("arena_challenge_data",ArenaChallengeData)
local box_data = DataClass("box_data",BoxData)
local team_data = DataClass("team_data",Team)
local arena_robot = DataUtil.GetData("arena_robot")
-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	---竞技场主界面数据
	self.arena_main_data = {}
	---竞技场对手数据(3个)
	self.arena_challenge_all_data = {}
    ---竞技场战报数据
    self.arena_report_data = {}
	---竞技场排行榜数据
	self.arena_rank_data = {}
	---竞技场刷新时间
	self.timer_info = 0
	---时间刷新类型 0免费 1是消耗代币
	self.timer_take_type = 0
end

---解析竞技场个人信息数据
local function AnalysisData(self,_data)
    self.arena_main_data = {}
	local data =arena_main_info_data.New()
	data.player_score_num = _data.score
	--data.arena_ticket_num = _data.ticket
	data.win_num = _data.victoryPoint
	data.self_rank = _data.rank

	data.player_fighting_num = CardData:GetInstance():GetCardDataForPower()
	--data.arena_honor_num = _data.honor
	data.attack_all_times = _data.fightTimes
	data.attack_win_times = _data.victoryTimes
	ArenaData:GetInstance().arena_all_times = _data.fightTimes
	ArenaData:GetInstance().arena_rank = _data.rank
	if _data.victoryPoint > ArenaData:GetInstance().arena_win_num then
		ArenaData:GetInstance().arena_score = _data.score
		ArenaData:GetInstance().arena_win_num = _data.victoryPoint
		ArenaData:GetInstance().buy_tick_times = _data.buyTime
		ArenaData:GetInstance().arena_win_times = _data.victoryTimes
	else
		ArenaData:GetInstance().arena_win_times = data.attack_win_times
	end
	for _, v in ipairs(_data.rewardList) do
		table.insert(ArenaData:GetInstance().arena_has_boxes_id,v)
	end
	for i, v in ipairs(arena_victory_data) do
		local boxData =box_data.New()
		boxData.id = v.ID
		boxData.type = v.Type
		boxData.victory_num = v.Victory
		if v.Award ~= nil then
			for _, m in ipairs(v.Award) do
				table.insert(boxData.awardDataList,DataUtil.GetDataByIdAndType(m.id,14,m.val))
			end
		end
		if data.win_num >= v.Victory then
			boxData.state = 2
		else
			boxData.state = 1
		end
		if #ArenaData:GetInstance().arena_has_boxes_id > 0  then
			for _, w in pairs(ArenaData:GetInstance().arena_has_boxes_id) do
				if w == v.ID then
					boxData.state = 3
				end
			end
		end
		table.insert(data.arena_boxes,boxData)
	end
	self.arena_main_data = data
end
---解析匹配对手信息
local function AnalysisChallengeData(self,_data,_isUpdate)
    self.arena_challenge_all_data = {}
	self.timer_info = _data.matchTime
	self.timer_take_type = _data.cost
	for i, v in ipairs(_data.user_info) do
		local challengeData = arena_challenge_data.New()
		challengeData.uid = v.uid
		if v.name == "" then
			challengeData.challenge_name = math.floor(v.uid)
		else
			challengeData.challenge_name = v.name
		end
		if arena_robot[challengeData.uid] ~= nil then
			challengeData.challenge_icon = arena_robot[challengeData.uid].Head
			challengeData.challenge_frame = arena_robot[challengeData.uid].Frame
		else
			challengeData.challenge_icon = allItemData[v.head].Icon
			challengeData.challenge_frame = SpriteDefine:GetItemQualityFrameByType(allItemData[v.head].Quality)
		end
		challengeData.challenge_lv = v.level
		challengeData.challenge_score = v.score
		challengeData.challenge_win_num =v.resultScore
		challengeData.challenge_state = v.challengeState
		challengeData.fightValue = v.fighting
--[[		---获取对方阵容id
		if  v.teamManager[1] ~= nil then
			local teamData = team_data.New()
			teamData.host1 = v.teamManager[1].team.host1
			teamData.host2 = v.teamManager[1].team.host2
			teamData.host3 = v.teamManager[1].team.host3
			teamData.guard1 = v.teamManager[1].team.guard1
			teamData.guard2 = v.teamManager[1].team.guard2
			teamData.guard3 = v.teamManager[1].team.guard3
			table.insert(challengeData.TeamData,teamData)
		end

		---获取对方阵容id的等级
		if  v.teamManagerLevel[1] ~= nil then
			local teamDataLv = team_data.New()
			teamDataLv.host1 = v.teamManagerLevel[1].team.host1
			teamDataLv.host2 = v.teamManagerLevel[1].team.host2
			teamDataLv.host3 = v.teamManagerLevel[1].team.host3
			teamDataLv.guard1 = v.teamManagerLevel[1].team.guard1
			teamDataLv.guard2 = v.teamManagerLevel[1].team.guard2
			teamDataLv.guard3 = v.teamManagerLevel[1].team.guard3
			table.insert(challengeData.TeamLv,teamDataLv)
		end]]
		table.insert(self.arena_challenge_all_data,challengeData)
	end
	ArenaData:GetInstance().pk_player_data = self.arena_challenge_all_data
	if _isUpdate then
		self:UIBroadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,true)
	else
		self:UIBroadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,false)
	end
end



-- 打开
local function OnEnable(self,arenaData,challengeListData,_isNotOpenLastPanel)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.isNotOpenLastPanel=_isNotOpenLastPanel;
	if arenaData ==nil or arena_victory_data ==nil or challengeListData.user_info  == nil then
		return
	end
	AnalysisData(self,arenaData)
	AnalysisChallengeData(self,challengeListData)
	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)

end

---战报数据
local function GetReportData(self,reportData)
	self.arena_report_data = {}
	if reportData ==nil or reportData._is_null then
		self.arena_report_data = nil
	else
		for _, v in ipairs(reportData) do
			local report = arena_challenge_data.New()
			report.uid = v.uid
			report.challenge_name = v.name
			if arena_robot[report.uid] ~= nil then
				report.challenge_icon = arena_robot[report.uid].Head
				report.challenge_frame = arena_robot[report.uid].Frame
			else
				report.challenge_icon = allItemData[v.head].Icon
				report.challenge_frame = SpriteDefine:GetItemQualityFrameByType(allItemData[v.head].Quality)
			end
			report.challenge_lv = v.level
            if v.resultScore >= 0 then
                report.challenge_score = "<color=#3E793E>+"..math.floor(v.resultScore).."</color>"
            else
                report.challenge_score = "<color=#CE4747>"..math.floor(v.resultScore).."</color>"
            end
			report.result_type = v.resultType
			report.is_revenge = v.isRevenge
			report.arena_report_id = v.reportId
			report.report_times = (TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000) - v.fightTime
			table.insert(self.arena_report_data,report)
		end
		table.sort(self.arena_report_data,function (a,b) return a.report_times < b.report_times end)
	end
	self:UIBroadcast(UIMessageNames.UPDATE_ARENA_REPORT_DATA)
end
---刷线竞技场排行榜数据
local function UpdateRankData(self,rankList)
	if rankList._is_null then
		return
	end

	for _, v in ipairs(rankList) do
		local rankData = arena_challenge_data.New()
		rankData.uid = v.uid
		rankData.rank_num = v.rank
		rankData.challenge_icon = v.head
		rankData.challenge_frame = v.framd
		rankData.challenge_name = v.name
		rankData.challenge_score = v.score
		if arena_robot[rankData.uid] ~= nil then
			rankData.challenge_icon = arena_robot[rankData.uid].Head
			rankData.challenge_frame = arena_robot[rankData.uid].Frame
		else
			rankData.challenge_icon = allItemData[v.head].Icon
			rankData.challenge_frame = SpriteDefine:GetItemQualityFrameByType(allItemData[v.head].Quality)
		end
		table.insert(self.arena_rank_data,rankData)
	end
	self:UIBroadcast(UIMessageNames.UPDATE_ARENA_RANK_LIST_DATA)
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
    self:AddDataListener(DataMessageNames.ON_GET_ARENA_REPORT_DATA, GetReportData) ---获取战报信息
	self:AddDataListener(DataMessageNames.ON_UPDATE_ARENA_RANK_DATA, UpdateRankData) ---获取排行榜信息
	self:AddDataListener(DataMessageNames.ON_UPDATE_ARENA_CHALLENGE_PRO_DATA, AnalysisChallengeData) ---刷新挑战对手信息
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_GET_ARENA_REPORT_DATA, GetReportData)
	self:RemoveDataListener(DataMessageNames.ON_UPDATE_ARENA_RANK_DATA, UpdateRankData)
	self:RemoveDataListener(DataMessageNames.ON_UPDATE_ARENA_CHALLENGE_PRO_DATA, AnalysisChallengeData)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIArenaMainModel.OnCreate = OnCreate
UIArenaMainModel.OnEnable = OnEnable
UIArenaMainModel.OnRefresh = OnRefresh
UIArenaMainModel.OnAddListener = OnAddListener
UIArenaMainModel.OnRemoveListener = OnRemoveListener
UIArenaMainModel.OnDisable = OnDisable
UIArenaMainModel.OnDistroy = OnDistroy

return UIArenaMainModel