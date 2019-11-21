// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using UnityEngine;

namespace Fungus
{
    /// <summary>
    /// Sets a custom say dialog to use when displaying story text.
    /// </summary>
    [CommandInfo("Narrative",
                 "Set Say Dialog",
                 "Sets a custom say dialog to use when displaying story text")]
    [AddComponentMenu("")]
    public class SetSayDialog : Command
    {

        //  [SerializeField] protected SayDialog sayDialog;
        SayDialog sayDialog;

        public string sayDialogName;

        #region Public members

        public override void OnEnter()
        {
         
            if (!sayDialogName.Contains("(Clone)"))
                sayDialogName = sayDialogName + "(Clone)";

            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            sayDialog = thisCanvas.Find(sayDialogName).GetComponent<SayDialog>();
            if (sayDialog != null)
            {
               
              SayDialog.ActiveSayDialog = sayDialog;

              
            }

            Continue();
        }

        public override string GetSummary()
        {

            return sayDialogName;
        }


        #endregion
    }
}