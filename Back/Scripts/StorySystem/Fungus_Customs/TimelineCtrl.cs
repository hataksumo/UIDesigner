using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace Fungus
{
    [CommandInfo("Timeline",
                "Play PlayableDirector",
                "Control PlayableDirector")]
    [AddComponentMenu("")]
    public class TimelineCtrl : Command
    {
        public PlayableDirector pd;
        public bool waitUntilFinished = false;
        public float waitTime = 0f;
        protected float timer = 0f;
        protected bool waitingFin = false;
        protected PlayableDirectorManualCtrl ctrl = null;
        public override void OnEnter()
        {
            if (pd == null)
            {
                Continue();
                return;
            }

            ctrl = pd.gameObject.GetComponent<PlayableDirectorManualCtrl>();
            if (ctrl == null)
            {
                ctrl = pd.gameObject.AddComponent<PlayableDirectorManualCtrl>();
            }
            if (ctrl != null)
            {
                if (ctrl.State != PlayableDirectorManualCtrl.CtrlState.Play)
                {
                    //pd.initialTime = 0;            
                    //pd.Play();
                    ctrl.Play();
                } else
                {
                    LoopTimeline.AddContinueCount();
                }

                if (waitTime > 0.001f || waitUntilFinished)
                {
                    timer = 0f;
                    waitingFin = true;
                } else
                {
                    Continue();
                }
            } else
            {
                Continue();
            }
        }

        public override string GetSummary()
        {
            if (pd == null)
            {
                return "Error: No Playable Director";
            }
            return pd.name;
        }

        private void Update()
        {
            if (!IsExecuting || !waitingFin) return;
            //if (ctrl != null && ctrl.State != PlayableDirectorManualCtrl.CtrlState.Play)
            //{
            //    Logger.Log("启动PlayableDirectorManualCtrl");
            //    ctrl.Play();
            //}
            // if (!waitingFin) return;



            int updateTimes = PlayableDirectorManualCtrl.CalcEvaluateTimes(Time.deltaTime);
            if (updateTimes < 1)
            {
                timer += Time.deltaTime;
            } else
            {
                timer += PlayableDirectorManualCtrl.minUpdateTime * updateTimes;
            }

            if (timer >= waitTime)
            {
                if (waitUntilFinished)
                {
                    if (ctrl.State != PlayableDirectorManualCtrl.CtrlState.Play)
                    {
                        waitingFin = false;
                        Continue();
                    }
                } else
                {
                    waitingFin = false;
                    Continue();
                }
            }
        }

        void OnDirectorFin( PlayableDirector director )
        {
            if (pd != director) return;

            pd.stopped -= OnDirectorFin;
            Continue();
        }

    }

}