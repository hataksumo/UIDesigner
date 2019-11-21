using UnityEngine;

namespace Fungus
{
    /// <summary>
    /// Plays looping game music. If any game music is already playing, it is stopped. Game music will continue playing across scene loads.
    /// </summary>
    [CommandInfo("Audio",
                 "Stop Sound",
                 "暂停剧情背景音乐")]
    [AddComponentMenu("")]
    public class StopSound : Command
    {

        #region Public members
        [SerializeField]
        protected string StopSoundName;

        public override void OnEnter()
        {

            LJAudio.AudioManager.StopSound(StopSoundName);

            Continue();
        }

        public override Color GetButtonColor()
        {
            return new Color32(242, 209, 176, 255);
        }

        #endregion
    }
}
