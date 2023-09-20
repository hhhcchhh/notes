.class public Lcom/dwdbsdk/FTP/FTPUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lcom/dwdbsdk/FTP/FTPUtil;


# instance fields
.field public a:Lcom/dwdbsdk/Interface/FtpListener;

.field public b:Lcom/dwdbsdk/FTP/FTP;

.field public c:Z

.field public final d:Landroid/os/Handler;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->d:Landroid/os/Handler;

    const-string v0, "simpie"

    const-string v1, ""

    const-string v2, "ftpuser"

    .line 166
    invoke-virtual {p0, v2, v0, v1}, Lcom/dwdbsdk/FTP/FTPUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/FTP/FTPUtil;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/FTP/FTPUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dwdbsdk/FTP/FTPUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/FTP/FTPUtil;)Lcom/dwdbsdk/Interface/FtpListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->a:Lcom/dwdbsdk/Interface/FtpListener;

    return-object p0
.end method

.method public static build()Lcom/dwdbsdk/FTP/FTPUtil;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/FTP/FTPUtil;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/FTP/FTPUtil;->h:Lcom/dwdbsdk/FTP/FTPUtil;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-direct {v1}, Lcom/dwdbsdk/FTP/FTPUtil;-><init>()V

    sput-object v1, Lcom/dwdbsdk/FTP/FTPUtil;->h:Lcom/dwdbsdk/FTP/FTPUtil;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/FTP/FTPUtil;->h:Lcom/dwdbsdk/FTP/FTPUtil;

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

.method public static synthetic c(Lcom/dwdbsdk/FTP/FTPUtil;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    return p0
.end method

.method public static synthetic d(Lcom/dwdbsdk/FTP/FTPUtil;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "FTPUtil: putFile: result = "

    const-string v1, "FTPUtil: putFile: localFile = "

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePath = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Lcom/dwdbsdk/FTP/FTP;->uploading(Ljava/io/File;Ljava/lang/String;)Lcom/dwdbsdk/FTP/Result;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "FTPUtil: putFile() error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "FTP init success"

    .line 20
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->e:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->f:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/dwdbsdk/FTP/FTPUtil;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "FTPUtil: getFile: result = "

    const-string v1, "FTPUtil: getFile: remotePath = "

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localPath = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    iget-object v7, p0, Lcom/dwdbsdk/FTP/FTPUtil;->a:Lcom/dwdbsdk/Interface/FtpListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/dwdbsdk/FTP/FTP;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dwdbsdk/Interface/FtpListener;)Lcom/dwdbsdk/FTP/Result;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "FTPUtil: getFile() state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public closeFTP()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dwdbsdk/FTP/FTP;->closeConnect()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FTPUtil: closeFTP FAIL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public openFTP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/dwdbsdk/Socket/ZTcpService;->getHostIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FTPUtil: openFTP hostIp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/dwdbsdk/FTP/FTP;->closeConnect()V

    .line 10
    :cond_1
    new-instance v0, Lcom/dwdbsdk/FTP/FTP;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTPUtil;->f:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/dwdbsdk/FTP/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->b:Lcom/dwdbsdk/FTP/FTP;

    .line 12
    invoke-virtual {v0}, Lcom/dwdbsdk/FTP/FTP;->openConnect()V

    .line 13
    iget-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->a:Lcom/dwdbsdk/Interface/FtpListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 14
    invoke-interface {p1, p2, v0}, Lcom/dwdbsdk/Interface/FtpListener;->onFtpConnectState(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->d:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/FTP/FTPUtil$3;

    invoke-direct {v1, p0, p2}, Lcom/dwdbsdk/FTP/FTPUtil$3;-><init>(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "FTPUtil: openFTP FAIL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public removeFtpListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->a:Lcom/dwdbsdk/Interface/FtpListener;

    return-void
.end method

.method public setFtpListener(Lcom/dwdbsdk/Interface/FtpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil;->a:Lcom/dwdbsdk/Interface/FtpListener;

    return-void
.end method

.method public startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/dwdbsdk/FTP/FTPUtil;->startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    .line 3
    new-instance v0, Lcom/dwdbsdk/FTP/FTPUtil$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/FTP/FTPUtil$2;-><init>(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startPutFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/dwdbsdk/FTP/FTPUtil;->startPutFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startPutFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/dwdbsdk/FTP/FTPUtil;->c:Z

    .line 3
    new-instance v0, Lcom/dwdbsdk/FTP/FTPUtil$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dwdbsdk/FTP/FTPUtil$1;-><init>(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
