using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Coffee.UIExtensions;


public class EveryBtnClick : MonoBehaviour
{
    [Header("倒计时的设定时长")]
    public float _duration;

    //[Header("按钮出现的间隔  多长时间后出现")]
    protected float _intervel;

    protected  Image sliderImg;
    public bool isTack = false;
    float elapsedTime = 0;

    bool canclick;
    Transform beginEffect;
    Transform endEffect;
    Animator anim;
    public void OnEnable()
    {
        canclick = true;
         elapsedTime = 0;

        sliderImg = transform.GetChild(0).Find("Fill").GetComponent<Image>();
      
        transform.GetComponent<Button>().onClick.AddListener(Onclick);
       
        anim = this.transform.GetComponent<Animator>();
        if (anim == null)
        {
            Debug.LogWarning("anim is null !!!");
        }
        beginEffect = this.transform.Find("fx_ui_menuDialog_MultiBtn_begin");
        endEffect = this.transform.Find("fx_ui_menuDialog_MultiBtn_over");

        //自动播放开始动画

      
        beginEffect.gameObject.SetActive(true);
        endEffect.gameObject.SetActive(false);
        var particals = beginEffect.GetComponentsInChildren<ParticleSystem>();
        for (int i = 0; i < particals.Length; i++)
        {
            particals[i].Play(true);
        }
    }
 

   
    public void Update()
    {
    
        float t = 1f - elapsedTime / _duration;
        sliderImg.GetComponent<Image>().fillAmount = t;
        elapsedTime += Time.deltaTime;

        if(_duration - elapsedTime  <0.05f)
        {
           gameObject.SetActive(false);
        }
        
      
    }

    void Onclick()
    {
        if (canclick)
        {
            canclick = false;
            anim.Play("ef_ui_MenuDialog_MultiBtn_Option_over", 0, 0);
            endEffect.gameObject.SetActive(true);
          
        }
    
        isTack = true;
    }


}
