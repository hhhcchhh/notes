.class public Lcom/dwdbsdk/Socket/ZTcpService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Socket/ZTcpService$DBSocketReadThread;,
        Lcom/dwdbsdk/Socket/ZTcpService$DWSocketReadThread;
    }
.end annotation


# static fields
.field public static n:Lcom/dwdbsdk/Socket/ZTcpService; = null

.field public static final o:I = 0x4


# instance fields
.field public a:Z

.field public b:Ljava/lang/Thread;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Interface/SocketStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/os/Handler;

.field public e:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

.field public f:Ljava/lang/Thread;

.field public g:Ljava/lang/Thread;

.field public h:Ljava/util/Timer;

.field public i:Z

.field public final j:Lcom/dwdbsdk/Socket/ServerSocketManager;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dwdbsdk/Socket/SocketClient;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dwdbsdk/Socket/SocketClient;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->a:Z

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 591
    iput-boolean v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->i:Z

    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->m:Ljava/util/HashMap;

    .line 596
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    .line 597
    new-instance v1, Lcom/dwdbsdk/Socket/ServerSocketManager;

    invoke-direct {v1}, Lcom/dwdbsdk/Socket/ServerSocketManager;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->j:Lcom/dwdbsdk/Socket/ServerSocketManager;

    .line 598
    invoke-virtual {v1, v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->setAccept(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/ZTcpService;)Lcom/dwdbsdk/Socket/ServerSocketManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->j:Lcom/dwdbsdk/Socket/ServerSocketManager;

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/ZTcpService;[B)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Socket/ZTcpService;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static build()Lcom/dwdbsdk/Socket/ZTcpService;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Socket/ZTcpService;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Socket/ZTcpService;->n:Lcom/dwdbsdk/Socket/ZTcpService;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {v1}, Lcom/dwdbsdk/Socket/ZTcpService;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Socket/ZTcpService;->n:Lcom/dwdbsdk/Socket/ZTcpService;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Socket/ZTcpService;->n:Lcom/dwdbsdk/Socket/ZTcpService;

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

.method public static synthetic c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->m:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/dwdbsdk/Socket/ZTcpService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->i:Z

    return p0
.end method

.method public static synthetic e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic f(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/dwdbsdk/Socket/ZTcpService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->a:Z

    return p0
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-byte v5, p1, v3

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->j:Lcom/dwdbsdk/Socket/ServerSocketManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/Socket/ServerSocketManager;->setAccept(Z)V

    .line 38
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x64

    if-ltz v0, :cond_0

    .line 39
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 41
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 42
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 45
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 46
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 47
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 48
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->j:Lcom/dwdbsdk/Socket/ServerSocketManager;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->j:Lcom/dwdbsdk/Socket/ServerSocketManager;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ServerSocketManager;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service reconnect id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dwdbsdk/Socket/UdpControl;->removeIP(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->m:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->removeMsgTypeList(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 24
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 25
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->stopReadThread()V

    .line 32
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->CloseIO()V

    .line 33
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->e:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->handleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->e:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->handleMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public addConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->g:Ljava/lang/Thread;

    .line 6
    :cond_0
    new-instance v0, Lcom/dwdbsdk/Socket/ZTcpService$2;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/Socket/ZTcpService$2;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;)V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->g:Ljava/lang/Thread;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->f:Ljava/lang/Thread;

    .line 6
    :cond_0
    new-instance v0, Lcom/dwdbsdk/Socket/ZTcpService$1;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/Socket/ZTcpService$1;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;)V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->f:Ljava/lang/Thread;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getHostIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p1}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public launch()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "service launched"

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "service launch"

    .line 5
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->i:Z

    .line 7
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/ZTcpService;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/ZTcpService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->i:Z

    .line 2
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->a:Z

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->b:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->b:Ljava/lang/Thread;

    .line 6
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->close()V

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->h:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 9
    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->h:Ljava/util/Timer;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->f:Ljava/lang/Thread;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 17
    iput-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->g:Ljava/lang/Thread;

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/ZTcpService;->a()V

    .line 23
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/ZTcpService;->removeListener()V

    return-void
.end method

.method public registerHandler(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->e:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    return-void
.end method

.method public removeConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public send(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v0, p1, p2}, Lcom/dwdbsdk/Socket/SocketClient;->send(Ljava/lang/String;[B)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v0, p1, p2}, Lcom/dwdbsdk/Socket/SocketClient;->send(Ljava/lang/String;[B)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setHeartTime(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->m:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public socketStateChange(Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x67

    const/16 v4, 0x64

    const/4 v5, 0x1

    if-ge v1, v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getConnectState()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 9
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v6, p2}, Lcom/dwdbsdk/Socket/SocketClient;->setConnectState(I)V

    .line 10
    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v6

    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v7}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v7

    if-ne p2, v3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6, v7, v8}, Lcom/dwdbsdk/Socket/UdpControl;->setConnectState(Ljava/lang/String;Z)V

    .line 11
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    new-instance v7, Lcom/dwdbsdk/Socket/ZTcpService$3;

    invoke-direct {v7, p0, p1, v2, p2}, Lcom/dwdbsdk/Socket/ZTcpService$3;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-ne p2, v4, :cond_4

    .line 24
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 29
    :goto_3
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 30
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getConnectState()I

    move-result v2

    if-eq v2, p2, :cond_6

    .line 33
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v6, p2}, Lcom/dwdbsdk/Socket/SocketClient;->setConnectState(I)V

    .line 34
    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v6

    iget-object v7, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v7}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object v7

    if-ne p2, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {v6, v7, v0}, Lcom/dwdbsdk/Socket/UdpControl;->setConnectState(Ljava/lang/String;Z)V

    .line 35
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->d:Landroid/os/Handler;

    new-instance v3, Lcom/dwdbsdk/Socket/ZTcpService$4;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/dwdbsdk/Socket/ZTcpService$4;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    if-ne p2, v4, :cond_8

    .line 48
    iget-object p2, p0, Lcom/dwdbsdk/Socket/ZTcpService;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {p2}, Lcom/dwdbsdk/Socket/SocketClient;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/Socket/ZTcpService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public startHeartBeat()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dwdbsdk/Socket/ZTcpService$5;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/Socket/ZTcpService$5;-><init>(Lcom/dwdbsdk/Socket/ZTcpService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService;->b:Ljava/lang/Thread;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
