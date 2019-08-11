local _create_lveqp_data = function()
	local level_eqp_data = {}
	level_eqp_data.data = {}
	level_eqp_data.step = 0
	for loc=1,3 do
		level_eqp_data.data[loc] = {}
		level_eqp_data.data[loc].jlr = {}
		level_eqp_data.data[loc].shl = {}
		level_eqp_data.data[loc].jlr.eqp = {}
		level_eqp_data.data[loc].shl.eqp = {}
		local cauple = {"jlr","shl"}
		for pos=1,8 do
			level_eqp_data.data[loc].jlr.eqp[pos] = {}
			level_eqp_data.data[loc].jlr.eqp[pos].id = nil
			level_eqp_data.data[loc].jlr.eqp[pos].qua = nil
			level_eqp_data.data[loc].jlr.eqp[pos].lv = nil
		end
	end
end

local step_bhvs = {}
local step_bhvs[15] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"}},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"}},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl"}},
	[4] = {poses = {2},locs = {1,2,3},fields={"jlr"}},
	[5] = {poses = {3},locs = {1,2,3},fields={"shl"}},
	[6] = {poses = {3},locs = {1,2,3},fields={"jlr"}},
	[7] = {poses = {4},locs = {1,2,3},fields={"shl"}},
	[8] = {poses = {4},locs = {1,2,3},fields={"jlr"}},
	[9] = {poses = {5},locs = {1,2,3},fields={"shl"}},
	[10] = {poses = {5},locs = {1,2,3},fields={"jlr"}},
	[11] = {poses = {6},locs = {1,2,3},fields={"shl"}},
	[12] = {poses = {6},locs = {1,2,3},fields={"jlr"}},
	[13] = {poses = {7},locs = {1,2,3},fields={"shl"}},
	[14] = {poses = {7},locs = {1,2,3},fields={"jlr"}},
	[15] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"}}
}

local step_bhvs[9] = {
	[1] = {poses = {1},locs = {1,2,3},fields={"shl"}},
	[2] = {poses = {1},locs = {1,2,3},fields={"jlr"}},
	[3] = {poses = {2},locs = {1,2,3},fields={"shl","jlr"}},
	[4] = {poses = {3},locs = {1,2,3},fields={"shl","jlr"}},
	[5] = {poses = {4},locs = {1,2,3},fields={"shl","jlr"}},
	[6] = {poses = {5},locs = {1,2,3},fields={"shl","jlr"}},
	[7] = {poses = {6},locs = {1,2,3},fields={"shl","jlr"}},
	[8] = {poses = {7},locs = {1,2,3},fields={"shl","jlr"}},
	[9] = {poses = {8},locs = {1,2,3},fields={"shl","jlr"}},
}


local _step_lveqp_data = function(v_tPre,v_tGoStep,v_cfg)
	local cur_lveqp_data = table.clone(v_tPre)
	local curStep = v_tPre.step
	for i=1,v_tGoStep do
		curStep = curStep + 1
		local stepCfgData = step_bhvs[v_cfg.lvsum][curStep]
		local poses = stepCfgData.poses
		local locs = stepCfgData.locs
		local fields = stepCfgData.fields
		for _1,loc in ipairs(locs) do
			for _2,field in ipairs(fields) do
				for _3,pos in ipairs(poses) do
					cur_lveqp_data[loc][field][pos].id = v_cfg.lvId
					cur_lveqp_data[loc][field][pos].qua = v_cfg.qua
				end
			end
		end
	end
end


local cal_eqp_design = function()
	local ptChaEqp = {
		{lvId=0,qua=0,lvsum = 9},--第1章
		{lvId=0,qua=0,lvsum = 9},--第2章
		{lvId=1,qua=3,lvsum = 9},--第3章
		{lvId=1,qua=4,lvsum = 9},--第4章
		{lvId=2,qua=3,lvsum = 15},--第5章
		{lvId=2,qua=4,lvsum = 15},--第6章
		{lvId=3,qua=3,lvsum = 15},--第7章
		{lvId=3,qua=4,lvsum = 15},--第8章
		{lvId=4,qua=3,lvsum = 15},--第9章
		{lvId=4,qua=4,lvsum = 15},--第10章
		{lvId=5,qua=3,lvsum = 15},--第11章
		{lvId=5,qua=4,lvsum = 15},--第12章
		{lvId=6,qua=3,lvsum = 15},--第13章
		{lvId=6,qua=4,lvsum = 15},--第14章
		{lvId=6,qua=5,lvsum = 15},--第15章
	}

	local eqpType = {"武器","头盔","肩甲","衣服","鞋子","护手","项链","戒指"}
	local colorName = {"绿色","蓝色","紫色","橙色"}
	local q5ColorName = {"橙色套3","橙色套2","橙色套2","橙色套2","橙色套2","橙色套2","橙色套3","橙色套3"}
	local q6ColorName = {"橙色套2","橙色套3","橙色套3","橙色套3","橙色套3","橙色套3","橙色套2","橙色套2"}
	local q7ColorName = {"橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套1","橙色套1"}

	local chaData = {}

	local the_level_data = _create_lveqp_data()

	for chaLoc,chaCfgData in ipairs(ptChaEqp) do
		for lvId=1,chaCfgData.lvsum do
		end



		local the_lv_data =  _step_lveqp_data(the_level_data,)
	end



end










local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("装备数值设计.xlsx")
	local dropDsSheet = book:get_sheet("卡牌组")




	book:save(MyTools.OutputExcelPath.."EquipDs.xlsx")
end