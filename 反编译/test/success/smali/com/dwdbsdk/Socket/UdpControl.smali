.class public Lcom/dwdbsdk/Socket/UdpControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;
    }
.end annotation


# static fields
.field public static f:Lcom/dwdbsdk/Socket/UdpControl;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dwdbsdk/Bean/DW/HotIpBean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

.field public d:Landroid/os/Handler;

.field public e:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/UdpControl;)Ljava/net/DatagramSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/UdpControl;->e:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/UdpControl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->e:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/UdpControl;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Socket/UdpControl;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/Socket/UdpControl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/UdpControl;->a()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Socket/UdpControl;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Socket/UdpControl;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Socket/UdpControl;->f:Lcom/dwdbsdk/Socket/UdpControl;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Socket/UdpControl;

    invoke-direct {v1}, Lcom/dwdbsdk/Socket/UdpControl;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Socket/UdpControl;->f:Lcom/dwdbsdk/Socket/UdpControl;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Socket/UdpControl;->f:Lcom/dwdbsdk/Socket/UdpControl;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "restart udp"

    .line 4
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/UdpControl;->closeUdp()V

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/dwdbsdk/Socket/UdpControl$1;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/Socket/UdpControl$1;-><init>(Lcom/dwdbsdk/Socket/UdpControl;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^((\\d|[1-9]\\d|1\\d\\d|2[0-4]\\d|25[0-5]|[*])\\.){3}(\\d|[1-9]\\d|1\\d\\d|2[0-4]\\d|25[0-5]|[*])$"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "udp parse device info: type = "

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "dev_type"

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev_name"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bt_name"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi_ip"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dev_type = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dev_name = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bt_name = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", wifi_ip = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/dwdbsdk/Socket/UdpControl;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "G10"

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string p1, "G70"

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "G758"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "G73"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    .line 22
    invoke-virtual {v0}, Lcom/dwdbsdk/Bean/DW/HotIpBean;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v0}, Lcom/dwdbsdk/Bean/DW/HotIpBean;->isConnect()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/dwdbsdk/Socket/UdpControl;->c(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    invoke-direct {v0, v1}, Lcom/dwdbsdk/Bean/DW/HotIpBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0, v1}, Lcom/dwdbsdk/Socket/UdpControl;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "udp parse data error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "udp send data to broad, data: "

    const-string v1, "I love you: "

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    const/16 v3, 0x40d3

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 5
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v1

    const/16 v6, 0x40d1

    invoke-direct {v4, v1, v5, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 6
    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "udp send data to broad, error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public closeUdp()V
    .locals 2

    const-string v0, "close udp"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->e:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 4
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 5
    iput-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->e:Ljava/net/DatagramSocket;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->c:Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    iput-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->c:Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->d:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getDBIpList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeIP(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/HotIpBean;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized setConnectState(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/HotIpBean;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/HotIpBean;

    invoke-virtual {p1, p2}, Lcom/dwdbsdk/Bean/DW/HotIpBean;->setConnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public startUdp()V
    .locals 1

    const-string v0, "start udp"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->d:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->c:Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;-><init>(Lcom/dwdbsdk/Socket/UdpControl;)V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl;->c:Lcom/dwdbsdk/Socket/UdpControl$UdpReceiveThread;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
