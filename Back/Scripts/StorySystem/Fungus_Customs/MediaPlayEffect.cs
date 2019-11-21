using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Fungus
{
    [CommandInfo("MediaPlayer",
              "MediaPlayEffect",
              "播放动效")]
    [AddComponentMenu("")]
    public class MediaPlayEffect : Command
    {
        
        [Header("Canvas下面动效的预设体名字")]
        public string effectGameobjectName;
        GameObject effectGameobject;
        private Animator animator;

        public override void OnEnter()
        {
          if(!effectGameobjectName.Contains("(Clone)"))
                effectGameobjectName = effectGameobjectName + "(Clone)";


            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            effectGameobject = thisCanvas.Find(effectGameobjectName).gameObject;
            animator = effectGameobject.GetComponentInChildren<Animator>();

            effectGameobject.gameObject.SetActive(true);
           
        }

        private void Update()
        {
            if (animator)
            {
            AnimatorStateInfo info = animator.GetCurrentAnimatorStateInfo(0);
            // 判断动画是否播放完成
            if (info.normalizedTime >= 1.0f)
            {
                effectGameobject.gameObject.SetActive(false);
                animator = null;
                Continue();
            }
            }
        }
    }
}
