using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class RoleVisiableAsset : PlayableAsset
    {
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            return Playable.Create(graph);
        }
    }

}