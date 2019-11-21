//#define LOG_SEND_BYTES
//#define LOG_RECEIVE_BYTES
using System;
using System.Net.Sockets;
using CustomDataStruct;
using System.Threading;
using System.Collections.Generic;
using XLua;
using Tea;
using System.Net;

namespace Networks
{
    [Hotfix]
    public class HjTcpNetwork : HjNetworkBase
    {
        private Thread mSendThread = null;
        private volatile bool mSendWork = false;
        private HjSemaphore mSendSemaphore = null;

        protected IMessageQueue mSendMsgQueue = null;

        public const int PACKAGE_HEAD_SIZE = 2;  //包头2个字节表示长度
        /// <summary>
        /// 加密解密所用的KEY
        /// </summary>
        private int[] netSecretKey;


        public void SetNetSecretKey(int[] key)
        {
            netSecretKey = key;
          //  Logger.Log("Tea Key : " + Tea.Tea.KEY);
        }

        public int[] GetNetSecretKey()
        {
            return netSecretKey;
        }

    

        public HjTcpNetwork(int maxBytesOnceSent = 1024 * 100, int maxReceiveBuffer = 1024 * 512) : base(maxBytesOnceSent, maxReceiveBuffer)
        {
            mSendSemaphore = new HjSemaphore();
            mSendMsgQueue = new MessageQueue();
        }

        //// 清掉发送消息缓存
        //public override void Dispose()
        //{
        //    base.Dispose();
        //}

        //// 不清除清掉发送消息缓存
        //public override void Close()
        //{
        //    UnityEngine.Debug.LogError("调用了 HjTcpNetwork Close");
        //    base.Close();
        //}

        //protected override void DoClose()
        //{
        //    // 关闭socket，Tcp下要等待现有数据发送、接受完成
        //    // https://msdn.microsoft.com/zh-cn/library/system.net.sockets.socket.shutdown(v=vs.90).aspx
        //    // mClientSocket.Shutdown(SocketShutdown.Both);
        //    base.DoClose();
        //}


        protected override void DoConnect()
        {
            IPAddress[] iPAddress = Dns.GetHostAddresses(mIp);
            if(iPAddress == null || iPAddress.Length<1)
            {
                UnityEngine.Debug.LogError("DNS 解析错误");
  
                mStatus = SOCKSTAT.CLOSED;
                ReportSocketConnected(ESocketError.ERROR_2, "DNS 解析错误");
                return;
            }
            AddressFamily newAddressFamily  = iPAddress[0].AddressFamily;
            mIp = iPAddress[0].ToString();

            mClientSocket = new Socket(newAddressFamily, SocketType.Stream, ProtocolType.Tcp);
            //mClientSocket.ReceiveTimeout = 5000; // 5秒
            mClientSocket.BeginConnect(mIp, mPort, (IAsyncResult ia) =>
            {

                int result = ESocketError.CONNECT_OK;
                string msg = null;
                try
                {
                   
                    OnConnected(ia);
                }
                catch (ObjectDisposedException ex)
                {
                    result = ESocketError.ERROR_1;
                    msg = ex.Message;
                    mStatus = SOCKSTAT.CLOSED;
                    DoClose();
                    ReportSocketConnected(result, msg);
                    UnityEngine.Debug.LogException(ex);
                }
                catch (SocketException ex)
                {
                    if (ex.NativeErrorCode.Equals(10060))
                    {
                        //无法连接目标主机
                        msg = string.Format("{0} 无法连接: error code {1}!", "", ex.NativeErrorCode);
                        result = ESocketError.ERROR_2;
                    }
                    else if (ex.NativeErrorCode.Equals(10061))
                    {
                        msg = string.Format("{0} 主动拒绝正在重连: error code {1}!", "", ex.NativeErrorCode);
                        result = ESocketError.ERROR_4;
                    }
                    else if (ex.NativeErrorCode.Equals(10051))
                    {
                        //读写时主机断开
                        msg = string.Format("{0} 前端没有网络: error code {1}! ", ex.Message, ex.NativeErrorCode);
                        result = ESocketError.ERROR_5;
                    }
                    else if (ex.NativeErrorCode.Equals(10053))
                    {
                        //读写时主机断开
                        msg = string.Format("{0} 主动断开连接: error code {1}! ", "", ex.NativeErrorCode);
                        result = ESocketError.ERROR_2;
                    }
                    else
                    {
                        //其他错误
                        msg = string.Format("Disconnected: error code {0}!", ex.NativeErrorCode);
                        result = ESocketError.ERROR_2;
                    }
                    UnityEngine.Debug.Log(ex);
                  
                    //msg = ex.Message;
                    mStatus = SOCKSTAT.CLOSED;
                    DoClose();
                    ReportSocketConnected(result, msg);
                    UnityEngine.Debug.LogException(ex);
                }
                catch (Exception ex)
                {
                   
                    result = ESocketError.ERROR_3;
                    msg = ex.Message;
                    mStatus = SOCKSTAT.CLOSED;
                    DoClose();
                    ReportSocketConnected(result, msg);
                    UnityEngine.Debug.LogException(ex);
                }
                
            }, null);
            mStatus = SOCKSTAT.CONNECTING;
        }




        public override void StartAllThread()
        {
            //UnityEngine.Debug.LogError("调用了 HjTcpNetwork StartAllThread");
            base.StartAllThread();

            if (mSendThread == null)
            {
                mSendThread = new Thread(SendThread);
                mSendWork = true;
                mSendThread.Start(null);
            }
        }

        public override void StopAllThread()
        {
            //UnityEngine.Debug.LogError("调用了 HjTcpNetwork StopAllThread");
            if (mSendThread != null)
            {
                mSendWork = false;
                mSendSemaphore.ProduceResrouce();// 唤醒线程
                mSendThread.Join();// 等待子线程退出
                mSendThread = null;
            }
            //清除发消息队列清掉
            mSendMsgQueue.Dispose();

            //清除收消息队列
            base.StopAllThread();

        }

        private void SendThread(object o)
        {
            List<byte[]> workList = new List<byte[]>(10);

            while (mSendWork)
            {
                if (!mSendWork)
                {
                    break;
                }

                if (mClientSocket == null || !mClientSocket.Connected)
                {
                    continue;
                }

                mSendSemaphore.WaitResource();
                if (mSendMsgQueue.Empty()) // 没有消息会倒计时
                {
                    continue;
                }

                mSendMsgQueue.MoveTo(workList);
                try
                {
                    for (int k = 0; k < workList.Count; ++k)
                    {
                        var msgObj = workList[k];
                        if (mSendWork)
                        {
                            mClientSocket.Send(msgObj, msgObj.Length, SocketFlags.None);
                        }
                    }
                }
                catch (ArgumentNullException e) { // 不会发生的错误  需要发送的数据为空
                    ReportSocketConnected(ESocketError.ERROR_NEW_7, e.Message);
                    break;
                }
                catch (ObjectDisposedException e)//socket连接已经被释放掉
                {
                    ReportSocketConnected(ESocketError.ERROR_NEW_8, e.Message);
                    break;
                }
                catch (SocketException e)// 试图访问套接字时发生错误。
                {
                    ReportSocketConnected(ESocketError.ERROR_NEW_9, e.Message);
                    break;
                }
                //catch (Exception e)
                //{
                //    ReportSocketClosed(ESocketError.ERROR_2, e.Message);
                //    break;
                //}
                finally
                {
                    //for (int k = 0; k < workList.Count; ++k)
                    //{
                    //    var msgObj = workList[k];
                    //    StreamBufferPool.RecycleBuffer(msgObj);
                    //}
                    workList.Clear();
                }
            }
            
            if (mStatus == SOCKSTAT.CONNECTED)
            {
                mStatus = SOCKSTAT.CLOSED;
            }
        }

        protected override void DoReceive(StreamBuffer streamBuffer,ref int bufferCurLen)
        {
            try
            {
                /**  for test
                String plainStr = "中国";
                byte[] encryptBys = Tea.Tea.encrypt2(System.Text.Encoding.Default.GetBytes(plainStr), Tea.Tea.KEY);
                int length = Tea.Tea.byteToShort(encryptBys, 0);
                byte[] decodeBys = Tea.Tea.decrypt2(encryptBys, length, 2, Tea.Tea.KEY);
                string str = System.Text.Encoding.Default.GetString(decodeBys);
                Logger.Log("=================================" + str);
                **/


                // 组包、拆包
                byte[] data = streamBuffer.GetBuffer();
                int lastStartBufferIndex = 0; // 上一次读取的开始位置
                streamBuffer.ResetStream();
                while (true)
                {
                    // 总长度
                    if (bufferCurLen - lastStartBufferIndex < PACKAGE_HEAD_SIZE)
                    {
                        break;
                    }

                    //short msgLen = BitConverter.ToInt16(data, start);
                    int msgLen = Tea.Tea.byteToShort(data, lastStartBufferIndex);// 消息真正长度
                    int encodeLen = (msgLen + 7) / 8 * 8;// 消息长度补足8位
                    if (bufferCurLen - lastStartBufferIndex - PACKAGE_HEAD_SIZE < encodeLen)
                    {
                        break;
                    }

                    // 提取字节流，去掉开头表示长度的4字节
                    //start += PACKAGE_HEAD_SIZE;
                    // 获取的是缓存
                    byte[] bytes = streamBuffer.ToArray(lastStartBufferIndex + PACKAGE_HEAD_SIZE, encodeLen); // 当前一条协议的长度
                    //解密
                    byte[] decryptContent = Tea.Tea.decryptCopy3(bytes, msgLen, 0, netSecretKey);

                    StreamBufferPool.RecycleBuffer(bytes);
                    //streamBuffer.
                    //将decrpy加入缓存
                    //StreamBufferPool.
                    //int msgId = Tea.Tea.byteToInt(decryptContent,4);
                    // Logger.Log("C# get msgId : "+ msgId);
#if LOG_RECEIVE_BYTES
                    var sb = new System.Text.StringBuilder();
                    for (int i = 0; i < decryptContent.Length; i++)
                    {
                        sb.AppendFormat("{0}\t", decryptContent[i]);
                    }
                    Logger.Log("HjTcpNetwork receive bytes : " + sb.ToString());
#endif
                    mReceiveMsgQueue.Add(decryptContent);

                    // 下一次组包
                    lastStartBufferIndex = lastStartBufferIndex + PACKAGE_HEAD_SIZE + encodeLen;
                }

                if (lastStartBufferIndex > 0)
                {
                    bufferCurLen -= lastStartBufferIndex;
                    streamBuffer.CopyFrom(data, lastStartBufferIndex, 0, bufferCurLen);
                }
            }
            catch (Exception ex)
            {
                Logger.LogError(string.Format("Tcp receive package err : {0}\n {1}", ex.Message, ex.StackTrace));
            }
        }

        //发送消息格式：
        //[前两个字节为消息长度，后接加密消息 ]
        public override void SendMessage(byte[] msgObj)
        {
#if LOG_SEND_BYTES
            var sb = new System.Text.StringBuilder();
            for (int i = 0; i < msgObj.Length; i++)
            {
                sb.AppendFormat("{0}\t", msgObj[i]);
            }
            Logger.Log("HjTcpNetwork send bytes : " + sb.ToString());
#endif
            //int msgId = -1;
            //if (msgObj.Length != 0) {
            //    msgId = Tea.Tea.byteToInt(msgObj, 5);
            //}
            if (!IsConnect()) {
                Logger.LogError("HjTcpNetwork SendMessage 连接已经断开不能发送协议!");
                return;
            }
            //Logger.Log("C# send msgId : " + msgId);
            byte[] encryptData = Tea.Tea.encryptMy2(msgObj, netSecretKey);
            mSendMsgQueue.Add(encryptData);
            mSendSemaphore.ProduceResrouce();
        }
    }

#if UNITY_EDITOR
    public static class HjTcpNetworkExporter
    {
        [LuaCallCSharp]
        public static List<Type> LuaCallCSharp = new List<Type>()
        {
            typeof(HjTcpNetwork),
        };

        [CSharpCallLua]
        public static List<Type> CSharpCallLua = new List<Type>()
        {
            typeof(Action<object, int, string>),
            typeof(Action<byte[]>),
        };
    }
#endif
}