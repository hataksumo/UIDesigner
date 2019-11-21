using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

namespace LJTilemaps
{
    [Serializable]
    public  class SerVector2Int 
        //: IEquatable<SerVector2Int>
    {
        public SerVector2Int(int x, int y)
        {
            this.x = x;
            this.y = y;
        }

        [SerializeField]
        private int x;
        [SerializeField]
        private int y;

        public int X { get { return x; } set { x = value; } }
        public int Y { get { return y; } set { y = value; } }

        //public override bool Equals(object obj)
        //{
        //    return base.Equals(obj);
        //}


        public override string ToString()
        {
            return string.Format(" {0} {1}", x, y);
            //return base.ToString();
        }
        public override int GetHashCode()
        {
            StringBuilder sb = new StringBuilder(x.ToString());
            sb.Append(y.ToString());
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

            SerVector2Int other = obj as SerVector2Int;
            if(other == null) {
                return false;
            }

            if (other.x == x && other.y == y)
            {
                return true;
            }
            return false;
        }
    }
}