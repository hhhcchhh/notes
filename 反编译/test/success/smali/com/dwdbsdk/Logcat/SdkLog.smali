.class public Lcom/dwdbsdk/Logcat/SdkLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Logcat/SdkLog$b;
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Ljava/lang/String; = "LDfSdk"

.field public static c:Ljava/lang/String;

.field public static d:Ljava/io/FileFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/dwdbsdk/Logcat/SdkLog$a;

    invoke-direct {v0}, Lcom/dwdbsdk/Logcat/SdkLog$a;-><init>()V

    sput-object v0, Lcom/dwdbsdk/Logcat/SdkLog;->d:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LDfSdk"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/dwdbsdk/Logcat/SdkLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LDfSdk"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/dwdbsdk/Logcat/SdkLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LDfSdk"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/dwdbsdk/Logcat/SdkLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LDfSdk"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/dwdbsdk/Logcat/SdkLog;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/dwdbsdk/Logcat/SdkLog;->d:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteLogFiles()  file size[zip] =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 5
    array-length v1, v0

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 8
    new-instance v4, Lc/a;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lc/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/dwdbsdk/Logcat/SdkLog$b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/dwdbsdk/Logcat/SdkLog$b;-><init>(Lcom/dwdbsdk/Logcat/SdkLog$a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a;

    invoke-virtual {v0}, Lc/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteLogFiles(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static createFile()V
    .locals 4

    .line 1
    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v0

    sget-object v1, Lc/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v2

    const-string v3, "LDfSdk start"

    invoke-virtual {v2, v1, v0, v3}, Lc/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dwdbsdk/Logcat/SdkLog;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "createFile(): Log\u6587\u4ef6\u672a\u521b\u5efa\u6210\u529f\uff1a mLogFilePath == null"

    .line 4
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized saveLog(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/dwdbsdk/Logcat/SdkLog;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Logcat/SdkLog;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x3

    .line 4
    :try_start_1
    invoke-static {v1, v2}, Lc/c;->a(Ljava/lang/String;I)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 6
    invoke-static {}, Lcom/dwdbsdk/Logcat/SdkLog;->createFile()V

    goto :goto_0

    :cond_1
    const-string v1, "yyyyMMdd HH:mm:ss"

    .line 8
    invoke-static {v1}, Le/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
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

    .line 10
    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v1

    sget-object v2, Lcom/dwdbsdk/Logcat/SdkLog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lc/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zipLogFiles()V
    .locals 5

    const-string v0, "zipLogFiles()"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/dwdbsdk/Logcat/SdkLog;->a()V

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lc/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "yyyyMMdd_HHmm"

    .line 5
    invoke-static {v1}, Le/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v3

    sget-object v4, Lc/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log.zip"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "simple"

    .line 9
    invoke-static {v0, v1, v2}, Lc/e;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {}, Lc/d;->a()Lc/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/d;->a(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/dwdbsdk/Logcat/SdkLog;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
