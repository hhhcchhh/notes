.class public Lcom/simdo/dw_db_s/Util/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DW_DB"

.field private static mLogFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DW_DB"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DW_DB"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DW_DB"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DW_DB"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized createLogFile(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/simdo/dw_db_s/Util/AppLog;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v1

    sget-object v2, Lcom/simdo/dw_db_s/File/FileProtocol;->DIR_UL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/File/FileUtil;->createFolder(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v1

    sget-object v2, Lcom/simdo/dw_db_s/File/FileProtocol;->DIR_UPGRADE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/File/FileUtil;->createFolder(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v1

    sget-object v2, Lcom/simdo/dw_db_s/File/FileProtocol;->DIR_OP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/File/FileUtil;->createFolder(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v1

    sget-object v2, Lcom/simdo/dw_db_s/File/FileProtocol;->DIR_LOG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/File/FileUtil;->getNewLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v2

    sget-object v3, Lcom/simdo/dw_db_s/File/FileProtocol;->DIR_LOG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/simdo/dw_db_s/File/FileUtil;->createOrAppendFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/simdo/dw_db_s/Util/AppLog;->mLogFilePath:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "createLogFile(): Log\u6587\u4ef6\u672a\u521b\u5efa\u6210\u529f\uff1a mLogFilePath == null"

    .line 61
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveLog(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/simdo/dw_db_s/Util/AppLog;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/Util/AppLog;->mLogFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 67
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x3

    .line 70
    :try_start_1
    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/File/FileSizeUtil;->getFileOrFilesSize(Ljava/lang/String;I)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/AppLog;->createLogFile(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v1

    sget-object v2, Lcom/simdo/dw_db_s/Util/AppLog;->mLogFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/simdo/dw_db_s/File/FileUtil;->appendFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
