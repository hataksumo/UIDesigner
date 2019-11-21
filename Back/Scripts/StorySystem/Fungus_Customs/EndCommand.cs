using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace Fungus
{
    [CommandInfo("FlowMSG",
                "FlowEnd",
                "剧情最后添加这个消息,表示剧情结束了")]
    [AddComponentMenu("")]
    public class EndCommand : Command
    {

      //  [SerializeField]
        [Tooltip("如果之前开启了暂停音乐需要打钩来继续播放")]
        protected bool UnPauseMusic=false;
     //   [SerializeField]
        [Tooltip("如果之前启用了PlauMusic命令需要打钩来切换播放之前的BGM")]
        protected bool PlayPreviousMusic = false;

        public string endParam;
        public override void OnEnter()
        {
            var storyData = gameObject.GetComponentInParent<StorySystem.StoryData>();
            if( storyData != null)
            {
                storyData.OnFlowEnd(endParam);
            }

            var flow = GetFlowchart();
            flow.StopAllBlocks();
            LJAudio.AudioManager.StopAllSound();

            if (UnPauseMusic)
            {
                LJAudio.AudioManager.PauseMusicInterface(false);

            }
            if (PlayPreviousMusic)
            {
                LJAudio.AudioManager.PlayMusicInterface(PlayMusic.PreviousMusic);
               
            }
        }

        public override string GetSummary()
        {
            return string.Format("End FlowChar with param [{0}]", string.IsNullOrEmpty(endParam)? "NULL":endParam);
        }
    }

}