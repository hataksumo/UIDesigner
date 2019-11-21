using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Rendering.PostProcessing;
namespace LJ_TimelineExtension
{
    // A behaviour that is attached to a playable
    public class BlurMixer : PlayableBehaviour
    {

        struct ClipInfo
        {
            public float blurParam;
            public float blurSize;
            public float weight;
            public double time;
        }
        PostProcessProfile profile;

        public override void OnGraphStart( Playable playable )
        {
            base.OnGraphStart(playable);
            if(profile == null)
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
                profile = volume.sharedProfile;
            }
        }


        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            if (profile == null) return;
            var blurCtrl = profile.GetSetting<DownSampleBlur>();
            if( blurCtrl == null)
            {
                blurCtrl = profile.AddSettings<DownSampleBlur>();
            }
            base.ProcessFrame(playable, info, playerData);
            int activeInputs = 0;
            ClipInfo clipA = new ClipInfo();
            ClipInfo clipB = new ClipInfo();
            for (int i = 0 ; i < playable.GetInputCount() ; i++)
            {
                float weight = playable.GetInputWeight(i);
                var clip = (ScriptPlayable<BlurBehaviour>)playable.GetInput(i);
                var behaviour = clip.GetBehaviour();
                if (behaviour != null
                    && playable.GetPlayState() == PlayState.Playing
                    && weight > 0
                    )
                {
                    clipA = clipB;
                    clipB.blurParam = behaviour.blurParam;
                    clipB.blurSize = behaviour.blurSize;
                    clipB.weight = weight;
                    clipB.time = clip.GetTime();
                    if (++activeInputs == 2)
                        break;
                }
            }
                
            if (activeInputs == 0)
            {
                if (blurCtrl.active)
                {
                    blurCtrl.active = false;
                }
                return;
            }
            if (!blurCtrl.active)
            {
                blurCtrl.active = true;
            }
            float localBlurParam = 0f;
            float localBlurSize = 0f;
            if (activeInputs < 2)
            {
                localBlurParam = clipB.blurParam;
                localBlurSize = clipB.blurSize;
            } else
            {
                if (clipA.time > clipB.time)
                {
                    localBlurParam = Mathf.Lerp(clipB.blurParam , clipA.blurParam, clipB.weight);
                    localBlurSize = Mathf.Lerp(clipA.blurSize, clipB.blurSize, clipB.weight);
                } else
                {
                    localBlurParam = Mathf.Lerp(clipA.blurParam , clipB.blurParam, clipB.weight);
                    localBlurSize = Mathf.Lerp(clipA.blurSize, clipB.blurSize, clipA.weight);
                }

            }

            blurCtrl.blurParam.value = localBlurParam;
            if (!blurCtrl.blurParam.overrideState)
            {
                blurCtrl.blurParam.overrideState = true;
            }
            blurCtrl.blurSize.value = localBlurSize;
            if (!blurCtrl.blurSize.overrideState)
            {
                blurCtrl.blurSize.overrideState = true;
            }

        }

        public override void OnGraphStop(Playable playable)
        {
            base.OnGraphStop(playable);
            var blurCtrl = profile.GetSetting<DownSampleBlur>();
            if (blurCtrl == null)
            {
                blurCtrl = profile.AddSettings<DownSampleBlur>();
            }
            blurCtrl.blurParam.value = 1;
            blurCtrl.blurSize.value = 0;
            blurCtrl.enabled.value = false;
        }
    }

}