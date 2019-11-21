using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class RoleClipPosAsset : PlayableAsset
{
    public AnimationCurve posCurve = AnimationCurve.Constant(0f,1f,0f);
    public Color edgeColor;
    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable(PlayableGraph graph, GameObject go)
    {
        var pb = ScriptPlayable<RoleClipPosBehaviour>.Create(graph);
        var b = pb.GetBehaviour();
        b.posCurve = posCurve;
        b.edgeColor = edgeColor;
        return pb;
    }
}
