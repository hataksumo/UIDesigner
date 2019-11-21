using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using LJ_Shader_Utilities;
class RoleFaceAnimMixer : PlayableBehaviour
{
    private FaceAnimPlayer player;

    struct ClipInfo
    {
        //data
        public float weight;
        public int LeftEyeIndex     ;
        public int RightEyeIndex    ;
        public int MouthIndex       ;

        //logic
        public double time;       
    }

    public override void ProcessFrame( Playable playable, FrameData info, object playerData )
    {
        base.ProcessFrame(playable, info, playerData);
        if (player == null)
        {
            var anim = playerData as Animator;
            player = anim.gameObject.GetComponentInChildren<FaceAnimPlayer>();
        }
        if (player == null) return;

        int activeInputs = 0;
        ClipInfo clipA = new ClipInfo();
        ClipInfo clipB = new ClipInfo();
        for (int i = 0 ; i < playable.GetInputCount() ; i++)
        {
            float weight = playable.GetInputWeight(i);
            var clip = (ScriptPlayable<RoleFaceAnimBehaviour>)playable.GetInput(i);
            var behaviour = clip.GetBehaviour();
            if( behaviour != null 
                && playable.GetPlayState() == PlayState.Playing
                && weight > 0
                )
            {
                clipA = clipB;

                clipB.LeftEyeIndex  = behaviour.LeftEyeIndex ;
                clipB.RightEyeIndex = behaviour.RightEyeIndex;
                clipB.MouthIndex    = behaviour.MouthIndex;

                clipB.weight = weight;
                clipB.time = clip.GetTime();                
                if (++activeInputs == 2)
                    break;
            }
        }
        if (activeInputs == 0) return;

        if(activeInputs < 2)
        {
            player.SetFace(
                clipB.LeftEyeIndex ,
                clipB.RightEyeIndex,
                clipB.MouthIndex
                );
        } else
        {
            if (clipA.time > clipB.time)
            {
                player.SetFace(
                    clipB.weight,
                    clipA.LeftEyeIndex ,
                    clipA.RightEyeIndex,
                    clipA.MouthIndex,
                    clipB.LeftEyeIndex ,
                    clipB.RightEyeIndex,
                    clipB.MouthIndex
                    );
            } else
            {
                player.SetFace(
                     clipA.weight,
                     clipA.LeftEyeIndex,
                     clipA.RightEyeIndex,
                     clipA.MouthIndex,
                     clipB.LeftEyeIndex,
                     clipB.RightEyeIndex,
                     clipB.MouthIndex
                     );
            }

        }
    }

}

