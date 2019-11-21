#define SIMPLE_MODE
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    // A behaviour that is attached to a playable
    public class NodeTransBehaviour : PlayableBehaviour
    {
        public Transform trans;
        public float scale;

#if !SIMPLE_MODE
        public Vector3 startTrans; 
#endif
        public float transDir;
        public float transDistance;
        public float additionOffset;
        // Called when the state of the playable is set to Play
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {  
        }

        // Called when the state of the playable is set to Paused
        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            if (trans == null) return;
            var pct = GetPercent(playable);
            pct = (int)(pct + 0.5);
            SetPos(pct);
        }

        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            if (trans == null)
            {
                var anim = playerData as Animator;
                if( anim != null)
                {
                    trans = anim.transform.parent;
#if !SIMPLE_MODE
                    startTrans = trans.localPosition; 
#endif
                    scale = anim.transform.lossyScale.x;
                }
            }
            
            SetPos(GetPercent(playable));
        }

        public double GetPercent(Playable playable )
        {
            return playable.GetTime() / playable.GetDuration();
        }

        public void SetPos(double pct)
        {
            if (trans == null) return;
#if !SIMPLE_MODE
            Vector3 dir = Vector3.forward * transDir;
            dir.Normalize();
            var offsetValue = dir * ((transDistance / scale + additionOffset * scale) * (float)pct);
            trans.localPosition = startTrans + offsetValue;
#else

            if ( transDir > 0f)
                trans.localPosition = Vector3.forward * ((transDistance / scale + additionOffset * scale) * (float)pct);
            else
                trans.localPosition = Vector3.forward * ((transDistance / scale + additionOffset * scale) * (float)(1.0-pct));
#endif
        }
    }
}