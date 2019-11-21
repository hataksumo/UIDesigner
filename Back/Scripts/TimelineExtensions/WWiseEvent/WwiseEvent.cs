using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class WwiseEvent : PlayableAsset
{
    public string audioName;

    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
    {
        var ret = ScriptPlayable<WwiseEventBehaviour>.Create(graph);
        var behaviour = ret.GetBehaviour() as WwiseEventBehaviour;
        if (behaviour != null)
        {
            behaviour.audioName = audioName;
        }

        return ret;
    }
}
