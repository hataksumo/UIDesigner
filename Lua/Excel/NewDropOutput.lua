
local translate_sheet = function(v_dsSheet,v_dorpGroupSheet,v_dropSheet,v_sheetHangup)
	local header = {{"普通.寄灵人Exp","普通.守护灵Exp","普通.金币"},{"高战.金币","绿材料","蓝材料","紫材料","橙材料"},{"初天","初地","初人","初级三才宝箱",
	"中天","中地","中人","中级三才宝箱","高天"	,"高地","高人","高级三才宝箱","修身宝箱"}}

	local item_name = {{"寄灵人经验","守护灵经验","金币"},{"金币","绿色基础材料","蓝色基础材料","紫色基础材料","橙色基础材料"},
	{"初级蓝","初级黄","初级红","初级三才宝箱","中级蓝","中级黄","中级红","中级三才宝箱","高级蓝","高级黄","高级红","高级三才宝箱","修身宝箱"}}

	local groupName = {"普通掉落1","高战掉落6","高战掉落20"}

	local drop = {}
	local dropGroupRow = 1
	local dropRow = 1

	local datas = {}
	--生成掉落组
	for row=1,10000 do
		local rowId = v_dsSheet:get_vali(row,"RowId")
		if rowId < 0 then
			break
		end
		local groups = {}
		groups.name = v_dsSheet:get_vals(row,"name")
		table.insert(datas,groups)
		for _groupIdx,groupHeader in ipairs(header) do
			local group = {}
			group.name = groupName[_groupIdx]
			table.insert(groups,group)
			
			for _i,theHeader in ipairs(groupHeader) do
				local data = v_dsSheet:get_valf(rowId,theHeader)
				if data > 0 then
					--print(groups.name," 找到列 "..theHeader)
					local ndata = {}
					ndata.id = item_name[_groupIdx][_i]
					ndata.val = data
					table.insert(group,ndata)
				end
			end
		end
	end

	local groupSheetRow = 3
	local groupSheetId = 6000
	local dropSheetRow = 3

	for _i,groups in ipairs(datas) do
		for _j,theGroup in ipairs(groups) do
			if #theGroup > 0 then
				local id = groupSheetId+groupSheetRow - 2
				local groupName = groups.name.."_"..theGroup.name
				v_dorpGroupSheet:set_vali("ID",groupSheetRow,id)
				v_dorpGroupSheet:set_vali("GroupType",groupSheetRow,3)
				v_dorpGroupSheet:set_vals("#note",groupSheetRow, groupName)
				v_dorpGroupSheet:set_vali("Weight",groupSheetRow,10000)

				--导出对应的drop
				for _k,dropData in ipairs(theGroup) do
					v_dropSheet:set_vali("ID",dropSheetRow,dropSheetRow)
					v_dropSheet:set_vali("GroupId",dropSheetRow,id)
					v_dropSheet:set_vals("#note",dropSheetRow,groupName.."_"..dropData.id.."x"..dropData.val)
					v_dropSheet:set_vals("Item.id",dropSheetRow,dropData.id)
					v_dropSheet:set_vali("Item.type",dropSheetRow,1)
					if dropData.val >= 1 then
						local numMin = math.floor(dropData.val)
						local numMax = math.floor(dropData.val + 0.5)
						v_dropSheet:set_vali("Item.numMin",dropSheetRow,numMin)
						v_dropSheet:set_vali("Item.numMax",dropSheetRow,numMax)
						v_dropSheet:set_vali("Weight",dropSheetRow,10000)
					else
						local num = 1
						local weight = math.floor( dropData.val * 10000 / 1.5)
						v_dropSheet:set_vali("Item.numMin",dropSheetRow,1)
						v_dropSheet:set_vali("Item.numMax",dropSheetRow,2)
						v_dropSheet:set_vali("Weight",dropSheetRow,weight)
					end
					dropSheetRow = dropSheetRow + 1
				end
				groupSheetRow = groupSheetRow + 1
			end
		end
	end


end

local output_excel = function()
	local book = ExcelBookObject.New()
	book:open("drop.掉落表.设计.xlsx")
	local sheetDisigner = book:get_sheet("设计表")
	local sheetDorpGroup = book:get_sheet("掉落组")
	local sheetDorp = book:get_sheet("掉落")
	local sheetHangup = book:get_sheet("挂机派遣")
	translate_sheet(sheetDisigner,sheetDorpGroup,sheetDorp,sheetHangup)
	book:save(MyTools.ExcelPath.."drop.xlsx")
end

return output_excel