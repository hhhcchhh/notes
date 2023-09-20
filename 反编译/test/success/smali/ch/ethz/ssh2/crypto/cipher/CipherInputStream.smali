.class public Lch/ethz/ssh2/crypto/cipher/CipherInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BUFF_SIZE:I

.field bi:Ljava/io/InputStream;

.field blockSize:I

.field buffer:[B

.field currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

.field enc:[B

.field input_buffer:[B

.field input_buffer_pos:I

.field input_buffer_size:I

.field pos:I


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->BUFF_SIZE:I

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 5
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 9
    iput-object p2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    .line 10
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V

    return-void
.end method

.method private fill_buffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 2
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    const/16 v3, 0x800

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    return v0
.end method

.method private getBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v1, v2, :cond_0

    .line 11
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    iget-object v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    invoke-interface {v1, v2, v0, v3, v0}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    return-void

    .line 18
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while decrypting block."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iget-object v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    sub-int/2addr v2, v1

    invoke-direct {p0, v3, v1, v2}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->internal_read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read full block, EOF reached."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private internal_read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    if-lt v2, v0, :cond_1

    .line 6
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->fill_buffer()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    move p3, v0

    .line 13
    :cond_2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    return p3
.end method


# virtual methods
.method public changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    .line 2
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    .line 4
    new-array v0, p1, [B

    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    .line 5
    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v0, v1, :cond_0

    .line 11
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 13
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-gtz p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v1, v2, :cond_1

    .line 3
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 5
    :cond_1
    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    sub-int/2addr v1, v2

    .line 6
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7
    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v3, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public readPlain([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return v0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 6
    invoke-direct {p0, p1, v1, v2}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->internal_read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot fill buffer, EOF reached."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read plain since crypto buffer is not aligned."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
