.class public Lcom/dwdbsdk/FTP/FTP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REMOTE_PATH:Ljava/lang/String; = "\\"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/apache/commons/net/ftp/FTPClient;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTP;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/dwdbsdk/FTP/FTP;->c:Ljava/lang/String;

    .line 19
    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dwdbsdk/FTP/FTP;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 18
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 20
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 22
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 24
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {p0, v4}, Lcom/dwdbsdk/FTP/FTP;->a(Ljava/io/File;)Z

    move-result v2

    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/dwdbsdk/FTP/FTP;->a(Ljava/io/File;Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public final a(Ljava/io/File;Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    iget-wide v1, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    .line 6
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p1, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result p1

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return p1
.end method

.method public final b(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 13
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p0, v3}, Lcom/dwdbsdk/FTP/FTP;->b(Ljava/io/File;)Z

    move-result v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p0, v3}, Lcom/dwdbsdk/FTP/FTP;->c(Ljava/io/File;)Z

    move-result v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final c(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    iget-wide v1, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    .line 6
    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p1
.end method

.method public closeConnect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FTPUtil: ftpClient.disconnect"

    const-string v1, "FTPUtil: finally closeConnect error: "

    const-string v2, "FTPUtil: closeConnect error: "

    const-string v3, "FTPUtil: closeConnect ftpClient.logout : "

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    move-result v4

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/j;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 11
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    .line 14
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/j;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    :try_start_3
    iget-object v2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 21
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 24
    :goto_1
    iget-object v3, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/j;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    :try_start_4
    iget-object v3, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 28
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 33
    :cond_1
    :goto_2
    throw v2
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dwdbsdk/Interface/FtpListener;)Lcom/dwdbsdk/FTP/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileTransferMode(I)Z

    .line 11
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 13
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p2

    .line 15
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 17
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "FTPUtil: download..."

    .line 18
    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 23
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    invoke-virtual {p0, v2}, Lcom/dwdbsdk/FTP/FTP;->a(Ljava/io/File;)Z

    move-result v1

    goto :goto_1

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v2, v4, p5}, Lcom/dwdbsdk/FTP/FTP;->downloadFile(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/net/ftp/FTPFile;Lcom/dwdbsdk/Interface/FtpListener;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "FTPUtil: error "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 36
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 38
    new-instance v4, Lcom/dwdbsdk/FTP/Result;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/dwdbsdk/FTP/Result;->getFormatTime(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v5, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    invoke-static {v5, v6}, Lcom/dwdbsdk/FTP/Result;->getFormatSize(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lcom/dwdbsdk/FTP/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized downloadFile(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/net/ftp/FTPFile;Lcom/dwdbsdk/Interface/FtpListener;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    .line 4
    div-long v4, v2, v4

    .line 13
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 14
    iget-object v7, v1, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    .line 15
    iget-object v7, v1, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const/16 v10, 0x400

    new-array v10, v10, [B

    move-wide v11, v8

    move-wide v13, v11

    .line 18
    :goto_0
    invoke-virtual {v7, v10}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v15, v8, :cond_3

    .line 19
    invoke-virtual {v6, v10, v9, v15}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v15

    add-long/2addr v11, v8

    .line 21
    div-long v8, v11, v4

    cmp-long v15, v8, v13

    if-eqz v15, :cond_2

    const-wide/16 v13, 0xa

    .line 23
    rem-long v13, v8, v13

    const-wide/16 v15, 0x0

    cmp-long v18, v13, v15

    if-nez v18, :cond_0

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FTPUtil: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v13, 0x2

    .line 26
    rem-long v13, v8, v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_1

    if-eqz v0, :cond_1

    move-object/from16 v13, p1

    invoke-interface {v0, v13, v8, v9}, Lcom/dwdbsdk/Interface/FtpListener;->onFtpGetFileProcess(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    move-object/from16 v13, p1

    :goto_1
    move-wide v13, v8

    goto :goto_2

    :cond_2
    const-wide/16 v15, 0x0

    :goto_2
    move-wide v8, v15

    goto :goto_0

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTPUtil: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    long-to-double v2, v11

    .line 30
    iput-wide v2, v1, Lcom/dwdbsdk/FTP/FTP;->g:D

    .line 31
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 33
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 35
    iget-object v0, v1, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "FTPUtil: \u6587\u4ef6\u4e0b\u8f7d\u6210\u529f"

    .line 36
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_4
    :try_start_1
    const-string v0, "FTPUtil: \u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    .line 39
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v9

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public listFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->e:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/dwdbsdk/FTP/FTP;->e:Ljava/util/List;

    return-object p1
.end method

.method public openConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTP;->setControlEncoding(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/j;->connect(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTP;->getReplyCode()I

    move-result v0

    .line 7
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    const-string v2, "connect fail: "

    if-eqz v1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dwdbsdk/FTP/FTP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTP;->getReplyCode()I

    move-result v0

    .line 16
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemType()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    const-string v1, "zh"

    .line 23
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setServerLanguageCode(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 26
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const/high16 v1, 0x1e00000

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 28
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 30
    iget-object v0, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    const-string v0, "FTPUtil: login"

    .line 31
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 33
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 35
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public uploading(Ljava/io/File;Ljava/lang/String;)Lcom/dwdbsdk/FTP/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    .line 5
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 7
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 9
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setFileTransferMode(I)Z

    .line 11
    iget-object p2, p0, Lcom/dwdbsdk/FTP/FTP;->d:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v0, "\\"

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    .line 13
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/FTP/FTP;->b(Ljava/io/File;)Z

    move-result p1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/FTP/FTP;->c(Ljava/io/File;)Z

    move-result p1

    .line 22
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 24
    new-instance v1, Lcom/dwdbsdk/FTP/Result;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/dwdbsdk/FTP/Result;->getFormatTime(J)Ljava/lang/String;

    move-result-object p2

    iget-wide v2, p0, Lcom/dwdbsdk/FTP/FTP;->g:D

    invoke-static {v2, v3}, Lcom/dwdbsdk/FTP/Result;->getFormatSize(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lcom/dwdbsdk/FTP/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
