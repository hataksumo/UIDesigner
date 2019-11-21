using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{
    // A behaviour that is attached to a playable
    public class NodeFacesBehaviour : PlayableBehaviour
    {
        public Transform trans;
        public Vector3 lookAtPos;
        public float localLookAtAngle;

        public float toPct;
        public float backPct;
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
                    var dir = lookAtPos - trans.position ;
                    dir.y = 0f;
                    if (trans.parent != null)
                        dir = trans.parent.InverseTransformDirection(dir).normalized;
                    else
                        dir.Normalize();
                    localLookAtAngle = Vector3.SignedAngle(Vector3.forward, dir, Vector3.up);
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

            if( pct < toPct)
            {
                var angle = Mathf.LerpUnclamped(0f, localLookAtAngle, ((float)pct)/toPct);
                trans.localEulerAngles = Vector3.up * angle;
            }
            else if( pct > backPct)
            {
                var angle = Mathf.Lerp(0f, localLookAtAngle, (1f-(float)pct) / (1f- backPct));
                trans.localEulerAngles = Vector3.up * angle;
            }
        }
    }
}