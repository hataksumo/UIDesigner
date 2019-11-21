using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Fungus;

public class OneBtnMultipleClick : MonoBehaviour
{

    protected Image fill;
    static int timer = 0;
    [Header("要求按钮点击的次数")]
    public int clickcount;
    Transform ClickEffect;
    Animator anim;
    Transform BeginEffect;
    static Button btn;
    [HideInInspector]
    public static bool canClick;
    void OnEnable()
    {
        canClick = true;
        timer = 0;
      
        if (transform.childCount > 0)
        {
            fill = transform.GetChild(0).Find("Fill").GetComponent<Image>();
            fill.fillAmount = 0;

        }
        btn = transform.GetComponent<Button>();
        btn.onClick.AddListener(oclickBtn);

        ClickEffect = transform.Find("fx_ui_menuDialog_OneBtn_click");
        BeginEffect = transform.Find("fx_ui_menuDialog_OneBtn_begin");

        BeginEffect.gameObject.SetActive(true);
        ClickEffect.gameObject.SetActive(false);
        anim = transform.parent.parent.GetComponent<Animator>();
        anim.Play("ef_ui_MenuDialog_OneBtn_begin");
        if (anim == null)
        {
            Debug.LogWarning("anim is null !!!");
        }

    }


    void oclickBtn()
     {
        if (canClick)
        {
            timer++;
            float t = (float)timer / (float)clickcount;
            fill.GetComponent<Image>().fillAmount = t;
            ClickEffect.gameObject.SetActive(false);
            PlayAnimAndEffect();
        }
    
     }

    public static int  GetClickTimer()
    {
        return timer;
    }
    public Image  GetFillImg()
    {
        return fill;
    }
    public void PlayAnimAndEffect()
    {

        ClickEffect.gameObject.SetActive(true);
        anim.Play("ef_ui_MenuDialog_OneBtn_click",0,0);
       
    }
 
}
