using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Timeline;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{

    public class TimeScaleMixer : PlayableBehaviour
    {
        struct ClipInfo
        {
            public float scale;
            public float weight;
            public double time;
        }

        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            base.ProcessFrame(playable, info, playerData);
            int activeInputs = 0;
            ClipInfo clipA = new ClipInfo();
            ClipInfo clipB = new ClipInfo();
            for (int i = 0 ; i < playable.GetInputCount() ; i++)
            {
                float weight = playable.GetInputWeight(i);
                var clip = (ScriptPlayable<TimeScaleBehaviour>)playable.GetInput(i);
                var behaviour = clip.GetBehaviour();
                if (behaviour != null
                    && playable.GetPlayState() == PlayState.Playing
                    && weight > 0
                    )
                {
                    clipA = clipB;
                    clipB.scale = behaviour.scale;
                    clipB.weight = weight;
                    clipB.time = clip.GetTime();
                    if (++activeInputs == 2)
                        break;
                }
            }
            if (activeInputs == 0) {
                if( Time.timeScale < 1f)
                {
                    Time.timeScale = 1f;
                }
                return;
            }

            if (activeInputs < 2)
            {
                Time.timeScale = clipB.scale;
            } else
            {
                if (clipA.time > clipB.time)
                {
                    Time.timeScale = Mathf.Lerp(clipA.scale, clipB.scale, clipB.weight);
                } else
                {
                    Time.timeScale = Mathf.Lerp(clipA.scale, clipB.scale, clipA.weight);
                }

            }
        }

    }

}