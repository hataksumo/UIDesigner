
-- 窗口配置
local UINationWithResTipConfig = {
    Name = UIWindowNames.UINationWithResTip,
    Layer = UILayers.NormalLayer,
    Model = require "UI.UINationWithResTip.Model.UINationWithResTipModel",
    Ctrl = require "UI.UINationWithResTip.Controller.UINationWithResTipCtrl",
    View = require "UI.UINationWithResTip.View.UINationWithResTipView",
    PrefabPath = "UI/Prefabs/View/UINationWithResTip.prefab",
}

return {
    -- 配置
    UINationWithResTipConfig = UINationWithResTipConfig,

}
