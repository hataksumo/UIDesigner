using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

// A behaviour that is attached to a playable
public class RoleVisiableMixer : PlayableBehaviour
{   
    Renderer[] roleRenderers;
        
    public override void OnPlayableDestroy( Playable playable )
    {
        
        if (roleRenderers != null && roleRenderers.Length > 0)
        {
            for (int i = 0 ; i < roleRenderers.Length ; i++)
            {
                if (roleRenderers[i] != null && !roleRenderers[i].enabled)
                {
                    roleRenderers[i].enabled = true;
                }
            }
        }
    }


    public override void ProcessFrame( Playable playable, FrameData info, object playerData )
    {
        if(roleRenderers == null || roleRenderers.Length < 1)
        {
            var go = playerData as GameObject;
            if( go != null)
            {
                roleRenderers = go.GetComponentsInChildren<Renderer>();
            }
        }

       

        if( roleRenderers != null && roleRenderers.Length > 0)
        {
            int inputCount = playable.GetInputCount<Playable>();
            bool active = false;
            for (int i = 0 ; i < inputCount ; i++)
            {
                if (playable.GetInputWeight(i) > 0f)
                {
                    active = true;
                    break;
                }
            }
            for (int i = 0 ; i < roleRenderers.Length ; i++)
            {
                if( roleRenderers[i].enabled != active)
                {
                    roleRenderers[i].enabled = active;
                }
            }
        }
    }
}
