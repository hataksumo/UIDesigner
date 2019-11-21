using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class AnimatorStatePlayableAsset : PlayableAsset
    {
        public string StateName;
        public float fadeTime = 0f;
        public float startTime = 0f;
        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            var playable = ScriptPlayable<AnimatorStatePlayableBehaviour>.Create(graph);
            //var behaviour = playable.GetBehaviour();
            //behaviour.StateHash = Animator.StringToHash(StateName);
            //behaviour.fadeTime = fadeTime;
            return playable;
        }
    }

}