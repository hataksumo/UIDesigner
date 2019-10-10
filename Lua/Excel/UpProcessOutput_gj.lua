local fn_cal_lv_process = function()
	local cfg_upProcessGJCfg = dofile "Config\\upProcessGJCfg"
	local cfg_card = dofile "Config\\card"
	local cfg_item = dofile "Config\\item"
	local cfg_classfy_eqp = fn_classfy_eqpcfg()
	local lvProcessData = {}
	--[[
		lvProcessData={
			[1] = {--章节
				[1] = {--关卡
					id = XXX,
					cards = {--众卡牌
						[1] = {
							id = xxx,
							CardInfo = {--卡牌信息
								id = xxx,
								note = xxx,
								star = 1,
								lv = xxx,
								bk = 1,
								ghost = 1,
							},
							Equipts= {--装备信息
								[1] = {
									eqpNote = xxx,
									stLv = 20,
								}
							}
							
						}
					}
				}
			}
		}
	]]


	local cardLvSeq = {
		{0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25},
		{0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5},
		{0.75,0.75,0.75,0.75,0.75,0.75,0.75,0.75,0.75},
		{1,1,1,1,1,1,1,1,1}
	}

	local cardQuaStarSeq = {
		{0,1,0,0,0,0,0,0,0},
		{0,1,0,0,1,0,0,1,0},
		{0,1,0,1,1,1,1,1,1},
		{1,1,1,1,1,1,1,1,1}
	}

	local cardGhostProcessSeq = {
		{0,0.5,0,0,0.5,0,0,0.5,0},
		{0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5},
		{0.5,1,0.5,0.5,1,0.5,0.5,1,0.5},
		{1,1,1,1,1,1,1,1,1},
	}

	local lvPhaseSeq = {1,1,1,2,2,2,3,3,3}
	local eqpQuaPhaseSeq = {2,1,2,3,3,3,4,4,4}

	local lvNum = 4

	for _chaLoc=1,#cfg_upProcessGJCfg do
		local the_chaData = cfg_upProcessGJCfg[_chaLoc]
		local pre_chaData = cfg_upProcessGJCfg[_chaLoc - 1]
		lvProcessData[_chaLoc] = {}
		local the_processData_cha = lvProcessData[_chaLoc]
		for lvLoc = 1,lvNum do
			the_processData_cha[lvLoc] = {}
			local the_processData_lv = the_processData_cha[lvLoc]
			local lvId = (300+_chaLoc)*100+lvLoc
			local cardNum = the_chaData.nCard
			the_processData_lv.id = lvId
			the_processData_lv.cards = {}
			local the_cards = the_processData_lv.cards
			for cardLoc=1,cardNum do
				the_cards[cardLoc] = {}
				local the_processData_card = the_cards[cardLoc]
				the_processData_card.id = lvId * 10 + cardLoc
				the_processData_card.CardInfo = {}
				the_processData_card.Equipts = {}
				local cardInfo = the_processData_card.CardInfo
				local equipts = the_processData_card.Equipts
				--输出卡牌Id和星级
				cardInfo.id = the_chaData.Cards[cardLoc]
				local cardQuaStar = cardQuaStarSeq[lvLoc][cardLoc]
				if cardQuaStar == 0 then
					cardInfo.id = pre_chaData.Cards[cardLoc]
					if not cardInfo.id then
						the_cards[cardLoc] = nil
						break
					end
				end
				cardInfo.note = cfg_item[cardInfo.id].note
				local cardQua = cfg_card[cardInfo.id].Quality
				local the_star = the_chaData.Star[cardQua - 1]
				if cardQuaStar == 0 then
					the_star = pre_chaData.Star[cardQua - 1]
				end
				cardInfo.star = the_star
				local lvProcess = cardLvSeq[lvLoc][cardLoc]
				local lvPhase = lvPhaseSeq[cardLoc]
				local cardLv = math.floor(the_chaData.Lv[lvPhase] * lvProcess + pre_chaData.Lv[lvPhase] * (1 - lvProcess))
				cardInfo.lv = cardLv

				local cardBk = the_chaData.Bk[lvPhase]
				if cardQuaStar == 0 then
					cardBk = pre_chaData.Bk[lvPhase]
				end
				cardInfo.bk = cardBk

				local cardGhostProcess = cardGhostProcessSeq[lvLoc][cardLoc]
				local cardGhost = math.floor(the_chaData.Ghost[lvPhase] * cardGhostProcess + pre_chaData.Ghost[lvPhase] * (1 - cardGhostProcess))
				cardInfo.ghost = cardGhost

				--导出装备数据
				local eqpQuaPhase = eqpQuaPhaseSeq[cardLoc]
				for eqpPos=1,8 do
					the_processData_card.Equipts[eqpPos] = {}
					local theEqp = the_processData_card.Equipts[eqpPos]
					local eqpLvId = the_chaData.Eqp[eqpQuaPhase].LvId
					local eqpQua = the_chaData.Eqp[eqpQuaPhase].Qua
					if cardQuaStar == 0 then
						eqpLvId = pre_chaData.Eqp[eqpQuaPhase].LvId
						eqpQua = pre_chaData.Eqp[eqpQuaPhase].Qua
					end
					theEqp.eqpNote = cfg_classfy_eqp:getEqpNote(2,eqpLvId,eqpQua,eqpPos)
					
					theEqp.stLv = math.floor(the_chaData.EqpLv[lvPhase] * lvProcess + pre_chaData.EqpLv[lvPhase] * (1 - lvProcess))
					if theEqp.eqpNote == "" then
						theEqp.stLv = 0
					end
				end

			end
		end
	end
	return lvProcessData
end

return fn_cal_lv_process