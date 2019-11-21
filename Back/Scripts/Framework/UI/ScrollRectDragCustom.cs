using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;


namespace UICustom
{
    /// <summary>
    /// 带拖拽事件回调的滑动条
    /// </summary>
    public class ScrollRectDragCustom : ScrollRect
{
    public UnityAction<PointerEventData> OnBeginDragEvent;
    public UnityAction<PointerEventData> OnEndDragEvent;
    public UnityAction<PointerEventData> OnDragEvent;

    public override void OnBeginDrag(PointerEventData eventData)
    {
        base.OnBeginDrag(eventData);
        if (OnBeginDragEvent != null)
        {
            OnBeginDragEvent(eventData);
        }
    }

    public override void OnEndDrag(PointerEventData eventData)
    {
        base.OnEndDrag(eventData);
        if (OnEndDragEvent != null)
        {
            OnEndDragEvent(eventData);
        }
    }

    public override void OnDrag(PointerEventData eventData)
    {
        base.OnDrag(eventData);
        if (OnDragEvent != null)
        {
            OnDragEvent(eventData);
        }
    }


    ////高度 往下拉是负数   往上拉是正数    
    //private float dragOffsetValue = -30f;

    ////是否刷新    
    //bool isRef = false;
    ////是否处于拖动    
    //bool isDrag = false;
    ////显示、隐藏刷新字段    
    //public Callback<bool> callback1;
    ////如果满足刷新条件 执行的方法   
    //public Callback callback2;



    //protected override void Awake()
    //{
    //    base.Awake();

    //    onValueChanged.AddListener(ScrollValueChanged);
    //}
    ///// <summary>    
    ///// 当ScrollRect被拖动时    
    ///// </summary>    
    ///// <param name="vector">被拖动的距离与Content的大小比例</param>   
    //void ScrollValueChanged(Vector2 vector)
    //{
    //    //如果不拖动 当然不执行之下的代码     
    //    if (!isDrag) return;



    //    //这个就是Content     
    //    RectTransform rect = GetComponentInChildren<ContentSizeFitter>().GetComponent<RectTransform>();
    //    //如果拖动的距离大于给定的值       
    //    if (dragOffsetValue > rect.rect.height * vector.y)
    //    {
    //        isRef = true;
    //        if (callback1 != null)
    //        {
    //            callback1.Invoke(true);
    //        }
    //    }
    //    else
    //    {
    //        isRef = false;
    //        if (callback1 != null)
    //        {
    //            callback1.Invoke(false);
    //        }
    //    }
    //}
    //public override void OnBeginDrag(PointerEventData eventData)
    //{
    //    base.OnBeginDrag(eventData);
    //    isDrag = true;
    //}

    //public override void OnEndDrag(PointerEventData eventData)
    //{
    //    base.OnEndDrag(eventData);
    //    if (callback1 != null)
    //    {
    //        callback1.Invoke(false);
    //    }
    //    if (isRef)
    //    {
    //        if (callback2 != null)
    //        {
    //            callback2.Invoke();
    //        }
    //    }
    //    isRef = false;
    //    isDrag = false;
    //}
    }
}