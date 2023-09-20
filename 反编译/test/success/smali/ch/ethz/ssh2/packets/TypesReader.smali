.class public Lch/ethz/ssh2/packets/TypesReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field arr:[B

.field max:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    .line 6
    iput-object p1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    .line 7
    iput v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    .line 8
    array-length p1, p1

    iput p1, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    .line 21
    iput-object p1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    .line 22
    iput p2, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    .line 23
    array-length v0, p1

    iput v0, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_0

    .line 25
    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    .line 30
    iput p2, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p3, p2

    .line 31
    iput p3, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_1

    .line 33
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_0

    .line 36
    array-length p1, p1

    if-gt p3, p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 3
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 6
    new-array v2, v0, [B

    .line 7
    iget-object v3, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH byte string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p3

    iget v2, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 12
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Packet too short."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 4
    new-array v1, p1, [B

    .line 6
    iget-object v2, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Packet too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public readNameList()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lch/ethz/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 11
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 14
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 15
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 3
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {p1, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {v2, v3, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, v2

    .line 7
    :goto_0
    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed SSH string."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUINT32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 5
    iput v3, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUINT64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x8

    iget v2, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 5
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    .line 7
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 8
    iput v3, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v4, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remain()I
    .locals 2

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/TypesReader;->max:I

    iget v1, p0, Lch/ethz/ssh2/packets/TypesReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
