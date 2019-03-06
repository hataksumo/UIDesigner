local function output_pos( v_sheet,v_row, v_arr, v_strHeader)
	for _i = 0,v_arr.Length-1  do
		local header = string.format("%s[%d]",v_strHeader,_i+1)
		local val = v_arr:GetValue(_i)
		v_sheet:set_val(header,v_row + 2,val)
	end
end

local function output_pos2( v_sheet,v_row, v_cell,v_strHeader)
	local arrPos = MyTools.Split(v_cell,',')
	for i=0,arrPos.Length-1 do
		--print("i = "..i,arrPos:GetValue(i))
		local val = arrPos:GetValue(i)
		local arrPlayer =  MyTools.Split( val,'|')
		local len = arrPlayer.Length
		--print("arrPlayer.Length = "..len)
		for j=0,len-1 do
			--print("j = "..j,arrPlayer:GetValue(j))
			local xyz = MyTools.Split(arrPlayer:GetValue(j) ,'#')
			for k=0,xyz.Length-1 do
				local headerName = string.format("%s[%d][%d][%d]",v_strHeader,i+1,j+1,k+1)
				--print(headerName)
				v_sheet:set_val(headerName,v_row+2,xyz:GetValue(k))
			end
		end
	end



end


local function output_header(v_sheet)
	local cameraPos = {"cameraPos","CameraEuler"}
	local concernHeader = {"battleGroupMinePos","battleGroupEnemyPos","battleGroupMineEuler","battleGroupEnemyEuler"}
	local cameraPosCn = {"相机位置","相机旋转"}
	local concernHeaderCn = {"我方位置","敌方位置","我方旋转","敌方旋转"}
	local playerTypes = {"寄灵人","守护灵"}
	local posDesc = {"x","y","z"}

	local col = 0

	v_sheet:set_val_by_point(0,col,"Id")
	v_sheet:set_val_by_point(1,col,"int:<")
	v_sheet:set_val_by_point(2,col,"ID")
	col = col + 1

	for _i,val in ipairs(cameraPos) do
		for i=1,3 do
			v_sheet:set_val_by_point(0,col,string.format("%s[%d]",val,i))
			v_sheet:set_val_by_point(1,col,"float:<")
			v_sheet:set_val_by_point(2,col,string.format("%s.%s",cameraPosCn[_i],posDesc[i]))
			col = col + 1
		end
	end

	for _i,val in ipairs(concernHeader) do
		for pos=1,3 do
			for playerType=1,2 do
				for i=1,3 do
					v_sheet:set_val_by_point(0,col,string.format("%s[%d][%d][%d]",val,pos,playerType,i))
					v_sheet:set_val_by_point(1,col,"float:<")
					v_sheet:set_val_by_point(2,col,string.format("%s.pos[%d].%s.%s",concernHeaderCn[_i],pos,playerTypes[playerType],posDesc[i]))
					col = col + 1
				end
			end
		end
	end

end




local output_1 = function()
	local book = ExcelBookObject.New()
	local excel_path = "测试表.xlsx"--excel表的全路径
	book:open(excel_path)
	local battleSheet = book:get_sheet("战场表")
	local orgDataSheet = book:get_sheet("原先数据")

	for row=1,4 do
		local cameraPos = orgDataSheet:get_val(row,"cameraPos")
		local CameraEuler = orgDataSheet:get_val(row,"CameraEuler")
		local battleGroupMinePos = orgDataSheet:get_val(row,"battleGroupMinePos")
		local battleGroupEnemyPos = orgDataSheet:get_val(row,"battleGroupEnemyPos")
		local battleGroupMineEuler = orgDataSheet:get_val(row,"battleGroupMineEuler")
		local battleGroupEnemyEuler = orgDataSheet:get_val(row,"battleGroupEnemyEuler")

		local cameraPos_arr = MyTools.Split(cameraPos,'#')
		output_pos(battleSheet,row,cameraPos_arr,"cameraPos")

		local cameraEuler_arr = MyTools.Split(CameraEuler,'#')
		output_pos(battleSheet,row,cameraEuler_arr,"CameraEuler")

		output_pos2(battleSheet,row,battleGroupMinePos,"battleGroupMinePos")
		output_pos2(battleSheet,row,battleGroupEnemyPos,"battleGroupEnemyPos")
		output_pos2(battleSheet,row,battleGroupMineEuler,"battleGroupMineEuler")
		output_pos2(battleSheet,row,battleGroupEnemyEuler,"battleGroupEnemyEuler")
	end

	--output_header(newBattleSheet)
	book:save(MyTools.ExcelPath.. "battle_opt.xlsx")
end


local output = function()
	local book = ExcelBookObject.New()
	local excel_path = "battle.战场配置.xlsx"--excel表的全路径
	book:open(excel_path)
	local brSheet = book:get_sheet("战场角色")
	local skillInfoSheet = book:get_sheet("skillInfo")
	local skillinfoRow = 3
	for row=3,10000 do
		local id = brSheet:get_vali(row,"ID")
		if id > 0 then
			local skillInfo = brSheet:get_vals(row,"skillInfo")
			local arr_skillInfo = MyTools.Split(skillInfo,'|')
			for i=0,arr_skillInfo.Length-1 do
				local data = arr_skillInfo:GetValue(i)
				skillInfoSheet:set_vali("ID",skillinfoRow,id)
				skillInfoSheet:set_vals("HelpCol",skillinfoRow,"skillInfo")

				local keyVal = MyTools.Split(data,'#')
				skillInfoSheet:set_vals("key",skillinfoRow,keyVal:GetValue(0))
				skillInfoSheet:set_vals("val",skillinfoRow,keyVal:GetValue(1))
				skillinfoRow = skillinfoRow + 1
			end
		else
			break
		end
	end
	book:save(MyTools.ExcelPath.. "battle.战场配置.xlsx")
end

return output