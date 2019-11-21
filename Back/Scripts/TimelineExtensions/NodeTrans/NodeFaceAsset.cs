using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class NodeFaceAsset : PlayableAsset
    {
        public ExposedReference<GameObject> lookAtNode;
        public float ToPct = 0f;
        public float BackPct = 1f;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            //return Playable.Create(graph);
            var clip = ScriptPlayable<NodeFacesBehaviour>.Create(graph);
            var b = clip.GetBehaviour();
            GameObject gameObject = this.lookAtNode.Resolve(graph.GetResolver());
            if (gameObject != null)
                b.lookAtPos = gameObject.transform.position;
            b.toPct = ToPct;
            b.backPct = BackPct;

            return clip;
        }
    }

}