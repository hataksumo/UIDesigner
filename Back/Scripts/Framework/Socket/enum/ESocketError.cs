
public struct ESocketError
{
    public const int CONNECT_OK = 1;//连接成功
    public const int CLOSE_OK = 2;//正常关闭

    public const int ERROR_1 = -1; // socket连接已经被释放掉 X
    public const int ERROR_2 = -2;// X
    public const int ERROR_3 = -3;// X
    public const int ERROR_4 = -4;//服务器未开启
    public const int ERROR_5 = -5;//前端没有网络导致链接不上

    //public const int ERROR_NEW_6 = -6;//试图访问套接字时发生错误。


    public const int ERROR_NEW_7 = -7;// X
    public const int ERROR_NEW_8 = -8;// X
    public const int ERROR_NEW_9 = -9;//远程主机强迫关闭了一个现有的连接。 已关闭的链接再请求
    public const int ERROR_NEW_10 = -10;// X 由于服务器长时间未收到心跳而断开连接
    public const int ERROR_NEW_11 = -11;//服务器关闭了链接 心跳断开
    public const int ERROR_NEW_12 = -12;//线程终止时候的错误
    public const int ERROR_NEW_13 = -13;// X
}
