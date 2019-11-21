using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Networks
{
    /// <summary>
    /// 网络层工具类
    /// </summary>
    public class NetUtils
    {
        /// <summary>
        /// 将byte数组 转换成 sbyte数组
        /// </summary>
        /// <param name="byteDatas"></param>
        /// <returns></returns>
        public static sbyte[] ConvertByteArray2SByteArray(byte[] byteDatas)
        {
            sbyte[] plainSbys = new sbyte[byteDatas.Length];
            for (int i = 0; i < byteDatas.Length; i++)
            {
                plainSbys[i] = (sbyte)byteDatas[i];
            }
            return plainSbys;
        }

        /// <summary>
        /// 将sbyte数组 转换成 byte数组
        /// </summary>
        /// <param name="sbyteDatas"></param>
        /// <returns></returns>
        public static byte[] ConvertSByteArray2ByteArray(sbyte[] sbyteDatas)
        {
            byte[] plainSbys = new byte[sbyteDatas.Length];
            for (int i = 0; i < sbyteDatas.Length; i++)
            {
                plainSbys[i] = (byte)sbyteDatas[i];
            }
            return plainSbys;
        }
        /// <summary>
        /// 拷贝数据 sourceO数组中的 offset开始 长度为len 的到  targets 数组 从 targetOffset 开始
        /// </summary>
        /// <param name="targets"></param>
        /// <param name="sources"></param>
        /// <param name="targetOffset"></param>
        /// <param name="sourceOffset"></param>
        /// <param name="len"></param>
        public static void CopyByte2SByteWithOffsetAndLength(sbyte[] targets, byte[] sources, int targetOffset, int sourceOffset, int len)
        {
            for (int i = 0; i < len; i++)
            {
                targets[i + targetOffset] = (sbyte)sources[i + sourceOffset];
            }
        }
        /// <summary>
        /// 拷贝数据 sourceO数组中的 offset开始 长度为len 的到  targets 数组 从 targetOffset 开始
        /// </summary>
        /// <param name="targets"></param>
        /// <param name="sources"></param>
        /// <param name="targetOffset"></param>
        /// <param name="sourceOffset"></param>
        /// <param name="len"></param>
        public static void CopySByte2ByteWithOffsetAndLength(byte[] targets, sbyte[] sources, int targetOffset, int sourceOffset, int len)
        {
            for (int i = 0; i < len; i++)
            {
                targets[i + targetOffset] = (byte)sources[i + sourceOffset];
            }
        }
        /// <summary>
        /// 拷贝数据 sourceO数组中的 offset开始 长度为len 的到  targets 数组 从 targetOffset 开始
        /// </summary>
        /// <param name="targets"></param>
        /// <param name="sources"></param>
        /// <param name="targetOffset"></param>
        /// <param name="sourceOffset"></param>
        /// <param name="len"></param>
        public static void CopyByte2ByteWithOffsetAndLength(byte[] targets, byte[] sources, int targetOffset, int sourceOffset, int len)
        {
            for (int i = 0; i < len; i++)
            {
                targets[i + targetOffset] = sources[i + sourceOffset];
            }
        }

        /// <summary>
        /// 翻转字节数组，如果本地字节序列为低字节序列，则进行翻转以转换为高字节序列
        /// </summary>
        /// <param name="bytes"></param>
        /// <returns></returns>
        public static byte[] Flip(byte[] bytes)
        {
            if (BitConverter.IsLittleEndian)
            {
                Array.Reverse(bytes);
            }
            return bytes;
        }

        public static void IntToByte(byte[] bys, int offset, int content)
        {
            bys[offset + 3] = (byte)(content & 0x000000ff);
            bys[offset + 2] = (byte)((content >> 8) & 0x000000ff);
            bys[offset + 1] = (byte)((content >> 16) & 0x000000ff);
            bys[offset] = (byte)((content >> 24) & 0x000000ff);
        }



        public static int ByteToShort(sbyte[] content, int offset)
        {
            int result = transform(content[offset + 1]) | transform(content[offset]) << 8;
            return result;
        }

        //若某字节被解释成负的则需将其转成无符号正数
        private static int transform(sbyte temp)
        {
            int tempInt = (int)temp;
            if (tempInt < 0)
            {
                tempInt += 256;
            }
            return tempInt;
        }

    }
}