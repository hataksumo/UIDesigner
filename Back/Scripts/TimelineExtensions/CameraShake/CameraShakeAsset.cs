using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;


namespace LJ_TimelineExtension
{
    [System.Serializable]
    [ExecuteInEditMode]
    public class CameraShakeAsset : PlayableAsset
    {
        public ShakeData data;

        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            var ret = ScriptPlayable<CameraShakeBehaviour>.Create(graph);
            var shakeBeh = ret.GetBehaviour();
            shakeBeh.data = data;
            return ret;
        }
    }

}