.class Lcom/dwdbsdk/SCP/ScpUtil$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/SCP/ScpUtil;->startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/dwdbsdk/SCP/ScpUtil;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->c:Lcom/dwdbsdk/SCP/ScpUtil;

    iput-object p2, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->c:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-static {v0}, Lcom/dwdbsdk/SCP/ScpUtil;->b(Lcom/dwdbsdk/SCP/ScpUtil;)V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->c:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-static {v0}, Lcom/dwdbsdk/SCP/ScpUtil;->c(Lcom/dwdbsdk/SCP/ScpUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScpUtil: startGetFile start..."

    .line 3
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/home/upgrade/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->c:Lcom/dwdbsdk/SCP/ScpUtil;

    iget-object v2, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/dwdbsdk/SCP/ScpUtil;->b(Lcom/dwdbsdk/SCP/ScpUtil;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScpUtil: startGetFile finish"

    .line 6
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil$3;->c:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-static {v0}, Lcom/dwdbsdk/SCP/ScpUtil;->e(Lcom/dwdbsdk/SCP/ScpUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dwdbsdk/SCP/ScpUtil$3$1;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/SCP/ScpUtil$3$1;-><init>(Lcom/dwdbsdk/SCP/ScpUtil$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
