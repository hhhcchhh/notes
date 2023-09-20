.class public Lnet/lingala/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 2
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreDateTimeAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 11
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreAllFileAttributes()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 14
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreReadOnlyFileAttribute()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 17
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreHiddenFileAttribute()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 18
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreArchiveFileAttribute()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 19
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreSystemFileAttribute()Z

    move-result p2

    xor-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    :goto_0
    return-void

    .line 21
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file doesnot exist"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: output file is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file header is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/16 v0, 0x12

    if-eq p0, v0, :cond_c

    const/16 v0, 0x26

    if-eq p0, v0, :cond_7

    const/16 p5, 0x30

    if-eq p0, p5, :cond_6

    const/16 p5, 0x32

    if-eq p0, p5, :cond_4

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p4, :cond_1

    .line 33
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_2
    if-eqz p3, :cond_e

    .line 35
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_3

    .line 36
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_3
    if-eqz p2, :cond_e

    .line 37
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    goto :goto_0

    :cond_4
    :pswitch_2
    if-eqz p4, :cond_5

    .line 41
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_5
    if-eqz p3, :cond_e

    .line 42
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :cond_6
    :pswitch_3
    if-eqz p4, :cond_e

    .line 43
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 64
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_8
    if-eqz p3, :cond_9

    .line 65
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    :cond_9
    if-eqz p5, :cond_e

    .line 66
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileSystemMode(Ljava/io/File;)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 67
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_b
    if-eqz p3, :cond_e

    .line 68
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :cond_c
    if-eqz p3, :cond_e

    .line 69
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :cond_d
    if-eqz p2, :cond_e

    .line 70
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_e
    :goto_0
    return-void

    .line 71
    :cond_f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid file header. cannot set file attributes"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result p0

    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToJavaTme(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_1
    return-void
.end method
