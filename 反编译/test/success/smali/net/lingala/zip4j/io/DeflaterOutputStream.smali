.class public Lnet/lingala/zip4j/io/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/CipherOutputStream;
.source "SourceFile"


# instance fields
.field private buff:[B

.field protected deflater:Ljava/util/zip/Deflater;

.field private firstBytesRead:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 2
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    return-void
.end method

.method private deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_4

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->decrementCompressedFileSize(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x4

    .line 11
    :cond_2
    iget-boolean v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    goto :goto_0

    .line 15
    :cond_3
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 4
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    .line 10
    :cond_2
    invoke-super {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->closeEntry()V

    return-void
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->finish()V

    return-void
.end method

.method public putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    .line 4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 10
    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setLevel(I)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid compression level for deflater. compression level should be in the range of 0-9"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
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

    .line 4
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 9
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0
.end method
