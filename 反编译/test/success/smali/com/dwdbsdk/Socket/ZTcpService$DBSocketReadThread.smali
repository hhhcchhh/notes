.class Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Socket/ZTcpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBSocketReadThread"
.end annotation


# instance fields
.field public a:Lcom/dwdbsdk/Socket/SocketClient;

.field public final synthetic b:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;Lcom/dwdbsdk/Socket/ZTcpService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->startHeartBeat()V

    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move-object v3, v2

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/dwdbsdk/Socket/SocketClient;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    const-wide/16 v4, 0xa

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    :cond_1
    new-instance v4, Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->getSocketInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v1, v5, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    .line 17
    new-array v6, v4, [B

    .line 18
    array-length v7, v3

    add-int/2addr v7, v4

    new-array v7, v7, [B

    .line 19
    invoke-static {v1, v5, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v8, v3

    invoke-static {v3, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v3, v3

    invoke-static {v6, v5, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    goto :goto_2

    .line 24
    :cond_3
    new-array v3, v4, [B

    .line 25
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-eq v4, v0, :cond_1

    :goto_3
    if-nez v3, :cond_4

    goto :goto_1

    .line 32
    :cond_4
    array-length v4, v3

    const/4 v6, 0x4

    if-lt v4, v6, :cond_0

    .line 34
    array-length v4, v3

    .line 36
    new-array v6, v4, [B

    .line 37
    invoke-static {v3, v5, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v3, v6}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;[B)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v4

    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v7, v6}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/dwdbsdk/MessageControl/MessageHelper;->DBHeartState(Ljava/lang/String;)Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    move-result-object v4

    .line 41
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v6}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "socket_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "DB"

    if-eqz v6, :cond_6

    if-eqz v4, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/dwdbsdk/Socket/SocketClient;->setBsId(Ljava/lang/String;)V

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "service server get deviceId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 46
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x67

    invoke-virtual {v6, v8, v9}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 47
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/dwdbsdk/MessageControl/MessageController;->addMsgTypeList(Ljava/lang/String;)V

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    :goto_4
    iget-object v8, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v8}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 52
    iget-object v8, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v8}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v8}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 54
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "service server list all Id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v7, v4, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_6
    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service DB read error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
