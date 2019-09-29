local fn_output_drop = function(v_dropDsSheet,v_dropGroupSheet,v_dropSheet,v_exploreSheet)
	local exploreDropDs = dofile"Config//exploreDropDs"
	local exploreDs = dofile"Config//exploreDs"
	local cfg_item = dofile"Config//item"
	local cfg_eqpChaDrop = dofile "Config//equipDropCha"
	local groupId = 6000
	local dropId = 1
	local groupRowBg = 3
	local dropRow = 3

	for i,rowData in ipairs(exploreDs) do
		--必然掉落组，金币，守护灵经验
		--group
		groupId = groupId+1
		v_dropGroupSheet:set_vali("ID",groupRowBg,groupId)
		v_dropGroupSheet:set_vali("GroupType",groupRowBg,3)
		local groupNote = string.format("挂机塔%d-%d:1分钟掉落",rowData.Cha,rowData.Lv)
		v_dropGroupSheet:set_vals("#note",groupRowBg,groupNote)
		v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
		groupRowBg = groupRowBg + 1
		--drop
		for j,awardNum in ipairs(rowData.Award1) do
			v_dropSheet:set_vali("ID",dropRow,dropId)
			v_dropSheet:set_vali("GroupId",dropRow,groupId)
			local item_id = exploreDropDs[1][j]
			v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%d",groupNote,cfg_item[item_id].Name,awardNum))
			v_dropSheet:set_vali("Item.id",dropRow,item_id)
			v_dropSheet:set_vali("Item.numMin",dropRow,awardNum)
			v_dropSheet:set_vali("Item.numMax",dropRow,awardNum)
			v_dropSheet:set_vali("Weight",dropRow,10000)
			dropRow = dropRow + 1
		end
		--6分钟掉掉落，基础材料
		groupId = groupId+1
		v_dropGroupSheet:set_vali("ID",groupRowBg,groupId)
		v_dropGroupSheet:set_vali("GroupType",groupRowBg,3)
		groupNote = string.format("挂机塔%d-%d:6分钟掉落",rowData.Cha,rowData.Lv)
		v_dropGroupSheet:set_vals("#note",groupRowBg,groupNote)
		v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
		groupRowBg = groupRowBg + 1
		local empty = true
		for j,awardNum in ipairs(rowData.Award6) do
			if awardNum > 0 then
				v_dropSheet:set_vali("ID",dropRow,dropId)
				v_dropSheet:set_vali("GroupId",dropRow,groupId)
				local item_id = exploreDropDs[6][j]
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%.2f%%",groupNote,cfg_item[item_id].Name,awardNum * 100))
				v_dropSheet:set_vali("Item.id",dropRow,item_id)
				v_dropSheet:set_vali("Item.numMin",dropRow,1)
				v_dropSheet:set_vali("Item.numMax",dropRow,1)
				v_dropSheet:set_vali("Weight",dropRow,math.floor(10000 * awardNum))
				dropRow = dropRow + 1
				empty  = false
			end
		end
		if empty then
			groupRowBg = groupRowBg - 1
			groupId = groupId -1
			rowData.Award6.empty = true
		end
		--20分钟掉落
		groupId = groupId+1
		v_dropGroupSheet:set_vali("ID",groupRowBg,groupId)
		v_dropGroupSheet:set_vali("GroupType",groupRowBg,3)
		groupNote = string.format("挂机塔%d-%d:20分钟掉落",rowData.Cha,rowData.Lv)
		v_dropGroupSheet:set_vals("#note",groupRowBg,groupNote)
		v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
		groupRowBg = groupRowBg + 1
		empty = true
		for j,awardNum in ipairs(rowData.Award20) do
			if awardNum > 0 then
				v_dropSheet:set_vali("ID",dropRow,dropId)
				v_dropSheet:set_vali("GroupId",dropRow,groupId)
				local item_id = exploreDropDs[20][j]
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%.2f%%",groupNote,cfg_item[item_id].Name,awardNum * 100))
				v_dropSheet:set_vali("Item.id",dropRow,item_id)
				v_dropSheet:set_vali("Item.numMin",dropRow,1)
				v_dropSheet:set_vali("Item.numMax",dropRow,1)
				v_dropSheet:set_vali("Weight",dropRow, math.floor(10000 * awardNum))
				dropRow = dropRow + 1
				empty = false
			end
		end
		if empty then
			groupRowBg = groupRowBg - 1
			groupId = groupId -1
			rowData.Award20.empty = true
		end

		--60分钟掉落
		groupId = groupId+1
		v_dropGroupSheet:set_vali("ID",groupRowBg,groupId)
		v_dropGroupSheet:set_vali("GroupType",groupRowBg,3)
		groupNote = string.format("挂机塔%d-%d:60分钟掉落",rowData.Cha,rowData.Lv)
		v_dropGroupSheet:set_vals("#note",groupRowBg,groupNote)
		v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
		groupRowBg = groupRowBg + 1
		empty = true
		for j,awardNum in ipairs(rowData.Award60) do
			if awardNum > 0 then
				v_dropSheet:set_vali("ID",dropRow,dropId)
				v_dropSheet:set_vali("GroupId",dropRow,groupId)
				local item_id = exploreDropDs[60][j]
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%.2f%%",groupNote,cfg_item[item_id].Name,awardNum * 100))
				v_dropSheet:set_vali("Item.id",dropRow,item_id)
				v_dropSheet:set_vali("Item.numMin",dropRow,1)
				v_dropSheet:set_vali("Item.numMax",dropRow,1)
				v_dropSheet:set_vali("Weight",dropRow, math.floor(10000 * awardNum))
				dropRow = dropRow + 1
				empty = false
			end
		end
		if empty then
			groupRowBg = groupRowBg - 1
			groupId = groupId -1
			rowData.Award60.empty = true
		end

	end

	--挂机派遣表
	local exploreRow = 3
	for i,rowData in ipairs(exploreDs) do
		lvId = (300 + rowData.Cha) * 100 + rowData.Lv
		v_exploreSheet:set_vali("Id",exploreRow,lvId)
		v_exploreSheet:set_vali("ChaId",exploreRow,rowData.Cha)
		v_exploreSheet:set_vals("HelpCol",exploreRow,"Lvs")
		v_exploreSheet:set_vali("Loc",exploreRow,rowData.Lv)
		v_exploreSheet:set_vals("Name",exploreRow,string.format("挂机塔%d-%d",rowData.Cha,rowData.Lv))
		v_exploreSheet:set_vali("Difficult",exploreRow,1)
		v_exploreSheet:set_vals("NeedPlotLevel",exploreRow,string.format("%d章第%d关",rowData.Cha,rowData.Lv))
		v_exploreSheet:set_vali("LimitMemberNum",exploreRow,4)
		v_exploreSheet:set_vals("Drop1.Id",exploreRow,string.format("挂机塔%d-%d:1分钟掉落",rowData.Cha,rowData.Lv))
		v_exploreSheet:set_vali("Drop1.Inteval",exploreRow,1)
		if not rowData.Award6.empty then
			v_exploreSheet:set_vals("RandomDrop1.Id",exploreRow,string.format("挂机塔%d-%d:6分钟掉落",rowData.Cha,rowData.Lv))
			v_exploreSheet:set_vali("RandomDrop1.Inteval",exploreRow,6)
		end
		if not rowData.Award20.empty then
			v_exploreSheet:set_vals("RandomDrop2.Id",exploreRow,string.format("挂机塔%d-%d:20分钟掉落",rowData.Cha,rowData.Lv))
			v_exploreSheet:set_vali("RandomDrop2.Inteval",exploreRow,20)
		end
		if not rowData.Award60.empty then
			v_exploreSheet:set_vals("RandomDrop3.Id",exploreRow,string.format("挂机塔%d-%d:60分钟掉落",rowData.Cha,rowData.Lv))
			v_exploreSheet:set_vali("RandomDrop3.Inteval",exploreRow,20)
		end


		local awarsShows = {}
		local Intevals = {1,6,20,60}
		local awardType = {"Award1","Award6","Award20","Award60"}
		local showIdx = 1
		for j,theType in ipairs(awardType) do
			if j== 2 then
				showIdx = 1
			end
			for k,num in ipairs(rowData[theType]) do
				if num > 0 then
					local item_id = exploreDropDs[Intevals[j]][k]
					local name = cfg_item[item_id].note
					local idVar = string.format("DropShow[%d].Id",showIdx)
					local descVar = string.format("DropShow[%d].Desc",showIdx)
					if j > 1 then
						idVar = string.format("RandomShow[%d].Id",showIdx)
						descVar = string.format("RandomShow[%d].Desc",showIdx)
					end
					--print(string.format("row = %d, name = %s",exploreRow,name))


					v_exploreSheet:set_vals(idVar,exploreRow,name)
					local output = tostring(MyTools.Round(num * 60 / Intevals[j],2)).."/h"
					v_exploreSheet:set_vals(descVar,exploreRow,output)
					showIdx = showIdx + 1
				end
			end
		end
		--[[local dropEqpNames = {"20级守护灵橙色-武器","40级守护灵橙色-武器","60级守护灵橙色-武器","80级守护灵橙色-武器","100级守护灵橙色-武器","120级守护灵橙色-武器"}			
		if cfg_eqpChaDrop[rowData.Cha] then
			for eqpLvId,prob in ipairs(cfg_eqpChaDrop[rowData.Cha].Equip) do
				if prob > 0 then
					local idVar = string.format("DropShow[%d].Id",showIdx)
					local descVar = string.format("DropShow[%d].Desc",showIdx)
					v_exploreSheet:set_vals(idVar,exploreRow,dropEqpNames[eqpLvId])
					v_exploreSheet:set_vals(descVar,exploreRow,math.floor(prob * 6+0.5,0).."/h")
					showIdx = showIdx + 1
				end
			end
		end]]
		exploreRow = exploreRow + 1
	end
	return groupRowBg,dropRow
end

local fn_output_eqp_drop = function(v_dropGroupSheet,v_dropSheet,v_groupRowBg,v_dropRow)
	local cfg_drop_cha = dofile "Config\\equipDropCha"
	local cfg_equip_drop = dofile "Config\\equipDrop"
	local cfg_equip_group = dofile "Config\\equipGroupDs"
	local cfg_item = dofile "Config\\item"
	local cfg_eqp = dofile "Config\\eqp"
	local drops = {}
	drops[1] = {}
	drops[2] = {}
	local fields = {"DropQua","ForgeQua"}

	for drop_type = 1,2 do
		for chaId=1,#cfg_drop_cha[drop_type] do			
			drops[drop_type][chaId] = {}
			if drop_type == 1 then
				drops[drop_type][chaId].eqps = {}
				drops[drop_type][chaId].sum = 0
			elseif drop_type == 2 then
				for pos=1,8 do
					drops[drop_type][chaId][pos] = {}
					drops[drop_type][chaId][pos].eqps = {}
					drops[drop_type][chaId][pos].sum = 0
				end
			end
			--print(string.format("drops[%d][%d].New()",_type,chaId))
			local the_cha = cfg_drop_cha[drop_type][chaId]
			for LvId=1,#(the_cha.Equip) do
				local prob = the_cha.Equip[LvId]
				if prob > 0 then
					for qua = 1,5 do
						local quaDrop = cfg_equip_drop[LvId][fields[drop_type]][qua]
						--把所有该等级段LvId和品质qua的装备加入组
						local the_eqps = cfg_equip_group[LvId][qua]
						if the_eqps and quaDrop > 0 then
							for _i,the_suit in ipairs(the_eqps) do
								for _loc,data in ipairs(the_suit) do
									local the_weight = prob * quaDrop
									if the_weight > 0 then
										if drop_type==1 then
											table.insert(drops[drop_type][chaId].eqps,{id = data.Id,weight = the_weight})
											drops[drop_type][chaId].sum = drops[drop_type][chaId].sum + the_weight
										elseif drop_type==2 then --and data.Rare ~= true
											local the_eqp = cfg_eqp[data.Id]
											--local eqpName = cfg_item[data.Id].Name
											--print(string.format("%d级-pos%d-qua%d-锻造-%s",chaId * 10,_loc,qua,eqpName))
											table.insert(drops[drop_type][chaId][the_eqp.Pos].eqps,{id = data.Id,weight = the_weight})
											drops[drop_type][chaId][the_eqp.Pos].sum = drops[drop_type][chaId][the_eqp.Pos].sum + the_weight
										end
									end
								end
							end
						end
					end
				end
			end

			if drop_type == 1 then
				local weight = drops[drop_type][chaId].sum
				drops[drop_type][chaId].sum = 10000
				local weight1 = 10000
				for i=1,#drops[drop_type][chaId].eqps do
					if i > 1 then
						drops[drop_type][chaId].eqps[i].weight = math.floor(drops[drop_type][chaId].eqps[i].weight / weight * 10000,0)
						weight1 = weight1 - drops[drop_type][chaId].eqps[i].weight
					end
				end
				if #drops[drop_type][chaId].eqps > 0 then
					drops[drop_type][chaId].eqps[1].weight = weight1
				end
			elseif drop_type == 2 then
				for loc = 1,8 do
					local weight = drops[drop_type][chaId][loc].sum
					drops[drop_type][chaId].sum = 10000
					local weight1 = 10000
					for i=1,#drops[drop_type][chaId][loc].eqps do
						if i > 1 then
							drops[drop_type][chaId][loc].eqps[i].weight = math.floor(drops[drop_type][chaId][loc].eqps[i].weight / weight * 10000,0)
							weight1 = weight1 - drops[drop_type][chaId][loc].eqps[i].weight
						end
					end
					if #drops[drop_type][chaId][loc].eqps > 0 then
						drops[drop_type][chaId][loc].eqps[1].weight = weight1
					end
				end
			end
		end
	end

	local groupRowBg = v_groupRowBg
	dropRow = v_dropRow

	--处理掉落
	for chaId,dropSet in ipairs(drops[1]) do
		v_dropGroupSheet:set_vals("#note",groupRowBg,string.format("%s装备掉落",cfg_drop_cha[1][chaId].note))
		v_dropGroupSheet:set_vali("ID",groupRowBg,8000+chaId)
		v_dropGroupSheet:set_vali("GroupType",groupRowBg,2)
		v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
		groupRowBg = groupRowBg + 1
	end

	for chaId,dropSet in ipairs(drops[1]) do
		for _loc,data in ipairs(dropSet.eqps) do
			v_dropSheet:set_vali("GroupId",dropRow,8000+chaId)
			local eqpName = cfg_item[data.id].Name
			v_dropSheet:set_vals("#note",dropRow,string.format("%s-%s",cfg_drop_cha[1][chaId].note,eqpName))
			v_dropSheet:set_vali("Item.id",dropRow,data.id)
			v_dropSheet:set_vali("Item.numMin",dropRow,1)
			v_dropSheet:set_vali("Item.numMax",dropRow,1)
			v_dropSheet:set_vali("Weight",dropRow,data.weight)
			dropRow = dropRow + 1
		end
	end
	--处理熔炼
	for chaId,set in ipairs(drops[2]) do
		for pos=1,8 do
			--print(string.format("%s-pos%d-锻造",cfg_drop_cha[2][chaId].note,pos))
			local dropSet = set[pos]
			v_dropGroupSheet:set_vals("#note",groupRowBg,string.format("%s-pos%d-锻造",cfg_drop_cha[2][chaId].note,pos))
			v_dropGroupSheet:set_vali("ID",groupRowBg,9000+chaId*10+pos)
			v_dropGroupSheet:set_vali("GroupType",groupRowBg,2)
			v_dropGroupSheet:set_vali("Weight",groupRowBg,10000)
			groupRowBg = groupRowBg + 1
		end
	end

	for chaId,set in ipairs(drops[2]) do
		for pos=1,8 do
			local dropSet = set[pos]
			for _loc,data in ipairs(dropSet.eqps) do
				v_dropSheet:set_vali("GroupId",dropRow,9000+chaId*10+pos)
				local eqpName = cfg_item[data.id].Name
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-pos%d-%s",cfg_drop_cha[2][chaId].note,pos,eqpName))
				v_dropSheet:set_vali("Item.id",dropRow,data.id)
				v_dropSheet:set_vali("Item.numMin",dropRow,1)
				v_dropSheet:set_vali("Item.numMax",dropRow,1)
				v_dropSheet:set_vali("Weight",dropRow,data.weight)
				dropRow = dropRow + 1
			end
		end
		
	end
	return groupRowBg,dropRow
end


local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("挂机派遣设计.xlsx")
	local dropDsSheet = book:get_sheet("新设计表")
	local dropGroupSheet = book:get_sheet("掉落组")
	local dropSheet = book:get_sheet("掉落")
	local exploreSheet = book:get_sheet("挂机派遣")
	local groupRowBg,dropRow = fn_output_drop(dropDsSheet,dropGroupSheet,dropSheet,exploreSheet)
	groupRowBg,dropRow = fn_output_eqp_drop(dropGroupSheet,dropSheet,groupRowBg,dropRow)

	book:save(MyTools.OutputExcelPath.."GuaJiPaiQian.xlsx")
end

return fn_output_excel