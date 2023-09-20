.class public Lch/ethz/ssh2/packets/TypesWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field arr:[B

.field pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method private resize(I)V
    .locals 3

    .line 1
    new-array p1, p1, [B

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    return-void
.end method


# virtual methods
.method public getBytes([B)V
    .locals 3

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getBytes()[B
    .locals 4

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    new-array v1, v0, [B

    .line 2
    iget-object v2, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    return v0
.end method

.method public writeBoolean(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 2
    array-length v0, v1

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->resize(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 5
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(II)V

    .line 6
    iget p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeByte(II)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 2
    invoke-direct {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->resize(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 3

    .line 2
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 3
    array-length v0, v1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->resize(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeMPInt(Ljava/math/BigInteger;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    :goto_0
    return-void
.end method

.method public writeNameList([Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 5
    array-length v0, p1

    invoke-virtual {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 9
    :goto_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 10
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeString([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeUINT32(I)V
    .locals 1

    .line 8
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(II)V

    .line 9
    iget p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeUINT32(II)V
    .locals 3

    add-int/lit8 v0, p2, 0x4

    .line 1
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 2
    invoke-direct {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->resize(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    .line 5
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    .line 6
    aput-byte v2, v0, p2

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v0, v1

    return-void
.end method

.method public writeUINT64(J)V
    .locals 7

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget-object v2, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    array-length v3, v2

    const/16 v4, 0x20

    if-le v0, v3, :cond_0

    .line 2
    array-length v0, v2

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lch/ethz/ssh2/packets/TypesWriter;->resize(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/TypesWriter;->arr:[B

    iget v2, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x38

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 5
    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 7
    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 8
    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 9
    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    shr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 10
    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    .line 11
    iput v1, p0, Lch/ethz/ssh2/packets/TypesWriter;->pos:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v3

    return-void
.end method
