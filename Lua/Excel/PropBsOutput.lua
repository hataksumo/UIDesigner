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

	--初始化卡牌数值
	local fn_iniCardProp = function(card_id)
		local Prop = CreatePropTable()
		local propKey= {"Atk","Def","HP","Crit","CritRate","EffectHit","EffectResist","Block","DefIgnor","R"}
		local cardInfo = cfg_card[card_id]
		for i,key in ipairs(propKey) do
			Prop[key] = Prop[key] + cardInfo[key]
		end
		return Prop
	end

	--计算卡牌数值
	local fn_calCardProp = function(v_cfg)
		local prop = CreatePropTable()
		if not v_cfg then return prop end
		local card_info = cfg_card[v_cfg.cardId]
		if not card_info then
			print("card_info is nil")
			return prop
		end
		local cardbk_info = card_info.hells[v_cfg.bklv]
		local cardstar_info = card_info.stars[v_cfg.star]
		local hell_info = cfg_hell_name[v_cfg.bklv]

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


	local fn_calRelicProp = function(v_cfg,v_prop,v_mask)
		local relicProp = CreatePropTable()
		for _i,val in ipairs(v_cfg) do
			local lvCfg = cfg_relic_body[_i].Lvs[val.lv]
			if lvCfg then
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

	local lvProps = {}--卡牌数据
	local monProps = {}--怪物的数据
	for lvId,lvInfo in pairs(dscfg_levelDesigner) do--遍历关卡设计表
		local cardGroupId = lvInfo.cardGroup
		local relicGroup = lvInfo.relic
		--处理卡牌数据
		local cardGroupData = dscfg_cardGroup[cardGroupId]
		local iniProp = {}
		local lvProp = {}
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
				finnalProp[loc].jlr.id = lvId * 100 + loc * 10 + 1
				finnalProp[loc].jlr.cardId = couple.jlr.cardId
				finnalProp[loc].jlr.prop = CreatePropTable()
				if couple.jlr.mon then
					finnalProp[loc].jlr.mon = {}
					finnalProp[loc].jlr.mon.lv = couple.jlr.lv
					finnalProp[loc].jlr.mon.id = couple.jlr.mon.id
					finnalProp[loc].jlr.mon.bsFac = couple.jlr.mon.bsFac
					finnalProp[loc].jlr.mon.rou = couple.jlr.mon.rou
					finnalProp[loc].jlr.mon.note = couple.jlr.mon.desc
				end
				if not couple.jlr.cardId then
					print("couple.jlr.cardId = nil")
				end
				iniProp[loc].propjlr = fn_iniCardProp(couple.jlr.cardId)
			end
			if couple.shl and couple.shl.cardId then
				finnalProp[loc].shl = {}
				finnalProp[loc].shl.id = lvId * 100 + loc * 10 + 2
				finnalProp[loc].shl.cardId = couple.shl.cardId
				finnalProp[loc].shl.prop = CreatePropTable()
				if couple.shl.mon then
					finnalProp[loc].shl.mon = {}
					finnalProp[loc].shl.mon.lv = couple.shl.lv
					finnalProp[loc].shl.mon.id = couple.shl.mon.id
					finnalProp[loc].shl.mon.bsFac = couple.shl.mon.bsFac
					finnalProp[loc].shl.mon.rou = couple.shl.mon.rou
					finnalProp[loc].shl.mon.note = couple.shl.mon.desc
				end
				if not couple.shl.cardId then
					print("couple.shl.cardId = nil")
				end
				iniProp[loc].propShl = fn_iniCardProp(couple.shl.cardId)
			end
			--计算升星升级等属性
			local propjlr = fn_calCardProp(couple.jlr)
			local propShl = fn_calCardProp(couple.shl)
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
		end

		--数据加和
		for loc,couple in ipairs(cardGroupData) do
			if finnalProp[loc].jlr then
				finnalProp[loc].jlr.prop = iniProp[loc].propjlr +  finnalProp[loc].jlr.prop + lvProp[loc].propjlr + transProp[loc].propShl
			end
			if finnalProp[loc].shl then
				finnalProp[loc].shl.prop = iniProp[loc].propShl + finnalProp[loc].shl.prop + lvProp[loc].propShl + transProp[loc].propjlr
			end
		end

		--处理神器数据
		for loc,couple in ipairs(cardGroupData) do
			if couple.jlr then
				if not dscfg_relicGroup[relicGroup] then
					print("can't find the relicGroup ",relicGroup)
				end
				fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].jlr.prop ,cfg_card[couple.jlr.cardId].mask)
			end
			if couple.shl then
				fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].shl.prop ,cfg_card[couple.shl.cardId].mask)
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
					the_prop.HP =  math.floor(the_prop.HP * math.sqrt(data.mon.bsFac) * math.sqrt(data.mon.rou))
					the_prop.Atk = math.floor(the_prop.Atk * math.sqrt(data.mon.bsFac) / math.sqrt(data.mon.rou))
					monProp[loc][type].prop = the_prop
					monProp[loc][type].id = data.mon.id
					monProp[loc][type].note = data.mon.note
					monProp[loc][type].lv = data.mon.lv
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
				if sgCardData then
					local prop = sgCardData.prop
					v_card_attr_sheet:set_valf("lvid",row,sgCardData.id)
					v_card_attr_sheet:set_valf("loc",row,_loc)
					v_card_attr_sheet:set_vals("type",row,card_type_name[_i])
					v_card_attr_sheet:set_vals("name",row,cfg_card[sgCardData.cardId].Name)
					local bs = 0
					for key,propCfgData in pairs(cfg_prop) do
						v_card_attr_sheet:set_valf(propCfgData.EnName,row,prop[propCfgData.EnName])
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
		for _loc,locData in ipairs(data) do
			local couple = {locData.jlr,locData.shl}
			if locData.jlr then
				monsters[_loc] = locData.jlr.note
			end
			for _i,sgMonData in ipairs(couple) do
				if sgMonData then
					local prop = sgMonData.prop
					local monId = sgMonData.id
					local moncfgData = cfg_mon[monId]
					v_mon_attr_sheet:set_valf("ID",row,data.lvId  * 100 + _loc*10 + _i)
					--v_mon_attr_sheet:set_valf("loc",row,_loc)
					v_mon_attr_sheet:set_vals("Des3",row,card_type_name[_i])
					v_mon_attr_sheet:set_vals("Des4",row,moncfgData.name)
					v_mon_attr_sheet:set_vals("#note",row,sgMonData.note)
					v_mon_attr_sheet:set_val("Level",row,sgMonData.lv)
					for _i,skillId in ipairs(moncfgData.skill) do
						v_mon_attr_sheet:set_vali(string.format("Skill[%d]",_i),row,skillId)
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
						if propCfgData.IsFinal then
							v_mon_attr_sheet:set_valf(propCfgData.EnName,row,prop[propCfgData.EnName])
						end
					end

					if _i == 1 and couple[2] then
						v_mon_attr_sheet:set_vals("DefendGrostId",row,locData.shl.note)
					end
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
	local lvs_multi_sheet = MutiExcelSheetObject.New()
	lvs_multi_sheet:addSheet(lvds_sheet)
	lvs_multi_sheet:addSheet(gjlvds_sheet)
	lvs_multi_sheet:init_data()
	fn_output_card_prop(card_prop_sheet,mon_prop_sheet,lvs_multi_sheet,level_card_prop,level_mon_prop)
	book:save(MyTools.OutputExcelPath.."propSim.xlsx")
end

return fn_output_excel