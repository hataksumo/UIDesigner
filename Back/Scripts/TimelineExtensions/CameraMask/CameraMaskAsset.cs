using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{
    using PDBH = PlayableDirectorBindingHelper;
    [System.Serializable]
    public class CameraMaskAsset : PlayableAsset
    {
        public Color maskColor = new Color(0f, 0.05f,0.28f,1f);
        public float startFadePct = 0.05f;
        public AnimationCurve startFadeCurve = new AnimationCurve(new Keyframe(0,0),new Keyframe(1,1));

        public float endFadePct = 0.95f;
        public AnimationCurve endFadeCurve = new AnimationCurve(new Keyframe(0, 1), new Keyframe(1, 0));
        //private Color fixColor = new Color(0f, 0.05f, 0.28f, 1f);
        //private float outputAlpha = 1f;
        GameObject GetBindingGameObject( PlayableDirector pd, TrackAsset track )
        {
            var obj = pd.GetGenericBinding(track);
            if (obj is GameObject)
            {
                return obj as GameObject;
            } else if (obj is Transform)
            {
                return (obj as GameObject).gameObject;
            } else if (obj is Component)
            {
                return (obj as Component).gameObject;
            }
            return null;
        }

        //public void ChangeMaskBehaviourColorAlpha(float alpha)
        //{
        //    //if(this.maskColor.a < 1)
        //    //{
        //    //    Color col = this.maskColor;
        //    //    col.a = col.a * alpha;
        //    //    this.fixColor = col;
        //    //}
        //    //else
        //    //{
        //    //    this.fixColor = this.maskColor;
        //    //}

        //    outputAlpha = alpha;
        //}
               

        // Factory method that generates a playable based on this asset
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            var ret = ScriptPlayable<CameraMaskBehaviour>.Create(graph);
            var behaviour = ret.GetBehaviour();            
            behaviour.maskColor = this.maskColor;
            behaviour.startFadePct = this.startFadePct;
            behaviour.startFadeCurve = this.startFadeCurve;
            behaviour.endFadePct = this.endFadePct;
            behaviour.endFadeCurve = this.endFadeCurve;

            GameObject attacker = null;
            GameObject target = null;
            List<GameObject> others = new List<GameObject>();            
            PlayableDirector pd = go.GetComponent<PlayableDirector>();
            var timeline = pd.playableAsset as TimelineAsset;
            foreach (var track in timeline.GetOutputTracks())
            {
                if (attacker == null && track.name.StartsWith(PDBH.AttackerTrackName))
                {
                    attacker = GetBindingGameObject(pd, track);
                } else if (target == null && track.name.StartsWith(PDBH.TargetTrackName))
                {
                    target = GetBindingGameObject(pd, track);
                }else if( track.name.StartsWith(PDBH.OtherTrackName) && 
                    (
                    track is AnimationTrack
                    || track is AnimatorStateTrack
                    ))
                {
                    var otherGo = GetBindingGameObject(pd, track);
                    if( otherGo != null && !others.Contains(otherGo))
                    {
                        others.Add(otherGo);
                    }
                }                
            }           

            if(attacker)
            {
                behaviour.attacker = attacker.GetComponent<RoleFxController>();
            }
            if(target)
            {
                behaviour.target = target.GetComponent<RoleFxController>();
            }

            if( others != null && others.Count > 0)
            {
                behaviour.others = new List<RoleFxController>();
                foreach (var o in others)
                {
                    behaviour.others.Add(o.GetComponent<RoleFxController>());
                }
            }
             
            return ret;
        }
    }

}