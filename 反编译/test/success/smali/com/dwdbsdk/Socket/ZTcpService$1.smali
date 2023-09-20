.class Lcom/dwdbsdk/Socket/ZTcpService$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/ZTcpService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;)Lcom/dwdbsdk/Socket/ServerSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->isAccept()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;)Lcom/dwdbsdk/Socket/ServerSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;)Lcom/dwdbsdk/Socket/ServerSocketManager;

    move-result-object v0

    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x40d3

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/Socket/ServerSocketManager;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;)Lcom/dwdbsdk/Socket/ServerSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service accept address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v3}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->removeMsgTypeList(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v3}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 14
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v3}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 15
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 25
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 27
    new-instance v7, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-direct {v7}, Lcom/dwdbsdk/Socket/SocketClient;-><init>()V

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "socket_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dwdbsdk/Socket/SocketClient;->setBsId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7, v0}, Lcom/dwdbsdk/Socket/SocketClient;->setSocket(Ljava/net/Socket;)V

    .line 31
    invoke-virtual {v7, v2}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketInputStream(Ljava/io/InputStream;)V

    .line 32
    invoke-virtual {v7, v3}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketInputStreamReader(Ljava/io/InputStreamReader;)V

    .line 33
    invoke-virtual {v7, v4}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketBufferedReader(Ljava/io/BufferedReader;)V

    const/4 v0, 0x5

    .line 34
    invoke-virtual {v7, v0}, Lcom/dwdbsdk/Socket/SocketClient;->setHeartCnt(I)V

    .line 36
    invoke-virtual {v7, v5}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketOutputStream(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {v7, v6}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketPrintWriter(Ljava/io/PrintWriter;)V

    .line 39
    invoke-virtual {v7, v1}, Lcom/dwdbsdk/Socket/SocketClient;->setIp(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;

    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v2}, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;Lcom/dwdbsdk/Socket/ZTcpService$1;)V

    invoke-virtual {v7, v0}, Lcom/dwdbsdk/Socket/SocketClient;->startReadThread(Ljava/lang/Thread;)V

    .line 41
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    const-string v1, "G70"

    invoke-virtual {v7}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->sendHeartBeat(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service add client ok, client socket list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$1;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v1}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service add client error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
