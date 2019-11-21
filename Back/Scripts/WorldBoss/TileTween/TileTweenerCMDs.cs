using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

namespace TilemapTweens
{

    abstract class TweenCmd
    {
        public int GUID;
        public Tilemap tilemap;
        public Vector3Int pos;
        public float startTime;
        public float duration;
        public System.Action<int> onFin;
        public abstract void Execute( float time );

        public float Progress( float time )
        {
            if (duration > 0f)
                return (time - startTime) / duration;
            else
                return 1f;
        }
    }

    class BumpCmd : TweenCmd
    {
        public Vector4 startPos;
        public Vector4 offset;

        public override void Execute( float time )
        {
            var pct = Progress(time);
            var trans = tilemap.GetTransformMatrix(pos);
            if (pct < 1f)
            {
                var pos = Vector4.Lerp(
                    startPos
                    , startPos + offset
                    , Mathf.Sin(pct * Mathf.PI)
                    );
                trans.SetColumn(3, pos);
            } else
            {
                trans.SetColumn(3, startPos);
            }
            tilemap.SetTransformMatrix(pos, trans);
        }
    }

    class ColorCmd : TweenCmd
    {
        public Color startColor;
        public Color endColor;

        public override void Execute( float time )
        {
            var pct = Progress(time);

            if (pct < 1f)
            {
                var col = Color.Lerp(
                    startColor
                    , endColor
                    , pct
                    );
                tilemap.SetColor(pos, col);
            } else
            {
                tilemap.SetColor(pos, endColor);
            }
        }
    }

    class MoveToCmd : TweenCmd
    {
        public Vector4 startPos;
        public Vector4 endPos;
        public override void Execute( float time )
        {
            var pct = Progress(time);
            var trans = tilemap.GetTransformMatrix(pos);
            if (pct < 1f)
            {
                var pos = Vector4.Lerp(
                    startPos
                    , endPos
                    , pct 
                    );
                trans.SetColumn(3, pos);
            } else
            {
                trans.SetColumn(3, endPos);
            }
            tilemap.SetTransformMatrix(pos, trans);
        }
    }

}