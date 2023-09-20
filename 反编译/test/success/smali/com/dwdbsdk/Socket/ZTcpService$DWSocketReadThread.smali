.class Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Socket/ZTcpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DWSocketReadThread"
.end annotation


# instance fields
.field public a:Lcom/dwdbsdk/Socket/SocketClient;

.field public final synthetic b:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;Lcom/dwdbsdk/Socket/ZTcpService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Lcom/dwdbsdk/Socket/SocketClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->startHeartBeat()V

    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    .line 7
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0xa

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 9
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v3}, Lcom/dwdbsdk/Socket/SocketClient;->getSocketInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :cond_1
    new-array v4, v2, [B

    .line 15
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x4

    if-lt v2, v5, :cond_0

    .line 21
    new-array v5, v2, [B

    .line 22
    invoke-static {v4, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2, v5}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;[B)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/dwdbsdk/MessageControl/MessageHelper;->DWHeartState(Ljava/lang/String;Ljava/lang/String;)Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v5}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "socket_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "DW"

    if-eqz v5, :cond_3

    if-eqz v4, :cond_0

    .line 30
    :try_start_1
    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 31
    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/dwdbsdk/Socket/SocketClient;->setBsId(Ljava/lang/String;)V

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service client get deviceId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 33
    iget-object v5, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x67

    invoke-virtual {v5, v7, v8}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/dwdbsdk/MessageControl/MessageController;->addMsgTypeList(Ljava/lang/String;)V

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    :goto_1
    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v7}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 39
    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v7}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v7}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 41
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service client list all Id: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4, v2}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v4}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4, v2}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service DW read error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;->a:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method
