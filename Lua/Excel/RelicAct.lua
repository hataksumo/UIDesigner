local fn_iniStep = function()
	local iniStep = {}
	iniStep.bs = 0
	iniStep.addBs = 0
	iniStep.lvs = {}
	iniStep.minLv = {}
	iniStep.cost = 0
	for i=1,42 do
		iniStep.lvs[i] = 0
	end
	for i=1,7 do
		iniStep.minLv[i] = 0
	end
	return iniStep
end

local fn_copyStep = function(v_step)
	local iniStep = {}
	iniStep.bs = v_step.bs
	iniStep.lvs = {}
	iniStep.minLv = {}
	iniStep.cost = v_step.cost
	for i=1,42 do
		iniStep.lvs[i] = v_step.lvs[i]
	end
	for i=1,7 do
		iniStep.minLv[i] = v_step.minLv[i]
	end
	return iniStep
end


local locs = {
	[1] = {1,2,3},
	[2] = {4,5,6,7,8},
	[3] = {9,10,11,12,13,14},
	[4] = {15,16,17,18,19,20},
	[5] = {21,22,23,24,25,26},
	[6] = {27,28,29,30,31,32,33,34},
	[7] = {35,36,37,38,39,40,41,42}
}

local constraints = {
	[1] = {0,0,0,0,0,0,0},
	[2] = {3,0,0,0,0,0,0},
	[3] = {4,3,0,0,0,0,0},
	[4] = {4,3,0,0,0,0,0},
	[5] = {4,3,0,0,0,0,0},
	[6] = {6,6,3,3,3,0,0},
	[7] = {6,6,3,3,3,1,0},
}

local locDesc = {"1-1","1-2","1-3","2-1","2-2","2-3","2-4","2-5","3-1","3-2","3-3","3-4","3-5","3-6","4-1","4-2","4-3","4-4","4-5","4-6",
"5-1","5-2","5-3","5-4","5-5","5-6","6-1","6-2","6-3","6-4","6-5","6-6","6-7","6-8","7-1","7-2","7-3","7-4","7-5","7-6","7-7","7-8"}

local fn_cal_minLv = function(v_setp)
	for _i,arrLoc in ipairs(locs) do
		local minLv = 40
		for _j,loc in ipairs(arrLoc) do
			local lv = v_setp.lvs[loc]





			if lv < minLv then
				minLv = lv
			end
		end
		v_setp.minLv[_i] = minLv
	end
end

local fn_test_avalible = function(v_setp,v_iBody)
	local the_con = constraints[v_iBody]
	for _i,iMinLv in ipairs(the_con) do
		if v_setp.minLv[_i] < iMinLv then
			return false
		end
	end
	return true
end

local fn_cal_Relic = function()
	local cfg_relic_body = dofile"Config/relic_body"
	local cfg_relic_module = dofile"Config/relic_module"
	local step_modules = {}
	step_modules[0] = fn_iniStep()
	for setp=1,834 do
		local optional = fn_copyStep(step_modules[setp-1])
		local maxBsDp = 0
		local maxLoc = 0
		local maxCost = 0

		for body = 1,7 do
			if fn_test_avalible(optional,body) then
				local cfg_body = cfg_relic_body[body]
				local components = cfg_body.Components
				for _i=1,#components do
					local the_loc = locs[body][_i]
					local cfg_module =  cfg_relic_module[components[_i]]
					if not cfg_module then
						print("can't find the componenet "..components[_i])
					end
					local orgLv = optional.lvs[the_loc]
					local newLv = optional.lvs[the_loc] + 1
					if newLv <= #cfg_module.Lvs then
						local dbs = cfg_module.Lvs[newLv].Bs
						if orgLv > 0 then
							dbs = dbs - cfg_module.Lvs[orgLv].Bs
						end
						local cost = cfg_module.Price * cfg_module.Lvs[newLv].Cost[1].num
						local curBsDp = dbs / cost
						if curBsDp > maxBsDp then
							maxBsDp = curBsDp
							maxLoc = the_loc
							maxCost = cost
						end
					end	
				end
			end
		end
		optional.lvs[maxLoc] = optional.lvs[maxLoc] + 1
		optional.cost = optional.cost + maxCost
		fn_cal_minLv(optional)
		optional.act = string.format("upgrade %s",locDesc[maxLoc])
		table.insert(step_modules,optional)
	end
	return step_modules
end


local fn_opt_excel = function()
	local steps = fn_cal_Relic()
	local book = ExcelBookObject.New()
	book:open("神器计算.xlsx")
	local sheet = book:get_sheet("神器节奏")
	local row = 3
	for _step,data in ipairs(steps) do
		sheet:set_vali("Times",row,_step)
		sheet:set_vali("Cost",row,data.cost)
		sheet:set_vals("Act",row,data.act)
		for iBody,arrBody in ipairs(locs) do
			local minLv = 40
			for ii,iLoc in ipairs(arrBody) do
				local the_lv = data.lvs[iLoc]
				if the_lv < minLv then
					minLv = the_lv
				end
				sheet:set_vali(string.format("relic[%d].md[%d].lv",iBody,ii),row,the_lv)
			end
			sheet:set_vali(string.format("relic[%d].lv",iBody),row,minLv)
		end
		row = row + 1
	end
	book:save(MyTools.OutputExcelPath.."relicDs.xlsx")

end
return fn_opt_excel