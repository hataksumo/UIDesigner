using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Nation
{ 
    [Serializable]
    public class FrameAnimatorData 
    {
        /// <summary>
        /// 序列帧
        /// </summary>
        public Sprite[] Frames { get { return frames; } set { frames = value; } }

        [SerializeField] private Sprite[] frames = null;

        /// <summary>
        /// 帧率，为正时正向播放，为负时反向播放
        /// </summary>
        public float Framerate { get { return framerate; } set { framerate = value; } }

        [SerializeField] private float framerate = 20.0f;


        /// <summary>
        /// 是否循环
        /// </summary>
        public bool Loop { get { return loop; } set { loop = value; } }

        [SerializeField] private bool loop = true;

        //动画曲线
        [SerializeField] public AnimationCurve curve = new AnimationCurve(new Keyframe(0, 1, 0, 0), new Keyframe(1, 1, 0, 0));
    }
}