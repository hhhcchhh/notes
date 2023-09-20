.class public Lcom/dwdbsdk/SCP/ScpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;
    }
.end annotation


# static fields
.field public static j:Lcom/dwdbsdk/SCP/ScpUtil;


# instance fields
.field public a:Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lch/ethz/ssh2/Connection;

.field public f:Lch/ethz/ssh2/SCPClient;

.field public g:Z

.field public h:Z

.field public i:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->g:Z

    .line 161
    iput-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->i:Landroid/os/Handler;

    const-string v0, "root"

    .line 163
    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->b:Ljava/lang/String;

    const-string v0, "nro"

    .line 164
    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/SCP/ScpUtil;)Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->a:Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/SCP/ScpUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/SCP/ScpUtil;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dwdbsdk/SCP/ScpUtil;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/SCP/ScpUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/SCP/ScpUtil;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/SCP/ScpUtil;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/SCP/ScpUtil;->j:Lcom/dwdbsdk/SCP/ScpUtil;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-direct {v1}, Lcom/dwdbsdk/SCP/ScpUtil;-><init>()V

    sput-object v1, Lcom/dwdbsdk/SCP/ScpUtil;->j:Lcom/dwdbsdk/SCP/ScpUtil;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/SCP/ScpUtil;->j:Lcom/dwdbsdk/SCP/ScpUtil;

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

.method public static synthetic c(Lcom/dwdbsdk/SCP/ScpUtil;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dwdbsdk/SCP/ScpUtil;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/dwdbsdk/SCP/ScpUtil;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    return p0
.end method

.method public static synthetic e(Lcom/dwdbsdk/SCP/ScpUtil;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->i:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->e:Lch/ethz/ssh2/Connection;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/Connection;->close()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->e:Lch/ethz/ssh2/Connection;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ScpUtil: getFile: filePath = "

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->f:Lch/ethz/ssh2/SCPClient;

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", aimPath = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->f:Lch/ethz/ssh2/SCPClient;

    invoke-virtual {v0, p2, p1}, Lch/ethz/ssh2/SCPClient;->get(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ScpUtil: getFile() state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method public final b()V
    .locals 5

    const-string v0, "ScpUtil: connect() isAuthed = "

    const-string v1, "ScpUtil: connect()"

    .line 3
    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/dwdbsdk/SCP/ScpUtil;->a()V

    .line 5
    new-instance v1, Lch/ethz/ssh2/Connection;

    iget-object v2, p0, Lcom/dwdbsdk/SCP/ScpUtil;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/ethz/ssh2/Connection;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->e:Lch/ethz/ssh2/Connection;

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lch/ethz/ssh2/Connection;->connect()Lch/ethz/ssh2/ConnectionInfo;

    .line 8
    iget-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->e:Lch/ethz/ssh2/Connection;

    iget-object v2, p0, Lcom/dwdbsdk/SCP/ScpUtil;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dwdbsdk/SCP/ScpUtil;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "5g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/ethz/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->g:Z

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->g:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->e:Lch/ethz/ssh2/Connection;

    invoke-virtual {v0}, Lch/ethz/ssh2/Connection;->createSCPClient()Lch/ethz/ssh2/SCPClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->f:Lch/ethz/ssh2/SCPClient;

    const-string v0, "ScpUtil: connect() connection.createSCPClient"

    .line 12
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScpUtil: connect() state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/dwdbsdk/SCP/ScpUtil;->a()V

    .line 17
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->i:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/SCP/ScpUtil$1;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/SCP/ScpUtil$1;-><init>(Lcom/dwdbsdk/SCP/ScpUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ScpUtil: putFile: filePath = "

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->f:Lch/ethz/ssh2/SCPClient;

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",aimPath = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->f:Lch/ethz/ssh2/SCPClient;

    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/SCPClient;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ScpUtil: putFile() state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method public final c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->g:Z

    return v0
.end method

.method public removeOnScpListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->a:Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

    return-void
.end method

.method public setOnScpListener(Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->a:Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

    return-void
.end method

.method public startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->d:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/dwdbsdk/SCP/ScpUtil$3;

    invoke-direct {p1, p0, p3, p2}, Lcom/dwdbsdk/SCP/ScpUtil$3;-><init>(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startPutFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/dwdbsdk/SCP/ScpUtil;->h:Z

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/SCP/ScpUtil;->d:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/dwdbsdk/SCP/ScpUtil$2;

    invoke-direct {p1, p0, p2}, Lcom/dwdbsdk/SCP/ScpUtil$2;-><init>(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
