using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class RoleClipPosBehaviour : PlayableBehaviour
{
    public AnimationCurve posCurve = AnimationCurve.Constant(0f, 1f, -2f);
    public Color edgeColor;

    private RoleFxController ctrller;

    public double GetPercent( Playable playable )
    {
        return playable.GetTime() / playable.GetDuration();
    }

    // Called when the owning graph starts playing
    public override void OnGraphStart(Playable playable)
    {
        
    }

    // Called when the owning graph stops playing
    public override void OnGraphStop(Playable playable)
    {
        
    }

    // Called when the state of the playable is set to Play
    public override void OnBehaviourPlay(Playable playable, FrameData info)
    {
        if (ctrller == null) return;

        var zPos = posCurve.Evaluate((float)GetPercent(playable));

        ctrller.SetPosClip(zPos, edgeColor);
    }

    // Called when the state of the playable is set to Paused
    public override void OnBehaviourPause(Playable playable, FrameData info)
    {
        if (ctrller == null) return;
        ctrller.ResetPosClip();
    }

    public override void ProcessFrame( Playable playable, FrameData info, object playerData )
    {
        if (ctrller == null)
        {
            var anim = playerData as Animator;
            if (anim != null)
            {
               var go = anim.gameObject;
                ctrller = go.GetComponent<RoleFxController>();
            }
        }
        if (ctrller == null) return;

        var zPos = posCurve.Evaluate((float)GetPercent(playable));

        ctrller.SetPosClip(zPos, edgeColor);

    }

}
