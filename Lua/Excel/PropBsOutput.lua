local bit32 = require "bit"
local fn_calLevelProp = function()
	local cfg_card = dofile("Config\\card")
	local cfg_hell_name = dofile("Config\\hell_name")
	local cfg_prop = dofile("Config\\property")
	local cfg_relic_body = dofile("Config\\relic_body")
	local cfg_relic_module = dofile("Config\\relic_module")
	local cfg_relic_attr_condition = dofile("Config\\relic_attr_condition")
	local cfg_mon = dofile "Config\\monModle"


	local dscfg_cardGroup = dofile("Config\\cardGroup")
	local dscfg_cardGroup1 = dofile("Config\\cardGroup_1")
	local dscfg_cardGroup2 = dofile("Config\\cardGroup_2")
	table.copyInto(dscfg_cardGroup,dscfg_cardGroup1)
	table.copyInto(dscfg_cardGroup,dscfg_cardGroup2)
	local dscfg_relicGroup = dofile("Config\\relicGroup")
	local dscfg_levelDesigner = dofile("Config\\levelDesigner")

	local propHash = {}

	--print(dscfg_cardGroup[21014][1].shl.mon.suffer)


	--初始化卡牌数值
	local fn_iniCardProp = function(card_id)
		local Prop = CreatePropTable()
		local propKey= {"Atk","Def","HP","Crit","CritRate","EffectHit","EffectResist","Block","DefIgnor"}
		local cardInfo = cfg_card[card_id]

		if not cardInfo then
			print("can't find the card id "..card_id)
		end

		for i,key in ipairs(propKey) do
			Prop[key] = Prop[key] + cardInfo[key]
		end
		return Prop
	end

	--计算卡牌数值
	local fn_calCardProp = function(v_iType,v_cfg)
		local prop = CreatePropTable()
		if not v_cfg then
		 	return prop
		end
		local card_info = cfg_card[v_cfg.cardId]
		if not card_info and card_info.Type == 1 then
			print("card_info is nil")
			return prop
		end

		if not card_info.hells then
			print(card_info.Name.." no hell")
		end

		local cardbk_info = card_info.hells[v_cfg.bklv]
		local cardstar_info = card_info.stars[v_cfg.star]
		local hell_info = cfg_hell_name[v_iType][v_cfg.bklv]
		if card_info.Type == 2 and (not card_info.ghost) then
			print(card_info.Name.."  no ghost")
		end


		local ghost_info = v_iType == 2 and card_info.ghost[v_cfg.ghost] or {}
		local break_info = cfg_hell_name[v_iType][v_cfg.bklv]

		if not cardbk_info then
			print(string.format("hell_info is nil, note = %s, v_cfg.bklv = %d",v_cfg.mon.note,v_cfg.bklv))
		end
		if not break_info then
			print(string.format("cfg_hell_name[%d][%d] = nil",v_iType,v_cfg.bklv))
		end

		prop.Atk = cardbk_info.BaseAtk[v_cfg.star] + cardbk_info.UpAtk[v_cfg.star] * (v_cfg.lv - break_info.BegLevel)
		prop.Def = cardbk_info.BaseDef[v_cfg.star] + cardbk_info.UpDef[v_cfg.star] * (v_cfg.lv - break_info.BegLevel)
		prop.HP = cardbk_info.BaseHP[v_cfg.star] + cardbk_info.UpHP[v_cfg.star] * (v_cfg.lv - break_info.BegLevel)

		if v_iType == 2 and not v_cfg.ghost then
			print(string.format("%d can't find ghost",v_cfg.id))
		end
		if v_iType == 2 and v_cfg.ghost > 0 then
			for _i,data in ipairs(ghost_info) do
				prop[data.Id] = prop[data.Id] + data.Sum
			end
		end
		prop.BasePropAll = cardstar_info.BasePropAll


		--[[print(string.format("id = %d, name = %s, bklv =%d, lv = %d, ghost = %d star = %d"
			.."\natk = %d, def = %d, hp = %d",
			v_cfg.id,card_info.Name,v_cfg.bklv,v_cfg.lv,v_cfg.ghost,v_cfg.star,
			prop.Atk,prop.Def,prop.HP))]]

		return prop
	end



	--计算神器数值
	local fn_calRelicProp = function(v_cfg,v_prop,v_mask)
		local relicProp = CreatePropTable()
		for _i,val in ipairs(v_cfg) do
			local lvCfg = cfg_relic_body[_i].Lvs[val.lv]
			if lvCfg and lvCfg.Prop then
				local relicMask = cfg_relic_attr_condition[cfg_relic_body[_i].Condition].mask[1]
				for _j,theprop in ipairs(lvCfg.Prop) do
					relicProp[theprop.Id] = relicProp[theprop.Id] + theprop.Val
					if bit32.band(relicMask,v_mask) > 0 then
						v_prop[theprop.Id] = v_prop[theprop.Id] + theprop.Val
					end
				end
			end
			local modules = cfg_relic_body[_i].Components
			for mdId,info in ipairs(val.md) do
				local moduleCfg = cfg_relic_module[modules[mdId]]
				local moduleLvCfg = moduleCfg.Lvs[info.lv]
				if moduleLvCfg then
					local moduleMask = cfg_relic_attr_condition[moduleCfg.ConditionId].mask[1]
					for _j,moduleVal in ipairs(moduleLvCfg.Prop) do
						relicProp[moduleVal.Id] = relicProp[moduleVal.Id] + moduleVal.Val
						if bit32.band(moduleMask,v_mask) > 0 then
							if not v_prop[moduleVal.Id] then
								print(moduleVal.Id.." not find")
							end
							v_prop[moduleVal.Id] = v_prop[moduleVal.Id] + moduleVal.Val
						end
					end
				end
			end
		end
		return relicProp
	end

	--计算装备属性
	local cfg_eqp = dofile "Config\\eqp"
	local cfg_eqp_lvup = dofile "Config\\eqp_lvup"
	local cfg_eqp_suit = dofile "Config\\eqp_suit"
	local cfg_prop = dofile "Config\\property"
	local cfg_exweapon = dofile "Config\\personal_weapon"


	--计算装备数值
	local fn_calEquipProp = function(v_eqps,v_debug)
		v_debug = v_debug or false
		--基础属性
		local prop = CreatePropTable()
		local suits = {}
		for _pos,eqpData in ipairs(v_eqps) do
			local cfg_eqp_data = cfg_eqp[eqpData.id]
			if not cfg_eqp_data then
				print(string.format("cfg_eqp[%d] = nil",eqpData.id))
			end
			local strengthenLv = eqpData.lv
			local strengthenId = cfg_eqp_data.StrengthenId
			local props = cfg_eqp_data.Prop
			if cfg_eqp_data.Pos ~= _pos then
				logError(string.format("装备位置%d不对",_i))
				return prop,false
			end

			for _i,eqp_prop in ipairs(props) do
				local the_prop_cfg = cfg_prop[eqp_prop.Id]
				--local eqp_prop_val = eqp_prop.Base + eqp_prop.Up * cfg_eqp_lvup[strengthenId][strengthenLv].Fac
				local eqp_prop_val = eqp_prop.Base + eqp_prop.Up * strengthenLv
				if the_prop_cfg.IsInt then
					eqp_prop_val = math.floor(eqp_prop_val)
				end
				prop[eqp_prop.Id] = prop[eqp_prop.Id] + eqp_prop_val
			end

			if v_debug then
				print(string.format("eqp[%d] pos %d, AtkExt = %d",eqpData.id,_pos,prop.AtkExt))
			end

			if cfg_eqp_data.Suit and cfg_eqp_data.Suit > 0  then
				if not suits[cfg_eqp_data.Suit] then
					suits[cfg_eqp_data.Suit] = 0
				end
				suits[cfg_eqp_data.Suit] = suits[cfg_eqp_data.Suit] + 1
			end
		end

		--计算套装属性
		for _suitId,suitNum in pairs(suits) do
			local the_suit = cfg_eqp_suit[_suitId]
			for _i,suit_prop in ipairs(the_suit.Props) do
				if suitNum >= suit_prop.Num then
					local props = suit_prop.Prop
					prop:add(props)
				end
			end
		end

		return prop,true
	end

	--计算专属武器数值
	local cfg_exWeapon = dofile"Config\\personal_weapon"
	local fn_calExWeaponProp = function(v_cardId,v_exWeaponCfg)
		local rtnProp = CreatePropTable()
		if not v_exWeaponCfg then
			return rtnProp
		end
		local the_weapon_cfg = cfg_exWeapon[v_cardId]
		if not the_weapon_cfg then
			return rtnProp
		end

		for loc,lv in ipairs(v_exWeaponCfg) do
			the_prop = the_weapon_cfg.HunZhu[loc].Lvs[lv].Prop
			for _i,val in ipairs(the_prop) do
				rtnProp[val.Id] = rtnProp[val.Id] + val.Val
			end
		end
		return rtnProp
	end


	local lvProps = {}--卡牌数据
	local monProps = {}--怪物的数据
	local iTypesMemp = {jlr = 1,shl = 2}
	for lvId,lvInfo in pairs(dscfg_levelDesigner) do--遍历关卡设计表
		local cardGroupId = lvInfo.cardGroup
		local relicGroup = lvInfo.relic
		--处理卡牌数据
		local cardGroupData = dscfg_cardGroup[cardGroupId]
		local teamData = {}
		teamData.lvId = lvId
		teamData.cards = {}
		if not cardGroupData then
			print(string.format("dscfg_cardGroup[%d] is nil",cardGroupId))
		end
		for loc=1,#cardGroupData do
			local couple = cardGroupData[loc]
			teamData.cards[loc] = {}
			for the_type,the_card_info in pairs(couple) do
				teamData.cards[loc][the_type] = nil
				if the_card_info.cardId then
					teamData.cards[loc][the_type] = {}
					teamData.cards[loc][the_type].id = the_card_info.id
					teamData.cards[loc][the_type].cardId = the_card_info.cardId
					--卡牌基础属性
					teamData.cards[loc][the_type].tmpProp = {}
					local iType = iTypesMemp[the_type]
					teamData.cards[loc][the_type].tmpProp.cardProp = fn_calCardProp(iType,the_card_info)
					--装备属性
					if the_card_info.equip then
						teamData.cards[loc][the_type].tmpProp.eqpProp = fn_calEquipProp(the_card_info.equip)
					else
						teamData.cards[loc][the_type].tmpProp.eqpProp = CreatePropTable()
					end
					--神器属性
					teamData.cards[loc][the_type].tmpProp.relicProp = CreatePropTable()
					fn_calRelicProp(dscfg_relicGroup[relicGroup].relic, teamData.cards[loc][the_type].tmpProp.relicProp,cfg_card[the_card_info.cardId].mask)
					--专属武器龙珠属性
					if the_type == "shl" then
						teamData.cards[loc][the_type].tmpProp.exWeaponProp = fn_calExWeaponProp(the_card_info.cardId,the_card_info.exWeapon)
					end
					--灵力共享
					if the_type == "jlr" then
						--teamData.cards[loc][the_type].transProp = teamData.cards[loc][the_type].cardProp * 
						--太麻烦，暂时先不加
					end
				end
			end
		end

		--数据加和
		for loc,couple in ipairs(teamData.cards) do
			--寄灵人属性
			if couple.jlr then
				couple.jlr.finalProp = couple.jlr.tmpProp.cardProp + couple.jlr.tmpProp.relicProp + couple.jlr.tmpProp.eqpProp
				couple.jlr.tmpProp = nil
			end
			--守护灵属性
			if couple.shl then
				couple.shl.finalProp = couple.shl.tmpProp.cardProp + couple.shl.tmpProp.relicProp + couple.shl.tmpProp.eqpProp + couple.shl.tmpProp.exWeaponProp
				couple.shl.tmpProp = nil
			end
		end

		--属性乘百分比系数
		for loc,couple in ipairs(teamData.cards) do
			for type,data in pairs(couple) do
				data.finalProp.Atk = math.floor(data.finalProp.Atk * (1 + data.finalProp.AtkRate) * (1 + data.finalProp.BasePropAll) + data.finalProp.AtkExt)
				data.finalProp.Def = math.floor(data.finalProp.Def * (1 + data.finalProp.DefRate) * (1 + data.finalProp.BasePropAll) + data.finalProp.DefExt)
				data.finalProp.HP = math.floor(data.finalProp.HP * (1 + data.finalProp.HPRate) * (1 + data.finalProp.BasePropAll) + data.finalProp.HPExt)
			end
		end
		table.insert(lvProps,teamData)
		--计算怪物属性
		local monTeam = {}
		local sType = {"jlr","shl"}
		local hpDAtk = {5,10}
		monTeam.lvId = lvId
		for loc=1,#cardGroupData do
			local couple = cardGroupData[loc]
			monTeam[loc] = {}
			for type,data in pairs(couple) do
				if data.mon then
					monTeam[loc][type] = {}
					local curData = monTeam[loc][type]
					local srcType = data.mon.srcType
					local srcLoc = data.mon.srcLoc
					if not teamData.cards[srcLoc] then
						print("can't find the loc "..srcLoc)
					end
					local srcProp = teamData.cards[srcLoc][sType[srcType]].finalProp
					curData.id = data.id
					curData.monId = data.mon.id
					curData.skillLv = data.mon.skillLv
					curData.lv = data.lv
					curData.note = data.mon.desc
					--计算怪物属性
					curData.prop = CreatePropTable()
					curData.prop.Atk =  math.floor(math.max(srcProp.HP / hpDAtk[srcType], srcProp.Def * 2))
					curData.prop.Def = math.floor(srcProp.Atk / 2)
					curData.prop.HP = math.floor(srcProp.Atk / 2 * data.mon.suffer)
					curData.prop.DmgBonus = 1 / data.mon.exert * hpDAtk[srcType] - 1
				end
			end
		end
		table.insert(monProps,monTeam)
	end
	table.sort(lvProps,function(a,b)
		return a.lvId < b.lvId
	end)
	table.sort(monProps,function(a,b)
		return a.lvId < b.lvId
	end)
	return lvProps,monProps
end

local fn_output_card_prop = function(v_card_attr_sheet,v_mon_attr_sheet,v_levelSheets,v_cardData,v_monData)
	local row = 3
	local cfg_prop = dofile "Config\\property"
	local cfg_card = dofile "Config\\card"
	local cfg_global = dofile "Config\\global"
	local card_type_name = {"寄灵人","守护灵"}
	local cfg_mon = dofile "Config\\monModle"
	--v_levelSheet:init_data()
	for _row,data in ipairs(v_cardData) do
		local totalBs = 0
		local monsters = {}
		for _loc,locData in ipairs(data.cards) do
			local couple = {locData.jlr,locData.shl}
			for _i=1,2 do
				local sgCardData = couple[_i]
				if sgCardData then
					if sgCardData.id then
						local prop = sgCardData.finalProp
						v_card_attr_sheet:set_valf("lvid",row,sgCardData.id)
						v_card_attr_sheet:set_valf("loc",row,_loc)
						v_card_attr_sheet:set_vals("type",row,card_type_name[_i])
						v_card_attr_sheet:set_vals("name",row,cfg_card[sgCardData.cardId].Name)
						local bs = 0
						for key,propCfgData in pairs(cfg_prop) do
							if propCfgData.IsMonProp then
								v_card_attr_sheet:set_valf(propCfgData.EnName,row,prop[propCfgData.EnName])
							end
							bs = bs + propCfgData.BsFactor * prop[propCfgData.EnName]
						end
						--bs = bs - cfg_global.DefaultCritDmg * cfg_prop[105].BsFactor
						v_card_attr_sheet:set_vali("bs",row,bs)
						totalBs = totalBs + bs
						row = row + 1
					end
				end
				
			end
		end
		v_levelSheets:set_val_by_pmid(tostring(data.lvId) ,"bs",totalBs)	
	end

	row = 3
	for _i,data in ipairs(v_monData) do
		local monsters = {}
		--print(data.lvId)
		for _loc,locData in ipairs(data) do
			local couple = {locData.jlr or {},locData.shl or {}}
			if locData.jlr then
				monsters[_loc] = locData.jlr.note
			end
			for _j,sgMonData in ipairs(couple) do

				if sgMonData.id then
					local prop = sgMonData.prop
					local monId = sgMonData.monId
					local moncfgData = cfg_mon[monId]
					if not monId then
						print("can't find sgMonData.id ",sgMonData.id)
					end
					v_mon_attr_sheet:set_valf("ID",row,sgMonData.id)
					v_mon_attr_sheet:set_vals("Des3",row,card_type_name[_j])
					v_mon_attr_sheet:set_vals("Des4",row,moncfgData.name)
					v_mon_attr_sheet:set_vals("#note",row,sgMonData.note)
					v_mon_attr_sheet:set_val("Level",row,sgMonData.lv)
					for _k,skillId in ipairs(moncfgData.skill) do
						v_mon_attr_sheet:set_vali(string.format("Skill[%d].Id",_k),row,skillId)
						if _k == 1 then
							v_mon_attr_sheet:set_vali(string.format("Skill[%d].Lv",_k),row,1)
						else
							v_mon_attr_sheet:set_vali(string.format("Skill[%d].Lv",_k),row,sgMonData.skillLv)
						end
					end
					v_mon_attr_sheet:set_vali("RoleId",row,moncfgData.roleId)
					if moncfgData.Bubble then
						for BubbleIdx,BubbleId in ipairs(moncfgData.Bubble) do
							v_mon_attr_sheet:set_vali(string.format("Bubble[%d]",BubbleIdx),row,BubbleId)
						end
					end
					if moncfgData.shl then
						v_mon_attr_sheet:set_vali("CallCost",row,moncfgData.shl.callCost)
						v_mon_attr_sheet:set_vali("CallCD",row,moncfgData.shl.callCd)
						v_mon_attr_sheet:set_vali("CrystalType",row,moncfgData.shl.crystalType)
					else

					end
					
					for key,propCfgData in pairs(cfg_prop) do
						if propCfgData.IsFinal and propCfgData.IsMonProp then
							v_mon_attr_sheet:set_valf(propCfgData.EnName,row,prop[propCfgData.EnName])
						end
					end

					if _j == 1 and couple[2].id then
						v_mon_attr_sheet:set_vals("DefendGrostId",row,locData.shl.note)
					end
					v_mon_attr_sheet:set_vali("Type",row,_j)
					row = row + 1
				end
			end
		end
		for _loc,note in pairs(monsters) do
			v_levelSheets:set_val_by_pmid(tostring(data.lvId),string.format("Monsters[%d]",_loc),note)
		end
	end

end



local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("属性模拟.xlsx")
	--local card_sheet = book:get_sheet("卡牌等级")
	local level_card_prop,level_mon_prop =  fn_calLevelProp()
	local card_prop_sheet = book:get_sheet("卡牌属性")
	local mon_prop_sheet = book:get_sheet("怪物属性")
	local lvds_sheet = book:get_sheet("关卡")
	local gjlvds_sheet = book:get_sheet("挂机关卡")
	local lhglds_sheet = book:get_sheet("芦花古楼")
	local wbossds_sheet = book:get_sheet("世界BOSS")
	local dailyds_sheet = book:get_sheet("日常本")
	local lvs_multi_sheet = MutiExcelSheetObject.New()
	lvs_multi_sheet:addSheet(lvds_sheet)
	lvs_multi_sheet:addSheet(gjlvds_sheet)
	lvs_multi_sheet:addSheet(lhglds_sheet)
	lvs_multi_sheet:addSheet(wbossds_sheet)
	lvs_multi_sheet:addSheet(dailyds_sheet)
	lvs_multi_sheet:init_data()
	fn_output_card_prop(card_prop_sheet,mon_prop_sheet,lvs_multi_sheet,level_card_prop,level_mon_prop)
	book:save(MyTools.OutputExcelPath.."propSim.xlsx")
end

return fn_output_excel