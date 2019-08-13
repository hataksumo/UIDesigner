local _create_lveqp_data = function()
	local level_eqp_data = {}
	level_eqp_data.data = {}
	--level_eqp_data.step = 0
	for loc=1,3 do
		level_eqp_data.data[loc] = {}
		level_eqp_data.data[loc].jlr = {}
		level_eqp_data.data[loc].shl = {}
		level_eqp_data.data[loc].jlr.eqp = {}
		level_eqp_data.data[loc].shl.eqp = {}
		local cauple = {"jlr","shl"}
		for _fieldI,field in ipairs(cauple) do
			level_eqp_data.data[loc][field].eqp.baseLv = 0
			level_eqp_data.data[loc][field].eqp.curLv = 0
			for pos=1,8 do
				level_eqp_data.data[loc][field].eqp[pos] = {}
				level_eqp_data.data[loc][field].eqp[pos].lvId = nil
				level_eqp_data.data[loc][field].eqp[pos].qua = nil
			end
		end
	end
	return level_eqp_data
end

local step_bhvs = {}
step_bhvs[15] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"}, lv=0},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"}, lv=0.1},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl"}, lv=0.2},
	[4] = {poses = {2},locs = {1,2,3},fields={"jlr"}, lv=0.25},
	[5] = {poses = {3},locs = {1,2,3},fields={"shl"}, lv=0.3},
	[6] = {poses = {3},locs = {1,2,3},fields={"jlr"}, lv=0.4},
	[7] = {poses = {4},locs = {1,2,3},fields={"shl"}, lv=0.45},
	[8] = {poses = {4},locs = {1,2,3},fields={"jlr"}, lv=0.5},
	[9] = {poses = {5},locs = {1,2,3},fields={"shl"}, lv=0.6},
	[10] = {poses = {5},locs = {1,2,3},fields={"jlr"}, lv=0.65},
	[11] = {poses = {6},locs = {1,2,3},fields={"shl"}, lv=0.7},
	[12] = {poses = {6},locs = {1,2,3},fields={"jlr"},lv=0.8},
	[13] = {poses = {7},locs = {1,2,3},fields={"shl"},lv=0.85},
	[14] = {poses = {7},locs = {1,2,3},fields={"jlr"},lv=0.9},
	[15] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1}
}

step_bhvs[9] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"},lv=0.1},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"},lv=0.2},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"},lv=0.3},
	[4] = {poses = {3},locs = {1,2,3},fields={"shl","jlr"},lv=0.4},
	[5] = {poses = {4},locs = {1,2,3},fields={"shl","jlr"},lv=0.5},
	[6] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"},lv=0.6},
	[7] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"},lv=0.7},
	[8] = {poses = {7},locs = {1,2,3},fields={"shl","jlr"},lv=0.8},
	[9] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1},
}

step_bhvs[12] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"},lv=0},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"},lv=0.1},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"},lv=0.2},
	[4] = {poses = {3},locs = {1,2,3},fields={"shl"},lv=0.3},
	[5] = {poses = {3},locs = {1,2,3},fields={"jlr"},lv=0.4},
	[6] = {poses = {4},locs = {1,2,3},fields={"shl","jlr"},lv=0.45},
	[7] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"},lv=0.5},
	[8] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"},lv=0.6},
	[9] = {poses = {7},locs = {1,2,3},fields={"shl"},lv=0.7},
	[10] = {poses = {7},locs = {1,2,3},fields={"jlr"},lv=0.8},
	[11] = {poses = {8},locs = {1,2,3},fields={"shl"},lv=0.9},
	[12] = {poses = {8},locs = {1,2,3},fields={"jlr"},lv=1},
}

step_bhvs[10] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"},lv=0.1},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"},lv=0.2},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"},lv=0.3},
	[4] = {poses = {3},locs = {1,2,3},fields={"shl","jlr"},lv=0.4},
	[5] = {poses = {4},locs = {1,2,3},fields={"shl"},lv=0.5},
	[6] = {poses = {4},locs = {1,2,3},fields={"jlr"},lv=0.6},
	[7] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"},lv=0.7},
	[8] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"},lv=0.8},
	[9] = {poses = {7},locs = {1,2,3},fields={"shl","jlr"},lv=0.9},
	[10] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1},
}

step_bhvs["gj8"] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl","jlr"},lv=0.1},
	[2] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"},lv=0.2},
	[3] = {poses = {3},locs = {1,2,3},fields={"shl","jlr"},lv=0.3},
	[4] = {poses = {4},locs = {1,2,3},fields={"shl","jlr"},lv=0.4},
	[5] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"},lv=0.6},
	[6] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"},lv=0.7},
	[7] = {poses = {7},locs = {1,2,3},fields={"shl","jlr"},lv=0.8},
	[8] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1},
}

step_bhvs["gj9"] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"},lv=0.1},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"},lv=0.2},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"},lv=0.3},
	[4] = {poses = {3},locs = {1,2,3},fields={"shl","jlr"},lv=0.4},
	[5] = {poses = {4},locs = {1,2,3},fields={"shl","jlr"},lv=0.5},
	[6] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"},lv=0.6},
	[7] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"},lv=0.7},
	[8] = {poses = {7},locs = {1,2,3},fields={"shl","jlr"},lv=0.8},
	[9] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1},
}

step_bhvs["gj15"] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"}, lv=0},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"}, lv=0.1},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl"}, lv=0.2},
	[4] = {poses = {2},locs = {1,2,3},fields={"jlr"}, lv=0.25},
	[5] = {poses = {3},locs = {1,2,3},fields={"shl"}, lv=0.3},
	[6] = {poses = {3},locs = {1,2,3},fields={"jlr"}, lv=0.4},
	[7] = {poses = {4},locs = {1,2,3},fields={"shl"}, lv=0.45},
	[8] = {poses = {4},locs = {1,2,3},fields={"jlr"}, lv=0.5},
	[9] = {poses = {5},locs = {1,2,3},fields={"shl"}, lv=0.6},
	[10] = {poses = {5},locs = {1,2,3},fields={"jlr"}, lv=0.65},
	[11] = {poses = {6},locs = {1,2,3},fields={"shl"}, lv=0.7},
	[12] = {poses = {6},locs = {1,2,3},fields={"jlr"},lv=0.8},
	[13] = {poses = {7},locs = {1,2,3},fields={"shl"},lv=0.85},
	[14] = {poses = {7},locs = {1,2,3},fields={"jlr"},lv=0.9},
	[15] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"},lv=1}
}

local _step_lveqp_data = function(v_tPre,v_cfg,v_step)
	local cur_lveqp_data = table.clone(v_tPre)
	--local curStep = v_tPre.step
	--curStep = curStep + 1
	local stepCfgData = step_bhvs[v_cfg.type][v_step]
	if not stepCfgData then
		print(string.format("step_bhvs[%s][%d] = nil",tostring(v_cfg.type),v_step))
	end
	local poses = stepCfgData.poses
	local locs = stepCfgData.locs
	local fields = stepCfgData.fields
	for _1,loc in ipairs(locs) do
		for _2,field in ipairs(fields) do
			for _3,pos in ipairs(poses) do
				if not cur_lveqp_data.data[loc] then
					print(string.format("cur_lveqp_data[%d] = nil",loc))
				elseif not cur_lveqp_data.data[loc][field] then
					print(string.format("cur_lveqp_data[%d][%s] = nil",loc,field))
				elseif not cur_lveqp_data.data[loc][field].eqp[pos] then
					print(string.format("cur_lveqp_data[%d][%s][%d] = nil",loc,field,pos))
				end
				cur_lveqp_data.data[loc][field].eqp[pos].lvId = v_cfg.lvId
				cur_lveqp_data.data[loc][field].eqp[pos].qua = v_cfg.qua
			end
		end
	end
	--设置装备等级
	local strCouple = {"jlr","shl"}
	local tarLv = v_cfg.lv
	local interpFac = stepCfgData.lv
	for loc=1,3 do
		for _2,field in ipairs(fields) do
			local preLv = v_cfg.baseLv
			local newLv = preLv * (1 - interpFac) + v_cfg.lv * interpFac
			for pos=1,8 do
				cur_lveqp_data.data[loc][field].eqp[pos].lv = newLv
			end
		end
	end
	cur_lveqp_data.step = curStep
	return cur_lveqp_data
end


local cal_eqp_design = function(v_chaEqpCfg)
	local chaData = {}
	local the_level_data = _create_lveqp_data()
	for chaLoc,chaCfgData in ipairs(v_chaEqpCfg) do
		chaData[chaLoc] = {}
		local lvs =  chaData[chaLoc]
		for lvId=1,chaCfgData.lvsum do
			--print(string.format("%d章%d关 _step_lveqp_data",chaLoc,lvId))
			local the_lv_data =  _step_lveqp_data(the_level_data,chaCfgData,lvId)
			the_level_data = the_lv_data
			table.insert(lvs,the_lv_data)
		end
	end
	return chaData
end

local cal_eqp_tw_design = function(v_twEqpCfg)
	local chaData = {}
	for twCha,chatwData in ipairs(v_twEqpCfg) do
		local the_level_data = _create_lveqp_data()
		chaData[twCha] = {}
		for lvPhaseId,phaseData in ipairs(chatwData) do
			local step = 1
			for lvId=phaseData.lvmin,phaseData.lvmax do
				local the_lv_data =  _step_lveqp_data(the_level_data,phaseData,step)
				the_level_data = the_lv_data
				step = step + 1
				table.insert(chaData[twCha],the_lv_data)
			end		
		end
	end
	return chaData
end

local opt_eqp_ds = function(v_chaData,v_tarSheet,v_idOff,v_idType)
	v_idType = v_idType or 1
	local strEqpType = {"武器","头盔","肩甲","衣服","鞋子","护手","项链","戒指"}
	local strColorName = {"绿色","蓝色","紫色","橙色"}
	local strCardType = {"寄灵人","守护灵"}
	local strQ5ColorName = {"橙色套2","橙色套2","橙色套2","橙色套3","橙色套2","橙色套2","橙色套3","橙色套3"}--防御套
	local strQ6ColorName = {"橙色套3","橙色套2","橙色套2","橙色套2","橙色套3","橙色套3","橙色套3","橙色套3"}--攻击套
	local strQ7ColorName = {"橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套1","橙色套1"}--绝世套
	local str20QColorName = {"橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1"}
	local str40QColorName = {"橙色套1","橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套2"}
	local str60QColorName = {"橙色套2","橙色套1","橙色套1","橙色套2","橙色套1","橙色套1","橙色套2","橙色套2"}
	local strSuitColorName = {[5] = strQ5ColorName,[6] = strQ6ColorName,[7] = strQ7ColorName,[20] = str20QColorName,
	[40] = str40QColorName, [60] = str60QColorName}
	local strEqpLvNames = {"20级","40级","60级","80级","100级","120级"}

	local fn_getEqpName = function(v_lvId,v_type,v_qua,v_pos)
		if v_qua <= 4 then
			if not strEqpLvNames[v_lvId] or not strCardType[v_type] or not strColorName[v_qua] or not strEqpType[v_pos] then
				print(string.format("strEqpLvNames[%d]..strCardType[%d]..strColorName[%d]..strEqpType[%d]",v_lvId,v_type,v_qua,v_pos))
			end
			return strEqpLvNames[v_lvId]..strCardType[v_type]..strColorName[v_qua].."-"..strEqpType[v_pos]
		else
			return strEqpLvNames[v_lvId]..strCardType[v_type]..strSuitColorName[v_qua][v_pos].."-"..strEqpType[v_pos]
		end
	end

	v_tarSheet:init_data("id")
	for chaId,chaData in ipairs(v_chaData) do
		for lvId,lvData in ipairs(chaData) do
			local cauple = {"jlr","shl"}
			for loc,locData in ipairs(lvData.data) do
				for _type,typeStr in ipairs(cauple) do
					local the_eqp_data = locData[typeStr].eqp
					local id =1
					if v_idType == 1 then
						id = (((v_idOff+chaId) * 100 + lvId) * 10 + loc) *10 + _type - 1
					elseif v_idType == 2 then
						id = (((v_idOff+chaId*10) * 100 + lvId) * 10 + loc) *10 + _type - 1
					end
					for pos=1,8 do
						if the_eqp_data[pos].qua and the_eqp_data[pos].qua > 0 then
							local colName_id = string.format("equip[%d].id",pos)
							local colName_lv = string.format("equip[%d].lv",pos)
							local eqpName = fn_getEqpName(the_eqp_data[pos].lvId,_type,the_eqp_data[pos].qua,pos)
							v_tarSheet:set_val_by_pmid(tostring(id),colName_id,eqpName)
							v_tarSheet:set_val_by_pmid(tostring(id),colName_lv,math.floor(the_eqp_data[pos].lv))
						end
					end
				end
			end
		end
	end
end

local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("装备数值设计.xlsx")
	local ptChaEqp = {
		{lvId=0,qua=0,type = 9,lvsum = 9,baseLv = 0,lv = 0},--第1章
		{lvId=0,qua=0,type = 9,lvsum = 9,baseLv = 0,lv = 0},--第2章
		{lvId=1,qua=3,type = 12,lvsum = 12,baseLv = 0,lv = 20},--第3章
		{lvId=1,qua=4,type = 12,lvsum = 12,baseLv = 20,lv = 40},--第4章
		{lvId=2,qua=3,type = 15,lvsum = 15,baseLv = 40,lv = 50},--第5章
		{lvId=2,qua=4,type = 15,lvsum = 15,baseLv = 50,lv = 60},--第6章
		{lvId=3,qua=3,type = 15,lvsum = 15,baseLv = 60,lv = 70},--第7章
		{lvId=3,qua=4,type = 15,lvsum = 15,baseLv = 70,lv = 80},--第8章
		{lvId=4,qua=3,type = 15,lvsum = 15,baseLv = 80,lv = 90},--第9章
		{lvId=4,qua=4,type = 15,lvsum = 15,baseLv = 90,lv = 100},--第10章
		{lvId=5,qua=3,type = 15,lvsum = 15,baseLv = 100,lv = 110},--第11章
		{lvId=5,qua=4,type = 15,lvsum = 15,baseLv = 110,lv = 120},--第12章
		{lvId=6,qua=3,type = 15,lvsum = 15,baseLv = 120,lv = 130},--第13章
		{lvId=6,qua=4,type = 15,lvsum = 15,baseLv = 130,lv = 140},--第14章
		{lvId=6,qua=7,type = 15,lvsum = 15,baseLv = 140,lv = 150},--第15章
	}

	local knChaEqp = {
		{lvId=0,qua=0,type = 9,lvsum = 9,baseLv = 0,lv = 0},--第1章
		{lvId=1,qua=4,type = 9,lvsum = 9,baseLv = 0,lv = 10},--第2章
		{lvId=1,qua=20,type = 9,lvsum = 9,baseLv = 10,lv = 20},--第3章
		{lvId=2,qua=4,type = 9,lvsum = 9,baseLv = 20,lv = 40},--第4章
		{lvId=2,qua=40,type = 15,lvsum = 15,baseLv = 40,lv = 50},--第5章
		{lvId=3,qua=4,type = 15,lvsum = 15,baseLv = 50,lv = 60},--第6章
		{lvId=3,qua=60,type = 15,lvsum = 15,baseLv = 60,lv = 70},--第7章
		{lvId=4,qua=4,type = 15,lvsum = 15,baseLv = 70,lv = 80},--第8章
		{lvId=4,qua=7,type = 15,lvsum = 15,baseLv = 80,lv = 90},--第9章
		{lvId=5,qua=4,type = 15,lvsum = 15,baseLv = 90,lv = 100},--第10章
		{lvId=5,qua=7,type = 15,lvsum = 15,baseLv = 100,lv = 110},--第11章
		{lvId=6,qua=4,type = 15,lvsum = 15,baseLv = 110,lv = 120},--第12章
		{lvId=6,qua=5,type = 15,lvsum = 15,baseLv = 120,lv = 130},--第13章
		{lvId=6,qua=6,type = 15,lvsum = 15,baseLv = 130,lv = 140},--第14章
		{lvId=6,qua=7,type = 15,lvsum = 15,baseLv = 140,lv = 150},--第15章
	}

	local gjChaEqp = {
		{lvId=0,qua=0,type = "gj8",lvsum = 0,baseLv = 0,lv = 0},--第1章
		{lvId=0,qua=0,type = "gj8",lvsum = 8,baseLv = 0,lv = 0},--第2章
		{lvId=1,qua=3,type = "gj9",lvsum = 9,baseLv = 0,lv = 20},--第3章
		{lvId=1,qua=4,type = "gj9",lvsum = 9,baseLv = 20,lv = 40},--第4章
		{lvId=2,qua=3,type = "gj15",lvsum = 15,baseLv = 40,lv = 50},--第5章
		{lvId=2,qua=4,type = "gj15",lvsum = 15,baseLv = 50,lv = 60},--第6章
		{lvId=3,qua=3,type = "gj15",lvsum = 15,baseLv = 60,lv = 70},--第7章
		{lvId=3,qua=4,type = "gj15",lvsum = 15,baseLv = 70,lv = 80},--第8章
		{lvId=4,qua=3,type = "gj15",lvsum = 15,baseLv = 80,lv = 90},--第9章
		{lvId=4,qua=4,type = "gj15",lvsum = 15,baseLv = 90,lv = 100},--第10章
		{lvId=5,qua=3,type = "gj15",lvsum = 15,baseLv = 100,lv = 110},--第11章
		{lvId=5,qua=4,type = "gj15",lvsum = 15,baseLv = 110,lv = 120},--第12章
		{lvId=6,qua=3,type = "gj15",lvsum = 15,baseLv = 120,lv = 130},--第13章
		{lvId=6,qua=4,type = "gj15",lvsum = 15,baseLv = 130,lv = 140},--第14章
		{lvId=6,qua=7,type = "gj15",lvsum = 15,baseLv = 140,lv = 150},--第15章
	}

	local lhChaEqp = {
		[1] = {--风
			{lvId = 1, qua = 4, lvmin = 1, lvmax = 10, type = 10,lvsum = 10, baseLv = 0, lv = 20},--10层
			{lvId = 1, qua = 20, lvmin = 11, lvmax = 20, type = 10, lvsum = 10, baseLv = 20, lv = 40},--20层
			{lvId = 2, qua = 4, lvmin = 21, lvmax = 30, type = 10, lvsum = 10, baseLv = 40, lv = 50},--30层
			{lvId = 2, qua = 40, lvmin = 31, lvmax = 40, type = 10, lvsum = 10, baseLv = 50, lv = 60},--40层
			{lvId = 3, qua = 4, lvmin = 41, lvmax = 50, type = 10, lvsum = 10, baseLv = 60, lv = 70},--50层
			{lvId = 3, qua = 60, lvmin = 51, lvmax = 60, type = 10, lvsum = 10, baseLv = 70, lv = 80},--60层
			{lvId = 4, qua = 4, lvmin = 61, lvmax = 70, type = 10, lvsum = 10, baseLv = 80, lv = 85},--70层
			{lvId = 4, qua = 5, lvmin = 71, lvmax = 80, type = 10, lvsum = 10, baseLv = 85, lv = 90},--80层
			{lvId = 5, qua = 4, lvmin = 81, lvmax = 90, type = 10, lvsum = 10, baseLv = 90, lv = 95},--90层
			{lvId = 5, qua = 5, lvmin = 91, lvmax = 100, type = 10, lvsum = 10, baseLv = 95, lv = 100},--100层
		},
		[2] = {--花
			{lvId = 1, qua = 20, lvmin = 1, lvmax = 10, type = 10, lvsum = 10, baseLv = 20, lv = 30},--10层
			{lvId = 2, qua = 4, lvmin = 11, lvmax = 20, type = 10, lvsum = 10, baseLv = 30, lv = 50},--20层
			{lvId = 2, qua = 40, lvmin = 21, lvmax = 30, type = 10, lvsum = 10, baseLv = 50, lv = 60},--30层
			{lvId = 3, qua = 4, lvmin = 31, lvmax = 40, type = 10, lvsum = 10, baseLv = 60, lv = 70},--40层
			{lvId = 3, qua = 60, lvmin = 41, lvmax = 50, type = 10, lvsum = 10, baseLv = 70, lv = 80},--50层
			{lvId = 4, qua = 4, lvmin = 51, lvmax = 60, type = 10, lvsum = 10, baseLv = 80, lv = 90},--60层
			{lvId = 4, qua = 5, lvmin = 61, lvmax = 70, type = 10, lvsum = 10, baseLv = 90, lv = 95},--70层
			{lvId = 5, qua = 4, lvmin = 71, lvmax = 80, type = 10, lvsum = 10, baseLv = 95, lv = 100},--80层
			{lvId = 5, qua = 5, lvmin = 81, lvmax = 90, type = 10, lvsum = 10, baseLv = 100, lv = 110},--90层
			{lvId = 6, qua = 4, lvmin = 91, lvmax = 100, type = 10, lvsum = 10, baseLv = 110, lv = 120},--100层
		},
		[3] = {--雪
			{lvId = 2, qua = 3, lvmin = 1, lvmax = 10, type = 10, lvsum = 10, baseLv = 20, lv = 40},--10层
			{lvId = 2, qua = 40, lvmin = 11, lvmax = 20, type = 10, lvsum = 10, baseLv = 40, lv = 50},--20层
			{lvId = 3, qua = 4, lvmin = 21, lvmax = 30, type = 10, lvsum = 10, baseLv = 50, lv = 60},--30层
			{lvId = 3, qua = 40, lvmin = 31, lvmax = 40, type = 10, lvsum = 10, baseLv = 60, lv = 70},--40层
			{lvId = 4, qua = 4, lvmin = 41, lvmax = 50, type = 10, lvsum = 10, baseLv = 70, lv = 80},--50层
			{lvId = 4, qua = 60, lvmin = 51, lvmax = 60, type = 10, lvsum = 10, baseLv = 80, lv = 90},--60层
			{lvId = 5, qua = 4, lvmin = 61, lvmax = 70, type = 10, lvsum = 10, baseLv = 90, lv = 100},--70层
			{lvId = 5, qua = 5, lvmin = 71, lvmax = 80, type = 10, lvsum = 10, baseLv = 100, lv = 110},--80层
			{lvId = 6, qua = 4, lvmin = 81, lvmax = 90, type = 10, lvsum = 10, baseLv = 110, lv = 120},--90层
			{lvId = 6, qua = 5, lvmin = 91, lvmax = 100, type = 10, lvsum = 10, baseLv = 120, lv = 130},--100层
		},
		[4] = {--月
			{lvId = 2, qua = 4, lvmin = 1, lvmax = 10, type = 10, lvsum = 10, baseLv = 30, lv = 40},--10层
			{lvId = 2, qua = 40, lvmin = 11, lvmax = 20, type = 10, lvsum = 10, baseLv = 40, lv = 50},--20层
			{lvId = 3, qua = 4, lvmin = 21, lvmax = 30, type = 10, lvsum = 10, baseLv = 50, lv = 60},--30层
			{lvId = 3, qua = 40, lvmin = 31, lvmax = 40, type = 10, lvsum = 10, baseLv = 60, lv = 70},--40层
			{lvId = 4, qua = 4, lvmin = 41, lvmax = 50, type = 10, lvsum = 10, baseLv = 70, lv = 80},--50层
			{lvId = 4, qua = 60, lvmin = 51, lvmax = 60, type = 10, lvsum = 10, baseLv = 80, lv = 90},--60层
			{lvId = 5, qua = 4, lvmin = 61, lvmax = 70, type = 10, lvsum = 10, baseLv = 90, lv = 100},--70层
			{lvId = 5, qua = 7, lvmin = 71, lvmax = 80, type = 10, lvsum = 10, baseLv = 100, lv = 110},--80层
			{lvId = 6, qua = 4, lvmin = 81, lvmax = 90, type = 10, lvsum = 10, baseLv = 110, lv = 120},--90层
			{lvId = 6, qua = 7, lvmin = 91, lvmax = 100, type = 10, lvsum = 10, baseLv = 120, lv = 130},--100层
		}
	}

	local dropDsSheet = book:get_sheet("卡牌组")
	local dropDstwSheet = book:get_sheet("芦花卡牌组")
	local dropGjSheet = book:get_sheet("挂机卡牌组")
	local eqp_designpt_data = cal_eqp_design(ptChaEqp)
	local eqp_designkn_data = cal_eqp_design(knChaEqp)
	local eqp_designtw_data = cal_eqp_tw_design(lhChaEqp)
	local eqp_designgj_data = cal_eqp_design(gjChaEqp)
	--opt_eqp_ds(eqp_designpt_data,dropDsSheet,100)
	--opt_eqp_ds(eqp_designkn_data,dropDsSheet,200)
	--opt_eqp_ds(eqp_designtw_data,dropDstwSheet,400,2)
	opt_eqp_ds(eqp_designgj_data,dropGjSheet,300)
	book:save(MyTools.OutputExcelPath.."EquipDs.xlsx")
end

return fn_output_excel