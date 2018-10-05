--[[
--note:
记录ui中prefab的所属assetbundle和ui资源名
colums:
{uiName,UI逻辑名} ,{name,加载出来的panel名} ,{ab,所属assetBundle} ,{asset,资源名}
primary key:
#0 [AbAssetCfg]: uiName
]]
return{
	ArmyEquiptProduct = {ab = "ArmyEquiptProduct",asset = "ArmyEquiptProductPanel4",name = "ArmyEquiptProductPanel"},
	HelloSkynet = {ab = "HelloSkynet",asset = "HelloSkynetPanel",name = "HelloSkynetPanel"},
	Notify = {ab = "Notify",asset = "NotifyPanel",name = "NotifyPanel"}
}