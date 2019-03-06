require "Tools"


function test()
	print("1122334")

end




function Main()
	-- body
end


--excel_path_root = AppContest.AssetPath.."\\..\\Excel\\"--excel表的目录

function output_excel()
	require "lua_class"


	dofile("tools")
	local output = {
	--"Excel\\DropOutput",
	"Excel\\BattleCameraOutput",
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