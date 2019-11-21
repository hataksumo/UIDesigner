using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class sayMenuBtnClick : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{

    Vector3 orignalScale;

    private void Awake()
    {
        orignalScale = transform.localScale;
    }
    private void OnEnable()
    {
        transform.localScale = orignalScale;
    }


    public void OnPointerDown(PointerEventData eventData)
    {
        transform.localScale = new Vector3(orignalScale.x + 0.3f, 1.3f, 1.3f);

    }



    public void OnPointerUp(PointerEventData eventData)
    {
        transform.localScale = orignalScale;
    }
}
