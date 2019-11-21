using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;


namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class TimeScaleAsset : PlayableAsset
    {
        public float scale = 1;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            var playable = ScriptPlayable<TimeScaleBehaviour>.Create(graph);
            playable.GetBehaviour().scale = scale;
            return playable;
        }
    }

}