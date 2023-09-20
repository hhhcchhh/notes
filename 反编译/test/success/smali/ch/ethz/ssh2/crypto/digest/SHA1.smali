.class public final Lch/ethz/ssh2/crypto/digest/SHA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/crypto/digest/Digest;


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private currentLen:J

.field private currentPos:I

.field private final msg:[B

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->msg:[B

    const/16 v0, 0x50

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    .line 9
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->reset()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance p0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {p0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v0, v0, [B

    const-string v3, "abc"

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/ethz/ssh2/crypto/digest/SHA1;->update([B)V

    .line 17
    invoke-virtual {p0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    const-string v3, "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/ethz/ssh2/crypto/digest/SHA1;->update([B)V

    .line 20
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    const/4 v3, 0x0

    :goto_0
    const v4, 0xf4240

    if-lt v3, v4, :cond_3

    .line 24
    invoke-virtual {p0, v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 26
    invoke-static {v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "A9993E364706816ABA3E25717850C26C9CD0D89D"

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SHA-1 Test 1 OK."

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SHA-1 Test 1 FAILED."

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    const-string p0, "84983E441C3BD26EBAAE4AA1F95129E5E54670F1"

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHA-1 Test 2 OK."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHA-1 Test 2 FAILED."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    const-string p0, "34AA973CD4C4DAA4F61EEB2BDBAD27316534016F"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 45
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SHA-1 Test 3 OK."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 47
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SHA-1 Test 3 FAILED."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_3
    const/16 v4, 0x61

    .line 48
    invoke-virtual {p0, v4}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final perform()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_5

    :goto_1
    const/16 v1, 0x50

    if-lt v2, v1, :cond_4

    .line 1
    iget v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H0:I

    .line 2
    iget v2, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H1:I

    .line 3
    iget v3, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H2:I

    .line 4
    iget v4, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H3:I

    .line 5
    iget v5, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H4:I

    :goto_2
    const/16 v6, 0x13

    if-le v0, v6, :cond_3

    const/16 v0, 0x14

    :goto_3
    const/16 v6, 0x27

    if-le v0, v6, :cond_2

    const/16 v0, 0x28

    :goto_4
    const/16 v6, 0x3b

    if-le v0, v6, :cond_1

    const/16 v0, 0x3c

    :goto_5
    const/16 v6, 0x4f

    if-le v0, v6, :cond_0

    .line 53
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H0:I

    add-int/2addr v0, v1

    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H0:I

    .line 54
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H1:I

    add-int/2addr v0, v2

    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H1:I

    .line 55
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H2:I

    add-int/2addr v0, v3

    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H2:I

    .line 56
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H3:I

    add-int/2addr v0, v4

    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H3:I

    .line 57
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H4:I

    add-int/2addr v0, v5

    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H4:I

    return-void

    :cond_0
    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v6, v7

    xor-int v7, v2, v3

    xor-int/2addr v7, v4

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 58
    iget-object v5, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    aget v5, v5, v0

    add-int/2addr v6, v5

    const v5, -0x359d3e2a    # -3715189.5f

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move v2, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move v3, v9

    goto :goto_5

    :cond_1
    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v6, v7

    and-int v7, v2, v3

    and-int v8, v2, v4

    or-int/2addr v7, v8

    and-int v8, v3, v4

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 59
    iget-object v5, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    aget v5, v5, v0

    add-int/2addr v6, v5

    const v5, -0x70e44324

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move v2, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move v3, v9

    goto :goto_4

    :cond_2
    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v6, v7

    xor-int v7, v2, v3

    xor-int/2addr v7, v4

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 60
    iget-object v5, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    aget v5, v5, v0

    add-int/2addr v6, v5

    const v5, 0x6ed9eba1

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move v2, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move v3, v9

    goto/16 :goto_3

    :cond_3
    shl-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v6, v7

    and-int v7, v2, v3

    xor-int/lit8 v8, v2, -0x1

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 61
    iget-object v5, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    aget v5, v5, v0

    add-int/2addr v6, v5

    const v5, 0x5a827999

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move v2, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move v3, v9

    goto/16 :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    add-int/lit8 v3, v2, -0x3

    aget v3, v1, v3

    add-int/lit8 v4, v2, -0x8

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v2, -0xe

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x10

    aget v4, v1, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    .line 63
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 64
    :cond_5
    iget-object v3, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->w:[I

    iget-object v4, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->msg:[B

    mul-int/lit8 v5, v1, 0x4

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v2, v7, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x3

    .line 65
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 66
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private final putInt([BII)V
    .locals 2

    shr-int/lit8 v0, p3, 0x18

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    .line 4
    aput-byte p3, p1, p2

    return-void
.end method

.method private static final toHexString([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 5

    .line 2
    iget-wide v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentLen:J

    const/16 v2, -0x80

    .line 4
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    .line 7
    :goto_0
    iget v2, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentPos:I

    const/16 v3, 0x38

    if-ne v2, v3, :cond_0

    shr-long v2, v0, v3

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 10
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v2, 0x30

    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 11
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v2, 0x28

    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 12
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 13
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v2, 0x18

    shr-long v2, v0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 15
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v2, 0x10

    shr-long v3, v0, v2

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 16
    invoke-virtual {p0, v3}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    const/16 v3, 0x8

    shr-long v3, v0, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 17
    invoke-virtual {p0, v3}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 18
    invoke-virtual {p0, v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    .line 22
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 23
    iget v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H1:I

    invoke-direct {p0, p1, v0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x8

    .line 24
    iget v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H2:I

    invoke-direct {p0, p1, v0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0xc

    .line 25
    iget v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H3:I

    invoke-direct {p0, p1, v0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/2addr p2, v2

    .line 26
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H4:I

    invoke-direct {p0, p1, p2, v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->putInt([BII)V

    .line 28
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->reset()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    goto :goto_0
.end method

.method public final getDigestLength()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final reset()V
    .locals 2

    const v0, 0x67452301

    .line 1
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H0:I

    const v0, -0x10325477

    .line 2
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H1:I

    const v0, -0x67452302

    .line 3
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H2:I

    const v0, 0x10325476

    .line 4
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H3:I

    const v0, -0x3c2d1e10

    .line 5
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->H4:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentPos:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentLen:J

    return-void
.end method

.method public final update(B)V
    .locals 5

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->msg:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentPos:I

    aput-byte p1, v0, v1

    .line 5
    iget-wide v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    iput-wide v0, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentLen:J

    const/16 p1, 0x40

    if-ne v2, p1, :cond_0

    .line 8
    invoke-direct {p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->perform()V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lch/ethz/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final update([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    return-void

    .line 1
    :cond_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
