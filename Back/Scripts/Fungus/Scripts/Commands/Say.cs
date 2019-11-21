// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using LJAudio;
using UnityEngine;

namespace Fungus
{
    /// <summary>
    /// Writes text in a dialog box.
    /// </summary>
    [CommandInfo("Narrative",
                 "Say",
                 "Writes text in a dialog box.")]
    [AddComponentMenu("")]
    public class Say : Command, ILocalizable
    {
        // Removed this tooltip as users's reported it obscures the text box

        [TextArea(5, 10)]
        [SerializeField] protected string storyText = "";
        [Tooltip("Character name")]
        [SerializeField] protected bool needName = false;

        [SerializeField] protected int AfterHowManyNumber = 0;
        [Tooltip("Notes about this story text for other authors, localization, etc.")]
        [SerializeField] protected string description = "";

        [Tooltip("Character that is speaking")]
        [SerializeField] protected Character character;

        [Tooltip("Portrait that represents speaking character")]
        [SerializeField] protected Sprite portrait;

        [Tooltip("Voiceover audio to play when writing the text")]
        [SerializeField] public AudioClip voiceOverClip;
        [SerializeField] public string voiceClipName;
        [Tooltip("the last sound name")]
        [SerializeField] public string PreVoiceClipName;

        [Tooltip("Always show this Say text when the command is executed multiple times")]
        [SerializeField] protected bool showAlways = true;

        [Tooltip("Number of times to show this Say text when the command is executed multiple times")]
        [SerializeField] protected int showCount = 1;

        [Tooltip("Type this text in the previous dialog box.")]
        [SerializeField] protected bool extendPrevious = false;

        [Tooltip("Fade out the dialog box when writing has finished and not waiting for input.")]
        [SerializeField] protected bool fadeWhenDone = true;

        [Tooltip("Wait for player to click before continuing.")]
        [SerializeField] protected bool waitForClick = true;

        [Tooltip("Stop playing voiceover when text finishes writing.")]
        [SerializeField] protected bool stopVoiceover = true;

        [Tooltip("Wait for the Voice Over to complete before continuing")]
        [SerializeField] protected bool waitForVO = false;

        //add wait for vo that overrides stopvo

        [Tooltip("Sets the active Say dialog with a reference to a Say Dialog object in the scene. All story text will now display using this Say Dialog.")]
        [SerializeField] public SayDialog setSayDialog;

        [SerializeField] public int portraitPresetIndex;
        [SerializeField] public int[] portraitLayerSetting;
        [SerializeField] public int animPressetIndex;
        [SerializeField] public PortraitAnimClip[] animClips;

        public enum AnimPlayType
        {
            Start,
            End,
        }

        [SerializeField] public AnimPlayType playType = AnimPlayType.Start;
        [SerializeField] public string sayDialogAnim;

        protected int executionCount;

        #region Public members

        /// <summary>
        /// Character that is speaking.
        /// </summary>
        public virtual Character _Character { get { return character; } }

        /// <summary>
        /// Portrait that represents speaking character.
        /// </summary>
        public virtual Sprite Portrait { get { return portrait; } set { portrait = value; } }

        /// <summary>
        /// Type this text in the previous dialog box.
        /// </summary>
        public virtual bool ExtendPrevious { get { return extendPrevious; } }

        public override void OnEnter()
        {
            if (needName && StorySystem.StoryDataUtilities.StoryUserName != null)
                storyText = storyText.Insert(AfterHowManyNumber, StorySystem.StoryDataUtilities.StoryUserName);

            if (!showAlways && executionCount >= showCount)
            {
                Continue();
                return;
            }

            executionCount++;

            // Override the active say dialog if needed
            if (character != null && character.SetSayDialog != null)
            {
                SayDialog.ActiveSayDialog = character.SetSayDialog;
            }

            if (setSayDialog != null)
            {
                SayDialog.ActiveSayDialog = setSayDialog;
            }

            DialogPortrait diaPortrait = null;
            int[] diaPLayerSetting = null;
            PortraitAnimClip[] animInfo = null;
            if (character != null && character.displayPortrait != null)
            {
                diaPortrait = character.displayPortrait;
            }

            if (diaPortrait != null)
            {

                diaPLayerSetting = new int[diaPortrait.charLayers.Length];
                var presetData = diaPortrait.GetPresetData();
                int[] layerSetting = null;
                if (portraitPresetIndex >= 0
                    && presetData != null
                    && presetData.portraitPresets != null
                    && presetData.portraitPresets.Length > portraitPresetIndex
                    )
                {
                    layerSetting = presetData.portraitPresets[portraitPresetIndex].spIndexes;
                }
                else
                {
                    layerSetting = portraitLayerSetting;
                }

                int overwriteSettingMax = layerSetting.Length;
                for (int i = 0; i < diaPLayerSetting.Length; i++)
                {
                    if (i < overwriteSettingMax)
                    {
                        diaPLayerSetting[i] = (layerSetting[i] >= 0) ? layerSetting[i] : character.defaultProtraitLayerSetting[i];
                    }
                    else
                    {
                        diaPLayerSetting[i] = layerSetting[i];
                    }
                }

                if (animPressetIndex >= 0
                    && presetData != null
                    && presetData.animPresets != null
                    && presetData.animPresets.Length > animPressetIndex
                    )
                {
                    animInfo = presetData.animPresets[animPressetIndex].clips;
                }
                else
                {
                    animInfo = animClips;
                }

            }

            DialogPortrait.ActivePortrait = diaPortrait;
            if (diaPortrait != null)
            {
                if (diaPLayerSetting != null && diaPLayerSetting.Length > 0)
                {
                    for (int i = 0; i < diaPLayerSetting.Length; i++)
                    {
                        diaPortrait.SetSprite(i, diaPLayerSetting[i]);
                    }
                }

                if (animInfo != null && animInfo.Length > 0)
                {
                    diaPortrait.PlayAnim(animInfo);
                }

            }

            var sayDialog = SayDialog.GetSayDialog();
            if (sayDialog == null)
            {
                Continue();
                return;
            }

            var flowchart = GetFlowchart();

            sayDialog.SetActive(true);

            sayDialog.SetCharacter(character);
        
            sayDialog.SetCharacterImage(portrait);
        
            string displayText = storyText;

            //if (playType == AnimPlayType.Start && !string.IsNullOrEmpty(sayDialogAnim))
            //{
            //    //  sayDialog.PlayAnim(sayDialogAnim);
              
            //}

            var activeCustomTags = CustomTag.activeCustomTags;
           
            for (int i = 0; i < activeCustomTags.Count; i++)
            {
                var ct = activeCustomTags[i];
                displayText = displayText.Replace(ct.TagStartSymbol, ct.ReplaceTagStartWith);
                if (ct.TagEndSymbol != "" && ct.ReplaceTagEndWith != "")
                {
                    displayText = displayText.Replace(ct.TagEndSymbol, ct.ReplaceTagEndWith);
                }
            }
          
            string subbedText = flowchart.SubstituteVariables(displayText);
        
            //stop voice via wwise
            if (!string.IsNullOrEmpty(PreVoiceClipName))
            {
                AudioManager.StopSound(PreVoiceClipName,0);
             
            }//play voice via wwise
            if (!string.IsNullOrEmpty(voiceClipName))
            {
               
                AudioManager.TimeLinePlayVoice(voiceClipName);
            }
            sayDialog.Say(subbedText, !extendPrevious, waitForClick, fadeWhenDone, stopVoiceover, waitForVO, voiceOverClip, delegate {
                Continue();
            }, diaPortrait);
        }

        public override string GetSummary()
        {
            string namePrefix = "";
            if (character != null)
            {
                namePrefix = character.NameText + ": ";
            }
            if (extendPrevious)
            {
                namePrefix = "EXTEND" + ": ";
            }
            return namePrefix + "\"" + storyText + "\"";
        }

        public override Color GetButtonColor()
        {
            return new Color32(184, 210, 235, 255);
        }

        public override void OnReset()
        {
            executionCount = 0;
      
        }

        public override void OnExit()
        {
            base.OnExit();
            //var sayDialog = SayDialog.GetSayDialog();
            //if (sayDialog != null && playType == AnimPlayType.End && !string.IsNullOrEmpty(sayDialogAnim))
            //{
            //    //  sayDialog.PlayAnim(sayDialogAnim); 
            //}
        }

        public override void OnStopExecuting()
        {
            var sayDialog = SayDialog.GetSayDialog();
            if (sayDialog == null)
            {
                return;
            }

            sayDialog.Stop();
         
        }


        #endregion

        #region ILocalizable implementation

        public virtual string GetStandardText()
        {
            return storyText;
        }

        public virtual void SetStandardText(string standardText)
        {
            storyText = standardText;
        }

        public virtual string GetDescription()
        {
            return description;
        }

        public virtual string GetStringId()
        {
            // String id for Say commands is SAY.<Localization Id>.<Command id>.[Character Name]
            string stringId = "SAY." + GetFlowchartLocalizationId() + "." + itemId + ".";
            if (character != null)
            {
                stringId += character.NameText;
            }

            return stringId;
        }

        #endregion
    }
}