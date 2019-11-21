

using UnityEngine;
using UnityEngine.Serialization;

namespace Fungus
{
    [CommandInfo("Scripting",
                 "Set Active",
                 "Sets a game object in the scene to be active / inactive.")]
    [AddComponentMenu("")]
    [ExecuteInEditMode]
    public class SetActive : Command
    {

        [SerializeField] protected BooleanData activeState;

        public string TargetCanvasName;

        public string TargetObjectName;
        GameObject obj;

        #region Public members

        public override void OnEnter()
        {
            if (!TargetObjectName.Contains("(Clone)"))
                TargetObjectName = TargetObjectName + "(Clone)";

            var thisCanvas = StorySystem.StoryDataUtilities.StoryExtendCanvas.transform;
            obj =thisCanvas.Find(TargetObjectName).gameObject;


            if (obj)
            {
                obj.SetActive(activeState.Value);
            }

            Continue();
        }

        public override string GetSummary()
        {

            return TargetObjectName + " (" + activeState.Value + ")";
        }

        public override Color GetButtonColor()
        {
            return new Color32(174, 98, 98, 255);
        }

        #endregion

    }
}