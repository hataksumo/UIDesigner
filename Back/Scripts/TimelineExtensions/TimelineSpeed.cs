using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class TimelineSpeed : MonoBehaviour
{
    private bool isPlay;
    private Animator animator;
    private PlayableDirector pd;
    private float scale;
    private float startTime;
    private void Update()
    {
        if(isPlay)
        {
            if(pd.state == PlayState.Playing && pd.time <= pd.duration)
            {
                if (animator != null && animator.playableGraph.IsPlaying())
                {
                    animator.playableGraph.Stop();
                }
                pd.time = (Time.time - startTime)*scale;
                pd.Evaluate();
            }
            else
            {
                pd.Stop();
                if (animator != null && !animator.playableGraph.IsPlaying())
                {
                    animator.playableGraph.Play();
                }
                isPlay = false;
            }
        }
    }
    // Start is called before the first frame update
    public void Play(PlayableDirector _pd,float _scale)
    {
        if(animator == null)
        {
            animator = this.GetComponent<Animator>();
        }
        pd = _pd;
        scale = _scale;
        pd.initialTime = 0;
        startTime = Time.time;
        pd.Play();
        isPlay = true;
    }
    
}
