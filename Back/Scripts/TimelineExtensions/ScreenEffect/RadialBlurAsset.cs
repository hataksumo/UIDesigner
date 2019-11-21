using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class RadialBlurAsset : PlayableAsset
{
    public Vector2 blurCenter;
    public float centerSize;
    public AnimationCurve blurSizeCur = new AnimationCurve(new Keyframe(0, 0), new Keyframe(0, 0));
    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable(PlayableGraph graph, GameObject go)
    {
        var playable = ScriptPlayable<RadialBlurBehaviour>.Create(graph);

        var b = playable.GetBehaviour();
        b.blurCenter = blurCenter;
        b.centerSize = centerSize;
        b.blurSizeCur = blurSizeCur;

        return playable;
    }
}
