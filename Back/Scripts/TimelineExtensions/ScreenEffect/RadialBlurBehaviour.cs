using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Rendering.PostProcessing;

// A behaviour that is attached to a playable
public class RadialBlurBehaviour : PlayableBehaviour
{
    public Vector2 blurCenter;
    public float centerSize;
    public AnimationCurve blurSizeCur;

    RadialBlur blurCtrl = null;

    // Called when the owning graph starts playing
    public override void OnGraphStart( Playable playable )
    {
        PostProcessLayer postLayer = null;

        if (Camera.main != null)
        {
            postLayer = Camera.main.gameObject.GetComponentInChildren<PostProcessLayer>();
        }

        if (postLayer == null)
        {
            var allCam = Camera.allCameras;
            foreach (var cam in allCam)
            {
                var pl = cam.gameObject.GetComponentInChildren<PostProcessLayer>();
                if (pl != null)
                {
                    postLayer = pl;
                    break;
                }
            }
        }

        if (postLayer == null) return;


        PostProcessVolume volume = PostProcessManager.instance.GetHighestPriorityVolume(postLayer);
        PostProcessProfile profile = volume.sharedProfile;
        if (profile == null) return;

        blurCtrl = profile.GetSetting<RadialBlur>();
        if (blurCtrl == null)
        {
            blurCtrl = profile.AddSettings<RadialBlur>();
        }

        blurCtrl.enabled.value = true;
        blurCtrl.center.value = this.blurCenter;
        blurCtrl.center.overrideState = true;
        blurCtrl.centerSize.value = this.centerSize;
        blurCtrl.centerSize.overrideState = true;
        blurCtrl.blurSize.value = this.blurSizeCur.Evaluate(0f);
        blurCtrl.blurSize.overrideState = true;
    }

    // Called when the owning graph stops playing
    public override void OnGraphStop( Playable playable )
    {

    }

    // Called when the state of the playable is set to Play
    public override void OnBehaviourPlay( Playable playable, FrameData info )
    {
        if (blurCtrl != null)
            blurCtrl.enabled.value = true;
    }

    // Called when the state of the playable is set to Paused
    public override void OnBehaviourPause( Playable playable, FrameData info )
    {
        if (blurCtrl != null)
            blurCtrl.enabled.value = false;
    }

    // Called each frame while the state is set to Play
    public override void PrepareFrame( Playable playable, FrameData info )
    {
        if (blurCtrl != null)
        {
            var pct = playable.GetTime() / playable.GetDuration();
            blurCtrl.blurSize.value = this.blurSizeCur.Evaluate((float)pct);
        }
    }
}
