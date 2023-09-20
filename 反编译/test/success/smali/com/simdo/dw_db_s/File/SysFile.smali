.class public Lcom/simdo/dw_db_s/File/SysFile;
.super Ljava/lang/Object;
.source "SysFile.java"


# static fields
.field private static instance:Lcom/simdo/dw_db_s/File/SysFile;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/simdo/dw_db_s/ZApplication;->getInstance()Lcom/simdo/dw_db_s/ZApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/ZApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/File/SysFile;->context:Landroid/content/Context;

    return-void
.end method

.method public static build()Lcom/simdo/dw_db_s/File/SysFile;
    .locals 2

    .line 21
    const-class v0, Lcom/simdo/dw_db_s/File/SysFile;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/File/SysFile;->instance:Lcom/simdo/dw_db_s/File/SysFile;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/simdo/dw_db_s/File/SysFile;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/File/SysFile;-><init>()V

    sput-object v1, Lcom/simdo/dw_db_s/File/SysFile;->instance:Lcom/simdo/dw_db_s/File/SysFile;

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/simdo/dw_db_s/File/SysFile;->instance:Lcom/simdo/dw_db_s/File/SysFile;

    return-object v0

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public readAppFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readAppFile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/File/SysFile;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 45
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 46
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 49
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public readAssetsTxt(Ljava/lang/String;)V
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readAssetsTxt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/File/SysFile;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 93
    new-array v0, v0, [B

    .line 94
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 96
    new-instance p1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeAppFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeAppFile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/File/SysFile;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 66
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 67
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 69
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    const-string p1, "writeAppFile: succesful !!!"

    .line 70
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
