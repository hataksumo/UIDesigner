using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJTilemaps
{
    [Serializable]
    public struct LJTileData : IEquatable<LJTileData>
    {
        public Vector3Int position;
        public int tileId;

        public bool Equals(LJTileData other)
        {
            return position.Equals(other.position);
        }
    }
}
