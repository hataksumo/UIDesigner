require "Tools"


function test()
	init()
	print("testOK")
end

function recover_crystall(v_rp,v_yp,v_bp,v_times)
	local weight = {v_rp+1,v_yp+1,v_bp+1}
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

	print(rst[1],rst[2],rst[3])
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
end


function output_excel()
	local output = {
	--"Excel\\DropOutput",
	--"Excel\\BattleCameraOutput",
	--"Excel\\jhmOutput"
	--"Excel\\NewDropOutput"
	"Excel\\PropBsOutput"
	}
	for _i,val in ipairs(output) do
		local fn = dofile(val)
		if type(fn) == "function" then
			fn()
		elseif type(fn) == "string" then
			ZFDebug.Error(string.format("执行%s文件时报错了，报错信息为:\r\n%s",val,fn))
		end

		ZFDebug.Koid(string.format("%s导出完成",val))
	end
	ZFDebug.Koid("哈哈，导出完成")
end