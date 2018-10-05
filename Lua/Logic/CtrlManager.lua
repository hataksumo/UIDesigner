require "Common/define"
require "Controller/HelloSkynetCtrl"
require "Controller/NotifyCtrl"
require "Controller/ArmyEquiptProductCtrl"

CtrlManager = {};
local this = CtrlManager;
local ctrlList = {};	--控制器列表--
local abAssetCfg = dofile "Config/AbAssetCfg"




function CtrlManager.Init()
	logWarn("CtrlManager.Init----->>>");
	--ctrlList[CtrlNames.Prompt] = PromptCtrl.New();
	--ctrlList[CtrlNames.Message] = MessageCtrl.New();
	ctrlList[CtrlNames.HelloSkynet] = HelloSkynetCtrl.New();
	ctrlList[CtrlNames.Notify] = NotifyCtrl.New();
	ctrlList[CtrlNames.ArmyEquiptProduct] = ArmyEquiptProductCtrl.New()
	return this;
end

--添加控制器--
function CtrlManager.AddCtrl(ctrlName, ctrlObj)
	ctrlList[ctrlName] = ctrlObj;
end

--获取控制器--
function CtrlManager.GetCtrl(ctrlName)
	return ctrlList[ctrlName];
end

--移除控制器--
function CtrlManager.RemoveCtrl(ctrlName)
	ctrlList[ctrlName] = nil;
end

--关闭控制器--
function CtrlManager.Close()
	logWarn('CtrlManager.Close---->>>');
end

function CtrlManager.CreatePanel(v_strLogicName,v_fnOnCreate)
	v_strLogicName = v_strLogicName or "nil"
	local cfg = abAssetCfg[v_strLogicName]
	if not cfg then
		LogErr("can't find "..v_strLogicName.."in AbAssetCfg")
		return 
	end
	log(cfg.ab," ",cfg.asset," ",cfg.name," ")
	panelMgr:CreateThePanel(cfg.ab,cfg.asset,cfg.name,v_fnOnCreate)
end