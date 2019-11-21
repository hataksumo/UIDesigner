using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using AssetBundles;
using GameChannel;
using System;
using XLua;
public class CommonClick : MonoBehaviour
{
    // Start is called before the first frame update
    Camera mainCamera;
    float width = 0;
    float height = 0;
    RectTransform screen;
    List<GameObject> list = new List<GameObject>();
    void Start()
    {
        //screen = GameObject.Find("UIRoot/TipLayer").transform.GetComponent<RectTransform>();
        //width = (int)screen.sizeDelta.x;
        //height= (int)screen.sizeDelta.y;
        //list.Clear();
        //常驻内存
        AssetBundleManager.Instance.LoadAssetBundleAsync(AssetBundleUtility.AssetBundlePathToAssetBundleName("Effect/Prefab/UI/fx_ui_clickbutton.prefab"));
    }
    IEnumerator InitNoticeTipPrefab(Vector3 point)
    {
 
        var loader = AssetBundleManager.Instance.LoadAssetAsync("Effect/Prefab/UI/fx_ui_clickbutton.prefab", typeof(GameObject));
        yield return loader;
        GameObject pre= loader.asset as GameObject;
        GameObject go = GameObject.Instantiate(pre) as GameObject;
        go.transform.SetParent(screen.transform);
        go.transform.localPosition = point;
        StartCoroutine(CloseTipPrefab(go));
    }
    IEnumerator CloseTipPrefab(GameObject go)
    {
        yield return new WaitForSecondsRealtime(0.5f);
        go.gameObject.SetActive(false);
        list.Add(go);
    }
 
    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (width <= 0 && height <= 0)
            {
                GameObject top = GameObject.Find("UIRoot/TopLayer");
                if (top != null){
                    screen = GameObject.Find("UIRoot/TopLayer").transform.GetComponent<RectTransform>();
                    width = screen.sizeDelta.x;
                    height = screen.sizeDelta.y;
                }
                else{
                    return;
                }
            }
            if (width <= 0 && height <= 0)
            {
                Debug.LogError("缺少相机或者Tip");
                return;
            }
            float x = Input.mousePosition.x / Screen.width;
            float y = Input.mousePosition.y / Screen.height;
            Vector3 point = new Vector3(width * (x - 0.5f), height *(y-0.5f), 0);
            if (list.Count > 0){
                GameObject re_go = list[0];
                list.RemoveAt(0);
                re_go.transform.SetParent(screen.transform);
                re_go.transform.localPosition = point;
                re_go.SetActive(true);
                StartCoroutine(CloseTipPrefab(re_go));
            }
            else {
                StartCoroutine(InitNoticeTipPrefab(point));
            }
        }

    //    if Input.GetMouseButtonDown(0) then
    //    if IsNull(self.cam) then
    //        self.cam = CS.UnityEngine.Camera.main
    //        if IsNull(self.cam) then
    //            local cam_game = CS.UnityEngine.GameObject.FindGameObjectWithTag("GameMain")
    //            self.cam = cam_game:GetComponent(typeof(CS.UnityEngine.Camera))
    //        end
    //    end
    //    if IsNull(self.cam) then
    //        Logger.LogError("点击摄像机没有？")
    //    end

    //    local rectTrans = UIUtil.FindComponent(CS.UnityEngine.GameObject.Find("UIRoot/TipLayer").transform, typeof(CS.UnityEngine.RectTransform))
    //    self.sceen_width = rectTrans.sizeDelta.x
    //    self.sceen_height = rectTrans.sizeDelta.y
    //    local point = Vector3.New(CS.UnityEngine.Input.mousePosition.x, CS.UnityEngine.Input.mousePosition.y, 0)
    //    local pos = Vector3.New(point.x - self.sceen_width / 2, point.y - self.sceen_height / 2, 0)
    //    Logger.Log(point)
    //    Logger.Log(pos)
    //    GameObjectPool: GetInstance():GetGameObjectAsync("Effect/Prefab/UI/fx_ui_clickbutton.prefab", function(go)
 
    //         go.transform:SetParent(rectTrans.transform)
 
    //         go.transform.localPosition = pos;
    //    CS.UnityEngine.GameObject.Destroy(go, 0.5);
    //    end)
    //end
    }
}
