require "Tools"


function test()
	init()
	print("testOK")
end

local getIdx = function(r,y,b)
	
end

function recover_crystall(v_rp,v_yp,v_bp,v_times)
	--[[local weight = {v_rp+1,v_yp+1,v_bp+1}
	local fac = {v_rp+1,v_yp+1,v_bp+1}
	local rst = {0,0,0}
	for i=1,v_times do
		local rWeight = {1/weight[1],2/weight[2],1/weight[3]}
		local sum = 1/weight[1]+2/weight[2]+1/weight[3]
		local rd = math.random() * sum
		for j=1,3 do
			rd = rd - rWeight[j]
			if rd < 0 then
				rst[j] = rst[j] + 1
				weight[j] = weight[j] + fac[j]
				break
			end
		end
	end

	print(rst[1],rst[2],rst[3])]]
	--[[
	local book = ExcelBookObject.New()
	book:open("属性模拟.xlsx")
	local optSheet = book:get_sheet("output")
	local matrix = {}
	local maxCrystall = 10
	local maxHuiHe = 10
	local p = {1/3.0,1/3.0,1/3.0}
	--初始化第0回合
	matrix[0][]
	for i=0,maxCrystall do
		matrix[0][i] = {}
		
	end
	--各回合计算
	for i=1,maxHuiHe do
		for cryNum = 0,maxCrystall do
			for colorId = 1,3 do
				if cryNum > 0 then
					matrix[i][cryNum][colorId] = matrix[i-1][cryNum-1][math.mod(colorId,3)+1] * p[colorId] + 
					matrix[i-1][cryNum-1][math.mod(colorId,3)+2] * p[colorId] +
					matrix[i-1][cryNum-1][math.mod(colorId,3)+2] * p[colorId]
			end
		end
	end
	]]
end


function Main()
	-- body
end

--excel_path_root = AppContest.AssetPath.."\\..\\Excel\\"--excel表的目录

function SetLooseReadonly(v_cfg)
	-- body
end

function init()
	require "lua_class"
	_G.ddt = {}
	require "tools"
	require "Logic/Property"
	require "Common/functions"
	--print("ini")
end


function output_excel()
	local output = {
	--"Excel\\DropOutput",
	--"Excel\\BattleCameraOutput",
	--"Excel\\jhmOutput"
	--"Excel\\NewDropOutput"
	"Excel\\PropBsOutput"
	--"Excel\\GuaJiPaiQian"
	--"Excel\\RelicAct"
	--"Excel\\EquipDs"
	--"Excel\\ExWpWbossOutput"
	}
	for _i,val in ipairs(output) do
		local fn = dofile(val)
		if type(fn) == "function" then
			fn()
		elseif type(fn) == "string" then
			ZFDebug.Error(string.format("执行%s文件时报错了，报错信息为:\r\n%s",val,fn))
		else
			ZFDebug.Error(string.format("执行%s文件时返回为空，信息为:\r\n%s",val,fn))
		end

		ZFDebug.Koid(string.format("%s导出完成",val))
	end
	ZFDebug.Koid("哈哈，导出完成")
end