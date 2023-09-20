.class public Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BUFF_SIZE:I

.field blockSize:I

.field bo:Ljava/io/OutputStream;

.field buffer:[B

.field currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

.field enc:[B

.field out_buffer:[B

.field out_buffer_pos:I

.field pos:I


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->BUFF_SIZE:I

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 8
    iput-object p2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    .line 9
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V

    return-void
.end method

.method private internal_write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/16 p1, 0x800

    if-lt v2, p1, :cond_0

    .line 17
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 18
    iput v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    :cond_0
    return-void
.end method

.method private internal_write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    return-void

    .line 1
    :cond_1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    rsub-int v1, v0, 0x800

    if-le p3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p3

    .line 4
    :goto_1
    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 7
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    sub-int/2addr p3, v1

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 13
    iput v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    goto :goto_0
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    invoke-direct {p0, v0, v3, v1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    .line 9
    iput v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    return-void

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while decrypting block."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method


# virtual methods
.method public changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    .line 2
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    if-lez v0, :cond_0

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    iput v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 9
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FATAL: cannot flush since crypto buffer is not aligned."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 12
    iget p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v2, p1, :cond_0

    .line 13
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    return-void

    .line 1
    :cond_1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    sub-int/2addr v0, v1

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 9
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v1, v0, :cond_0

    .line 10
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    goto :goto_0
.end method

.method public writePlain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->internal_write(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot write plain since crypto buffer is not aligned."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writePlain([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write plain since crypto buffer is not aligned."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
