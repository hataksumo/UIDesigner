
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
    public class MenuDialogExtendTwo : MenuDialog
    {

        [Header("所有按钮的个数")]
        public int AllBtnCount;
        protected Image timerSliderImg;
        public Image TimerSliderImg { get { return timerSliderImg; } }

        Animator[] anims;
        bool Scessece;
        protected override void Awake()
        {
            Button[] optionButtons = GetComponentsInChildren<Button>();
            cachedButtons = optionButtons;
            anims = transform.GetComponentsInChildren<Animator>();
            if (anims == null)
            {
                Debug.LogWarning("anim is null !!!");
            }
            Image timerOutImg = transform.GetChild(0).Find("TimeoutSlider").transform.GetChild(0).GetComponent<Image>();
            timerSliderImg = timerOutImg;
            timerOutImg.transform.parent.gameObject.SetActive(false);
            if (Application.isPlaying)
            {
                // Don't auto disable buttons in the editor
                base.Clear();
            }

            base.CheckEventSystem();
        }


        public override bool AddOption(string text, bool interactable, bool hideOption, Block targetBlock)
        {

            var block = targetBlock;
            UnityEngine.Events.UnityAction action = delegate
            {
                //遍历所有的按钮的istack的值
                int Clicks = TackedCount();

                if (Clicks == AllBtnCount)
                {
                    Scessece = true;

                    EventSystem.current.SetSelectedGameObject(null);
                    Invoke("Clear", 0.5f);
                    //base.Clear();

                    base.HideSayDialog();
                    if (block != null)
                    {
                        var flowchart = block.GetFlowchart();
#if UNITY_EDITOR
                        flowchart.SelectedBlock = block;
#endif
                        //  gameObject.SetActive(false);

                        flowchart.StartCoroutine(base.CallBlock(block));
                    }
                }
            };

            return base.AddOption(text, interactable, hideOption, action);
        }

        public int TackedCount()
        {
            int count = 0;
            Button[] btns = base.CachedButtons;

            for (int i = 0; i < btns.Length; i++)
            {
                Button btn = btns[i];
                if (btn.GetComponent<EveryBtnClick>().isTack)
                {
                    count++;

                }
            }

            return count;
        }
        public void ResetBtnTack()
        {
            Button[] btns = base.CachedButtons;

            for (int i = 0; i < btns.Length; i++)
            {
                Button btn = btns[i];
                if (btn.GetComponent<EveryBtnClick>().isTack)
                {
                    btn.GetComponent<EveryBtnClick>().isTack = false;

                }
            }
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
                if (!Scessece)
                    elapsedTime += Time.deltaTime;

                yield return null;
            }
            //播放消失动画了
            for (int i = 0; i < anims.Length; i++)
            {
                anims[i].Play("ef_ui_MenuDialog_MultiBtn_Option_over");
            }
          
            Invoke("Clear", 1f);
            // Clear();
            // gameObject.SetActive(false);

            HideSayDialog();

            //在这里把所有的按钮点击状态重置
            ResetBtnTack();

            if (targetBlock != null)
            {
                targetBlock.StartExecution();
            }
        }
        public override void Clear()
        {
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
                    button.gameObject.SetActive(false);
                }
            }

            Image timeoutSlider = TimerSliderImg;
            if (timeoutSlider != null)
            {
                TimerSliderImg.transform.parent.gameObject.SetActive(false);
            }
        }
    }
}
