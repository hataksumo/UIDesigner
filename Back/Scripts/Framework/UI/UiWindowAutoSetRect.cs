//#define TEST_NOTCH_MODE
using iDreamsky.MSLD.Notch;
using UnityEngine;

public class UiWindowAutoSetRect : MonoBehaviour {

    public bool isLeft = true;
    private float needScaleWidthPixel = 86f;
    void Start () {
        CheckScreenScale();
	}

    private void OnEnable()
    {

    }

    /// <summary>
    /// 检测屏幕比例
    /// </summary>
    private void CheckScreenScale()
    {
        bool isSecial = MSLDNotchManager.CheckDeviceHasNotch();
         //isSecial = true;
        if (isSecial)
        {
            FixAdapter();
        }
    }

    private void FixAdapter()
    {
        RectTransform rectTrans = this.GetComponent<RectTransform>();
        if (rectTrans != null)
        {
            if (rectTrans.sizeDelta.x == 0)
            {
                rectTrans.sizeDelta = new Vector2(-needScaleWidthPixel * 2, 0);
            }
            else
            {
                if (isLeft)
                {
                    rectTrans.anchoredPosition += new Vector2(needScaleWidthPixel, 0);
                }
                else
                {
                    rectTrans.anchoredPosition -= new Vector2(needScaleWidthPixel, 0);
                }

            }
        }
    }
}
