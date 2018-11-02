function getTars(v_tar)
	local rst = {}
	if (v_tar and 1) > 0 then
		table.insert(rst,1)
	end
	if (v_tar and 2) > 0 then
		table.insert(rst,2)
	end
	if (v_tar and 4) > 0 then
		table.insert(rst,3)
	end
	return rst
end




--服务端返回升级或突破成功后调用该接口
function fn_shipUpUpdate(v_shipId,v_lv,v_blv)
	local cfg_attr = require "attr"
	local cfg_breakThrough = require "breakThrough"
	local cfg_lvup = require "lvup"

	local shipIds = {
		[1] = ["2001"],
		[2] = ["2002"],
		[3] = ["2003"]
	}

	local attrIds = {
		[1] = {1,2,3},
		[2] = {1,4,5},
		[3] = {1,4,5},
	}

	local strShipId = shipIds[v_shipId]

	local attrNames = {}
	local attrVals = {}

	for i=1,#attrIds[strShipId] do
		local attrId = attrIds[v_shipId][i]
		attrNames[i] = cfg_attr[attrId].cname
		for _i,attr in ipairs(cfg_lvup[strShipId][v_lv]) do
			if attr.id == attrId then
				--未来还会计算核能系统，真实的程序还要考虑血量大数的情况，KMB等，超出64位存储范围
				attrVals[i] = cfg_attr[attrId].iniVal[1][v_shipId] +  math.pow(1000,attr.valw or 0) attr.valv * cfg_breakThrough[strShipId][v_blv].factor
				break
			end
		end
	end
	--相应界面做UI更新操作
	Event.Brocast("updateLvupAttr",v_shipId,attrNames,attrVals)
	--通知属性系统属性发生改变
	Event.Brocast("updateAttr")
end





function fn_updateAttr()
	local cfg_attr = require "attr"
	local cfg_breakThrough = require "breakThrough"
	local cfg_chip = require "chip"
	local cfg_lvup = require "lvup"

	local lv = {20,15,17}
	local bkLv = {2,3,1}
	local chips = {"10003","10105","10212"}

	local players = {}
	local pIds = {"2001","2002","2003"}
	--属性结构
	for i=1,#pIds do
		players[i].id = pIds[i]
		players[i].attr = {}
		players[i].upAttr = {}
		players[i].equipAttr = {}
		players[i].chipAttr = {}
		players[i].boarAttr = {}
		for j=1,5 do
			players[i].upAttr[j] = {}
			players[i].equipAttr[j] = {}
			players[i].chipAttr[j] = {}
			players[i].boarAttr[j] = {}
			for k=1,#cfg_attr do
				players[i].upAttr[j][k] = {}
				players[i].equipAttr[j][k] = {}
				players[i].chipAttr[j][k] = {}
				players[i].boarAttr[j][k] = 1
				for slot=1,5 do
					players[i].upAttr[j][k][slot] = 0
					players[i].equipAttr[j][k][slot] = 0
					players[i].chipAttr[j][k][slot] = 0
				end
			end
		end
	end
	--获取初始属性
	for i=1,#players do
		for j=1,#cfg_attr do
			players.attr[j] = {}
			for k=1,5 do
				players[i].attr[j][k] = cfg_attr[j].ini[k][i]
			end
			players.attr[j].board_attr[j] = 1
		end
	end

	

	--计算升级突破属性
	for i=1,#players do
		local the_lvup_cfg = cfg_lvup[players[i].id][lv[i]]
		local breakCfg = cfg_breakThrough[players[i].id][bkLv[i]]
		for j=1,#the_lvup_cfg.attr do
			local lvup_attr = the_lvup_cfg.attr[j]
			local id = lvup_attr.id
			local tars = getTars(lvup_attr.tar)
			local slot = lvup_attr.slot
			local valv = lvup_attr.valv
			for k=1,#tars do
				local tar = tars[k]
				--players[tar].attr[id][slot] = players[tar].attr[id][slot] + valv * breakCfg.factor
				players[tar].upAttr[id][slot] = players[tar].upAttr[id][slot] + valv * breakCfg.factor			
			end
		end
	end
	--计算符文属性
	for i=1,#chips do
		local chip_id = chips[i]
		local chip_attr = cfg_chip[chip_id].attr
		for j=1,#chip_attr do
			local id = chip_attr[j].id
			local tars = getTars(chip_attr[j].tar)
			local slot = chip_attr[j].slot
			local valv = chip_attr[j].valv
			for k=1,#tars do
				local tar = tars[k]
				players[tar].chipAttr[id][slot] = valv
			end
		end
	end
	--对各系统属性加和
	for i=1,#players do
		for j=1,#cfg_attr do
			local div = cfg_attr[i].div
			for k=1,5 do
				players[i].attr[j][k] = players[i].attr[j][k] + players[i].upAttr[j][k] + players[i].equipAttr[j][k] + players[i].chipAttr[j][k]
			end
		end
	end


	--计算div
	for i=1,#players do
		for j=1,#cfg_attr do
			local div = cfg_attr[i].div
			for k=1,5 do
				players[i].attr[j][k] = players.attr[j][k] / div
			end
		end
	end

	--计算面板属性
	for i=1,#players do
		for j=1,#cfg_attr do
			local div = cfg_attr[i].div
			for k=1,5 do
				players[i].boarAttr[j] = players.boarAttr[j] * players.attr[j][k]
			end
		end
	end
end





--主入口函数。从这里开始lua逻辑
function Main()
	

end








--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect1")
	Time.timeSinceLevelLoad = 0
end

function OnApplicationQuit()
end