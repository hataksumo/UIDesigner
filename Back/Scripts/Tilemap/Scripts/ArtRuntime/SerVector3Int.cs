using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

namespace LJTilemaps
{
    [Serializable]
    public  class SerVector3Int 
        //: IEquatable<SerVector3Int>
        //: IComparable
    {
        public SerVector3Int(int x, int y, int z)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        [SerializeField]
        private int x;
        [SerializeField]
        private int y;
        [SerializeField]
        private int z;

        public int Z { get { return z; } set { z = value; } }
        public int X { get { return x; } set { x = value; } }
        public int Y { get { return y; } set { y = value; } }

        //public override bool Equals(object obj)
        //{
        //    return base.Equals(obj);
        //}


        public override string ToString()
        {
            return string.Format(" {0} {1} {2}", x, y, z);
            //return base.ToString();
        }
        public override int GetHashCode()
        {
            StringBuilder sb = new StringBuilder(x.ToString());
            sb.Append(y.ToString());
            sb.Append(z.ToString());
            return (sb.ToString()).GetHashCode();
            //int xhashCode = x.GetHashCode();
            //xhashCode ^= y.GetHashCode();
            //xhashCode ^= z.GetHashCode();
            //return xhashCode;
            //return base.GetHashCode();
        }


        public override bool Equals(object obj)
        {
            if (obj == null) {
                return false;
            }

            SerVector3Int other = obj as SerVector3Int;
            if(other == null) {
                return false;
            }

            if (other.x == x && other.y == y && other.z == z)
            {
                return true;
            }
            return false;
        }
    }
}