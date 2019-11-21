using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

namespace TilemapTweens
{

    public class TileTweener : MonoBehaviour
    {
        private static TileTweener _inst;
        public static TileTweener Instance
        {
            get
            {
                if (_inst == null)
                {
                    GameObject instGo = new GameObject("[TileTweener]");
                    _inst = instGo.AddComponent<TileTweener>();
                }
                return _inst;
            }
        }

        List<TweenCmd> cmds = null;
        Dictionary<int, TweenCmd> guidDict = null;

        int _guid = 0;
        int guid
        {
            get
            {
                return _guid++;
            }
        }

        private void Awake()
        {
            if (_inst != null)
            {
                GameObject.Destroy(gameObject);
                return;
            }
            _guid = 0;
            cmds = new List<TweenCmd>();
            guidDict = new Dictionary<int, TweenCmd>();
        }

        private void OnDestroy()
        {
            if (cmds != null)
                cmds.Clear();
            if (guidDict != null)
                guidDict.Clear();
        }

        // Update is called once per frame
        void Update()
        {
            if (cmds.Count < 1)
            {
                enabled = false;
                return;
            }

            foreach (var info in cmds)
            {
                info.Execute(Time.time);
            }
            for (int i = cmds.Count - 1 ; i >= 0 ; i--)
            {
                if (IsFin(cmds[i]))
                {
                    var cmd = cmds[i];
                    //var id = CalcId(cmds[i].tilemap, cmds[i].pos);
                    //idSet.Remove(id);
                    guidDict.Remove(cmd.GUID);
                    cmds.RemoveAt(i);
                    if (cmd.onFin != null)
                    {
                        cmd.onFin(cmd.GUID);
                    }
                }
            }
        }

        bool IsFin( TweenCmd info )
        {
            if (info == null) return true;
            if (Time.time - info.startTime >= info.duration)
            {
                return true;
            }
            return false;
        }

        T GetCMD<T>( Tilemap map, Vector3Int pos, float duration, System.Action<int> onFin ) where T : TweenCmd, new()
        {
            T cmd = new T();
            cmd.GUID = guid;
            cmd.tilemap = map;
            cmd.pos = pos;
            cmd.startTime = Time.time;
            cmd.duration = duration;
            cmd.onFin = onFin;
            if (!guidDict.ContainsKey(cmd.GUID))
                guidDict.Add(cmd.GUID, cmd);
            else
                guidDict[cmd.GUID] = cmd;
            cmds.Add(cmd);
            return cmd;
        }

        public int Bump( Tilemap map, Vector3Int pos, Vector3 offset, float duration, System.Action<int> onFin )
        {
            if (map == null
                || !map.HasTile(pos)
                || duration < 0.02f
                || offset.sqrMagnitude < 0.001f
                ) return -1;

            var cmd = GetCMD<BumpCmd>(map, pos, duration, onFin);

            var tran = map.GetTransformMatrix(pos);
            cmd.startPos = tran.GetColumn(3);
            cmd.offset = offset;

            TilemapUtilties.UnlockFlag(map, pos, TileFlags.LockTransform);
            if (!enabled)
            {
                enabled = true;
            }
            return cmd.GUID;
        }

        public int Color( Tilemap map, Vector3Int pos, Color col, float duration, System.Action<int> onFin )
        {
            if (map == null
               || !map.HasTile(pos)
               || duration < 0.02f
               ) return -1;

            var cmd = GetCMD<ColorCmd>(map, pos, duration, onFin);

            cmd.startColor = map.GetColor(pos);
            cmd.endColor = col;

            TilemapUtilties.UnlockFlag(map, pos, TileFlags.LockColor);

            if (!enabled)
            {
                enabled = true;
            }
            return cmd.GUID;

        }

        public int MoveTo( Tilemap map, Vector3Int pos, Vector3 end, float duration, System.Action<int> onFin )
        {
            if (map == null
               || !map.HasTile(pos)
               || duration < 0.02f
               ) return -1;

            var cmd = GetCMD<MoveToCmd>(map, pos, duration, onFin);

            var tran = map.GetTransformMatrix(pos);
            cmd.startPos = tran.GetColumn(3);
            cmd.endPos = new Vector4(end.x, end.y, end.z, cmd.startPos.w);

            TilemapUtilties.UnlockFlag(map, pos, TileFlags.LockTransform);
            if (!enabled)
            {
                enabled = true;
            }
            return cmd.GUID;
        }

        public bool IsFin( int guid )
        {
            if (guid < 0 || guid > _guid) return true;
            TweenCmd cmd = null;
            if (guidDict.TryGetValue(guid, out cmd))
            {
                if (cmd != null)
                {
                    return cmd.Progress(Time.time) >= 1f;
                }
            }
            return true;
        }

        public bool IsIdle
        {
            get
            {
                return !enabled;
            }
        }

    }

}