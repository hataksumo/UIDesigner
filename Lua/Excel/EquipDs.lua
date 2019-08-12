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


local _step_lveqp_data = function(v_tPre,v_cfg,v_step)
	local cur_lveqp_data = table.clone(v_tPre)
	--local curStep = v_tPre.step
	--curStep = curStep + 1
	local stepCfgData = step_bhvs[v_cfg.lvsum][v_step]
	if not stepCfgData then
		print(string.format("step_bhvs[%d][%d] = nil",v_cfg.lvsum,v_step))
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



local opt_eqp_ds = function(v_chaData,v_tarSheet,v_idOff)
	local strEqpType = {"武器","头盔","肩甲","衣服","鞋子","护手","项链","戒指"}
	local strColorName = {"绿色","蓝色","紫色","橙色"}
	local strCardType = {"寄灵人","守护灵"}
	local strQ5ColorName = {"橙色套3","橙色套2","橙色套2","橙色套2","橙色套2","橙色套2","橙色套3","橙色套3"}
	local strQ6ColorName = {"橙色套2","橙色套3","橙色套3","橙色套3","橙色套3","橙色套3","橙色套2","橙色套2"}
	local strQ7ColorName = {"橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套1","橙色套1"}
	local str20QColorName = {"橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1","橙色套1"}
	local str40QColorName = {"橙色套1","橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套2"}
	local strSuitColorName = {[5] = strQ5ColorName,[6] = strQ6ColorName,[7] = strQ7ColorName,[20] = str20QColorName,[40] = str40QColorName}
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
					local id = (((v_idOff+chaId) * 100 + lvId) * 10 + loc) *10 + _type - 1
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
		{lvId=0,qua=0,lvsum = 9,baseLv = 0,lv = 0},--第1章
		{lvId=0,qua=0,lvsum = 9,baseLv = 0,lv = 0},--第2章
		{lvId=1,qua=3,lvsum = 12,baseLv = 0,lv = 20},--第3章
		{lvId=1,qua=4,lvsum = 12,baseLv = 20,lv = 40},--第4章
		{lvId=2,qua=3,lvsum = 15,baseLv = 40,lv = 50},--第5章
		{lvId=2,qua=4,lvsum = 15,baseLv = 50,lv = 60},--第6章
		{lvId=3,qua=3,lvsum = 15,baseLv = 60,lv = 70},--第7章
		{lvId=3,qua=4,lvsum = 15,baseLv = 70,lv = 80},--第8章
		{lvId=4,qua=3,lvsum = 15,baseLv = 80,lv = 90},--第9章
		{lvId=4,qua=4,lvsum = 15,baseLv = 90,lv = 100},--第10章
		{lvId=5,qua=3,lvsum = 15,baseLv = 100,lv = 110},--第11章
		{lvId=5,qua=4,lvsum = 15,baseLv = 110,lv = 120},--第12章
		{lvId=6,qua=3,lvsum = 15,baseLv = 120,lv = 130},--第13章
		{lvId=6,qua=4,lvsum = 15,baseLv = 130,lv = 140},--第14章
		{lvId=6,qua=7,lvsum = 15,baseLv = 140,lv = 150},--第15章
	}

	local knChaEqp = {
		{lvId=0,qua=0,lvsum = 9,baseLv = 0,lv = 0},--第1章
		{lvId=1,qua=4,lvsum = 9,baseLv = 0,lv = 10},--第2章
		{lvId=1,qua=20,lvsum = 9,baseLv = 10,lv = 20},--第3章
		{lvId=2,qua=4,lvsum = 9,baseLv = 20,lv = 40},--第4章
		{lvId=2,qua=40,lvsum = 15,baseLv = 40,lv = 50},--第5章
		{lvId=3,qua=4,lvsum = 15,baseLv = 50,lv = 60},--第6章
		{lvId=3,qua=7,lvsum = 15,baseLv = 60,lv = 70},--第7章
		{lvId=4,qua=4,lvsum = 15,baseLv = 70,lv = 80},--第8章
		{lvId=4,qua=7,lvsum = 15,baseLv = 80,lv = 90},--第9章
		{lvId=5,qua=4,lvsum = 15,baseLv = 90,lv = 100},--第10章
		{lvId=5,qua=7,lvsum = 15,baseLv = 100,lv = 110},--第11章
		{lvId=6,qua=4,lvsum = 15,baseLv = 110,lv = 120},--第12章
		{lvId=6,qua=5,lvsum = 15,baseLv = 120,lv = 130},--第13章
		{lvId=6,qua=6,lvsum = 15,baseLv = 130,lv = 140},--第14章
		{lvId=6,qua=7,lvsum = 15,baseLv = 140,lv = 150},--第15章
	}

	local dropDsSheet = book:get_sheet("卡牌组")
	local eqp_designpt_data = cal_eqp_design(ptChaEqp)
	local eqp_designkn_data = cal_eqp_design(knChaEqp)
	opt_eqp_ds(eqp_designpt_data,dropDsSheet,100)
	opt_eqp_ds(eqp_designkn_data,dropDsSheet,200)
	book:save(MyTools.OutputExcelPath.."EquipDs.xlsx")
end

return fn_output_excel