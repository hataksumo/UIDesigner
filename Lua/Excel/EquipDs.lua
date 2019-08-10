local calEqpDesign = function()
	local chaEqp = {
		{lvId=0,qua=0},--第1章
		{lvId=0,qua=0},--第2章
		{lvId=1,qua=3,lvsum = 9},--第3章
		{lvId=1,qua=4,lvsum = 9},--第4章
		{lvId=2,qua=3,lvsum = 15},--第5章
		{lvId=2,qua=4,lvsum = 15},--第6章
		{lvId=3,qua=3,lvsum = 15},--第7章
		{lvId=3,qua=4,lvsum = 15},--第8章
		{lvId=4,qua=3,lvsum = 15},--第9章
		{lvId=4,qua=4,lvsum = 15},--第10章
		{lvId=5,qua=3,lvsum = 15},--第11章
		{lvId=5,qua=4,lvsum = 15},--第12章
		{lvId=6,qua=3,lvsum = 15},--第13章
		{lvId=6,qua=4,lvsum = 15},--第14章
		{lvId=6,qua=5,lvsum = 15},--第15章
	}

	local eqpType = {"武器","头盔","肩甲","衣服","鞋子","护手","项链","戒指"}
	local colorName = {"绿色","蓝色","紫色","橙色"}
	local q5ColorName = {"橙色套3","橙色套2","橙色套2","橙色套2","橙色套2","橙色套2","橙色套3","橙色套3"}
	local q6ColorName = {"橙色套2","橙色套3","橙色套3","橙色套3","橙色套3","橙色套3","橙色套2","橙色套2"}
	local q7ColorName = {"橙色套1","橙色套1","橙色套1","橙色套2","橙色套2","橙色套2","橙色套1","橙色套1"}

	






end










local fn_output_excel = function()
	local book = ExcelBookObject.New()
	book:open("装备数值设计.xlsx")
	local dropDsSheet = book:get_sheet("卡牌组")




	book:save(MyTools.OutputExcelPath.."EquipDs.xlsx")
end