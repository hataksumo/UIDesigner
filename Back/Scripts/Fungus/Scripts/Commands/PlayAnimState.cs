// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using UnityEngine;

namespace Fungus
{
    /// <summary>
    /// Plays a state of an animator according to the state name.
    /// </summary>
    [CommandInfo("Animation",
                 "Play Anim State",
                 "Plays a state of an animator according to the state name")]
    [AddComponentMenu("")]
    public class PlayAnimState : Command
    {

        // [SerializeField] public AnimatorData animator = new AnimatorData();

        public string AnimObjectName;
        [HideInInspector]
        public  Animator anim;

        [Tooltip("Name of the state you want to play")]
        [SerializeField] protected StringData stateName = new StringData();

        [Tooltip("Layer to play animation on")]
        [SerializeField] protected IntegerData layer = new IntegerData(0);

        [Tooltip("Start time of animation")]
        [SerializeField] protected FloatData time = new FloatData(0f);

        [Tooltip("Fade time of State")]
        [SerializeField] protected FloatData fadeTime = new FloatData(0.5f);

        #region Public members

        public override void OnEnter()
        {

            if (!AnimObjectName.Contains("(Clone)"))
                AnimObjectName = AnimObjectName + "(Clone)";

            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            anim = thisCanvas.Find(AnimObjectName).GetComponent<Animator>();
            if (anim)
            {
                if (fadeTime.Value < 0.0001f)
                {
                    anim.Play(stateName.Value, layer.Value, time.Value);
                }
                else
                {
                    anim.CrossFade(stateName.Value, fadeTime.Value, layer.Value, time.Value);
                }
            }

            Continue();
        }

        public override string GetSummary()
        {


            return AnimObjectName + " (" + stateName.Value + ")";
        }

        public override Color GetButtonColor()
        {
            return new Color32(170, 204, 169, 255);
        }

        #endregion
    }
}

