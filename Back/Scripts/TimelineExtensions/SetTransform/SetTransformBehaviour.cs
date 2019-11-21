using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class SetTransformBehaviour : PlayableBehaviour
{
    public Vector3 pos;
    public Vector3 angle;
    public bool fade;


    private Transform tran;
    private Vector3 initPos;
    private Vector3 initAngle;

    public override void OnBehaviourPause( Playable playable, FrameData info )
    {
        if (tran == null) return;
        var pct = CalcPct(playable);
        pct = (int)(pct + 0.5);
        tran.localPosition = Vector3.Lerp(initPos, pos, pct);
        tran.localEulerAngles = Vector3.Slerp(initAngle, angle, pct);
    }

    public override void ProcessFrame( Playable playable, FrameData info, object playerData )
    {
        if (tran == null)
        {
            Animator anim = playerData as Animator;
            if (anim != null)
            {
                tran = anim.transform.parent;

                if (!fade)
                {
                    tran.localPosition = pos;
                    tran.localEulerAngles = angle;
                } else
                {
                    if (tran != null)
                    {
                        initPos = tran.localPosition;
                        initAngle = tran.localEulerAngles;
                    }
                }
            }
        }

        if (tran != null && fade)
        {
            var pct = CalcPct(playable);
            tran.localPosition = Vector3.Lerp(initPos, pos, pct);
            tran.localEulerAngles = Vector3.Slerp(initAngle, angle, pct);
        }

    }


    float CalcPct(Playable playable )
    {
        return(float)( playable.GetTime() / playable.GetDuration() );
    }

}
