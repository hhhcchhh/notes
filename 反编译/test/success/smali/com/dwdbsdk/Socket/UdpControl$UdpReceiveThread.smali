.class public Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Socket/UdpControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UdpReceiveThread"
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Socket/UdpControl;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/UdpControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    .line 4
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 8
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;)Ljava/net/DatagramSocket;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    invoke-static {v2, v3}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 10
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;)Ljava/net/DatagramSocket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 11
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;)Ljava/net/DatagramSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x1f41

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 13
    :cond_0
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string v0, "udp receive wait..."

    .line 14
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udp receive data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v1, v0}, Lcom/dwdbsdk/Socket/UdpControl;->a(Lcom/dwdbsdk/Socket/UdpControl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "udp receive error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/UdpControl;->b(Lcom/dwdbsdk/Socket/UdpControl;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
