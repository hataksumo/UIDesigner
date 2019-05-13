
local fn_output_drop = function(v_dropDsSheet,v_dropGroupSheet,v_dropSheet,v_exploreSheet)
	local exploreDropDs = dofile"Config//exploreDropDs"
	local exploreDs = dofile"Config//exploreDs"
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
			v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%d",groupNote,exploreDropDs[1][j].name,awardNum))
			v_dropSheet:set_vali("Item.id",dropRow,exploreDropDs[1][j].id)
			v_dropSheet:set_vali("Item.type",dropRow,exploreDropDs[1][j].itemType)
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
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%.2f%%",groupNote,exploreDropDs[6][j].name,awardNum * 100))
				v_dropSheet:set_vali("Item.id",dropRow,exploreDropDs[6][j].id)
				v_dropSheet:set_vali("Item.type",dropRow,exploreDropDs[6][j].itemType)
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
		--20分钟掉落，三彩材料
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
				v_dropSheet:set_vals("#note",dropRow,string.format("%s-%sx%.2f%%",groupNote,exploreDropDs[20][j].name,awardNum * 100))
				v_dropSheet:set_vali("Item.id",dropRow,exploreDropDs[20][j].id)
				v_dropSheet:set_vali("Item.type",dropRow,exploreDropDs[20][j].itemType)
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
		v_exploreSheet:set_vals("Drop[1].Id",exploreRow,string.format("挂机塔%d-%d:1分钟掉落",rowData.Cha,rowData.Lv))
		v_exploreSheet:set_vali("Drop[1].Inteval",exploreRow,1)
		if not rowData.Award6.empty then
			v_exploreSheet:set_vals("Drop[2].Id",exploreRow,string.format("挂机塔%d-%d:6分钟掉落",rowData.Cha,rowData.Lv))
			v_exploreSheet:set_vali("Drop[2].Inteval",exploreRow,6)
		end
		if not rowData.Award20.empty then
			v_exploreSheet:set_vals("Drop[3].Id",exploreRow,string.format("挂机塔%d-%d:20分钟掉落",rowData.Cha,rowData.Lv))
			v_exploreSheet:set_vali("Drop[3].Inteval",exploreRow,20)
		end
		local awarsShows = {}
		local Intevals = {1,6,20}
		local awardType = {"Award1","Award6","Award20"}
		local showIdx = 1
		for j,theType in ipairs(awardType) do
			for k,num in ipairs(rowData[theType]) do
				if num > 0 then
					local name = exploreDropDs[Intevals[j]][k].name
					local idVar = string.format("DropShow[%d].Id",showIdx)
					local descVar = string.format("DropShow[%d].Desc",showIdx)
					v_exploreSheet:set_vals(idVar,exploreRow,name)
					local output = tostring(MyTools.Round(num * 60 / Intevals[j],2)).."/h"
					v_exploreSheet:set_vals(descVar,exploreRow,output)
					showIdx = showIdx + 1
				end
			end
		end
		exploreRow = exploreRow + 1
	end

end


local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("挂机派遣设计.xlsx")
	local dropDsSheet = book:get_sheet("新设计表")
	local dropGroupSheet = book:get_sheet("掉落组")
	local dropSheet = book:get_sheet("掉落")
	local exploreSheet = book:get_sheet("挂机派遣")
	fn_output_drop(dropDsSheet,dropGroupSheet,dropSheet,exploreSheet)
	book:save(MyTools.OutputExcelPath.."GuaJiPaiQian.xlsx")
end

return fn_output_excel