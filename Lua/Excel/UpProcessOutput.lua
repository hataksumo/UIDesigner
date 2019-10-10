local fn_create_cardGroup = function()
	local cardGroup = {}
	for i=1,3 do
		cardGroup[i] = {}
		cardGroup[i].jlr = {}
		cardGroup[i].shl = {}
	end
	return cardGroup

end

local fn_fill_the_sheet = function(v_sChaType,v_chaProcessData,v_chaEqpProcessData,v_propSimSheet)
	local row = 3
	local sCardTypeField = {"jlr","shl"}
	
	for _typeIdx,sChaType in ipairs(v_sChaType) do
		local the_chaProcessData = v_chaProcessData[sChaType]
		for _i,chaData in ipairs(the_chaProcessData) do
		--print("cha ".._i.."   "..chaData.sOptCha)
			for _lvLoc,levelData in ipairs(chaData.lvs) do
				--print("_lvLoc ".._lvLoc)
				for pos,coupleData in ipairs(levelData.cardGroup) do
					for _cardTypeFieldLoc=1,#sCardTypeField do
						local the_type_field = sCardTypeField[_cardTypeFieldLoc]
						local cardData = coupleData[the_type_field]
						v_propSimSheet:set_vals("cha",row,chaData.sOptCha)
						v_propSimSheet:set_vali("ChaLoc",row,chaData.iOptChaLoc)
						v_propSimSheet:set_vali("LvLoc",row,levelData.iOptLvLoc)
						v_propSimSheet:set_vali("id",row,cardData.iOptId)
						v_propSimSheet:set_vali("lvId",row,levelData.iOptLvId)
						v_propSimSheet:set_vali("group",row,levelData.iOptLvId)
						v_propSimSheet:set_vali("loc",row,pos)
						v_propSimSheet:set_vals("type",row,the_type_field)
						v_propSimSheet:set_vals("cardId",row,cardData.sOptCardNote)
						v_propSimSheet:set_vali("lv",row,cardData.iOptLv)
						v_propSimSheet:set_vali("bklv",row,cardData.iOptBk)
						v_propSimSheet:set_vali("star",row,cardData.iOptStar)
						if cardData.iOptGhost then
							v_propSimSheet:set_vali("ghost",row,cardData.iOptGhost)
						end
						--导出装备
						if not v_chaEqpProcessData[chaData.iChaId][levelData.iOptLvId]then
							for key,val in pairs(v_chaEqpProcessData[chaData.iChaId]) do
								local dbg = ""
								dbg = dbg.."key = "..key
								if type(val) ~= "table" then
									dbg = dbg..", val = "..val
								end
								print(dbg)
							end
							print(string.format("v_chaEqpProcessData[%d][%d] = nil",chaData.iChaId,levelData.iOptLvId))
							--table.debug(v_chaEqpProcessData[chaData.iChaId])	
						end

						local eqpSuitDatas = v_chaEqpProcessData[chaData.iChaId][levelData.iOptLvId][pos][the_type_field].equipts
						for eqpPos,eqpData in ipairs(eqpSuitDatas) do
							local sEqpIdKey = string.format("equip[%d].id",eqpPos)
							local sEqpLvKey = string.format("equip[%d].lv",eqpPos)
							if not eqpData then
								print(string.format("v_chaEqpProcessData[%d][%d][%d].%s.equipts[%d] = nil",
									chaData.iChaId,levelData.iOptLvId,pos,the_type_field,eqpPos))
							end
							if eqpData.eqpNote and eqpData.eqpNote ~= "" then
								v_propSimSheet:set_vals(sEqpIdKey,row,eqpData.eqpNote)
								v_propSimSheet:set_vali(sEqpLvKey,row,eqpData.eqpStrenthenLv)
							end
							
						end
						row = row + 1
					end
				end
			end
		end
	end



	
end


local fn_cal_lv_process = function()
	local cfg_up_process = dofile "Config\\upProcessCfg"
	local cfg_card = dofile "Config\\card"
	local cardQuaFieldSeqs = {"pt","jy1","jy2","jy3","boss"}
	local lvTypeSeqs = {
		["gq10"] = {1,1,2,1,1,3,1,1,4,5},
		["tw2"] = {4,4},
		["tw3"] = {4,4,4},
		["tw5"] = {4,4,4,4,5},
		["daily1"] = {1},
	}
	local lvProcessSeqs = {
		["gq10"] = {0,0.1,0.3,0.4,0.5,0.7,0.8,0.9,1,1},
		["tw2"] = {0.5,1},
		["tw3"] = {0.3,0.6,1},
		["tw5"] = {0.2,0.4,0.6,0.8,1},
		["daily1"] = {1},
	}
	local hellProcessSeqs = {
		["gq10"] = {0,0,0,0,0,1,1,1,1,1},
		["tw2"] = {1,1},
		["tw3"] = {1,1,1},
		["tw5"] = {1,1,1,1,1},
		["daily1"] = {1},
	}
	local cardLvProcessSeqs = {
		["gq10"] = {{0,0.5,0},{0.2,0.5,0.2},{0.2,1,0.2},{0.3,1,0.3},{0.5,1,0.3},{1,1,0.4},{1,1,0.5},{1,1,0.8},{1,1,1},{1,1,1}},
		["tw2"] = {{0,1,0},{1,1,1}},
		["tw3"] = {{0,1,0},{0,1,1},{1,1,1}},
		["tw5"] = {{0.1,0.1,0.1},{0.25,0.25,0.25},{0.5,0.5,0.5},{0.75,0.75,0.75},{1,1,1}},
		["daily1"] = {{1,1,1}},
	}
	local bkProcessSeqs = {
		["gq10"] = {{0,0,0},{0,0,0},{0,1,0},{0,1,0},{0,1,0},{1,1,0},{1,1,0},{1,1,0},{1,1,1},{1,1,1}},
		["tw2"] = {{0,1,0},{1,1,1}},
		["tw3"] = {{0,1,0},{0,1,1},{1,1,1}},
		["tw5"] = {{0,0,0},{0,1,0},{0,1,1},{1,1,0},{1,1,1}},
		["daily1"] = {{1,1,1}},
		["gj4"] = {1,1,1,1}
	}
	local bkGhostSeqs = {
		["gq10"] = {{0,0,0},{0,0,0},{0,0.5,0},{0.5,0.5,0},{0.5,0.5,0.5},{0.5,1,0.5},{0.5,1,0.5},{0.5,1,0.5},{1,1,1},{1,1,1}},
		["tw2"] = {{0,1,0},{1,1,1}},
		["tw3"] = {{0,0.5,0},{0.5,1,0.5},{1,1,1}},
		["tw5"] = {{0,0,0},{0,0.5,0},{0.5,0.5,0.5},{1,1,0.5},{1,1,1}},
		["daily1"] = {{1,1,1}}
	}
	local cardQuaProcessSeqs = {
		["gq10"] = {{0,0,0},{0,0,0},{0,1,0},{0,1,0},{0,1,0},{1,1,0},{1,1,0},{1,1,0},{1,1,1},{1,1,1}},
		["tw2"] = {{0,1,0},{1,1,1}},
		["tw3"] = {{0,1,0},{0,1,1},{1,1,1}},
		["tw5"] = {{0,0,0},{0,1,0},{0,1,1},{1,1,0},{1,1,1}},
		["daily1"] = {{1,1,1}}
	}


	local stype = {"pt","kn","tw_f","tw_h","tw_x","tw_y","daily_ghost","daily_break","daily_gold","daily_relic","daily_exwp"}
	--local stype = {"tw_f"}
	--local chaIdBase = {100,200}
	local chaOptProcessData = {}
	--[[
	chaOptProcessData = {
		["pt"] = {
			[1] = {--章节
				sOptCha = "章节名",
				iOptChaLoc = "章节位置",
				iChaId = 101,
				lvs = {--关卡
					[1] = {
						iOptLvLoc = 1,--关卡位置
						iOptLvId = 10101,--关卡Id
						cardGroup = {--卡牌组
							[1] = {
								jlr = {iOptId = xxx, sOptCardNote = xxx, iOptStar = xxx, iOptLv = xxx, iOptBk = xxx},
								shl = {iOptId = xxx, sOptCardNote = xxx, iOptStar = xxx, iOptLv = xxx, iOptBk = xxx, iOptGhost = xxx}
							},
							[2] = {
								jlr = {},
								shl = {}
							},
							[3] = {
								jlr = {},
								shl = {}
							},
						}
					}
				}
			}
		}
	}
	]]

	for _iChaType,sChaTypeKey in ipairs(stype) do
		chaOptProcessData[sChaTypeKey] = {}
	end

	for _iChaType,sChaTypeKey in ipairs(stype) do
		local the_chaOptProcessData = chaOptProcessData[sChaTypeKey]
		local cha_groups = cfg_up_process[sChaTypeKey]
		for _i=1,#cha_groups do
			local chaOptData = {}
			table.insert(the_chaOptProcessData,chaOptData)
			local cur_cha_cfg = cha_groups[_i].Cards
			local pre_cha_cfg = cha_groups[_i-1].Cards
			local nType = cha_groups[_i].nType
			local nTypeCfg = lvTypeSeqs[nType]

			if not nTypeCfg then
				print(string.format("lvTypeSeqs[%s] = nil",nType))
			end

			--章节名
			chaOptData.sOptCha = cha_groups[_i].ChaName
			--章节位置
			chaOptData.iOptChaLoc = _i
			chaOptData.iChaId = cha_groups[_i].ChaId
			--关卡数据
			chaOptData.lvs = {}
			for lvLoc=1,cha_groups[_i].n do
				local lvnType = nTypeCfg[lvLoc]
				local lvData = {}
				local cardGroup = fn_create_cardGroup()
				--卡牌组
				lvData.cardGroup = cardGroup
				--章节位置
				lvData.iOptLvLoc = lvLoc
				local iOptLvId = cha_groups[_i].BegLvId + lvLoc
				--关卡ID
				lvData.iOptLvId = iOptLvId
				table.insert(chaOptData.lvs,lvData)
				for loc=1,3 do
					--计算玩家等级
					local lvProcess = lvProcessSeqs[nType][lvLoc]
					local iPlayerLv = math.floor(pre_cha_cfg.Card.Lv * (1 - lvProcess) + cur_cha_cfg.Card.Lv * lvProcess)
					--计算玩家地狱道
					local hellProcess = hellProcessSeqs[nType][lvLoc]
					local iHell = math.floor(pre_cha_cfg.HellLv * (1 - hellProcess) + cur_cha_cfg.HellLv * hellProcess)
					--计算卡牌等级
					local cardLvProcess = cardLvProcessSeqs[nType][lvLoc][loc]
					local iCardLv = math.floor(pre_cha_cfg.Card.Lv * (1 - cardLvProcess) + cur_cha_cfg.Card.Lv * cardLvProcess)
					--计算卡牌魂火
					local ghostProcess = bkGhostSeqs[nType][lvLoc][loc]
					local iCardGhost = math.floor(pre_cha_cfg.Card.Ghost * (1 - ghostProcess) + cur_cha_cfg.Card.Ghost * ghostProcess)
					--计算卡牌突破
					local bkProcess = bkProcessSeqs[nType][lvLoc][loc]
					local iCardBk = math.floor(pre_cha_cfg.Card.Break * (1 - bkProcess) + cur_cha_cfg.Card.Break * bkProcess)
					--卡牌品质星级
					local cardQuaProcess = cardQuaProcessSeqs[nType][lvLoc][loc]
					local lvType = nTypeCfg[lvLoc]
					local cardQuaField = cardQuaFieldSeqs[lvType]
					local cardInfoCfgCur = cur_cha_cfg.XgGroup[cardQuaField][loc]
					local cardInfoCfgPre = pre_cha_cfg.XgGroup[cardQuaField][loc]
					--寄灵人Id
					local jlrId = iOptLvId * 100 + loc * 10
					--寄灵人CardId
					local jlrCardId = cardInfoCfgPre.Jlr.Id
					if cardQuaProcess == 1 then
						jlrCardId = cardInfoCfgCur.Jlr.Id
					end
					local jlrNote = cfg_card[jlrCardId].Name
					--寄灵人星级
					local jlrStar = cardInfoCfgPre.Jlr.Star
					if cardQuaProcess == 1 then
						jlrStar = cardInfoCfgCur.Jlr.Star
					end
					--守护灵Id
					local shlId = iOptLvId * 100 + loc * 10 + 1
					--守护灵CardId
					local shlCardId = cardInfoCfgPre.Shl.Id
					if cardQuaProcess == 1 then
						shlCardId = cardInfoCfgCur.Shl.Id
					end
					local shlNote = cfg_card[shlCardId].Name
					--守护灵星级
					local shlStar = cardInfoCfgPre.Shl.Star
					if cardQuaProcess == 1 then
						shlStar = cardInfoCfgCur.Shl.Star
					end
					--赋值到cardGroup
					--寄灵人
					cardGroup[loc].jlr.iOptId = jlrId
					cardGroup[loc].jlr.sOptCardNote = jlrNote
					cardGroup[loc].jlr.iOptStar = jlrStar
					cardGroup[loc].jlr.iOptLv = iPlayerLv
					cardGroup[loc].jlr.iOptBk = iHell
					--守护灵
					cardGroup[loc].shl.iOptId = shlId
					cardGroup[loc].shl.sOptCardNote = shlNote
					cardGroup[loc].shl.iOptStar = shlStar
					cardGroup[loc].shl.iOptLv = iCardLv
					cardGroup[loc].shl.iOptGhost = iCardGhost
					cardGroup[loc].shl.iOptBk = iCardBk
				end
			end
		end
	end
	return chaOptProcessData
end


local fn_fill_gj_sheet = function(v_process_data,v_propSimSheet)
	local row = 3
	for chaLoc,chaData in ipairs(v_process_data) do
		for lvLoc,lvData in ipairs(chaData) do
			for cardLoc,cardData in ipairs(lvData.cards) do
				v_propSimSheet:set_vals("cha",row,"hang"..chaLoc.."-"..lvLoc)
				v_propSimSheet:set_vali("ChaLoc",row,chaLoc)
				v_propSimSheet:set_vali("LvLoc",row,lvLoc)
				v_propSimSheet:set_vali("id",row,cardData.id)
				v_propSimSheet:set_vali("lvId",row,lvData.id)
				v_propSimSheet:set_vali("group",row,lvData.id)
				v_propSimSheet:set_vali("loc",row,cardLoc)
				v_propSimSheet:set_vals("type",row,"shl")
				local cardInfo = cardData.CardInfo
				v_propSimSheet:set_vals("cardId",row,cardInfo.note)
				v_propSimSheet:set_vali("lv",row,cardInfo.lv)
				v_propSimSheet:set_vali("bklv",row,cardInfo.bk)
				v_propSimSheet:set_vali("star",row,cardInfo.star)
				v_propSimSheet:set_vali("ghost",row,cardInfo.ghost)
				local eqpInfoArr = cardData.Equipts
				for pos=1,8 do
					local eqpInfo = eqpInfoArr[pos]
					if eqpInfo.eqpNote and eqpInfo.eqpNote ~= "" then
						v_propSimSheet:set_vals(string.format("equip[%d].id",pos),row,eqpInfo.eqpNote)
						v_propSimSheet:set_vali(string.format("equip[%d].lv",pos),row,eqpInfo.stLv)
					end
				end
				row = row + 1
			end
		end
	end
end



local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("养成进度.xlsx")
	local sheetMainCardgroup = book:get_sheet("主线关卡卡牌组")
	local sheetTowerCardgroup = book:get_sheet("芦花古楼卡牌组")
	local sheetDailyCardgroup = book:get_sheet("日常副本卡牌组")
	local sheetGJCardgroup = book:get_sheet("挂机副本卡牌组")
	local lv_process_data = fn_cal_lv_process()
	local fn_cal_eqp_process,ok = dofile "Excel\\UpProcessOutput_eqp"
	if ok == false then
		print("UpProcessOutput_eqp error and "..fn_cal_eqp_process)
	end
	local eqp_process_data = fn_cal_eqp_process()

	local fn_cal_lv_process,ok = dofile "Excel\\UpProcessOutput_gj"
	if type(fn_cal_lv_process) == "string" then
		print("UpProcessOutput_gj error and "..fn_cal_lv_process)
	end
	local hang_process_data = fn_cal_lv_process()


	local sMainChaType = {"pt","kn"}
	local sTowerChaType = {"tw_f","tw_h","tw_x","tw_y"}
	local sDailyChaType = {"daily_ghost","daily_break","daily_gold","daily_relic","daily_exwp"}

	fn_fill_the_sheet(sMainChaType,lv_process_data,eqp_process_data,sheetMainCardgroup)
	fn_fill_the_sheet(sTowerChaType,lv_process_data,eqp_process_data,sheetTowerCardgroup)
	fn_fill_the_sheet(sDailyChaType,lv_process_data,eqp_process_data,sheetDailyCardgroup)
	fn_fill_gj_sheet(hang_process_data,sheetGJCardgroup)
	book:save(MyTools.OutputExcelPath.."shuxingmoni.xlsx")
end

return fn_output_excel