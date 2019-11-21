
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaComeTo",
                "视频播完后倒回到某个时间重复播放")]
    [AddComponentMenu("")]
    public class MediaComeTo : Command
    {
     
        [HideInInspector]
        public static bool StartBlock=false;
        VideoManager videoMan;
        float time;
        [Header("视频回退几秒")]
        public float BackTime=3;
        public override void OnEnter()
        {

            videoMan = VideoManager.GetInstance();
            time = videoMan.VideoComp.GetCurrentTimeMs();
            if (MediaComeToStop.stopBlock)
            {
                update = false;
                Continue();

            }else
            {
                update = true;
                StartBlock = true;
            }

        }
        void DoSeekTo()
        {
            videoMan.VideoComp.SeekTo(time - (BackTime*1000));
        }
       
        public override Color GetButtonColor()
        {
            return new Color32(100, 230, 170, 255);
        }
       public static bool update=false;
        private void Update()
        {
            if (update)
            {

                if (StartBlock)
                {
                    if (time - videoMan.VideoComp.GetCurrentTimeMs() < 0.1f)
                    {
                        DoSeekTo();
                    }

                }
                else
                {
                    Continue();
                }
            }
           
           
        }

    }


}
