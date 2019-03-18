local optJHM = function()
	local doc = ExcelBookObject.New()
	doc:open("鸡和马.xlsx")
	local sheet = doc:get_sheet("鸡和马")
	for i=1,2000 do
		local id = 2000+i
		sheet:set_vali("Id",2+i,i)
		local code = MyTools.GetJHM(i)
		sheet:set_vals("Code",2+i,code)
	end
	doc:save(MyTools.ExcelPath.. "jhm.xlsx")
end

return optJHM