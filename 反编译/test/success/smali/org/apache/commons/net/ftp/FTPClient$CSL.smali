.class Lorg/apache/commons/net/ftp/FTPClient$CSL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSL"
.end annotation


# instance fields
.field private final currentSoTimeout:I

.field private final idle:J

.field private notAcked:I

.field private final parent:Lorg/apache/commons/net/ftp/FTPClient;

.field private time:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idle:J

    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/net/j;->getSoTimeout()I

    move-result p2

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    .line 9
    invoke-virtual {p1, p4}, Lorg/apache/commons/net/j;->setSoTimeout(I)V

    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3
    iget-wide p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idle:J

    cmp-long p5, p3, v0

    if-lez p5, :cond_0

    .line 5
    :try_start_0
    iget-object p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTP;->__noop()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7
    :catch_0
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 10
    :catch_1
    :goto_0
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    :cond_0
    return-void
.end method

.method public bytesTransferred(Ln/c;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ln/c;->c()J

    move-result-wide v1

    invoke-virtual {p1}, Ln/c;->a()I

    move-result v3

    invoke-virtual {p1}, Ln/c;->b()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->bytesTransferred(JIJ)V

    return-void
.end method

.method public cleanUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTP;->__getReplyNoReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/j;->setSoTimeout(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/j;->setSoTimeout(I)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
