.class Lcom/dwdbsdk/FTP/FTPUtil$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/FTP/FTPUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/FTP/FTPUtil$2;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/FTP/FTPUtil$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil$2$1;->a:Lcom/dwdbsdk/FTP/FTPUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$2$1;->a:Lcom/dwdbsdk/FTP/FTPUtil$2;

    iget-object v0, v0, Lcom/dwdbsdk/FTP/FTPUtil$2;->e:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->b(Lcom/dwdbsdk/FTP/FTPUtil;)Lcom/dwdbsdk/Interface/FtpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$2$1;->a:Lcom/dwdbsdk/FTP/FTPUtil$2;

    iget-object v0, v0, Lcom/dwdbsdk/FTP/FTPUtil$2;->e:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->b(Lcom/dwdbsdk/FTP/FTPUtil;)Lcom/dwdbsdk/Interface/FtpListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil$2$1;->a:Lcom/dwdbsdk/FTP/FTPUtil$2;

    iget-object v2, v1, Lcom/dwdbsdk/FTP/FTPUtil$2;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/dwdbsdk/FTP/FTPUtil$2;->e:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v1}, Lcom/dwdbsdk/FTP/FTPUtil;->c(Lcom/dwdbsdk/FTP/FTPUtil;)Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/dwdbsdk/Interface/FtpListener;->onFtpGetFileRsp(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
