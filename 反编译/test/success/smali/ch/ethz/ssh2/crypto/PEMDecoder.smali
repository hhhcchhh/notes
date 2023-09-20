.class public Lch/ethz/ssh2/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PEM_DSA_PRIVATE_KEY:I = 0x2

.field private static final PEM_RSA_PRIVATE_KEY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lch/ethz/ssh2/crypto/PEMDecoder;->parsePEM([C)Lch/ethz/ssh2/crypto/PEMStructure;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lch/ethz/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lch/ethz/ssh2/crypto/PEMStructure;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lch/ethz/ssh2/crypto/PEMDecoder;->decryptPEM(Lch/ethz/ssh2/crypto/PEMStructure;[B)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM is encrypted, but no password was specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    :goto_0
    iget p1, p0, Lch/ethz/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v0, 0x2

    const-string v1, "Wrong version ("

    if-ne p1, v0, :cond_5

    .line 16
    new-instance p1, Lch/ethz/ssh2/crypto/SimpleDERReader;

    iget-object p0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {p1, p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 18
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 20
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    const-string v2, "Padding in DSA PRIVATE KEY DER stream."

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p1, p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 25
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_3

    .line 30
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 32
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v6

    .line 33
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v7

    .line 34
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v8

    .line 36
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result p0

    if-nez p0, :cond_2

    .line 39
    new-instance p0, Lch/ethz/ssh2/signature/DSAPrivateKey;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lch/ethz/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    .line 40
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ") in DSA PRIVATE KEY DER stream."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 65
    new-instance p1, Lch/ethz/ssh2/crypto/SimpleDERReader;

    iget-object p0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {p1, p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 67
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 69
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    if-nez v0, :cond_8

    .line 72
    invoke-virtual {p1, p0}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 74
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 76
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 77
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ") in RSA PRIVATE KEY DER stream."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 80
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p1

    .line 83
    new-instance v1, Lch/ethz/ssh2/signature/RSAPrivateKey;

    invoke-direct {v1, p1, v0, p0}, Lch/ethz/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 84
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Padding in RSA PRIVATE KEY DER stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM problem: it is of unknown type"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final decryptPEM(Lch/ethz/ssh2/crypto/PEMStructure;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    .line 7
    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 8
    aget-object v0, v0, v3

    invoke-static {v0}, Lch/ethz/ssh2/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "DES-EDE3-CBC"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x18

    if-eqz v3, :cond_0

    .line 14
    new-instance v2, Lch/ethz/ssh2/crypto/cipher/DESede;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/cipher/DESede;-><init>()V

    .line 15
    invoke-static {p1, v0, v4}, Lch/ethz/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lch/ethz/ssh2/crypto/cipher/DESede;->init(Z[B)V

    .line 16
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v2, v0, v1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_0
    const-string v3, "DES-CBC"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    new-instance v2, Lch/ethz/ssh2/crypto/cipher/DES;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/cipher/DES;-><init>()V

    const/16 v3, 0x8

    .line 21
    invoke-static {p1, v0, v3}, Lch/ethz/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lch/ethz/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 22
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v2, v0, v1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_1
    const-string v3, "AES-128-CBC"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    new-instance v2, Lch/ethz/ssh2/crypto/cipher/AES;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/cipher/AES;-><init>()V

    const/16 v3, 0x10

    .line 27
    invoke-static {p1, v0, v3}, Lch/ethz/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lch/ethz/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 28
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v2, v0, v1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_2
    const-string v3, "AES-192-CBC"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    new-instance v2, Lch/ethz/ssh2/crypto/cipher/AES;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/cipher/AES;-><init>()V

    .line 33
    invoke-static {p1, v0, v4}, Lch/ethz/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lch/ethz/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 34
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v2, v0, v1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_3
    const-string v3, "AES-256-CBC"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 38
    new-instance v2, Lch/ethz/ssh2/crypto/cipher/AES;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/cipher/AES;-><init>()V

    const/16 v3, 0x20

    .line 39
    invoke-static {p1, v0, v3}, Lch/ethz/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lch/ethz/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 40
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v2, v0, v1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 47
    :goto_0
    iget-object v0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    array-length v0, v0

    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 53
    iget-object v0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 55
    :goto_1
    iget-object v2, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    array-length v2, v2

    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v3

    div-int/2addr v2, v3

    if-lt v1, v2, :cond_4

    .line 62
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    invoke-static {v0, p1}, Lch/ethz/ssh2/crypto/PEMDecoder;->removePadding([BI)[B

    move-result-object p1

    .line 64
    iput-object p1, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lch/ethz/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lch/ethz/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    return-void

    .line 67
    :cond_4
    iget-object v2, p0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int v3, v3, v1

    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int v4, v4, v1

    invoke-interface {p1, v2, v3, v0, v4}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid PEM structure, size of encrypted block is not a multiple of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Cannot decrypt PEM structure, unknown cipher "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, DEK-Info is incomplete!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, no mode and salt given, but encryption enabled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Lch/ethz/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/MD5;-><init>()V

    .line 6
    new-array v2, p2, [B

    .line 7
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/MD5;->getDigestLength()I

    move-result v3

    new-array v4, v3, [B

    move v5, p2

    .line 11
    :goto_0
    array-length v6, p0

    const/4 v7, 0x0

    invoke-virtual {v0, p0, v7, v6}, Lch/ethz/ssh2/crypto/digest/MD5;->update([BII)V

    .line 12
    invoke-virtual {v0, p1, v7, v1}, Lch/ethz/ssh2/crypto/digest/MD5;->update([BII)V

    if-ge v5, v3, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v3

    .line 17
    :goto_1
    invoke-virtual {v0, v4, v7}, Lch/ethz/ssh2/crypto/digest/MD5;->digest([BI)V

    sub-int v8, p2, v5

    .line 19
    invoke-static {v4, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v6

    if-nez v5, :cond_1

    return-object v2

    .line 26
    :cond_1
    invoke-virtual {v0, v4, v7, v3}, Lch/ethz/ssh2/crypto/digest/MD5;->update([BII)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt needs to be at least 8 bytes for key generation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lch/ethz/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lch/ethz/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v3

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 11
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uneven string length in hex encoding."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static final hexToInt(C)I
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v1, 0x66

    if-gt p0, v1, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need hex char"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static final isPEMEncrypted(Lch/ethz/ssh2/crypto/PEMStructure;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 7
    aget-object v0, v0, v1

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object p0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-string v2, "ENCRYPTED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1

    .line 11
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unknown Proc-Type field ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lch/ethz/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unknown Proc-Type field."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final parsePEM([C)Lch/ethz/ssh2/crypto/PEMStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/PEMStructure;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/PEMStructure;-><init>()V

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-----BEGIN DSA PRIVATE KEY-----"

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    .line 21
    iput p0, v0, Lch/ethz/ssh2/crypto/PEMStructure;->pemType:I

    const-string p0, "-----END DSA PRIVATE KEY-----"

    goto :goto_0

    :cond_1
    const-string v2, "-----BEGIN RSA PRIVATE KEY-----"

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 28
    iput p0, v0, Lch/ethz/ssh2/crypto/PEMStructure;->pemType:I

    const-string p0, "-----END RSA PRIVATE KEY-----"

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " missing"

    const-string v4, "Invalid PEM structure, "

    if-eqz v2, :cond_9

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3a

    .line 42
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_6

    .line 72
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array v1, p0, [C

    .line 90
    invoke-virtual {v5, v7, p0, v1, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 92
    invoke-static {v1}, Lch/ethz/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v0, Lch/ethz/ssh2/crypto/PEMStructure;->data:[B

    .line 94
    array-length p0, p0

    if-eqz p0, :cond_3

    return-object v0

    .line 95
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, no data available"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 99
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 100
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    :goto_2
    array-length v3, v2

    if-lt v7, v3, :cond_8

    const-string v3, "Proc-Type:"

    .line 111
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    iput-object v2, v0, Lch/ethz/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v3, "DEK-Info:"

    .line 117
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    iput-object v2, v0, Lch/ethz/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_8
    aget-object v3, v2, v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 121
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, \'-----BEGIN...\' missing"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static removePadding([BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const-string v2, "Decrypted PEM has wrong padding, did you specify the correct password?"

    if-lt v0, v1, :cond_2

    if-gt v0, p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    if-le p1, v0, :cond_0

    .line 12
    array-length p1, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 13
    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 14
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, p1

    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
