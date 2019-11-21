using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;
using LJTilemaps;
using Fungus;
using System.Collections;
using System;
//using DG.Tweening;

namespace Nation
{
    /// <summary>
    /// 队伍功能代理
    /// </summary>
    //[RequireComponent(typeof(FrameAnimatorCtrl))]
    public class NationAgentCtrl : MonoBehaviour
    {
        private const float MAP_ANGLE = 45f;

        ///// <summary>
        ///// 动画控制器
        ///// </summary>
        //private FrameAnimatorCtrl frameAnimator;
        /// <summary>
        /// 持有一份动画
        /// </summary>
        private iTween tween;
        private Hashtable cachePathTweenHashParam; // 路径动画hash模板
        private Hashtable cacheBezierTweenHashParam; // 贝塞尔动画hash模板

        private Vector3 cachePositon = Vector3.zero;
        private Vector3[] cachePositonList = null;
        private Vector3[] cacheBezierPositon = null;
        private float dValRate = 0f; // 0~1之间差值
        private float durationTime = 0f; // 移动持续时间
                                         /// <summary>
                                         /// 开始的事件
                                         /// </summary>
        public Action<object> tweenBeginCallback;
        /// <summary>
        /// 结束的事件
        /// </summary>
        public Action<object> tweenEndCallback;

        /// <summary>
        /// 更新的事件
        /// </summary>
        public Action<object, Vector3,Vector3 ,float> tweenUpdateCallback;

        /// <summary>
        /// 更新频率
        /// </summary>
        public float updateInterval = 0.1f;
        /// <summary>
        /// 当前更新时间
        /// </summary>
        private float runningDuration = 0f;
        private void Awake()
        {
            //frameAnimator = GetComponentInChildren<FrameAnimatorCtrl>();
            //if (frameAnimator == null) {
            //    throw new NullReferenceException("找不到小人动画组件");
            //}
            //transform.position = new Vector3(-3.69f, 12.85f, 0f);


            cacheBezierTweenHashParam = iTween.Hash(
               "delay", 0f,
               "easetype", "linear",
               "looptype", "none",
               "ignoretimescale", true,
               //"onstart", "OnMoveTweenStart",
               "onstarttarget", gameObject,
               //"onstartparams", "",
               //"onupdate", "OnMoveTweenUpdate",
               "onupdatetarget", gameObject,
               //"onupdateparams", "",
               //"oncomplete", "OnMoveTweenComplete",
               "oncompletetarget", gameObject
               //"oncompleteparams", ""
               );

            cachePathTweenHashParam = iTween.Hash(
                "axis", "XY",
                "delay", 0f,
                "easetype", "linear",
                "looptype", "none",
                "ignoretimescale", true,
                //"onstart", "OnMoveTweenStart",
                "onstarttarget", gameObject,
                //"onstartparams", "",
                //"onupdate", "OnMoveTweenUpdate",
                "onupdatetarget", gameObject,
                //"onupdateparams", "",
                //"oncomplete", "OnMoveTweenComplete",
                "oncompletetarget", gameObject
                //"oncompleteparams", ""
                );
        }


        /// <summary>
        /// 根据指定路径移动
        /// </summary>
        public void MoveToPath(Vector3[] paths, float dValRate, float duration, bool movetopath, object paramObj)
        {
            if (paths.Length <= 1)
            {
                //MoveToPos(paths[0], duration, dValRate, movetopath, paramObj);
                return;
            }
            //StopTween();
            this.dValRate = dValRate;
            cachePositonList = paths;
            durationTime = duration;

            Hashtable tweenParams = new Hashtable(cachePathTweenHashParam);
            tweenParams["path"] = paths;
            tweenParams["movetopath"] = movetopath;
            tweenParams["time"] = duration;
            tweenParams["onstart"] = "OnPathTweenStart";
            if (paramObj != null)
            {
                tweenParams["onstartparams"] = paramObj;
            }

            tweenParams["onupdate"] = "OnPathTweenUpdate";
            if (paramObj != null)
            {
                tweenParams["onupdateparams"] = paramObj;
            }
            tweenParams["oncomplete"] = "OnPathTweenComplete";
            if (paramObj != null)
            {
                tweenParams["oncompleteparams"] = paramObj;
            }
            iTween.MoveTo(gameObject, tweenParams);
            runningDuration = 0f;
        }



        /// <summary>
        /// 移动到指定位置
        /// </summary>
        public void MoveByBezier(Vector3 position, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float dValRate, float duration, object paramObj)
        {
            cachePositon = position;//缓存起始坐标
            this.dValRate = dValRate;
            durationTime = duration;
            Hashtable tweenParams = new Hashtable(cacheBezierTweenHashParam);
            tweenParams["from"] = dValRate;
            tweenParams["to"] = 1f;

            float maxDuration = duration;
            if (dValRate > 0) {
                maxDuration = maxDuration - dValRate * maxDuration;
                if (maxDuration < 0) {
                    maxDuration = 0;
                }
            }

            tweenParams["time"] = maxDuration;
            cacheBezierPositon = new Vector3[4];
            cacheBezierPositon[0] = p0;
            cacheBezierPositon[1] = p1;
            cacheBezierPositon[2] = p2;
            cacheBezierPositon[3] = p3;

            Vector3 beginPosition = cachePositon + MapUtil.CalculateTargetBezierPoint(dValRate, cacheBezierPositon[0],
                cacheBezierPositon[1], cacheBezierPositon[2], cacheBezierPositon[3]);
            transform.position = beginPosition;

            tweenParams["onstart"] = "OnBezierTweenStart";
            if (paramObj != null)
            {
                tweenParams["onstartparams"] = paramObj;
            }
            tweenParams["onupdate"] = "OnBezierTweenUpdate";
            if (paramObj != null)
            {
                tweenParams["onupdateparams"] = paramObj;
            }
            tweenParams["oncomplete"] = "OnBezierTweenComplete";
            if (paramObj != null)
            {
                tweenParams["oncompleteparams"] = paramObj;
            }
            iTween.ValueTo(gameObject, tweenParams);


            runningDuration = 0f;
        }

        private void OnDisable()
        {
            runningDuration = 0f;
            //StopTween();
        }

        private void OnBezierTweenStart()
        {
            DoOnBezierTweenStart(null);
        }
        private void OnBezierTweenStart(object param)
        {
            DoOnBezierTweenStart(param);
        }

        private void DoOnBezierTweenStart(object param)
        {
            tween = GetComponent<iTween>();
            //float t = tween.GetClampPercentage();
            //t = t + 0.01f;
            //if (t > 1f)
            //{
            //    t = 1f;
            //}

            if (tweenBeginCallback != null)
            {
                tweenBeginCallback(param);
            }
        }

        //private void OnBezierTweenUpdate()
        //{
        //    DoOnBezierTweenUpdate(null);
        //}
        private void OnBezierTweenUpdate(object param)
        {
            DoOnBezierTweenUpdate(param);
        }

        private void DoOnBezierTweenUpdate(object param)
        {
            //Debug.Log("DoOnBezierTweenUpdate : " + param);
            //float t = tween.GetClampPercentage();
            float t = Convert.ToSingle(param);

            Vector3 beginPosition = cachePositon + MapUtil.CalculateTargetBezierPoint(t, cacheBezierPositon[0],
            cacheBezierPositon[1], cacheBezierPositon[2], cacheBezierPositon[3]);
            transform.position = beginPosition;

            t = t + 0.01f;
            if (t > 1f)
            {
                t = 1f;
            }
          
            //SetAnimDirWithPos(nextPos,transform);
            if (tweenUpdateCallback != null) // just 优化
            {
                runningDuration = -Time.unscaledDeltaTime;
                if (runningDuration <= 0f)
                {
                    Vector3 nextPos = cachePositon + MapUtil.CalculateTargetBezierPoint(t, cacheBezierPositon[0],
                    cacheBezierPositon[1], cacheBezierPositon[2], cacheBezierPositon[3]);
                    runningDuration = updateInterval;
                    //Quaternion quaternion = Quaternion.Euler(0, 0, MAP_ANGLE);
                    //Vector3 dir2 = quaternion * (nextPos - transform.position);
                    //Quaternion quaternion = Quaternion.Euler(0, 0, MAP_ANGLE);
                    //float angel = 0;
                    ////Vector3 dir2 = nextPos - transform.position;
                    //Vector3 nextXProject = Vector3.ProjectOnPlane(nextPos, Vector3.forward);
                    //Vector3 curXProject = Vector3.ProjectOnPlane(transform.position, Vector3.forward);
                    //Quaternion quaternion = Quaternion.Euler(90, 0, -45);
                    //if (nextXProject - curXProject != Vector3.zero)
                    //{
                    //    Vector3 myResutl = quaternion * (nextXProject - curXProject);
                    //    //tweenUpdateCallback(param, nextPos,transform.position, dir2, angel);
                    //    tweenUpdateCallback(param, myResutl, angel);
                    //}
                    tweenUpdateCallback(param, nextPos, transform.position,t);
                }
            }
        }
        private void OnBezierTweenComplete()
        {
            DoOnBezierTweenComplete(null);
        }
        private void OnBezierTweenComplete(object param)
        {
            DoOnBezierTweenComplete(param);
        }
        private void DoOnBezierTweenComplete(object param)
        {
            //SetAnimWithRunDir();
            if (tweenEndCallback != null)
            {
                tweenEndCallback(param);
            }
            //tween = null;
        }


        private void OnPathTweenStart()
        {
            DoOnPathTweenStart(null);
        }
        private void OnPathTweenStart(object param)
        {
            DoOnPathTweenStart(param);
        }

        private void DoOnPathTweenStart(object param)
        {
            //Debug.Log("OnPathTweenStart");
            tween = GetComponent<iTween>();
            //TODO 测试代码
            dValRate = Mathf.Min(Mathf.Max(0f, dValRate), 1f);
            float targetDuration = dValRate * durationTime;
            tween.RunningTime = targetDuration;


            //Debug.Log("OnPathTweenUpdate : id" + tween.id + " counter : "+ counter++);
            if (tweenBeginCallback != null)
            {
                tweenBeginCallback(param);
            }
        }
        private void OnPathTweenUpdate()
        {
            DoOnPathTweenUpdate(null);
        }
        private void OnPathTweenUpdate(object param)
        {
            DoOnPathTweenUpdate(param);
        }

        private void DoOnPathTweenUpdate(object param)
        {
            tween = GetComponent<iTween>();
            float t = tween.GetClampPercentage();
            t = t + 0.01f;
            if (t > 1f)
            {
                t = 1f;
            }
            
            //SetAnimDirWithPos(nextPos, transform);
            if (tweenUpdateCallback != null)
            {
                runningDuration = -Time.unscaledDeltaTime;
                if (runningDuration <= 0f)
                {
                    Vector3 nextPos = tween.Path.Interp(Mathf.Clamp(t, 0f, 1f));
                    runningDuration = updateInterval;
                    //Quaternion quaternion = Quaternion.Euler(0, 0, MAP_ANGLE);
                    //Vector3 dir2 = quaternion * (nextPos - transform.position);
                    //Vector3 angel = Vector3.ProjectOnPlane(nextPos, transform.position);
                    //float angel = 0;
                    //Vector3 dir2 = nextPos - transform.position;
                    //Vector3 nextXProject = Vector3.ProjectOnPlane(nextPos, Vector3.right);
                    //Vector3 curXProject = Vector3.ProjectOnPlane(transform.position, Vector3.right);
                    //Quaternion quaternion = Quaternion.Euler(0, 0, 90);
                    //Vector3 dir = Vector3.ProjectOnPlane(nextPos, Vector3.right);

                    //Vector3 nextXProject = Vector3.ProjectOnPlane(nextPos, Vector3.forward);
                    //Vector3 curXProject = Vector3.ProjectOnPlane(transform.position, Vector3.forward);
                    //Quaternion quaternion = Quaternion.Euler(90, 0, -45);
                    //if (nextXProject - curXProject != Vector3.zero)
                    //{
                    //    Vector3 myResutl = quaternion * (nextXProject - curXProject);
                    //    //tweenUpdateCallback(param, nextPos,transform.position, dir2, angel);
                    //    tweenUpdateCallback(param, myResutl, angel);
                    //}

                    tweenUpdateCallback(param, nextPos, transform.position,t);
                }
            }
        }
        private void OnPathTweenComplete()
        {
            DoOnPathTweenComplete(null);
        }
        private void OnPathTweenComplete(object param)
        {
            DoOnPathTweenComplete(param);
        }
        private void DoOnPathTweenComplete(object param)
        {
            //SetAnimWithRunDir();
            if (tweenEndCallback != null)
            {
                tweenEndCallback(param);
            }
            //tween = null;
        }

        private void OnDestroy()
        {
            CleanRunData();
            cachePathTweenHashParam = null;
            cacheBezierTweenHashParam = null;

            tween = null;
        }

        public void CleanRunData()
        {
            StopTween();
            tweenBeginCallback = null;
            tweenUpdateCallback = null;
            tweenEndCallback = null;
            cachePositonList = null;
            cacheBezierPositon = null;
        }


        public void SetSelfActive(bool active)
        {
            gameObject.SetActive(active);
        }



        ///// <summary>
        ///// 移动到指定位置
        ///// </summary>
        //public void MoveToPos(Vector3 position, float dValRate, float duration, bool movetopath, object paramObj)
        //{
        //    //StopTween();
        //    cachePositon = position;
        //    this.dValRate = dValRate;
        //    durationTime = duration;
        //    Hashtable tweenParams = new Hashtable(cachePathTweenHashParam);
        //    tweenParams["position"] = position;
        //    tweenParams["movetopath"] = movetopath;
        //    tweenParams["time"] = duration;
        //    tweenParams["onstart"] = "OnMoveTweenStart";
        //    if (paramObj != null)
        //    {
        //        tweenParams["onstartparams"] = paramObj;
        //    }
        //    tweenParams["onupdate"] = "OnMoveTweenUpdate";
        //    if (paramObj != null)
        //    {
        //        tweenParams["onupdateparams"] = paramObj;
        //    }
        //    tweenParams["oncomplete"] = "OnMoveTweenComplete";
        //    if (paramObj != null)
        //    {
        //        tweenParams["oncompleteparams"] = paramObj;
        //    }
        //    iTween.MoveTo(gameObject, tweenParams);
        //}

        
        public void StopTween()
        {
            iTween.Stop(gameObject);
            //tween = null;
        }

        //public void PlayRoleAnim(int animIndex)
        //{
        //    //frameAnimator.CurrentAnimIndex = animIndex;
        //}

        //public int GetCurrentAnimIndex()
        //{
        //    return frameAnimator.CurrentAnimIndex;
        //}



        //private void OnMoveTweenUpdate()
        //{
        //    DoOnMoveTweenUpdate(null);
        //}
        //private void OnMoveTweenUpdate(object param)
        //{
        //    DoOnMoveTweenUpdate(param);
        //}

        //private void DoOnMoveTweenUpdate(object param)
        //{
        //    //Debug.Log("DoOnMoveTweenUpdate");
        //    if (tweenUpdateCallback != null)
        //    {
        //        tweenUpdateCallback(this);
        //    }
        //}

        //private void OnMoveTweenComplete()
        //{
        //    DoOnMoveTweenComplete(null);
        //}
        //private void OnMoveTweenComplete(object param)
        //{
        //    DoOnMoveTweenComplete(param);
        //}

        //private void DoOnMoveTweenComplete(object param)
        //{
        //    //tween = null;
        //    //SetAnimWithRunDir();
        //    if (tweenEndCallback != null)
        //    {
        //        tweenEndCallback(param);
        //    }
        //}
     

        //private void SetAnimDirWithPos(Vector3 nextPos, Transform trans)
        //{
        //    //2.在自身的左右:   Vector3.Dot(transform.right, target.position - transform.position)     
        //    //返回值为正时,目标在自己的右方,反之在左方
        //    //3.在自身上下:   Vector3.Dot(transform.up, target.position - transform.position)    
        //    //返回值为正时,目标在自己的上方,反之在下方

        //    //int myDir = GetDirectionByTan(nextPos.x, nextPos.y, trans.position.x, trans.position.y);
        //    //Debug.Log("我的方向 : "+ myDir);


        //    Quaternion quaternion = Quaternion.Euler(0, 0, MAP_ANGLE);


        //    Vector3 dir1 = quaternion * trans.right;
        //    Vector3 dir2 = quaternion * (nextPos - trans.position);

        //    float leftOrRight = Vector3.Dot(dir1, dir2);
        //    dir1 = quaternion * trans.up;
        //    float upOrDown = Vector3.Dot(dir1, dir2);

        //    if (leftOrRight > 0f) //zuo
        //    {
        //        if (upOrDown > 0f) // 上
        //        {
        //            //4
        //            //Debug.Log("44444444444444");
        //            //右上边方向
        //            PlayRoleAnim(4);
        //        }
        //        else
        //        {
        //            //7
        //            //Debug.Log("77777777777777777777");
        //            //右下边方向
        //            PlayRoleAnim(7);
        //        }
        //    }
        //    else
        //    {
        //        if (upOrDown > 0f) // 上
        //        {
        //            //6
        //            //Debug.Log("66666666666666");
        //            //左上边方向
        //            PlayRoleAnim(6);
        //        }
        //        else
        //        {
        //            //5
        //            //Debug.Log("5555555555555555555");
        //            //左下边方向
        //            PlayRoleAnim(5);
        //        }
        //    }
        //}


        //private void SetAnimWithRunDir()
        //{
        //    switch (frameAnimator.CurrentAnimIndex)
        //    {
        //        case 4:
        //            PlayRoleAnim(0);
        //            break;
        //        case 5:
        //            PlayRoleAnim(1);
        //            break;
        //        case 6:
        //            PlayRoleAnim(2);
        //            break;
        //        case 7:
        //            PlayRoleAnim(3);
        //            break;
        //        default:
        //            break;
        //    }
        //}
    }

}