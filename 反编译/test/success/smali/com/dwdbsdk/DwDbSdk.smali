.class public Lcom/dwdbsdk/DwDbSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/dwdbsdk/DwDbSdk;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/DwDbSdk;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/DwDbSdk;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/DwDbSdk;->d:Lcom/dwdbsdk/DwDbSdk;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/DwDbSdk;

    invoke-direct {v1}, Lcom/dwdbsdk/DwDbSdk;-><init>()V

    sput-object v1, Lcom/dwdbsdk/DwDbSdk;->d:Lcom/dwdbsdk/DwDbSdk;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/DwDbSdk;->d:Lcom/dwdbsdk/DwDbSdk;

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
.method public addConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Socket/ZTcpService;->addConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V

    return-void
.end method

.method public addNr5gScanArfcnListener(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "LDfSdk init start"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/dwdbsdk/DwDbSdk$a;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/DwDbSdk$a;-><init>(Lcom/dwdbsdk/DwDbSdk;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 12
    invoke-static {}, Lcom/dwdbsdk/Logcat/LogcatHandler;->getInstance()Lcom/dwdbsdk/Logcat/LogcatHandler;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/Logcat/LogcatHandler;->init(Landroid/content/Context;)V

    .line 20
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    const-class v1, Lcom/dwdbsdk/Socket/SocketService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/dwdbsdk/DwDbSdk;->c:Landroid/content/Intent;

    .line 21
    iget-object v0, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->init()V

    const-string p1, "LDfSdk init success"

    .line 24
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public isPredator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/DwDbSdk;->b:Z

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "LDfSdk release start"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/DwDbSdk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dwdbsdk/DwDbSdk;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->close()V

    const-string v0, "LDfSdk release finish"

    .line 5
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dwdbsdk/DwDbSdk$b;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/DwDbSdk$b;-><init>(Lcom/dwdbsdk/DwDbSdk;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removeConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Socket/ZTcpService;->removeConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V

    return-void
.end method

.method public removeDBBusinessListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->removeDBBusinessListener()V

    return-void
.end method

.method public removeDWBusinessListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->removeDWBusinessListener()V

    return-void
.end method

.method public removeFtpListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/FTP/FTPUtil;->build()Lcom/dwdbsdk/FTP/FTPUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->removeFtpListener()V

    return-void
.end method

.method public removeNr5gScanArfcnListener(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->b(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V

    return-void
.end method

.method public setDBBusinessListener(ZLcom/dwdbsdk/Interface/DBBusinessListener;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/DwDbSdk;->b:Z

    .line 2
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBBusinessListener(Lcom/dwdbsdk/Interface/DBBusinessListener;)V

    return-void
.end method

.method public setDWBusinessListener(Lcom/dwdbsdk/Interface/DWBusinessListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWBusinessListener(Lcom/dwdbsdk/Interface/DWBusinessListener;)V

    return-void
.end method

.method public setFtpListener(Lcom/dwdbsdk/Interface/FtpListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/FTP/FTPUtil;->build()Lcom/dwdbsdk/FTP/FTPUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/FTP/FTPUtil;->setFtpListener(Lcom/dwdbsdk/Interface/FtpListener;)V

    return-void
.end method
