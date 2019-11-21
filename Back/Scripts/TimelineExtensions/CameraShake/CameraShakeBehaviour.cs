using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using ThinksquirrelSoftware.Utilities;
// A behaviour that is attached to a playable

namespace LJ_TimelineExtension
{
    public class CameraShakeBehaviour : PlayableBehaviour
    {
        public ShakeData data;
        private bool playState = false;
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            this.playState = false;

        }

        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            if (playState) return;
            playState = true;

            if (Application.isPlaying)
            {
                if (!_CameraShake.instance)
                {
                    Camera cam = null;
                    Cinemachine.CinemachineBrain camBrain = Cinemachine.CinemachineCore.Instance.GetActiveBrain(0);
                    if(camBrain != null)
                    {
                        cam = camBrain.OutputCamera;
                    }

                    if(cam == null)
                    {
                        if (Camera.main != null)
                        {
                            cam = Camera.main;
                    
                        } else
                        {
                            if (Camera.allCamerasCount > 0)
                            {
                                cam = Camera.allCameras[0];
                            }
                        }
                    }

                    if (cam != null)
                        cam.gameObject.AddComponent<_CameraShake>();
                }

                
            }


            if (_CameraShake.instance)
                _CameraShake.instance.DoShake(
                    data.number_of_shakes,
                    data.shake_amount,
                    data.rotation_amount,
                    data.distance,
                    data.speed,
                    data.decay,
                    0,
                    data.by_time_scale
                    );

        }

    }

}