local fn_calDrop = function(v_dropGroupSheet,v_dropSheet)
	local dropGroup = {}
	local drop = {}
	local cfgWpDpDs = dofile "Config\\exWeaponDropDs"
	local cfgWpGroupDs = dofile "Config\\exWeaponGroupDs"
	local quaStr = {"SR","SR+","SSR","SSR+","UR"}

	for id,data in ipairs(cfgWpDpDs) do
		--掉落组表
		
		local the_general_group = {}
		the_general_group.id = 5000+id*10+0
		the_general_group.type = 3
		the_general_group.note = data.Name.."通用掉落组"
		the_general_group.Weight = 10000
		table.insert(dropGroup,the_general_group)

		local gold_drop = {}
		gold_drop.GroupId = the_general_group.id
		gold_drop.note = the_general_group.note.."金币x"..data.Gold.Min
		gold_drop.Item = {}
		gold_drop.Item.id = "金币"
		gold_drop.Item.numMin = data.Gold.Min
		gold_drop.Item.numMax = data.Gold.Max
		gold_drop.Weight = 10000
		table.insert(drop,gold_drop)

		local xis_drop = {}
		xis_drop.GroupId = the_general_group.id
		xis_drop.note = the_general_group.note.."洗炼瓶 "..data.XLP.Min.."~"..data.XLP.Max
		xis_drop.Item = {}
		xis_drop.Item.id = "洗炼瓶"
		xis_drop.Item.numMin = data.XLP.Min
		xis_drop.Item.numMax = data.XLP.Max
		xis_drop.Weight = 10000
		table.insert(drop,xis_drop)


		--掉落表
		--专属武器碎片
		for qua=1,6 do
			local the_qua_num = data.D[qua]
			if the_qua_num and the_qua_num > 0 then
				local the_exwp_group = {}
				the_exwp_group.id = 5000+id*10+qua
				the_exwp_group.type = 2
				the_exwp_group.note = data.Name..quaStr[qua].."专属掉落组"
				the_exwp_group.Weight = 10000

				local zhNum = math.floor(the_qua_num)
				local bu = the_qua_num - zhNum
				local the_drops = {}
				for _i,dropItemData in ipairs(cfgWpGroupDs[qua].wps) do
					local the_drop = {}		
					the_drop.GroupId = the_exwp_group.id
					the_drop.Item = {}
					the_drop.Item.id = dropItemData.Note
					the_drop.Item.numMin = zhNum
					the_drop.Item.numMax = zhNum
					the_drop.Weight = math.floor(dropItemData.Weight * (1 - bu))
					the_drop.note = the_exwp_group.note.."  "..the_drop.Item.id.."x"..the_qua_num
					if zhNum > 0 then
						table.insert(the_drops,the_drop)
					end
					if bu > 0 then
						local syDrop = table.clone(the_drop)
						syDrop.Weight = math.floor(dropItemData.Weight * bu)
						syDrop.note = the_exwp_group.note.."  "..the_drop.Item.id.." 补"..the_qua_num
						syDrop.Item.numMin = zhNum + 1
						syDrop.Item.numMax = zhNum + 1
						table.insert(the_drops,syDrop)
					end					
				end

				local sum_weight = 10000
				for _i,the_drop_data in ipairs(the_drops) do
					sum_weight = sum_weight - the_drop_data.Weight
				end
				if zhNum > 0 then
					the_drops[1].Weight = the_drops[1].Weight + sum_weight
				end
				table.insert(dropGroup,the_exwp_group)
				for _i,data in ipairs(the_drops) do
					table.insert(drop,data)
				end
			end
		end
	end
	--导出DropGroup
	local row = 3
	for _i,data in ipairs(dropGroup) do
		v_dropGroupSheet:set_vali("ID",row,data.id)
		v_dropGroupSheet:set_vali("GroupType",row,data.type)
		v_dropGroupSheet:set_vals("#note",row,data.note)
		v_dropGroupSheet:set_vali("Weight",row,data.Weight)
		row = row + 1
	end

	row = 3

	for _i,data in ipairs(drop) do
		v_dropSheet:set_vali("GroupId",row,data.GroupId)
		v_dropSheet:set_vals("#note",row,data.note)
		v_dropSheet:set_vals("Item.id",row,data.Item.id)
		v_dropSheet:set_vali("Item.numMin",row,data.Item.numMin)
		v_dropSheet:set_vali("Item.numMax",row,data.Item.numMax)
		v_dropSheet:set_vali("Weight",row,data.Weight)
		row = row + 1
	end

end

local fn_output= function()
	local book = ExcelBookObject.New()
	book:open("恶灵入侵掉落.xlsx")
	local dropDsSheet = book:get_sheet("掉落设计")
	local exWpClassifySheet = book:get_sheet("专属武器分类")
	local dropGroupSheet = book:get_sheet("DropGroup")
	local dropSheet = book:get_sheet("Drop")
	fn_calDrop(dropGroupSheet,dropSheet)
	book:save(MyTools.OutputExcelPath.."wBossDrop.xlsx")
end

return fn_output