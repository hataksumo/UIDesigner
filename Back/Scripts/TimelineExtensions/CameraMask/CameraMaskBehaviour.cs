using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;


namespace LJ_TimelineExtension
{

    // A behaviour that is attached to a playable
    public class CameraMaskBehaviour : PlayableBehaviour
    {
        public Color maskColor;
        public float startFadePct;
        public AnimationCurve startFadeCurve;

        public float endFadePct;
        public AnimationCurve endFadeCurve;

        int clipState = 0;

        public RoleFxController attacker;
        public RoleFxController target;
        public List<RoleFxController> others;
       

        void ResetRolesRenderer()
        {
            if (attacker)
            {
                attacker.ResetRenderQueue();
            }
            if (target)
            {
                target.ResetRenderQueue();
            }

            if (others != null && others.Count > 0)
            {
                foreach (var o in others)
                {
                    if (o != null)
                    {
                        o.ResetRenderQueue();
                    }
                }
            }
        }


        void SetRolesRenderer2Top()
        {
            if (attacker)
            {
                attacker.SetRenderQueue2Top();
            }
            if (target)
            {
                target.SetRenderQueue2Top();
            }
            if (others != null && others.Count > 0)
            {
                foreach (var o in others)
                {
                    if (o != null)
                    {
                        o.SetRenderQueue2Top();
                    }
                }
            }
        }


        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            float clipPct = GetClipPercent(playable);
            if (clipPct > 0.01f)
            {
                if (clipPct < startFadePct)
                {
                    var fadePct = GetCurveValue(0f, startFadePct, startFadeCurve, clipPct);
                    SetMaskColor(Color.Lerp(Color.clear, this.maskColor, fadePct));
                } else if (clipPct >= endFadePct)
                {
                    var fadePct = GetCurveValue(endFadePct, 1f, endFadeCurve, clipPct);
                    SetMaskColor(Color.Lerp(Color.clear, this.maskColor, fadePct));
                    ResetRolesRenderer();
                } else
                {
                    SetMaskColor(this.maskColor);
                }
            }
        }



        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            SetRolesRenderer2Top();
            //SetMaskColor(Color.clear);
            clipState = 0;
        }

        public override void ProcessFrame( Playable playable, FrameData info, object playerData )
        {
            float clipPct = GetClipPercent(playable);
            switch (clipState)
            {
                case 0:
                    if (clipPct >= startFadePct)
                    {
                        clipState = 1;
                        SetMaskColor(this.maskColor);
                    } else
                    {
                        var fadePct = GetCurveValue(0f, startFadePct, startFadeCurve, clipPct);
                        SetMaskColor(Color.Lerp(Color.clear, this.maskColor, fadePct));
                    }
                    break;
                case 1:
                    if (clipPct >= endFadePct)
                    {
                        clipState = 2;
                    }
                    break;
                case 2:
                    if (clipPct >= 1f)
                    {
                        clipState = 3;
                    } else
                    {
                        var fadePct = GetCurveValue(endFadePct, 1f, endFadeCurve, clipPct);
                        SetMaskColor(Color.Lerp(Color.clear, this.maskColor, fadePct));
                    }
                    break;
            }
        }

        float GetClipPercent( Playable playable )
        {
            return Mathf.Clamp01((float)(playable.GetTime() / playable.GetDuration()));
        }

        float GetCurveValue( float start, float end, AnimationCurve curve, float clipPct )
        {
            if (Mathf.Approximately(start, end))
            {
                return curve.Evaluate(0f);
            } else
            {
                float curvePct = Mathf.Clamp01((clipPct - start) / (end - start));
                return curve.Evaluate(curvePct);
            }
        }

        

        public override void OnPlayableCreate( Playable playable )
        {
            
        }

        void SetMaskColor( Color color )
        {
           
            CamMaskUtilities.SetMaskColor(color, 0);
        }


        public override void OnPlayableDestroy( Playable playable )
        {
            CamMaskUtilities.ResetExtraAlpha();
        }

    }

}