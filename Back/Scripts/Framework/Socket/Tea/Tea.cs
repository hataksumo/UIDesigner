using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Tea
{

    public static class Tea
    {

        public static int[] KEY = new int[]{//加密解密所用的KEY
            0x789f5645, unchecked((int)0xf68bd5a4),
            unchecked((int)0x81963ffa), 0x458fac58
    };
        private static int TIMES = 32;


        public static int byteToInt(byte[] content, int offset)
        {
            int result = (int)(content[offset + 3]) | (int)(content[offset + 2]) << 8 |
                    (int)(content[offset + 1]) << 16 | (int)content[offset] << 24;
            return result;
        }

        public static void intToByte(byte[] bys, int offset, int content)
        {
            bys[offset + 3] = (byte)(content & 0xff);
            bys[offset + 2] = (byte)((content >> 8) & 0xff);
            bys[offset + 1] = (byte)((content >> 16) & 0xff);
            bys[offset] = (byte)((content >> 24) & 0xff);
        }

        //加密
        public static byte[] encrypt(byte[] content, int offset, int[] key,int times)
        {
            unchecked
            {
                //times为加密轮数
                int delta = (int)0x9e3779b9; //这是算法标准给的值
                int a = key[0], b = key[1], c = key[2], d = key[3];
                for (int m = offset; m < content.Length; m += 8)
                {
                    int y = byteToInt(content, m), z = byteToInt(content, m + 4), sum = 0, i;
                    for (i = 0; i < times; i++)
                    {
                        sum += delta;
                        y += ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
                        z += ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
                    }
                    intToByte(content, m, y);
                    intToByte(content, m + 4, z);
                }
                return content;
            }
        }

        //解密
        public static byte[] decrypt(byte[] encryptContent, int offset, int[] key,int times)
        {
            unchecked
            {
                int delta = (int)0x9e3779b9; //这是算法标准给的值
                int a = key[0], b = key[1], c = key[2], d = key[3];
                for (int m = offset; m < encryptContent.Length; m += 8)
                {
                    int y = byteToInt(encryptContent, m), z = byteToInt(encryptContent, m + 4), sum = (int)0xC6EF3720, i;
                    for (i = 0; i < times; i++)
                    {
                        z -= ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
                        y -= ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
                        sum -= delta;
                    }
                    intToByte(encryptContent, m, y);
                    intToByte(encryptContent, m + 4, z);
                }
                return encryptContent;
            }
        }

        public static void shortToByte(byte[] bys, int offset, int content)
        {
            bys[offset + 1] = (byte)(content & 0xff);
            bys[offset] = (byte)((content >> 8) & 0xff);
        }
        public static short byteToShort(byte[] content, int offset)
        {
            int result = (int)(content[offset + 1]) | (int)(content[offset]) << 8;
            return (short)result;
        }


        ////byte[]型数据转成int[]型数据
        //private static int[] byteToIntArray(byte[] content, int offset)
        //{

        //    int[] result = new int[content.Length >> 2]; //除以2的n次方 == 右移n位 即 content.length / 4 == content.length >> 2
        //    for (int i = 0, j = offset; j < content.Length; i++, j += 4)
        //    {
        //        result[i] = byteToInt(content, j);
        //    }
        //    return result;
        //}

        ////int[]型数据转成byte[]型数据
        //private static byte[] intArrayToByte(int[] content, int offset)
        //{
        //    byte[] result = new byte[content.Length << 2]; //乘以2的n次方 == 左移n位 即 content.length * 4 == content.length << 2
        //    for (int i = 0, j = offset; j < result.Length; i++, j += 4)
        //    {
        //        intToByte(result, j, content[i]);
        //    }
        //    return result;
        //}

        //public static byte[] encrypt2(byte[] content, int[] key)
        //{
        //    //8字节对齐，并加上数据长度
        //    int totalLength = (content.Length + 7) / 8 * 8 + 2;
        //    byte[] bys = new byte[totalLength];
        //    Array.Copy(content, 0, bys, 2, content.Length);
        //    byte[] encryptContent = encrypt(bys, 2, key);
        //    shortToByte(encryptContent, 0, content.Length);
        //    return encryptContent;
        //}



        ////解密时，encryptContent只是待解密内容
        //public static byte[] decrypt2(byte[] encryptContent, int len, int offset, int[] key)
        //{
        //    byte[] decryptContent = decrypt(encryptContent, offset, key, TIMES);
        //    if (len == decryptContent.Length)
        //    {
        //        return decryptContent;
        //    }
        //    Array.Resize<byte>(ref decryptContent, len);
        //    return decryptContent;
        //}

        public static byte[] decryptCopy3(byte[] encryptContent, int len, int offset, int[] key)
        {
            byte[] copyBuff = new byte[encryptContent.Length];// 因为是缓存缓存encryptContent会回收 内存不能更改对象必须复制一份
            Array.Copy(encryptContent, copyBuff, encryptContent.Length);
            copyBuff = decrypt(copyBuff, offset, key, TIMES);
            if (len == copyBuff.Length)
            {
                return copyBuff;
            }
            Array.Resize<byte>(ref copyBuff, len);
            return copyBuff;
        }

        public static byte[] encryptMy2(byte[] content, int[] key)
        {
            if (content.Length == 0) {// 长度2 只包含一个长度字符
                byte[] temp1 = new byte[content.Length + 2];
                shortToByte(temp1, 0, content.Length);
                return temp1;
            }

            int totalLength = (content.Length + 7) / 8 * 8 + 2;
            byte[] temp2 = new byte[totalLength];
            Array.Copy(content, 0, temp2, 2, content.Length);
            byte[] encryptContent = encrypt(temp2, 2, key,TIMES);
            shortToByte(encryptContent, 0, content.Length);
            return encryptContent;
        }

            public static byte[] encrypt2(byte[] content, int[] key)
        {
            byte[] bys = content;
            if (bys.Length == 0) {

                bys = new byte[content.Length + 2];
                shortToByte(bys, 0, content.Length);
                return bys;
            }
            if (bys.Length % 8 != 0) // 补足长度
            {
                bys = new byte[(bys.Length + 7) / 8 * 8];
                Array.Copy(content, 0, bys, 0, content.Length);
            }
            byte[] encryptContent = encrypt(bys, 0, key, TIMES);
            byte[] result = new byte[encryptContent.Length + 2];
            shortToByte(result, 0, content.Length);
            Array.Copy(encryptContent, 0, result, 2, encryptContent.Length);
            return result;
        }

        //public static byte[] encrypt3(byte[] netData, int[] key)
        //{
        //    return encrypt2(netData, key);
        //}

        //public static byte[] decrypt3(int length, byte[] encryptContent, int offset, int[] key)
        //{
        //    byte[] decryptContent = decrypt2(encryptContent, length, offset, key);
            

        //    return decryptContent;
        //}

        //public static byte[] decrypt4(byte[] encryptContent, int[] key)
        //{
        //    byte[] decryptContent = decrypt2(encryptContent, encryptContent.Length, 0, key);
            
        //    return decryptContent;
        //}

    }

}