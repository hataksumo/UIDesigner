local bit32 = require "bit"
local fn_calCardProp = function()
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

	local fn_iniCardProp = function(card_id)
		local Prop = CreatePropTable()
		local propKey= {"Atk","Def","HP","Crit","CritRate","EffectHit","EffectResist","Block","DefIgnor","R"}
		local cardInfo = cfg_card[card_id]
		for i,key in ipairs(propKey) do
			Prop[key] = Prop[key] + cardInfo[key]
		end
		return Prop
	end

	local fn_calCardProp = function(v_cfg)
		local prop = CreatePropTable()
		local card_info = cfg_card[v_cfg.cardId]
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
							--print(string.format("v_prop[%d] = nil",moduleVal.id))
							v_prop[moduleVal.id] = v_prop[moduleVal.id] + moduleVal.num
						end
					end
				end
			end
		end
		return relicProp
	end

	local lvProps = {}
	for _i,lvInfo in ipairs(dscfg_levelDesigner) do
		local cardGroupId = lvInfo.cardGroup
		local relicGroup = lvInfo.relic
		--处理卡牌数据
		local cardGroupData = dscfg_cardGroup[cardGroupId]
		local iniProp = {}
		local lvProp = {}
		local transProp = {}
		local finnalProp = {}
		
		for loc,couple in ipairs(cardGroupData) do
			finnalProp[loc] = {}
			finnalProp[loc].jlr = {}
			finnalProp[loc].jlr.cardId = couple.jlr.cardId
			finnalProp[loc].jlr.prop = CreatePropTable()
			finnalProp[loc].shl = {}
			finnalProp[loc].shl.cardId = couple.shl.cardId
			finnalProp[loc].shl.prop = CreatePropTable()
			iniProp[loc] = {}
			iniProp[loc].propjlr = fn_iniCardProp(couple.jlr.cardId)
			iniProp[loc].propShl = fn_iniCardProp(couple.shl.cardId)

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
			local jlrAttrTrans = cfg_card[couple.jlr.cardId].stars[couple.jlr.star].AttrTrans
			local shlAttrTrans = cfg_card[couple.shl.cardId].stars[couple.shl.star].AttrTrans
			if jlrStarInfo ~= nil then
				for key,val in pairs(jlrStarInfo) do
					transProp[loc].propjlr[key] = transProp[loc].propjlr[key] + lvProp[loc].propjlr[key] * val
				end
			end
			if shlAttrTrans ~= nil then
				for key,val in pairs(shlAttrTrans) do
					transProp[loc].propShl[key] = transProp[loc].propShl[key] + lvProp[loc].propShl[key] * val
				end
			end
		end

		--数据加和
		for loc,couple in ipairs(cardGroupData) do
			finnalProp[loc].jlr.prop = iniProp[loc].propjlr +  finnalProp[loc].jlr.prop + lvProp[loc].propjlr + transProp[loc].propShl
			finnalProp[loc].shl.prop = iniProp[loc].propShl +finnalProp[loc].shl.prop + lvProp[loc].propShl + transProp[loc].propjlr
		end

		--处理神器数据
		--local relicProp = fn_calRelicProp(dscfg_relicGroup[relicGroup])
		for loc,couple in ipairs(cardGroupData) do
			fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].jlr.prop ,cfg_card[couple.jlr.cardId].mask)
			fn_calRelicProp(dscfg_relicGroup[relicGroup].relic,finnalProp[loc].shl.prop ,cfg_card[couple.shl.cardId].mask)
		end

		table.insert(lvProps,finnalProp)
	end
	return lvProps
end

local fn_output_card_prop = function(v_card_attr_sheet,v_levelSheet,v_cardData)
	local row = 3
	local cfg_prop = dofile "Config\\property"
	local cfg_card = dofile "Config\\card"
	local cfg_global = dofile "Config\\global"
	local card_type_name = {"寄灵人","守护灵"}

	v_levelSheet:init_data()
	for lvId,data in ipairs(v_cardData) do
		local totalBs = 0
		for _loc,locData in ipairs(data) do
			local couple = {locData.jlr,locData.shl}
			for _i,data in ipairs(couple) do
				local prop = data.prop
				v_card_attr_sheet:set_valf("lvid",row,lvId)
				v_card_attr_sheet:set_valf("loc",row,_loc)
				v_card_attr_sheet:set_vals("type",row,card_type_name[_i])
				v_card_attr_sheet:set_vals("name",row,cfg_card[data.cardId].Name)
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
		v_levelSheet:set_val_by_pmid(lvId,"bs",totalBs)	
	end
end



local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("属性模拟.xlsx")
	--local card_sheet = book:get_sheet("卡牌等级")
	local card_prop =  fn_calCardProp()
	local card_prop_sheet = book:get_sheet("卡牌属性")
	local lvds_sheet = book:get_sheet("关卡")
	fn_output_card_prop(card_prop_sheet,lvds_sheet,card_prop)
	book:save(MyTools.OutputExcelPath.."propSim.xlsx")
end

return fn_output_excel