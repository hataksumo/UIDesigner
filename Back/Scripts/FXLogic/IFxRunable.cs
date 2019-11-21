using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace ZHJ.Battle
{
    /// <summary>
    /// 特效控制生命周期接口
    /// </summary>
    public interface IFxRunable
    {
        /// <summary>
        /// 播放特效
        /// </summary>
        void OnPlay();

        /// <summary>
        /// 暂停特效
        /// </summary>
        void OnPause();
        /// <summary>
        /// 恢复特效
        /// </summary>
        void OnResume();
        /// <summary>
        /// 结束特效
        /// </summary>
        void OnEnd();

    }
}
