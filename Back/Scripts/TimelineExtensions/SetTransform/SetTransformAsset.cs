using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class SetTransformAsset : PlayableAsset
{
    //public bool local;
    public Vector3 pos;
    public Vector3 angle;
    public bool fade = false;
	// Factory method that generates a playable based on this asset
	public override Playable CreatePlayable(PlayableGraph graph, GameObject go) {
        //return Playable.Create(graph);
        var playable = ScriptPlayable<SetTransformBehaviour>.Create(graph);
        var b = playable.GetBehaviour();
       // b.islocal = local;
        b.pos = pos;
        b.angle = angle;
        b.fade = fade;

        return playable;
	}
}
