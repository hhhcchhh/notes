.class public Lch/ethz/ssh2/crypto/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final alphabet:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lch/ethz/ssh2/crypto/Base64;->alphabet:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    array-length v2, p0

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_0
    array-length v7, p0

    if-lt v4, v7, :cond_0

    goto/16 :goto_4

    .line 9
    :cond_0
    aget-char v7, p0, v4

    const/16 v8, 0xa

    if-eq v7, v8, :cond_c

    const/16 v8, 0xd

    if-eq v7, v8, :cond_c

    const/16 v8, 0x20

    if-eq v7, v8, :cond_c

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v8, 0x41

    const/16 v9, 0x40

    const/16 v10, 0x3f

    if-lt v7, v8, :cond_2

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, -0x41

    int-to-byte v7, v7

    .line 16
    aput-byte v7, v1, v5

    :goto_1
    move v5, v8

    goto :goto_3

    :cond_2
    const/16 v8, 0x61

    if-lt v7, v8, :cond_3

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_3

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, -0x61

    add-int/lit8 v7, v7, 0x1a

    int-to-byte v7, v7

    .line 20
    aput-byte v7, v1, v5

    goto :goto_1

    :cond_3
    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v7, v7, 0x34

    int-to-byte v7, v7

    .line 24
    aput-byte v7, v1, v5

    goto :goto_1

    :cond_4
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_5

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x3e

    .line 28
    aput-byte v8, v1, v5

    :goto_2
    move v5, v7

    goto :goto_3

    :cond_5
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 32
    aput-byte v10, v1, v5

    goto :goto_2

    :cond_6
    const/16 v8, 0x3d

    if-ne v7, v8, :cond_b

    add-int/lit8 v7, v5, 0x1

    .line 36
    aput-byte v9, v1, v5

    goto :goto_2

    :goto_3
    if-ne v5, v0, :cond_c

    aget-byte v5, v1, v3

    if-ne v5, v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eq v7, v9, :cond_a

    const/4 v8, 0x2

    aget-byte v11, v1, v8

    if-ne v11, v9, :cond_8

    and-int/lit8 p0, v5, 0x3f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 v1, v7, 0x3f

    or-int/2addr p0, v1

    add-int/lit8 v1, v6, 0x1

    shr-int/2addr p0, v0

    int-to-byte p0, p0

    .line 56
    aput-byte p0, v2, v6

    move v6, v1

    goto :goto_4

    :cond_8
    const/4 v12, 0x3

    aget-byte v12, v1, v12

    if-ne v12, v9, :cond_9

    and-int/lit8 p0, v5, 0x3f

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 v0, v7, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p0, v0

    and-int/lit8 v0, v11, 0x3f

    or-int/2addr p0, v0

    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v1, p0, 0xa

    int-to-byte v1, v1

    .line 62
    aput-byte v1, v2, v6

    add-int/lit8 v6, v0, 0x1

    shr-int/2addr p0, v8

    int-to-byte p0, p0

    .line 63
    aput-byte p0, v2, v0

    .line 76
    :goto_4
    new-array p0, v6, [B

    .line 77
    invoke-static {v2, v3, p0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_9
    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x12

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v5, v7

    and-int/lit8 v7, v11, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v7, v12, 0x3f

    or-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    .line 78
    aput-byte v8, v2, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    .line 79
    aput-byte v8, v2, v7

    add-int/lit8 v7, v6, 0x1

    int-to-byte v5, v5

    .line 80
    aput-byte v5, v2, v6

    move v6, v7

    const/4 v5, 0x0

    goto :goto_5

    .line 81
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected \'=\' in base64 code."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Illegal char in base64 code."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static encode([B)[C
    .locals 8

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x3

    div-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/io/CharArrayWriter;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_0
    array-length v6, p0

    const/4 v7, 0x1

    if-lt v3, v6, :cond_2

    const/16 p0, 0x3d

    if-ne v4, v7, :cond_0

    .line 31
    sget-object v1, Lch/ethz/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v2, v5, 0x12

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    shr-int/lit8 v2, v5, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 32
    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    .line 34
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    :cond_0
    const/4 v1, 0x2

    if-ne v4, v1, :cond_1

    .line 39
    sget-object v1, Lch/ethz/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v2, v5, 0x12

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    shr-int/lit8 v2, v5, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 40
    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 41
    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/io/CharArrayWriter;->write(I)V

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v4, :cond_3

    .line 46
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_4

    .line 48
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    goto :goto_1

    .line 50
    :cond_4
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    :goto_1
    or-int/2addr v5, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_5

    .line 56
    sget-object v4, Lch/ethz/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v6, v5, 0x12

    aget-char v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 57
    aget-char v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 58
    aget-char v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    and-int/lit8 v6, v5, 0x3f

    .line 59
    aget-char v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    const/4 v4, 0x0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
