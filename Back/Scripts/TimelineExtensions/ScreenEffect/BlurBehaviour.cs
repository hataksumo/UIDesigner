using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace LJ_TimelineExtension
{

    // A behaviour that is attached to a playable
    public class BlurBehaviour : PlayableBehaviour
    {
        public float blurParam;
        public float blurSize;

    }

}