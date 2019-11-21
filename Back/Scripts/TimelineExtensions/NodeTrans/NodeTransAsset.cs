using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class NodeTransAsset : PlayableAsset
    {
        public float transOffsetDir;
        public float transDistance = 0;
        public float additionOffset = 0;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            //return Playable.Create(graph);
            var clip = ScriptPlayable<NodeTransBehaviour>.Create(graph);
            var b = clip.GetBehaviour();
            b.transDir = transOffsetDir;
            b.transDistance = transDistance;
            b.additionOffset = additionOffset;
            return clip;
        }
    }
}