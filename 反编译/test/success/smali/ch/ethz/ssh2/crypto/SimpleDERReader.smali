.class public Lch/ethz/ssh2/crypto/SimpleDERReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field buffer:[B

.field count:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER byte array: out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    if-gt p1, v0, :cond_0

    .line 4
    new-array v0, p1, [B

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v2, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    .line 9
    iget v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    return-object v0

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER byte array: out of data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-gtz v0, :cond_2

    return v1

    :cond_2
    shl-int/lit8 v1, v1, 0x8

    .line 16
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    return v0
.end method

.method public ignoreNextObject()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v1

    if-ltz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    return v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 13
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1

    .line 14
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected DER Integer, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readOctetString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected DER Octetstring, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readSequenceAsByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal len in DER object ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected DER Sequence, but found type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetInput([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method public resetInput([BII)V
    .locals 0

    .line 2
    iput-object p1, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 3
    iput p2, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->pos:I

    .line 4
    iput p3, p0, Lch/ethz/ssh2/crypto/SimpleDERReader;->count:I

    return-void
.end method
