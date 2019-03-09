
local translate_sheet = function(v_dsSheet,v_dorpGroup,v_drop)
	local jcMat = {{"寄灵人材料初级","寄灵人材料中级","寄灵人材料高级"},{"守护灵材料初级","守护灵材料中级","守护灵材料高级"}
	local scMat = {{"红色精华中级","红色精华高级"},{"黄色精华中级","黄色精华高级"},{"蓝色精华中级","蓝色精华高级"}}
	local xsMat = {"修身宝箱"}
	local cha = {{2,2},{4,4},{6,6},{7,8},{7,8},{7,8},{7,8},{7,8},{7,8}}
	local nd = {"普通","困难"}
	local header = {"初级基础","中级基础","高级基础","中级三才","高级三才","修身"}

	local drop = {}
	local dropGroupRow = 1
	local dropRow = 1

	local datas = {}
	for i=1,#cha do
		local data = {}
		--读取一行数据
		for _j,headerName in ipairs(header) do
			data[_j] = v_dsSheet:get_valf(headerName,i)
		end
		table.insert(datas,data)
	end

	--生成掉落组
	
end

local output_excel = function()
	local book = ExcelBookObject.New()
	book:open("新章节掉落.xlsx")
	local sheetDisigner = book:get_sheet("新挂机派遣")
	local sheetDorpGroup = book:get_sheet("DropGroup")
	local sheetDorp = book:get_sheet("Drop")
	translate_sheet(sheetDisigner,sheetDorpGroup,sheetDorp)
	book:save(MyTools.ExcelPath.."drop.xlsx")
end