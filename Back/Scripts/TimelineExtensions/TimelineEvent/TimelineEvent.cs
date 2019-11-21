using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[System.Serializable]
public class TimelineEvent : PlayableAsset
{
    public string msg;
    public int lParam;
    public float fParam;
    public string sParam;

    // Factory method that generates a playable based on this asset
    public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
    {
        var ret = ScriptPlayable<TimelineEventBehaviour>.Create(graph);
        var behaviour = ret.GetBehaviour() as TimelineEventBehaviour;
        if (behaviour != null)
        {
            behaviour.msg = msg;
            behaviour.lParam = lParam;
            behaviour.fParam = fParam;
            behaviour.sParam = sParam;          
        }

        return ret;
    }
}
