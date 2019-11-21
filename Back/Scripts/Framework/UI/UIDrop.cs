using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class UIDrop : MonoBehaviour, IDropHandler
{


    public UnityAction<PointerEventData> OnDropEvent;
    public void OnDrop(PointerEventData eventData)
    {
        if (OnDropEvent != null) {
            OnDropEvent(eventData);
        }
    }

}
