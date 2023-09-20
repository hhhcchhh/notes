.class public Lcom/simdo/dw_db_s/Util/MultiCastUtil;
.super Ljava/lang/Object;
.source "MultiCastUtil.java"


# static fields
.field private static BROADCAST_IP:Ljava/lang/String; = "239.0.0.1"

.field private static BROADCAST_PORT:I = 0x1389

.field private static instance:Lcom/simdo/dw_db_s/Util/MultiCastUtil;


# instance fields
.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private serverAddress:Ljava/net/InetAddress;


# direct methods
.method static bridge synthetic -$$Nest$fgetmulticastSocket(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)Ljava/net/MulticastSocket;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastSocket:Ljava/net/MulticastSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserverAddress(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)Ljava/net/InetAddress;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->serverAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetBROADCAST_PORT()I
    .locals 1

    sget v0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->BROADCAST_PORT:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastSocket:Ljava/net/MulticastSocket;

    .line 76
    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->serverAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public static build()Lcom/simdo/dw_db_s/Util/MultiCastUtil;
    .locals 2

    .line 18
    const-class v0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->instance:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Util/MultiCastUtil;-><init>()V

    sput-object v1, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->instance:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object v0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->instance:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    return-object v0

    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const-string v0, "multicast.test"

    .line 32
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 33
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-void
.end method

.method public reInit()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    return-void
.end method

.method public sendData()V
    .locals 2

    const-string v0, "sendData"

    .line 43
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    sget v1, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->BROADCAST_PORT:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastSocket:Ljava/net/MulticastSocket;

    .line 46
    sget-object v0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->BROADCAST_IP:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->serverAddress:Ljava/net/InetAddress;

    .line 47
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastSocket:Ljava/net/MulticastSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 48
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->serverAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 49
    new-instance v0, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;-><init>(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)V

    .line 66
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
