using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;
[RequireComponent(typeof(CanvasGroup))]
[RequireComponent(typeof(Image))]
public class UIDrag :MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler,IPointerDownHandler {


    private GameObject drag_obj;
    public Transform root_trans;
    private Vector2 beginMousePosition;
    public float offsetX = 0;
    public float offsetY = 0;
    private bool isDrag = false;
    public UnityAction<PointerEventData> OnBeginDragEvent;
    public UnityAction<PointerEventData> OnDragEvent;
    public UnityAction<PointerEventData> OnEndDragEvent;


    public bool GetIsDrag() {
        return this.isDrag;
    }

    public void OnPointerDown(PointerEventData eventData)
    {
      
    }

    public void OnBeginDrag(PointerEventData eventData)
    {
        //Debug.Log("OnBeginDrag");
        beginMousePosition = eventData.position;
        if (OnBeginDragEvent != null) {
            OnBeginDragEvent(eventData);
        }
       
    }

    public void OnDrag(PointerEventData eventData)
    {
        //Debug.Log("OnDrag");
        Vector2 offsetPositon = eventData.position - beginMousePosition;
        if ( Mathf.Abs(offsetPositon.x)>=offsetX && Mathf.Abs(offsetPositon.y) >= offsetY && this.isDrag == false)
        {
                drag_obj = GameObject.Instantiate(this.gameObject);
                drag_obj.transform.SetParent(root_trans, false);
                drag_obj.transform.SetAsLastSibling();
                drag_obj.GetComponent<CanvasGroup>().blocksRaycasts = false;
                this.GetComponent<CanvasGroup>().alpha = 0;
                RectTransform rect = drag_obj.transform.GetComponent<RectTransform>();
                rect.anchorMin = new Vector2(0.5f, 0.5f);
                rect.anchorMax = rect.anchorMin;
                rect.pivot = new Vector2(0.5f, 0.5f);
                Vector3 pos;
                if (RectTransformUtility.ScreenPointToWorldPointInRectangle(rect,
                            eventData.position, eventData.pressEventCamera, out pos))
                {
                    rect.position = pos;
                }
          
                this.isDrag = true;
        }
        else {
            if (drag_obj)
            {
                Vector3 pos;
                RectTransform rect = drag_obj.GetComponent<RectTransform>();
                if (RectTransformUtility.ScreenPointToWorldPointInRectangle(rect,
                            eventData.position, eventData.pressEventCamera, out pos))
                {
                    rect.position = pos;
                }
            }
        }
        if (OnDragEvent != null)
        {
            OnDragEvent(eventData);
        }
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        //Debug.Log("OnEndDrag");
        this.isDrag = false;
        this.GetComponent<CanvasGroup>().alpha = 1;
        if (drag_obj)
        {
            Destroy(drag_obj);
            drag_obj = null;
        }
        if (OnEndDragEvent != null) {
            OnEndDragEvent(eventData);
        }
    }

}


