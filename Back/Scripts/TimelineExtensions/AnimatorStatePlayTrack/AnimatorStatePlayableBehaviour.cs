using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

namespace LJ_TimelineExtension
{

    // A behaviour that is attached to a playable
    public class AnimatorStatePlayableBehaviour : PlayableBehaviour
    {
        public int StateHash;
        public float fadeTime;
        Animator target;

        // Called when the state of the playable is set to Play
        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            if (target == null) return;
        }

        // Called when the state of the playable is set to Paused
        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            if (target == null) return;
        }


        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            //if (target == null)
            //{
            //    target = playerData as Animator;
            //    if (target == null) return;
            //}
            //if(!target.gameObject.activeSelf)
            //{
            //    target.gameObject.SetActive(true);
            //}
            //var state = target.GetCurrentAnimatorStateInfo(0);
            //if (state.shortNameHash != StateHash)
            //{
            //    if (fadeTime < 0.02f)
            //    {
            //        target.Play(StateHash, 0, 0f);
            //    } else
            //    {
            //        target.CrossFade(StateHash,fadeTime, 0, 0f);
            //    }

            //}

        }


    }

}