// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;
using System.Collections.Generic;

namespace Fungus
{
    /// <summary>
    /// Display story text in a visual novel style dialog box.
    /// </summary>
    public class SayDialog : MonoBehaviour
    {
        [Tooltip("Duration to fade dialogue in/out")]
        [SerializeField] protected float fadeDuration = 0.25f;

        [Tooltip("The continue button UI object")]
        [SerializeField] protected Button continueButton;

        [Tooltip("The canvas UI object")]
        [SerializeField] protected Canvas dialogCanvas;

        [Tooltip("The name text UI object")]
        [SerializeField] protected Text nameText;
        [Tooltip("TextAdapter will search for appropriate output on this GameObject if nameText is null")]
        [SerializeField] protected GameObject nameTextGO;
        protected TextAdapter nameTextAdapter = new TextAdapter();
        public virtual string NameText
        {
            get
            {
                return nameTextAdapter.Text;
            }
            set
            {
                nameTextAdapter.Text = value;
            }
        }

        [Tooltip("The story text UI object")]
        [SerializeField] protected Text storyText;
        [Tooltip("TextAdapter will search for appropriate output on this GameObject if storyText is null")]
        [SerializeField] protected GameObject storyTextGO;
        protected TextAdapter storyTextAdapter = new TextAdapter();
        public virtual string StoryText
        {
            get
            {
                return storyTextAdapter.Text;
            }
            set
            {
                storyTextAdapter.Text = value;
            }
        }
        public virtual RectTransform StoryTextRectTrans
        {
            get
            {
                return storyText != null ? storyText.rectTransform : storyTextGO.GetComponent<RectTransform>();
            }
        }

        [Tooltip("The character UI object")]
        [SerializeField] protected Image characterImage;
        public virtual Image CharacterImage { get { return characterImage; } }

        public string ShowAnimName;
        public string HideAnimName;
        [SerializeField] public bool changeAlpha = true;
        protected enum ShowState
        {
            Show,
            Hide,
        }
        protected ShowState showState = ShowState.Hide;
        [Tooltip("Adjust width of story text when Character Image is displayed (to avoid overlapping)")]
        [SerializeField] protected bool fitTextWithImage = true;

        [Tooltip("Close any other open Say Dialogs when this one is active")]
        [SerializeField] protected bool closeOtherDialogs;


        protected float startStoryTextWidth;
        protected float startStoryTextInset;

        protected WriterAudio writerAudio;
        protected Writer writer;
        protected CanvasGroup canvasGroup;
        protected Animator animator;
        protected bool fadeWhenDone = true;
        protected float targetAlpha = 0f;
        protected float __curAlpha = 0f;
        protected float fadeCoolDownTimer = 0f;

        protected Sprite currentCharacterImage;

        // Most recent speaking character
        protected static Character speakingCharacter;

        protected StringSubstituter stringSubstituter = new StringSubstituter();

        protected DialogPortrait dialogPortrait;

        // Cache active Say Dialogs to avoid expensive scene search
        protected static List<SayDialog> activeSayDialogs = new List<SayDialog>();

        protected float CurAlpha
        {
            get
            {
                return __curAlpha;
            }
            set
            {
                __curAlpha = value;
                if (changeAlpha)
                {
                    CanvasGroup canvasGroup = GetCanvasGroup();
                    canvasGroup.alpha = __curAlpha;
                }
            }
        }
        protected virtual void Awake()
        {
            if (!activeSayDialogs.Contains(this))
            {
                activeSayDialogs.Add(this);
            }

            nameTextAdapter.InitFromGameObject(nameText != null ? nameText.gameObject : nameTextGO);
            storyTextAdapter.InitFromGameObject(storyText != null ? storyText.gameObject : storyTextGO);
        }

        protected virtual void OnDestroy()
        {
            activeSayDialogs.Remove(this);
        }

        protected virtual Writer GetWriter()
        {
            if (writer != null)
            {
                return writer;
            }

            writer = GetComponent<Writer>();
            if (writer == null)
            {
                writer = gameObject.AddComponent<Writer>();
            }

            return writer;
        }

        protected virtual CanvasGroup GetCanvasGroup()
        {
            if (canvasGroup != null)
            {
                return canvasGroup;
            }

            canvasGroup = GetComponent<CanvasGroup>();
            if (canvasGroup == null)
            {
                canvasGroup = gameObject.AddComponent<CanvasGroup>();
            }

            return canvasGroup;
        }

        protected virtual Animator GetAnimator()
        {
            if (animator == null)
            {
                animator = GetComponent<Animator>();
                if (animator == null)
                {
                    animator = gameObject.AddComponent<Animator>();
                }
            }
            return animator;
        }

        protected virtual WriterAudio GetWriterAudio()
        {
            if (writerAudio != null)
            {
                return writerAudio;
            }

            writerAudio = GetComponent<WriterAudio>();
            if (writerAudio == null)
            {
                writerAudio = gameObject.AddComponent<WriterAudio>();
            }

            return writerAudio;
        }

        protected virtual void ShowDialog()
        {

            if (showState != ShowState.Show && !string.IsNullOrEmpty(ShowAnimName))
            {
                showState = ShowState.Show;
                this.PlayAnim(ShowAnimName);
            }
        }

        protected virtual void HideDialog()
        {
            if (showState != ShowState.Hide && !string.IsNullOrEmpty(HideAnimName))
            {
                showState = ShowState.Hide;
                this.PlayAnim(HideAnimName);
            }
        }

        protected virtual void Start()
        {
            // Dialog always starts invisible, will be faded in when writing starts           
            CurAlpha = 0f;
            showState = ShowState.Hide;
            // Add a raycaster if none already exists so we can handle dialog input
            GraphicRaycaster raycaster = GetComponent<GraphicRaycaster>();
            if (raycaster == null)
            {
                gameObject.AddComponent<GraphicRaycaster>();
            }

            // It's possible that SetCharacterImage() has already been called from the
            // Start method of another component, so check that no image has been set yet.
            // Same for nameText.

            if (NameText == "")
            {
                SetCharacterName("", Color.white);
            }
            if (currentCharacterImage == null)
            {
                // Character image is hidden by default.
                SetCharacterImage(null);
            }
        }

        protected virtual void LateUpdate()
        {
            UpdateAlpha();

            if (continueButton != null)
            {
                continueButton.gameObject.SetActive(GetWriter().IsWaitingForInput);
            }
        }

        protected virtual void UpdateAlpha()
        {
            if (GetWriter().IsWriting)
            {
                targetAlpha = 1f;
                fadeCoolDownTimer = 0.1f;
                ShowDialog();
            } else if (fadeWhenDone && Mathf.Approximately(fadeCoolDownTimer, 0f))
            {
                targetAlpha = 0f;
                HideDialog();
            } else
            {
                // Add a short delay before we start fading in case there's another Say command in the next frame or two.
                // This avoids a noticeable flicker between consecutive Say commands.
                fadeCoolDownTimer = Mathf.Max(0f, fadeCoolDownTimer - Time.deltaTime);
            }

            if (fadeDuration <= 0f)
            {
                CurAlpha = targetAlpha;
            } else
            {
                float delta = (1f / fadeDuration) * Time.deltaTime;
                CurAlpha = Mathf.MoveTowards(CurAlpha, targetAlpha, delta);
                if( dialogPortrait != null)
                {
                    dialogPortrait.CurAlpha = CurAlpha;
                }
                if (CurAlpha <= 0f)
                {
                    // Deactivate dialog object once invisible
                    gameObject.SetActive(false);
                    if (dialogPortrait != null)
                    {
                        dialogPortrait.gameObject.SetActive(false);
                    }
                }
            }
        }

        protected virtual void ClearStoryText()
        {
            StoryText = "";
        }

        #region Public members

        public Character SpeakingCharacter { get { return speakingCharacter; } }

        /// <summary>
        /// Currently active Say Dialog used to display Say text
        /// </summary>
        public static SayDialog ActiveSayDialog { get; set; }

        /// <summary>
        /// Returns a SayDialog by searching for one in the scene or creating one if none exists.
        /// </summary>
        public static SayDialog GetSayDialog()
        {
            if (ActiveSayDialog == null)
            {
                SayDialog sd = null;

                // Use first active Say Dialog in the scene (if any)
                if (activeSayDialogs.Count > 0)
                {
                    sd = activeSayDialogs[0];
                }

                if (sd != null)
                {
                    ActiveSayDialog = sd;
                }

                if (ActiveSayDialog == null)
                {
                    // Auto spawn a say dialog object from the prefab
                    GameObject prefab = Resources.Load<GameObject>("Prefabs/SayDialog");
                    if (prefab != null)
                    {
                        GameObject go = Instantiate(prefab) as GameObject;
                        go.SetActive(false);
                        go.name = "SayDialog";
                        ActiveSayDialog = go.GetComponent<SayDialog>();
                    }
                }
            }

            return ActiveSayDialog;
        }

        /// <summary>
        /// Stops all active portrait tweens.
        /// </summary>
        public static void StopPortraitTweens()
        {
            // Stop all tweening portraits
            var activeCharacters = Character.ActiveCharacters;
            for (int i = 0 ; i < activeCharacters.Count ; i++)
            {
                var c = activeCharacters[i];
                if (c.State.portraitImage != null)
                {
                    if (LeanTween.isTweening(c.State.portraitImage.gameObject))
                    {
                        LeanTween.cancel(c.State.portraitImage.gameObject, true);
                        PortraitController.SetRectTransform(c.State.portraitImage.rectTransform, c.State.position);
                        if (c.State.dimmed == true)
                        {
                            c.State.portraitImage.color = new Color(0.5f, 0.5f, 0.5f, 1f);
                        } else
                        {
                            c.State.portraitImage.color = Color.white;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Sets the active state of the Say Dialog gameobject.
        /// </summary>
        public virtual void SetActive( bool state )
        {
            gameObject.SetActive(state);
        }

        /// <summary>
        /// Sets the active speaking character.
        /// </summary>
        /// <param name="character">The active speaking character.</param>
        public virtual void SetCharacter( Character character )
        {
            if (character == null)
            {
                if (characterImage != null)
                {
                    characterImage.gameObject.SetActive(false);
                }
                if (NameText != null)
                {
                    NameText = "";
                }
                speakingCharacter = null;
            } else
            {
                var prevSpeakingCharacter = speakingCharacter;
                speakingCharacter = character;

                // Dim portraits of non-speaking characters
                var activeStages = Stage.ActiveStages;
                for (int i = 0 ; i < activeStages.Count ; i++)
                {
                    var stage = activeStages[i];
                    if (stage.DimPortraits)
                    {
                        var charactersOnStage = stage.CharactersOnStage;
                        for (int j = 0 ; j < charactersOnStage.Count ; j++)
                        {
                            var c = charactersOnStage[j];
                            if (prevSpeakingCharacter != speakingCharacter)
                            {
                                if (c != null && !c.Equals(speakingCharacter))
                                {
                                    stage.SetDimmed(c, true);
                                } else
                                {
                                    stage.SetDimmed(c, false);
                                }
                            }
                        }
                    }
                }

                string characterName = character.NameText;

                if (characterName == "")
                {
                    // Use game object name as default
                    characterName = character.GetObjectName();
                }

                SetCharacterName(characterName, character.NameColor);
            }
        }

        /// <summary>
        /// Sets the character image to display on the Say Dialog.
        /// </summary>
        public virtual void SetCharacterImage( Sprite image )
        {
            if (characterImage == null)
            {
                return;
            }

            if (image != null)
            {
                characterImage.sprite = image;
                characterImage.gameObject.SetActive(true);
                currentCharacterImage = image;
            } else
            {
                characterImage.gameObject.SetActive(false);

                if (startStoryTextWidth != 0)
                {
                    StoryTextRectTrans.SetInsetAndSizeFromParentEdge(RectTransform.Edge.Left,
                        startStoryTextInset,
                        startStoryTextWidth);
                }
            }

            // Adjust story text box to not overlap image rect
            if (fitTextWithImage &&
                StoryText != null &&
                characterImage.gameObject.activeSelf)
            {
                if (Mathf.Approximately(startStoryTextWidth, 0f))
                {
                    startStoryTextWidth = StoryTextRectTrans.rect.width;
                    startStoryTextInset = StoryTextRectTrans.offsetMin.x;
                }

                // Clamp story text to left or right depending on relative position of the character image
                if (StoryTextRectTrans.position.x < characterImage.rectTransform.position.x)
                {
                    StoryTextRectTrans.SetInsetAndSizeFromParentEdge(RectTransform.Edge.Left,
                        startStoryTextInset,
                        startStoryTextWidth - characterImage.rectTransform.rect.width);
                } else
                {
                    StoryTextRectTrans.SetInsetAndSizeFromParentEdge(RectTransform.Edge.Right,
                        startStoryTextInset,
                        startStoryTextWidth - characterImage.rectTransform.rect.width);
                }
            }
        }

        /// <summary>
        /// Sets the character name to display on the Say Dialog.
        /// Supports variable substitution e.g. John {$surname}
        /// </summary>
        public virtual void SetCharacterName( string name, Color color )
        {
            if (NameText != null)
            {
                var subbedName = stringSubstituter.SubstituteStrings(name);
                NameText = subbedName;
                nameTextAdapter.SetTextColor(color);
            }
        }

        /// <summary>
        /// Write a line of story text to the Say Dialog. Starts coroutine automatically.
        /// </summary>
        /// <param name="text">The text to display.</param>
        /// <param name="clearPrevious">Clear any previous text in the Say Dialog.</param>
        /// <param name="waitForInput">Wait for player input before continuing once text is written.</param>
        /// <param name="fadeWhenDone">Fade out the Say Dialog when writing and player input has finished.</param>
        /// <param name="stopVoiceover">Stop any existing voiceover audio before writing starts.</param>
        /// <param name="voiceOverClip">Voice over audio clip to play.</param>
        /// <param name="onComplete">Callback to execute when writing and player input have finished.</param>
        public virtual void Say( string text, bool clearPrevious, bool waitForInput, bool fadeWhenDone, bool stopVoiceover, bool waitForVO, AudioClip voiceOverClip, Action onComplete,DialogPortrait portrait  )
        {
            this.dialogPortrait = portrait;
            StartCoroutine(DoSay(text, clearPrevious, waitForInput, fadeWhenDone, stopVoiceover, waitForVO, voiceOverClip, onComplete));
        }

        /// <summary>
        /// Write a line of story text to the Say Dialog. Must be started as a coroutine.
        /// </summary>
        /// <param name="text">The text to display.</param>
        /// <param name="clearPrevious">Clear any previous text in the Say Dialog.</param>
        /// <param name="waitForInput">Wait for player input before continuing once text is written.</param>
        /// <param name="fadeWhenDone">Fade out the Say Dialog when writing and player input has finished.</param>
        /// <param name="stopVoiceover">Stop any existing voiceover audio before writing starts.</param>
        /// <param name="voiceOverClip">Voice over audio clip to play.</param>
        /// <param name="onComplete">Callback to execute when writing and player input have finished.</param>
        public virtual IEnumerator DoSay( string text, bool clearPrevious, bool waitForInput, bool fadeWhenDone, bool stopVoiceover, bool waitForVO, AudioClip voiceOverClip, Action onComplete )
        {
            var writer = GetWriter();

            if (writer.IsWriting || writer.IsWaitingForInput)
            {
                writer.Stop();
                Logger.Log(" DoSay-------------  writer.IsWriting " + writer.IsWriting);
                while (writer.IsWriting || writer.IsWaitingForInput)
                {
                   
                    yield return null;
                }
            }

            if (closeOtherDialogs)
            {
                for (int i = 0 ; i < activeSayDialogs.Count ; i++)
                {
                    var sd = activeSayDialogs[i];
                    if (sd.gameObject != gameObject)
                    {
                        sd.SetActive(false);
                    }
                }
            }
            gameObject.SetActive(true);

            this.fadeWhenDone = fadeWhenDone;

            // Voice over clip takes precedence over a character sound effect if provided

            AudioClip soundEffectClip = null;
            if (voiceOverClip != null)
            {
                WriterAudio writerAudio1 = GetWriterAudio();
                writerAudio1.OnVoiceover(voiceOverClip);
            } else if (speakingCharacter != null)
            {
                soundEffectClip = speakingCharacter.SoundEffect;
            }

            writer.AttachedWriterAudio = writerAudio;

            yield return StartCoroutine(writer.Write(text, clearPrevious, waitForInput, stopVoiceover, waitForVO, soundEffectClip, onComplete));
        }

        /// <summary>
        /// Tell the Say Dialog to fade out once writing and player input have finished.
        /// </summary>
        public virtual bool FadeWhenDone { get { return fadeWhenDone; } set { fadeWhenDone = value; } }

        /// <summary>
        /// Stop the Say Dialog while its writing text.
        /// </summary>
        public virtual void Stop()
        {
            fadeWhenDone = true;
            GetWriter().Stop();
        }

        /// <summary>
        /// Stops writing text and clears the Say Dialog.
        /// </summary>
        public virtual void Clear()
        {
            ClearStoryText();

            // Kill any active write coroutine
            StopAllCoroutines();
         
        }

        /// <summary>
        /// play anim 
        /// </summary>
        /// <param name="anim"></param>
        public virtual void PlayAnim( string anim )
        {
            var animCompont = GetAnimator();
            if (animCompont != null)
            {
                int stateId = Animator.StringToHash(anim);
                if (animCompont.HasState(0, stateId))
                {
                    animCompont.Play(stateId, 0, 0f);
                }
            }
        }

        #endregion
    }
}
