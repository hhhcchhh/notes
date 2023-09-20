.class public Lcom/dwdbsdk/Bean/DW/PwrCtl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x9c4

.field public static b:Lcom/dwdbsdk/Bean/DW/PwrCtl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Bean/DW/PwrCtl;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/DW/PwrCtl;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/DW/PwrCtl;->b:Lcom/dwdbsdk/Bean/DW/PwrCtl;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/PwrCtl;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/DW/PwrCtl;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/DW/PwrCtl;->b:Lcom/dwdbsdk/Bean/DW/PwrCtl;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/DW/PwrCtl;->b:Lcom/dwdbsdk/Bean/DW/PwrCtl;

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
.method public Lte(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lte() enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/dwdbsdk/Native/Native;->SetModulePwr(II)Z

    .line 4
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 5
    new-instance v0, Lcom/dwdbsdk/Bean/DW/PwrCtl$1;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/Bean/DW/PwrCtl$1;-><init>(Lcom/dwdbsdk/Bean/DW/PwrCtl;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public Nr5g(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nr5g() enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "Nr5g() pwr = 1"

    .line 3
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1, p1}, Lcom/dwdbsdk/Native/Native;->SetModulePwr(II)Z

    .line 5
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 6
    new-instance v0, Lcom/dwdbsdk/Bean/DW/PwrCtl$2;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/Bean/DW/PwrCtl$2;-><init>(Lcom/dwdbsdk/Bean/DW/PwrCtl;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public modulePwrCtl(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Bean/DW/PwrCtl;->Nr5g(Z)V

    return-void
.end method
