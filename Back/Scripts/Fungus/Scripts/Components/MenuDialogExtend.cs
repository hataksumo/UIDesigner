
// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;
using System.Linq;
//using MoonSharp.Interpreter;

namespace Fungus
{
    /// <summary>
    /// Presents multiple choice buttons to the players.
    /// </summary>
    public class MenuDialogExtend : MenuDialog
    {
        protected Image timerSliderImg;
        public  Image TimerSliderImg { get { return timerSliderImg; } }

       
        [Header("要求按钮点击的次数")]
        public  int ClickCount;
        Transform EndEffect;
      
        Animator anim;

        bool Scecess=false;
        protected override void Awake()
        {
            Button[] optionButtons = GetComponentsInChildren<Button>();
            cachedButtons = optionButtons;

            Image timerOutImg = transform.GetChild(0).Find("TimeoutSlider").transform.GetChild(0).GetComponent<Image>();
            timerSliderImg = timerOutImg;
            timerOutImg.transform.parent.gameObject.SetActive(false);
            if (Application.isPlaying)
            {
                // Don't auto disable buttons in the editor
               base. Clear();
            }
            EndEffect = transform.GetChild(0).GetChild(0).Find("fx_ui_menuDialog_OneBtn_over");
        
            anim = transform.GetComponent<Animator>();
            if (anim == null)
            {
                Debug.LogWarning("anim is null !!!");
            }
                base.CheckEventSystem();
        }

        public override bool AddOption(string text, bool interactable, bool hideOption, Block targetBlock)
        {
          
            var block = targetBlock;
            UnityEngine.Events.UnityAction action = delegate
            {
                int Clicktimer = OneBtnMultipleClick.GetClickTimer();
                           
                if (Clicktimer == ClickCount)
                {
                    Scecess = true;
                    OneBtnMultipleClick.canClick = false;
                    EventSystem.current.SetSelectedGameObject(null);
                    if (anim != null)
                        anim.Play("ef_ui_MenuDialog_OneBtn_over");
                    EndEffect.gameObject.SetActive(true);

                    Invoke("Clear", 1f);
                   // Clear();
      
                    base.HideSayDialog();
                    if (block != null)
                    {
                        var flowchart = block.GetFlowchart();
#if UNITY_EDITOR
                        flowchart.SelectedBlock = block;
#endif
                      //  gameObject.SetActive(false);

                        flowchart.StartCoroutine(  base.CallBlock(block));
                    }
                   
                }
            };

            return  base.AddOption(text, interactable, hideOption, action);
        }

        public override void ShowTimer(float duration, Block targetBlock)
        {
            if (TimerSliderImg != null)
            {
                TimerSliderImg.transform.parent.gameObject.SetActive(true);
                gameObject.SetActive(true);
                StopAllCoroutines();
                StartCoroutine(WaitForTimeout(duration, targetBlock));
            }
        }

        protected override IEnumerator WaitForTimeout(float timeoutDuration, Block targetBlock)
        {
            float elapsedTime = 0;

            Image timerSliderImg = TimerSliderImg;

            while (elapsedTime < timeoutDuration)
            {
                if (timerSliderImg != null)
                {
                    float t = 1f - elapsedTime / timeoutDuration;
                    timerSliderImg.GetComponent<Image>().fillAmount = t;
                }
                if (!Scecess)
                    elapsedTime += Time.deltaTime;

                yield return null;
            }

            OneBtnMultipleClick.canClick = false;
            //倒计时结束隐藏物体在这里
            anim.Play("ef_ui_MenuDialog_OneBtn_death");
          
            Invoke("Clear", 1f);
           
            //   Clear();
            //gameObject.SetActive(false);

            HideSayDialog();

            if (targetBlock != null)
            {
                targetBlock.StartExecution();
            }
        }
        public override void Clear()
        {
            EndEffect.gameObject.SetActive(false);

            StopAllCoroutines();

            //if something was shown notify that we are ending
            if (nextOptionIndex != 0)
                MenuSignals.DoMenuEnd(this);

            nextOptionIndex = 0;

            var optionButtons = CachedButtons;
            for (int i = 0; i < optionButtons.Length; i++)
            {
                var button = optionButtons[i];
                button.onClick.RemoveAllListeners();
            }

            for (int i = 0; i < optionButtons.Length; i++)
            {
                var button = optionButtons[i];
                if (button != null)
                {
                    button.transform.SetSiblingIndex(i);
                    //把按钮隐藏掉，在这里加动效
                    button.gameObject.SetActive(false);
                  
                }
            }

            Image timeoutSlider = TimerSliderImg;
            if (timeoutSlider != null)
            {
                //把倒计时调隐藏掉
               TimerSliderImg.transform.parent.gameObject.SetActive(false);
            }
          

        }

        private void Update()
        {
            AnimatorStateInfo animatorInfo;
            animatorInfo = anim.GetCurrentAnimatorStateInfo(0);
            if ((animatorInfo.normalizedTime > 1.0f) && (animatorInfo.IsName("ef_ui_MenuDialog_OneBtn_death") || animatorInfo.IsName("ef_ui_MenuDialog_OneBtn_over")))//normalizedTime：0-1在播放、0开始、1结束 MyPlay为状态机动画的名字
            {
                gameObject.SetActive(false);
              
            }

        }



    }


}
