.class public Lc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "doZipFilesWithPassword() return null"

    .line 28
    invoke-static {p0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-object v1

    .line 31
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 v2, 0x8

    .line 33
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "2021**"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword(Ljava/lang/String;)V

    .line 43
    :cond_1
    :try_start_0
    new-instance p2, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, p0, v0}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 45
    invoke-virtual {p2}, Lnet/lingala/zip4j/core/ZipFile;->getFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 v2, 0x5

    .line 8
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 12
    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 13
    invoke-virtual {v1, p2}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword(Ljava/lang/String;)V

    .line 15
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_3

    .line 17
    aget-object v2, p0, v3

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_3
    :try_start_0
    new-instance p0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2, v1}, Lnet/lingala/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 24
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->getFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 v2, 0x5

    .line 8
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 13
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword(Ljava/lang/String;)V

    .line 16
    :cond_1
    :try_start_0
    new-instance p2, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p0, v0}, Lnet/lingala/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 18
    invoke-virtual {p2}, Lnet/lingala/zip4j/core/ZipFile;->getFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
