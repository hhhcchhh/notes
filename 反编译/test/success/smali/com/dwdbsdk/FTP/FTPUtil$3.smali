.class Lcom/dwdbsdk/FTP/FTPUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/FTP/FTPUtil;->openFTP(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/dwdbsdk/FTP/FTPUtil;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/FTP/FTPUtil;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTPUtil$3;->b:Lcom/dwdbsdk/FTP/FTPUtil;

    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTPUtil$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$3;->b:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->b(Lcom/dwdbsdk/FTP/FTPUtil;)Lcom/dwdbsdk/Interface/FtpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTPUtil$3;->b:Lcom/dwdbsdk/FTP/FTPUtil;

    invoke-static {v0}, Lcom/dwdbsdk/FTP/FTPUtil;->b(Lcom/dwdbsdk/FTP/FTPUtil;)Lcom/dwdbsdk/Interface/FtpListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTPUtil$3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/dwdbsdk/Interface/FtpListener;->onFtpConnectState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
