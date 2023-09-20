.class public Lnet/lingala/zip4j/io/PartInputStream;
.super Lnet/lingala/zip4j/io/BaseInputStream;
.source "SourceFile"


# instance fields
.field private aesBlockByte:[B

.field private aesBytesReturned:I

.field private bytesRead:J

.field private count:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private isAESEncryptedFile:Z

.field private length:J

.field private oneByteBuff:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/BaseInputStream;-><init>()V

    const/4 p2, 0x1

    new-array p3, p2, [B

    .line 2
    iput-object p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/16 p3, 0x10

    new-array p3, p3, [B

    .line 3
    iput-object p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 5
    iput-boolean p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 9
    iput-object p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 10
    iput-object p6, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 11
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 13
    iput-wide p4, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    .line 14
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result p1

    const/16 p4, 0x63

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-boolean p2, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public checkAndReadAESMacBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v1, :cond_3

    .line 3
    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 9
    iget-object v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    rsub-int/lit8 v3, v2, 0xa

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error occured while reading stored AES authentication bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->setStoredMac([B)V

    :cond_3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    .line 4
    :cond_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([B)I

    move-result v0

    if-ne v0, v4, :cond_2

    return v4

    .line 9
    :cond_2
    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 11
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 13
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    :goto_0
    return v4
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 15
    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-int p3, v2

    if-nez p3, :cond_0

    .line 18
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    const/4 p1, -0x1

    return p1

    .line 23
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_1

    .line 24
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 25
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    sub-int/2addr p3, v0

    .line 31
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-ge v1, p3, :cond_3

    .line 33
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 35
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 36
    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 37
    :cond_2
    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    sub-int/2addr p3, v2

    invoke-virtual {v1, p1, v2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-lez p3, :cond_3

    .line 39
    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 40
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-lez p3, :cond_5

    .line 53
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_4

    .line 55
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/IDecrypter;->decryptData([BII)I
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 60
    :cond_4
    :goto_0
    iget-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 63
    :cond_5
    iget-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_6

    .line 64
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    .line 67
    :cond_6
    iget p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    return p1

    :catchall_0
    move-exception p1

    .line 68
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    move-wide p1, v0

    :cond_0
    add-long/2addr v2, p1

    .line 3
    iput-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    return-wide p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
