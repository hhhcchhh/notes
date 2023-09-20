.class Lcom/dwdbsdk/FTP/FTPUtil$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/FTP/FTPUtil;->startPutFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/dwdbsdk/FTP/FTPUtil;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->d:Lcom/dwdbsdk/FTP/FTPUtil;

    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->d:Lcom/dwdbsdk/FTP/FTPUtil;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/FTP/FTPUtil;->openFTP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FTPUtil: startPutFile start..."

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->d:Lcom/dwdbsdk/FTP/FTPUtil;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->a(Lcom/dwdbsdk/FTP/FTPUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dwdbsdk/FTP/FTPUtil;->a(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FTPUtil: startPutFile finish"

    .line 4
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$1;->d:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->d(Lcom/dwdbsdk/FTP/FTPUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dwdbsdk/FTP/FTPUtil$1$1;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/FTP/FTPUtil$1$1;-><init>(Lcom/dwdbsdk/FTP/FTPUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
