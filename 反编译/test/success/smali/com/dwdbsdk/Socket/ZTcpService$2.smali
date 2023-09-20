.class Lcom/dwdbsdk/Socket/ZTcpService$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/ZTcpService;->b()V
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
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->d(Lcom/dwdbsdk/Socket/ZTcpService;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/UdpControl;->getDBIpList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v2, v3, :cond_3

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    .line 6
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v6}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v7}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v7}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_2

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service start add ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 16
    new-instance v5, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-direct {v5}, Lcom/dwdbsdk/Socket/SocketClient;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socket_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/dwdbsdk/Socket/SocketClient;->setBsId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/dwdbsdk/Socket/SocketClient;->setIp(Ljava/lang/String;)V

    .line 20
    new-instance v4, Ljava/net/Socket;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x1c20

    invoke-direct {v4, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 23
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 25
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 26
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    invoke-virtual {v5, v8}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketInputStream(Ljava/io/InputStream;)V

    .line 30
    invoke-virtual {v5, v9}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketInputStreamReader(Ljava/io/InputStreamReader;)V

    .line 31
    invoke-virtual {v5, v10}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketBufferedReader(Ljava/io/BufferedReader;)V

    .line 32
    invoke-virtual {v5, v6}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketOutputStream(Ljava/io/OutputStream;)V

    .line 33
    invoke-virtual {v5, v7}, Lcom/dwdbsdk/Socket/SocketClient;->setSocketPrintWriter(Ljava/io/PrintWriter;)V

    const/4 v6, 0x5

    .line 34
    invoke-virtual {v5, v6}, Lcom/dwdbsdk/Socket/SocketClient;->setHeartCnt(I)V

    .line 36
    invoke-virtual {v5, v4}, Lcom/dwdbsdk/Socket/SocketClient;->setSocket(Ljava/net/Socket;)V

    .line 37
    new-instance v4, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;

    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {v4, v6, v5, v0}, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;Lcom/dwdbsdk/Socket/ZTcpService$1;)V

    invoke-virtual {v5, v4}, Lcom/dwdbsdk/Socket/SocketClient;->startReadThread(Ljava/lang/Thread;)V

    .line 38
    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v4}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v4

    const-string v6, "G10"

    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/dwdbsdk/MessageControl/MessageController;->sendHeartBeat(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service add server ok, server socket list = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v6}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_5
    move-object v5, v4

    .line 45
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service add server error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    .line 47
    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 48
    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 49
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$2;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 53
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
