_G.fn_classfy_eqpcfg = function()
	if _G["classfy_eqp"] then
		return _G["classfy_eqp"]
	end
	local eqp_cfg_classfy = {}
	eqp_cfg_classfy[1] = {}
	eqp_cfg_classfy[2] = {}
	local eqp_cfg = dofile "Config\\eqp"
	local item_cfg = dofile "Config\\item"
	for id,data in pairs(eqp_cfg) do
		if not eqp_cfg_classfy[data.Type][data.LvId] then
			eqp_cfg_classfy[data.Type][data.LvId] = {}
		end
		local the_lvids = eqp_cfg_classfy[data.Type][data.LvId]
		if not the_lvids[data.Qua] then
			the_lvids[data.Qua] = {}
		end
		local the_qua_data = the_lvids[data.Qua]
		if data.Suit and data.Suit > 0 then
			if not the_lvids[5] then
				the_lvids[5] = table.clone(the_qua_data)
			end
			the_qua_data = the_lvids[5]
		end
		if not the_qua_data[data.Pos] then
			the_qua_data[data.Pos] = {}
		end
		local the_pos_data = the_qua_data[data.Pos]
		local item_data = item_cfg[id]
		the_pos_data.name = item_data.note
	end
	eqp_cfg_classfy.getEqpNote = function(v_self,v_type,v_lvId,v_qua,v_pos)
		if v_lvId <= 0 or v_qua <= 0 then
			return ""
		end
		local group = v_self[v_type][v_lvId][v_qua]

		if not group then
			print(string.format("v_self[%d][%d][%d] = nil",v_type,v_lvId,v_qua))
		end

		local eqpData = group[v_pos]
		if not eqpData then
			eqpData = v_self[v_type][v_lvId][v_qua - 1][v_pos]
		end

		if not eqpData then
			print(string.format("v_self[%d][%d][%d][%d] = nil",v_type,v_lvId,v_qua,v_pos))
		end
		return eqpData.name
	end

	_G["classfy_eqp"] = eqp_cfg_classfy

	return eqp_cfg_classfy
end


local fn_cal_eqp_process = function()
	local cfg_up_process = dofile "Config\\upProcessCfg"
	local lvTypeSeqs = {
		["gq10"] = {1,1,2,1,1,3,1,1,4,5},
		["tw2"] = {4,4},
		["tw3"] = {4,4,4},
		["tw5"] = {4,4,4,4,5},
		["daily1"] = {1}
	}
	local lvProcessSeqs = {
		["gq10"] = {0,0.1,0.3,0.4,0.5,0.7,0.8,0.9,1,1},
		["tw2"] = {0.5,1},
		["tw3"] = {0.3,0.6,1},
		["tw5"] = {0.2,0.4,0.6,0.8,1},
		["daily1"] = {1}
	}

	local eqpQuaProcessSeqs = {
		["gq10"] = {
			jlr = {0,0,0,0,0,1,1,1,1,1},
			shl = {0,0,1,1,1,1,1,1,1,1}
		},
		["tw2"] = {
			jlr = {0,1},
			shl = {1,1}
		},
		["tw3"] = {
			jlr = {0,0,1},
			shl = {0,1,1}
		},
		["tw5"] = {
			jlr = {0,0,0,1,1},
			shl = {0,1,1,1,1}
		},
		["daily1"] = {
			jlr = {1},
			shl = {1}
		}
	}
	local stype = {"pt","kn","tw_f","tw_h","tw_x","tw_y","daily_ghost","daily_break","daily_gold","daily_relic","daily_exwp"}
	--local stype = {"tw_f"}
	local sFieldTypes = {"jlr","shl"}

	local eqp_cfg_classfy = fn_classfy_eqpcfg()

	local chaOptProcessData_eqp = {}
	--[[
	chaOptProcessData_eqp = {
		[101] = {
			[10101] = {
				[1] = {
					jlr = {
						equipts = {
							[1] = {
								eqpLvId = 1,
								eqpNote = "20级守护灵の紫色灵器",
								eqpStrenthenLv = 20
							},
							[2]={},[3]={},[4]={},[5]={},[6]={},[7]={},[8]={}
						}
					},
					shl = {
	
					}
				}
			}
		}
	}
	]]

	for _iChaType,sChaTypeKey in ipairs(stype) do
		local cha_groups = cfg_up_process[sChaTypeKey]
		for _i=1,#cha_groups do
			local cur_cha_cfg = cha_groups[_i].Equipts
			local pre_cha_cfg = cha_groups[_i-1].Equipts
			local nType = cha_groups[_i].nType
			local nTypeCfg = lvTypeSeqs[nType]
			local nQuaProcessCfg = eqpQuaProcessSeqs[nType]
			local chaId = cha_groups[_i].ChaId
			local baseLvId = cha_groups[_i].BegLvId
			if not chaOptProcessData_eqp[chaId] then
				chaOptProcessData_eqp[chaId] = {}
			end		
			local rtnChaData = chaOptProcessData_eqp[chaId]
			--各关卡
			for lvLoc=1,cha_groups[_i].n do
				local lvnType = nTypeCfg[lvLoc]
				local process_rate = lvProcessSeqs[nType][lvLoc]
				local lvId = baseLvId + lvLoc
				rtnChaData[lvId] = {}
				local rtnLvData = rtnChaData[lvId]
				--print(string.format("chaOptProcessData_eqp[%d][%d] = {}",chaId,lvId))
				for loc=1,3 do
					rtnLvData[loc] = {}
					local rtnLocData = rtnLvData[loc]
					for iFieldType,sFieldType in ipairs(sFieldTypes) do
						rtnLocData[sFieldType] = {}
						rtnLocData[sFieldType].equipts = {}
						local rtnEqps = rtnLocData[sFieldType].equipts

						local eqpStrenthenLvPre = pre_cha_cfg.EqpLv
						local eqpStrenthenLvCur = cur_cha_cfg.EqpLv
						local eqpStrenthenLv = math.floor(eqpStrenthenLvPre * (1-process_rate) + eqpStrenthenLvCur * process_rate)

						local qua_process_rate = nQuaProcessCfg[sFieldType][lvLoc]

						local lvIdPre = pre_cha_cfg.EqpLvId[loc][sFieldType].lvId
						local lvIdCur = cur_cha_cfg.EqpLvId[loc][sFieldType].lvId
						local EqpLvId = lvIdPre * (1-qua_process_rate) + lvIdCur * qua_process_rate

						local lvQuaPre = pre_cha_cfg.EqpLvId[loc][sFieldType].qua
						local lvQuaCur = cur_cha_cfg.EqpLvId[loc][sFieldType].qua
						local lvQua = lvQuaPre * (1-qua_process_rate) + lvQuaCur * qua_process_rate
						--print(string.format("chaOptProcessData_eqp[%d][%d][%d].%s.equipts = {}",chaId,lvId,loc,sFieldType))
						for pos=1,8 do
							rtnEqps[pos] = {}
							local the_eqp_data = rtnEqps[pos]
							local the_eqp_name = eqp_cfg_classfy:getEqpNote(iFieldType,EqpLvId,lvQua,pos)
							the_eqp_data.eqpLvId = EqpLvId
							the_eqp_data.eqpNote = the_eqp_name
							the_eqp_data.eqpStrenthenLv = eqpStrenthenLv

							--print(string.format("chaOptProcessData_eqp[%d][%d][%d].%s.equipts[%d] = {}",chaId,lvId,loc,sFieldType,pos))
						end

					end
				end
			end

		end
	end
	return chaOptProcessData_eqp
end

return fn_cal_eqp_process