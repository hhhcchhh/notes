.class public Lnet/lingala/zip4j/io/SplitOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private bytesWrittenForThisPart:J

.field private currSplitFileCounter:I

.field private outFile:Ljava/io/File;

.field private raf:Ljava/io/RandomAccessFile;

.field private splitLength:J

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x10000

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 11
    iput-wide p2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    .line 12
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    .line 13
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    .line 15
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method private isHeaderData([B)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result p1

    .line 6
    invoke-static {}, Lnet/lingala/zip4j/util/Zip4jUtil;->getAllHeaderSignatures()[J

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    aget-wide v3, v1, v2

    const-wide/32 v5, 0x8074b50

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private startNextSplitFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_0
    iget v3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 24
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    return-void

    .line 25
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rename newly created split file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "split file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public checkBuffSizeAndStartNextSplitFile(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->isBuffSizeFitForCurrSplitFile(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "negative buffersize for checkBuffSizeAndStartNextSplitFile"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCurrSplitFileCounter()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    return v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplitLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    return-wide v0
.end method

.method public isBuffSizeFitForCurrSplitFile(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/32 v2, 0x10000

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 2
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v5, p1

    add-long/2addr v2, v5

    cmp-long p1, v2, v0

    if-gtz p1, :cond_0

    return v4

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v4

    .line 3
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "negative buffersize for isBuffSizeFitForCurrSplitFile"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSplitZipFile()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 11
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 12
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long p1, p3

    .line 14
    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    .line 16
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->isHeaderData([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 19
    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 21
    :cond_2
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 22
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 23
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    add-int/2addr p2, v2

    sub-long v0, v4, v0

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 24
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr p1, v0

    sub-long/2addr v4, p1

    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 28
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    .line 29
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 54
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    :goto_0
    return-void
.end method
