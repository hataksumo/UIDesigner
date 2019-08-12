local bit32 = require "bit"
local fn_calLevelProp = function()
	local cfg_card = dofile("Config\\card")
	local cfg_hell_name = dofile("Config\\hell_name")
	local cfg_prop = dofile("Config\\property")
	local cfg_relic_body = dofile("Config\\relic_body")
	local cfg_relic_module = dofile("Config\\relic_module")
	local cfg_relic_attr_condition = dofile("Config\\relic_attr_condition")

	local dscfg_cardGroup = dofile("Config\\cardGroup")
	local dscfg_relicGroup = dofile("Config\\relicGroup")
	local dscfg_levelDesigner = dofile("Config\\levelDesigner")

	local propHash = {}

	--print(dscfg_cardGroup[21014][1].shl.mon.suffer)


	--初始化卡牌数值
	local fn_iniCardProp = function(card_id)
		local Prop = CreatePropTable()
		local propKey= {"Atk","Def","HP","Crit","CritRate","EffectHit","EffectResist","Block","DefIgnor","R"}
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
	local fn_calCardProp = function(v_cType,v_cfg)
		local prop = CreatePropTable()
		if not v_cfg then return prop end
		local card_info = cfg_card[v_cfg.cardId]
		if not card_info then
			print("card_info is nil")
			return prop
		end
		local cardbk_info = card_info.hells[v_cfg.bklv]
		local cardstar_info = card_info.stars[v_cfg.star]
		local hell_info = cfg_hell_name[v_cType][v_cfg.bklv]

		if not hell_info then
			print(string.format("hell_info is nil, note = %s, v_cfg.bklv = %d",v_cfg.mon.note,v_cfg.bklv))
		end

		local hpid = 103
		local atkid = 101
		local defid = 102

		local tmpProp = {}
		tmpProp[hpid] = {}
		tmpProp[hpid].ini = card_info.HP
		tmpProp[atkid] = {}
		tmpProp[atkid].ini = card_info.Atk
		tmpProp[defid] = {}
		tmpProp[defid].ini = card_info.Def

		for _i,val in ipairs(cardbk_info.BaseAttr) do
			tmpProp[val.id].base = val.val
		end

		for _i,val in ipairs(cardbk_info.UpAttr) do
			tmpProp[val.id].up = val.val
		end

		for key,val in pairs(tmpProp) do
			prop[key] = (val.ini + val.base + val.up * math.max(v_cfg.lv - hell_info.BegLevel,0)) * cardstar_info.AttrFac
		end

		prop.R = hell_info.R

		return prop
	end


	local fn_calRelicProp = function(v_cfg,v_prop,v_mask,v_id)
		local relicProp = CreatePropTable()
		for _i,val in ipairs(v_cfg) do
			local lvCfg = cfg_relic_body[_i].Lvs[val.lv]
			if lvCfg and lvCfg.Prop then
				local relicMask = cfg_relic_attr_condition[cfg_relic_body[_i].Condition].mask[1]
				for _j,theprop in ipairs(lvCfg.Prop) do
					relicProp[theprop.id] = relicProp[theprop.id] + theprop.val
					if bit32.band(relicMask,v_mask) > 0 then
						v_prop[theprop.id] = v_prop[theprop.id] + theprop.val
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
						relicProp[moduleVal.id] = relicProp[moduleVal.id] + moduleVal.num
						if bit32.band(moduleMask,v_mask) > 0 then
							v_prop[moduleVal.id] = v_prop[moduleVal.id] + moduleVal.num
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
				local eqp_prop_val = eqp_prop.Base + eqp_prop.Up * cfg_eqp_lvup[strengthenId][strengthenLv].Fac
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


	local lvProps = {}--卡牌数据
	local monProps = {}--怪物的数据
	for lvId,lvInfo in pairs(dscfg_levelDesigner) do--遍历关卡设计表
		local cardGroupId = lvInfo.cardGroup
		local relicGroup = lvInfo.relic
		--处理卡牌数据
		local cardGroupData = dscfg_cardGroup[cardGroupId]
		local iniProp = {}
		local lvProp = {}
		local eqpProp = {}
		local transProp = {}
		local finnalProp = {}
		finnalProp.lvId = lvId
		if not cardGroupData then
			print(string.format("dscfg_cardGroup[%d] is nil",cardGroupId))
		end
		for loc,couple in ipairs(cardGroupData) do
			finnalProp[loc] = {}
			iniProp[loc] = {}
			if couple.jlr and couple.jlr.cardId then
				finnalProp[loc].jlr = {}
				if not couple.jlr.id then
					print(string.format("lv:%d | loc:%d | shl",lvId,loc))
				end
				finnalProp[loc].jlr.id = couple.jlr.id
				finnalProp[loc].jlr.cardId = couple.jlr.cardId
				finnalProp[loc].jlr.prop = CreatePropTable()
				if couple.jlr.mon then
					finnalProp[loc].jlr.mon = {}
					finnalProp[loc].jlr.mon.lv = couple.jlr.lv
					finnalProp[loc].jlr.mon.id = couple.jlr.mon.id
					finnalProp[loc].jlr.mon.skillLv = couple.jlr.mon.skillLv
					finnalProp[loc].jlr.mon.suffer = couple.jlr.mon.suffer
					finnalProp[loc].jlr.mon.exert = couple.jlr.mon.exert
					finnalProp[loc].jlr.mon.note = couple.jlr.mon.desc
				end
				if not couple.jlr.cardId then
					print("couple.jlr.cardId = nil")
				end
				iniProp[loc].propjlr = fn_iniCardProp(couple.jlr.cardId)
			end
			if couple.shl and couple.shl.cardId then
				finnalProp[loc].shl = {}
				if not couple.shl.id then
					print(string.format("lv:%d | loc:%d | shl",lvId,loc))
				end
				finnalProp[loc].shl.id = couple.shl.id
				finnalProp[loc].shl.cardId = couple.shl.cardId
				finnalProp[loc].shl.prop = CreatePropTable()
				if couple.shl.mon then
					finnalProp[loc].shl.mon = {}
					finnalProp[loc].shl.mon.lv = couple.shl.lv
					finnalProp[loc].shl.mon.id = couple.shl.mon.id
					finnalProp[loc].shl.mon.skillLv = couple.shl.mon.skillLv
					finnalProp[loc].shl.mon.exert = couple.shl.mon.exert
					finnalProp[loc].shl.mon.suffer = couple.shl.mon.suffer
					finnalProp[loc].shl.mon.note = couple.shl.mon.desc
				end
				if not couple.shl.cardId then
					print("couple.shl.cardId = nil")
				end
				iniProp[loc].propShl = fn_iniCardProp(couple.shl.cardId)
			end
			--计算升星升级等属性
			local propjlr = fn_calCardProp(1,couple.jlr)
			local propShl = fn_calCardProp(2,couple.shl)
			lvProp[loc] = {}
			lvProp[loc].propjlr = propjlr
			lvProp[loc].propShl = propShl
			--计算灵力共享
			transProp[loc] = {}
			transProp[loc].propjlr = CreatePropTable()
			transProp[loc].propShl = CreatePropTable()

			local jlrAttrTrans = couple.jlr and cfg_card[couple.jlr.cardId].stars[couple.jlr.star].AttrTrans
			local shlAttrTrans = couple.shl and cfg_card[couple.shl.cardId].stars[couple.shl.star].AttrTrans
			if jlrAttrTrans ~= nil then
				for _ii,val in ipairs(jlrAttrTrans) do
					transProp[loc].propjlr[val.id] = transProp[loc].propjlr[val.id] + lvProp[loc].propjlr[val.id] * val.val
				end
			end
			if shlAttrTrans ~= nil then
				for _ii,val in ipairs(shlAttrTrans) do
					transProp[loc].propShl[val.id] = transProp[loc].propShl[val.id] + lvProp[loc].propShl[val.id] * val.val
				end
			end

			--装备计算
			eqpProp[loc] = {}
			local success = false
			if couple.jlr and couple.jlr.equip then
				eqpProp[loc].propjlr,success = fn_calEquipProp(couple.jlr.equip)
				if not success then
					print(string.format("lvId'jlr:%d,loc:%d eqp is wrong",lvId,loc))
				end
			else
				eqpProp[loc].propjlr = CreatePropTable()
			end
			if couple.shl and couple.shl.equip then
				eqpProp[loc].propshl,success = fn_calEquipProp(couple.shl.equip)
				if not success then
					print(string.format("lvId'shl:%d,loc:%d eqp is wrong",lvId,loc))
				end
			else
				eqpProp[loc].propshl = CreatePropTable()
			end

		end

		-- if cardGroupId == 10815 then
		-- 	print("shl-".."1"..":")
		-- 	eqpProp[1].propshl:print()
		-- end 


		--数据加和
		for loc,couple in ipairs(cardGroupData) do
			if finnalProp[loc].jlr then
				finnalProp[loc].jlr.prop = iniProp[loc].propjlr +  finnalProp[loc].jlr.prop + lvProp[loc].propjlr + eqpProp[loc].propjlr
			end
			if finnalProp[loc].shl then
				finnalProp[loc].shl.prop = iniProp[loc].propShl + finnalProp[loc].shl.prop + lvProp[loc].propShl + transProp[loc].propjlr + eqpProp[loc].propshl
			end
		end

		--处理神器数据
		for loc,couple in ipairs(cardGroupData) do
			if couple.jlr then
				local the_data = couple.jlr
				local the_prop = finnalProp[loc].jlr.prop
				if not dscfg_relicGroup[relicGroup] then
					print("can't find the relicGroup ",relicGroup)
				end
				if finnalProp[loc] == nil then print("loc = "..loc.." can't find") end
				if cfg_card[couple.jlr.cardId] == nil then print("couple.jlr.cardId = "..couple.jlr.cardId.." can't find") end
				fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].jlr.prop ,cfg_card[couple.jlr.cardId].mask,finnalProp[loc].jlr.id)
			end
			if couple.shl then
				fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].shl.prop ,cfg_card[couple.shl.cardId].mask,finnalProp[loc].shl.id)
			end
		end


		--属性乘百分比系数
		local monProp = {}
		monProp.lvId = lvId
		for loc,couple in ipairs(finnalProp) do
			monProp[loc] = {}
			for type,data in pairs(couple) do
				data.prop.Atk = math.floor(data.prop.Atk * (1 + data.prop.AtkRate) + data.prop.AtkExt)
				data.prop.Def = math.floor(data.prop.Def * (1 + data.prop.DefRate) + data.prop.DefExt)
				data.prop.HP = math.floor(data.prop.HP * (1 + data.prop.HPRate) + data.prop.HPExt)
				--处理怪物数据
				if data.mon then	
					monProp[loc][type] ={}
					local the_prop = CreatePropTable()
					the_prop = the_prop + data.prop
					--the_prop.HP =  math.floor(the_prop.HP * math.sqrt(data.mon.bsFac) * math.sqrt(data.mon.rou))
					--the_prop.Atk = math.floor(the_prop.Atk * math.sqrt(data.mon.bsFac) / math.sqrt(data.mon.rou))
					if data.mon.suffer == nil or data.mon.exert == nil then
						print(string.format("lv:%d-%d-%s id：%d is wrong",lvId,loc,type,data.id))
					end

					local def = math.floor(the_prop.Atk / 2)
					local hp = math.floor(the_prop.Atk * data.mon.suffer * the_prop.R / (the_prop.R + def))
					local atk = math.floor(the_prop.HP / data.mon.exert * (the_prop.R + def) / the_prop.R)
					the_prop.HP = hp
					the_prop.Atk = atk
					the_prop.Def = def

					monProp[loc][type].prop = the_prop
					monProp[loc][type].monId = data.mon.id
					monProp[loc][type].id = data.id
					monProp[loc][type].note = data.mon.note
					monProp[loc][type].lv = data.mon.lv
					monProp[loc][type].skillLv = data.mon.skillLv

					-- if lvId == 10103 then
					-- 	print(string.format("lv = %d, monId = %d",lvId,data.id))
					-- end

					
				end
			end
		end
		table.insert(monProps,monProp)
		table.insert(lvProps,finnalProp)
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
		for _loc,locData in ipairs(data) do
			local couple = {locData.jlr,locData.shl}
			for _i,sgCardData in ipairs(couple) do

				if sgCardData.id then
					local prop = sgCardData.prop
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
					bs = bs - cfg_global.DefaultCritDmg * cfg_prop[105].BsFactor
					v_card_attr_sheet:set_vali("bs",row,bs)
					totalBs = totalBs + bs
					row = row + 1
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
					if moncfgData.shl then
						v_mon_attr_sheet:set_vali("CallCost",row,moncfgData.shl.callCost)
						v_mon_attr_sheet:set_vali("CallCD",row,moncfgData.shl.callCd)
						v_mon_attr_sheet:set_vali("CrystalType",row,moncfgData.shl.crystalType)
						--print("lvid ",data.lvid  * 100 + _loc*10 + _i," loc ",_loc," ",card_type_name[_i])
					else
						--print("lvid ",data.lvid  * 100 + _loc*10 + _i," loc ",_loc," ",card_type_name[_i])
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
	local lvs_multi_sheet = MutiExcelSheetObject.New()
	lvs_multi_sheet:addSheet(lvds_sheet)
	lvs_multi_sheet:addSheet(gjlvds_sheet)
	lvs_multi_sheet:addSheet(lhglds_sheet)
	lvs_multi_sheet:addSheet(wbossds_sheet)
	lvs_multi_sheet:init_data()
	fn_output_card_prop(card_prop_sheet,mon_prop_sheet,lvs_multi_sheet,level_card_prop,level_mon_prop)
	book:save(MyTools.OutputExcelPath.."propSim.xlsx")
end

return fn_output_excel