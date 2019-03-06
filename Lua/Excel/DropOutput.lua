local output_drop = function()
	local book = ExcelBookObject.New()
	book:open("drop.掉落表_opt.xlsx")
	--读取设计表表头
	local designer_sheet = book:get_sheet("设计表")
	local drop_group_sheet = book:get_sheet("掉落组")
	local drop_sheet = book:get_sheet("掉落")

	local datas = {}
	local row = 1
	for chaId=1,9 do
		for lv=1,20 do
			local curChaId = designer_sheet:get_vali(row,"章节")
			local lvId = designer_sheet:get_vali(row,"派遣关卡")
			if lvId < 0 or chaId < curChaId then
				break
			end
			local data = {}
			data.chaId = chaId
			data.lv = lv
			data.difType = designer_sheet:get_vali(row,"类型")
			data.money = designer_sheet:get_vali(row,"金币")
			data.normalAward1 = {}
			data.normalAward1.empty = false
			data.normalAward1[1] = {}
			data.normalAward1[1].id = "金币"
			data.normalAward1[1].val = data.money
			data.normalAward1[2] = {}
			data.normalAward1[2].id = designer_sheet:get_vals(row,"普通1[1].id")
			data.normalAward1[2].val = designer_sheet:get_valf(row,"普通1[1].val")
			data.highAward6 = {}
			data.highAward6.empty = false
			data.highAward6[1] = {}
			data.highAward6[1].id = designer_sheet:get_vals(row,"高战6[1].id")
			data.highAward6[1].val = designer_sheet:get_valf(row,"高战6[1].val")
			data.highAward20 = {}
			data.highAward20[1] = {}
			data.highAward20[1].id = designer_sheet:get_vals(row,"高战20[1].id")
			data.highAward20[1].val = designer_sheet:get_valf(row,"高战20[1].val")
			data.highAward20[2] = {}
			data.highAward20[2].id = designer_sheet:get_vals(row,"高战20[2].id")
			data.highAward20[2].val = designer_sheet:get_valf(row,"高战20[2].val")

			data.highAward20.empty = (string.IsNullOrEmpty(data.highAward20[1].id))
			table.insert(datas,data)
			row = row + 1
		end
	end

	--掉落组输出
	local noteGroupType = {"普通1","高战6","高战20"}
	local iGroupType = {1,1,3}
	local groupTypeName = {"normalAward1","highAward6","highAward20"}

	local groupid = 6000
	local dropId = 1
	local groupRowBeg = 3
	local dropBeg = 3
	for _i,data in ipairs(datas) do
		-- drop_group_sheet:set_vali("ID",_i,id)
		-- drop_group_sheet:set_vali("GroupType",_i,1)
		-- local note = ""
		for _j,typeName in ipairs(groupTypeName) do
			local dropData = data[typeName]
			if dropData.empty then
			else
				drop_group_sheet:set_vali("ID",groupRowBeg,groupid)
				drop_group_sheet:set_vali("GroupType",groupRowBeg,iGroupType[_j])
				local note = string.format("%s章%d关%s挂机",data.chaId,data.lv,noteGroupType[_j])
				drop_group_sheet:set_vals("#note",groupRowBeg,note)
				drop_group_sheet:set_vali("Weight",groupRowBeg,10000)

				for _k,itemData in ipairs(dropData) do
					if string.IsNullOrEmpty(itemData.id) then
					else
						drop_sheet:set_vali("ID",dropBeg,dropId)
						drop_sheet:set_vali("GroupId",dropBeg,groupid)
						drop_sheet:set_vals("#note",dropBeg,note..itemData.id.."x"..Mathf.Round(itemData.val,2))
						drop_sheet:set_vals("Item.id",dropBeg,itemData.id)

						if itemData.val >= 1 then
							local numMin = math.floor(itemData.val)
							local numMax = math.floor(itemData.val + 0.5)
							drop_sheet:set_vali("Item.numMin",dropBeg,numMin)
							drop_sheet:set_vali("Item.numMax",dropBeg,numMax)
							drop_sheet:set_vali("Weight",dropBeg,10000)
						else
							local num = 1
							local weight = math.floor( itemData.val * 10000 / 1.5)
							drop_sheet:set_vali("Item.numMin",dropBeg,1)
							drop_sheet:set_vali("Item.numMax",dropBeg,2)
							drop_sheet:set_vali("Weight",dropBeg,weight)
						end
						dropBeg = dropBeg + 1
						dropId = dropId + 1
					end
				end

				groupRowBeg = groupRowBeg + 1
				groupid = groupid + 1
			end

		end
	end

	book:save(MyTools.ExcelPath.. "drop_output.xlsx")

end
return output_drop