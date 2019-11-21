using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.UI;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    [ExecuteInEditMode]
    public class BlurAsset : PlayableAsset
    {
        [Range(0f, 1f)]
        public float blurParam = 1f;
        [Range(0f, 5f)]
        public float blurSize;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {

            var playable = ScriptPlayable<BlurBehaviour>.Create(graph);
            var b = playable.GetBehaviour();
            b.blurParam = blurParam;
            b.blurSize = blurSize;
            return playable;
        }
    }

}