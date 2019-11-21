-- 窗口配置
local UIMail = {
    Name = UIWindowNames.UIMail,
    Layer = UILayers.BackgroudLayer,
    Model = require "UI.UIMail.Model.UIMailModel",
    Ctrl = require "UI.UIMail.Controller.UIMailCtr",
    View = require "UI.UIMail.View.UIMailView",
    PrefabPath = "UI/Prefabs/View/UIMail.prefab",
}

--[[local UILoginServer = {
    Name = UIWindowNames.UILoginServer,
    Layer = UILayers.NormalLayer,
    Model = require "UI.UILogin.Model.UILoginServerModel",
    Ctrl = require "UI.UILogin.Controller.UILoginServerCtrl",
    View = require "UI.UILogin.View.UILoginServerView",
    PrefabPath = "UI/Prefabs/View/UILoginServer.prefab",
}--]]

return {
    -- 配置
    UIMail = UIMail,
   -- UILoginServer = UILoginServer,
}