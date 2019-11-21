-- 窗口配置
local UINationTeamConfiguration = {
    Name = UIWindowNames.UINationTeamConfiguration,
    Layer = UILayers.BackgroudLayer,
    Model = require "UI.UINationTeamConfiguration.Model.UINationTeamConfigurationModel",
    Ctrl = require "UI.UINationTeamConfiguration.Controller.UINationTeamConfigurationCtrl",
    View = require "UI.UINationTeamConfiguration.View.UINationTeamConfigurationView",
    PrefabPath = "UI/Prefabs/View/UINationTeamConfiguration.prefab",
}

return {
    -- 配置
    UINationTeamConfiguration = UINationTeamConfiguration,
}