using UnityEngine;

namespace Fungus
{
    /// <summary>
    /// Plays looping game music. If any game music is already playing, it is stopped. Game music will continue playing across scene loads.
    /// </summary>
    [CommandInfo("Audio",
                 "Pause Music",
                 "暂停背景音乐，播放视频自带音乐。" +
        "视频结束后，如果需要继续播放Bgm，需要在MediaEnd中开启 UnPauseMusic 按钮继续播放")]
    [AddComponentMenu("")]
    public class PauseMusic : Command
    {

        #region Public members
        [SerializeField]
        protected bool IsPaused=true;

        public override void OnEnter()
        {

           LJAudio.AudioManager.PauseMusicInterface(IsPaused);
          
          Continue();
        }
        public override string GetSummary()
        {
            if (IsPaused)
            {
                return "暂停外部BGM";
            }

            return "取消暂停外部BGM";
        }
        public override Color GetButtonColor()
        {
            return new Color32(242, 209, 176, 255);
        }

        #endregion
    }
}
