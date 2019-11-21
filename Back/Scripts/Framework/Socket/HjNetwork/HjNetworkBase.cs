using System;
using System.Collections.Generic;
using System.Net.Sockets;
using CustomDataStruct;
using System.Threading;

namespace Networks
{
    public enum SOCKSTAT
    {
        CLOSED = 0,
        CONNECTING,
        CONNECTED,
    }

    public abstract class HjNetworkBase
    {
        public Action<object, int, string> OnConnect = null;

        
        //public Action<object, int, string> OnClosed = null;

        public Action<byte[]> ReceivePkgHandle = null;

        private List<HjNetworkEvt> mNetworkEvtList = null;
        private object mNetworkEvtLock = null;

        protected int mMaxBytesOnceSent = 0;
        protected int mMaxReceiveBuffer = 0;

        protected Socket mClientSocket = null;
        protected string mIp;
        protected int mPort;
        protected volatile SOCKSTAT mStatus = SOCKSTAT.CLOSED;


        private Thread mReceiveThread = null;
        private volatile bool mReceiveWork = false;
        private List<byte[]> mTempMsgList = null;
        protected IMessageQueue mReceiveMsgQueue = null;
        

        public HjNetworkBase(int maxBytesOnceSent = 1024 * 512, int maxReceiveBuffer = 1024 * 1024 * 2)
        {
            mStatus = SOCKSTAT.CLOSED;
            
            mMaxBytesOnceSent = maxBytesOnceSent;
            mMaxReceiveBuffer = maxReceiveBuffer;

            mNetworkEvtList = new List<HjNetworkEvt>();
            mNetworkEvtLock = new object();
            mTempMsgList = new List<byte[]>();
            mReceiveMsgQueue = new MessageQueue();
        }



        public Socket ClientSocket
        {
            get
            {
                return mClientSocket;
            }
        }

        public void SetHostPort(string ip, int port)
        {
            mIp = ip;
            mPort = port;
        }
        
        protected abstract void DoConnect();

        public void Connect()
        {
            DoClose();
            DoConnect();
        }

        protected virtual void OnConnected(IAsyncResult ia)
        {
            //try
            //{
            if (mClientSocket != null)
            {
                mClientSocket.EndConnect(ia);
                StartAllThread();
                mStatus = SOCKSTAT.CONNECTED;
                ReportSocketConnected(ESocketError.CONNECT_OK, "Connect successfully");
            }
            else {
                ReportSocketConnected(ESocketError.ERROR_1, "Connect is null");
                
            }
              
            //}
            //catch (Exception e) {
            //    throw e;
            //}
        }


        public virtual void StartAllThread()
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase StartAllThread");
            if (mReceiveThread == null)
            {
                mReceiveThread = new Thread(ReceiveThread);
                mReceiveWork = true;
                mReceiveThread.Start(null);
            }
        }

        public virtual void StopAllThread()
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase StopAllThread");
            if (mReceiveThread != null)
            { // 接收线程收到的数据作废
                mReceiveWork = false;
                //mReceiveThread.Interrupt();
                //mReceiveThread.Abort();
                mReceiveThread.Join();
                mReceiveThread = null;
            }
            mReceiveMsgQueue.Dispose();

        }

        //public virtual void MyDisconnect()
        //{
        //    if (mClientSocket == null) return;

        //    mStatus = SOCKSTAT.CLOSED;
        //    try
        //    {

        //        mClientSocket.Close();
        //        if (mClientSocket.Connected)
        //        {
        //            throw new InvalidOperationException("Should close socket first!");
        //        }
        //        mClientSocket = null;
        //        StopAllThread();
        //        //DoClose();
        //        ReportSocketClosed(ESocketError.NORMAL, "Disconnected!");
        //    }
        //    catch (Exception e)
        //    {
        //        UnityEngine.Debug.LogException(e);
        //        ReportSocketClosed(ESocketError.ERROR_NEW_6, e.Message);
        //    }

        //}


        public virtual void Dispose() // 无事件
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase Dispose");
            // 全部清除
            DoClose();
        }

        protected virtual void DoClose()// 无事件
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase DoClose");
            //StopAllThread();
            //if (mClientSocket != null) {
            //    mClientSocket.Shutdown(SocketShutdown.Both);
            //    mClientSocket.Close();
            //}
            ////if (mClientSocket.Connected)
            ////{
            ////    throw new InvalidOperationException("Should close socket first!");
            ////}
            //mClientSocket = null;
            mStatus = SOCKSTAT.CLOSED;


            if (mClientSocket != null)
            {
                //mClientSocket.Shutdown(SocketShutdown.Both);
                mClientSocket.Close();
            }
            //if (mClientSocket.Connected)
            //{
            //    throw new InvalidOperationException("Should close socket first!");
            //}
            mClientSocket = null;
            StopAllThread();

        }

        public virtual void Close() // 有事件
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase Close 1");
            //mStatus = SOCKSTAT.CLOSED;
            //StopAllThread();
            //if (mClientSocket != null)
            //{
            //    mClientSocket.Shutdown(SocketShutdown.Both);
            //    mClientSocket.Close();
            //}
            //mClientSocket = null;
            //ReportSocketConnected(ESocketError.CLOSE_OK, "Disconnected!");


            mStatus = SOCKSTAT.CLOSED;
            if (mClientSocket != null)
            {
                try
                {
                    mClientSocket.Shutdown(SocketShutdown.Both);
                }
                catch (ObjectDisposedException ex)
                {
                    //UnityEngine.Debug.LogException(ex);
                }
                catch (SocketException ex) {
                    //UnityEngine.Debug.LogException(ex);
                }
                mClientSocket.Close();
            }
            mClientSocket = null;
            StopAllThread();
            ReportSocketConnected(ESocketError.CLOSE_OK, "Disconnected!");
        }

        //public virtual void Disconnect()
        //{
        //    //if (mClientSocket == null) return;
        //    //mStatus = SOCKSTAT.CLOSED;
        //    //try
        //    //{
        //    //    DoClose();
        //    //    ReportSocketClosed(ESocketError.ERROR_5, "Disconnected!");
        //    //}
        //    //catch (Exception e)
        //    //{
        //    //    ReportSocketClosed(ESocketError.ERROR_4, e.Message);
        //    //}
        //    Close();
        //}


        protected void ReportSocketConnected(int result, string msg)
        {
            if (OnConnect != null)
            {
                AddNetworkEvt(new HjNetworkEvt(this, result, msg, OnConnect));
            }
        }

        //protected void ReportSocketClosed(int result, string msg)
        //{
        //    if (OnClosed != null)
        //    {
        //        AddNetworkEvt(new HjNetworkEvt(this, result, msg, OnClosed));
        //    }
        //}

     
        private void ReceiveThread(object o)
        {
            StreamBuffer receiveStreamBuffer = StreamBufferPool.GetStream(mMaxReceiveBuffer, false, true);
            int bufferCurLen = 0;
            try
            {
                while (mReceiveWork)
                {

                    if (!mReceiveWork) break;

                    if (mClientSocket == null)
                    {
                        continue;
                    }

                    //if (!mClientSocket.Connected) {
                    //    Logger.LogError("mClientSocket.Connected : ");
                    //    continue;
                    //}

                    //if (mClientSocket.Available <= 0) {//收不到东西
                    //    Logger.LogError("mClientSocket.Available : ");
                    //    continue;
                    //}
                    //if (mClientSocket.Available > 0) { 
                    //    if (mClientSocket != null)
                    //{
                    // 总大小  receiveStreamBuffer.size  bufferCurLen当前缓存位置
                    int bufferLeftLen = receiveStreamBuffer.size - bufferCurLen; // 剩余容量
                    SocketError socketError;
                    int readLen = mClientSocket.Receive  (receiveStreamBuffer.GetBuffer(), bufferCurLen, bufferLeftLen, SocketFlags.None, out socketError);

                    if (readLen == 0)
                    {//什么都没有读到
                        if (socketError == SocketError.ConnectionReset
                            || socketError == SocketError.ConnectionAborted
                            )
                        {
                            Logger.LogError("socketError : " + socketError);
                            ReportSocketConnected(ESocketError.ERROR_NEW_11, socketError.ToString());
                            throw new Exception(" Receive socketError " + socketError.ToString());// 网络链接已经断开 需要重新连接
                            //continue;
                        }
                        else if (socketError == SocketError.Interrupted) // 主动中断
                        {
                            Logger.LogError("socketError : " + socketError);
                            continue;
                        }
                        else if (socketError == SocketError.Success)
                        {
                            continue;
                        }
                        else
                        {
                            Logger.LogError("socketError : " + socketError);
                            ReportSocketConnected(ESocketError.ERROR_NEW_11, socketError.ToString());
                            throw new Exception(" Receive socketError " + socketError.ToString());
                            //continue;
                            //throw new SocketException((int)socketError);// 网络链接已经断开 需要重新连接

                            //Logger.LogError("socketError : " + socketError);
                            //string disposeEXError = "receive from server 0 bytes,closed it";
                            //ReportSocketConnected(ESocketError.ERROR_NEW_10, disposeEXError);
                            //throw new ObjectDisposedException("DisposeEX", disposeEXError);// 网络链接已经断开 需要重新连接
                        }
                        //    string disposeEXError = "receive from server 0 bytes,closed it";
                        //    ReportSocketConnected(ESocketError.ERROR_NEW_10, disposeEXError);
                        //throw new ObjectDisposedException("DisposeEX", disposeEXError);// 网络链接已经断开 需要重新连接
                        // 主动登出 或者是 网络链接已经断开 需要重新连接
                    }

                    if (readLen < 0)
                    {
                        throw new Exception("Unknow exception, readLen < 0" + readLen);
                    }

                    bufferCurLen += readLen;
                    DoReceive(receiveStreamBuffer, ref bufferCurLen);
                    if (bufferCurLen == receiveStreamBuffer.size)
                    {
                        throw new Exception("Receive from sever no enough buff size:" + bufferCurLen);
                    }

                    //}


                }


            }
            catch (ObjectDisposedException e)
            {
                //ReportSocketConnected(ESocketError.ERROR_NEW_10, e.Message);
                // 正常网络链接断开 不做处理
                UnityEngine.Debug.LogException(e);

            }
            catch (SocketException e)
            {
                UnityEngine.Debug.Log("e.NativeErrorCode : " + e.NativeErrorCode + " e.SocketErrorCode : " + e.SocketErrorCode);
                string msg = null;
                switch (e.NativeErrorCode)
                {
                    case 10004:// 连接断开 登出
                        msg = string.Format("{0} 连接断开: error code {1}!", "", e.NativeErrorCode);
                        break;
                    default:
                        //其他错误
                        msg = e.Message;
                        ReportSocketConnected(ESocketError.ERROR_NEW_11, e.Message);
                        break;
                }
                UnityEngine.Debug.LogException(e);

            }
            catch (ThreadAbortException e)
            {

                ReportSocketConnected(ESocketError.ERROR_NEW_12, e.Message);
                UnityEngine.Debug.LogException(e);
                // 按照正常处理

            }
            catch (Exception e)
            {
                //ReportSocketConnected(ESocketError.ERROR_NEW_13, e.Message);
                //UnityEngine.Debug.LogException(e);


            }
            finally {
                StreamBufferPool.RecycleStream(receiveStreamBuffer);
                if (mStatus == SOCKSTAT.CONNECTED)
                {
                    mStatus = SOCKSTAT.CLOSED;
                }
            }
        }
        protected abstract void DoReceive(StreamBuffer receiveStreamBuffer,ref int bufferCurLen);

        protected void AddNetworkEvt(HjNetworkEvt evt)
        {
            lock (mNetworkEvtLock)
            {
                //Logger.Log("result : "+evt.result + " msg : "+evt.msg);
                mNetworkEvtList.Add(evt);
            }
        }

        private void UpdateEvt()
        {
            //UnityEngine.Debug.LogError("调用了 HjNetworkBase UpdateEvt ");
            lock (mNetworkEvtLock)
            {
                try
                {
                    for (int i = 0; i < mNetworkEvtList.Count; ++i)
                    {
                        HjNetworkEvt evt = mNetworkEvtList[i];
                        evt.evtHandle(evt.sender, evt.result, evt.msg);
                    }
                }
                catch (Exception e)
                {
                    Logger.LogError("Got the fucking exception :" + e.Message);
                }
                finally
                {
                    mNetworkEvtList.Clear();
                }
            }
        }

        private void UpdatePacket()
        {
            if (!mReceiveMsgQueue.Empty())
            {
                mReceiveMsgQueue.MoveTo(mTempMsgList);

                try
                {
                    for (int i = 0; i < mTempMsgList.Count; ++i)
                    {
                        var objMsg = mTempMsgList[i];
                        if (ReceivePkgHandle != null)
                        {
                            ReceivePkgHandle(objMsg);
                        }
                    }
                }
                catch (Exception e)
                {
                    Logger.LogError("Got the fucking exception :" + e.Message);
                }
                finally
                {
                    //for (int i = 0; i < mTempMsgList.Count; ++i)
                    //{
                    //    StreamBufferPool.RecycleBuffer(mTempMsgList[i]);
                    //}
                    mTempMsgList.Clear();
                }
            }
        }

        public virtual void UpdateNetwork()
        {
            UpdatePacket();
            UpdateEvt();
        }

        // 发送消息的时候要注意对buffer进行拷贝，网络层发送完毕以后会对buffer执行回收
        public virtual void SendMessage(byte[] msgObj)
        {
        }

        public bool IsConnect()
        {
            return mStatus == SOCKSTAT.CONNECTED;
        }
    }
}
