.class public Lch/ethz/ssh2/signature/RSASHA1Verify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/signature/RSASHA1Verify;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/signature/RSASHA1Verify;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/signature/RSASHA1Verify;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-static {v0}, Lch/ethz/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lch/ethz/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHRSAPublicKey([B)Lch/ethz/ssh2/signature/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssh-rsa"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p0

    .line 9
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lch/ethz/ssh2/signature/RSAPublicKey;

    invoke-direct {v0, p0, v1}, Lch/ethz/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 15
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in RSA public key!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This is not a ssh-rsa public key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeSSHRSASignature([B)Lch/ethz/ssh2/signature/RSASignature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssh-rsa"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p0

    .line 15
    array-length v1, p0

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Decoding ssh-rsa signature string (length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v3, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lch/ethz/ssh2/signature/RSASignature;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lch/ethz/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 27
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in RSA signature!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Error in RSA signature, S is empty."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeSSHRSAPublicKey(Lch/ethz/ssh2/signature/RSAPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-rsa"

    .line 3
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 7
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeSSHRSASignature(Lch/ethz/ssh2/signature/RSASignature;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-rsa"

    .line 3
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-byte v1, p0, v2

    if-nez v1, :cond_0

    .line 15
    array-length v1, p0

    sub-int/2addr v1, v3

    invoke-virtual {v0, p0, v3, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0

    .line 17
    :cond_0
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 19
    :goto_0
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature([BLch/ethz/ssh2/signature/RSAPrivateKey;)Lch/ethz/ssh2/signature/RSASignature;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->update([B)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    new-array v1, p0, [B

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    const/16 v0, 0xf

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/16 v4, 0x30

    aput-byte v4, v2, v3

    const/16 v5, 0x21

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    const/4 v4, 0x3

    const/16 v7, 0x9

    aput-byte v7, v2, v4

    const/4 v8, 0x4

    const/4 v9, 0x6

    aput-byte v9, v2, v8

    const/4 v10, 0x5

    aput-byte v10, v2, v10

    const/16 v11, 0x2b

    aput-byte v11, v2, v9

    const/4 v9, 0x7

    const/16 v11, 0xe

    aput-byte v11, v2, v9

    const/16 v12, 0x8

    aput-byte v4, v2, v12

    aput-byte v5, v2, v7

    const/16 v4, 0xa

    const/16 v7, 0x1a

    aput-byte v7, v2, v4

    const/16 v4, 0xb

    aput-byte v10, v2, v4

    const/16 v4, 0xd

    aput-byte v8, v2, v4

    const/16 v4, 0x14

    aput-byte v4, v2, v11

    .line 9
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/2addr v4, v9

    div-int/2addr v4, v12

    add-int/lit8 v7, p0, 0x11

    sub-int/2addr v4, v7

    sub-int/2addr v4, v6

    if-lt v4, v12, :cond_1

    add-int/lit8 v7, p0, 0xf

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    .line 16
    new-array v7, v7, [B

    .line 18
    aput-byte v6, v7, v3

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v4, :cond_0

    add-int/lit8 v8, v4, 0x1

    .line 25
    aput-byte v3, v7, v8

    add-int/2addr v4, v5

    .line 27
    invoke-static {v2, v3, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v0

    .line 28
    invoke-static {v1, v3, v7, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 32
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 34
    new-instance p1, Lch/ethz/ssh2/signature/RSASignature;

    invoke-direct {p1, p0}, Lch/ethz/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    const/4 v9, -0x1

    .line 35
    aput-byte v9, v7, v8

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot sign with RSA, message too long"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static verifySignature([BLch/ethz/ssh2/signature/RSASignature;Lch/ethz/ssh2/signature/RSAPublicKey;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->update([B)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    new-array v1, p0, [B

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 6
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    .line 12
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: n.compareTo(s) <= 0"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v5, 0x7

    add-int/2addr v2, v5

    const/16 v6, 0x8

    div-int/2addr v2, v6

    const/4 v7, 0x1

    if-ge v2, v7, :cond_1

    .line 22
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: rsa_block_len < 1"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 26
    :cond_1
    invoke-virtual {p1, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 30
    array-length p2, p1

    if-lez p2, :cond_2

    aget-byte p2, p1, v4

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v2, v7

    if-eq v0, v2, :cond_3

    .line 35
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: (v.length - startpos) != (rsa_block_len - 1)"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 39
    :cond_3
    aget-byte v0, p1, p2

    if-eq v0, v7, :cond_4

    .line 41
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: v[startpos] != 0x01"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_4
    add-int/2addr p2, v7

    move v0, p2

    .line 49
    :goto_1
    array-length v2, p1

    const-string v8, "ssh-rsa signature: pos >= v.length"

    if-lt v0, v2, :cond_5

    .line 51
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p0, v3, v8}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 54
    :cond_5
    aget-byte v2, p1, v0

    if-nez v2, :cond_11

    sub-int p2, v0, p2

    if-ge p2, v6, :cond_6

    .line 68
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: num_pad < 8"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_6
    add-int/2addr v0, v7

    .line 74
    array-length p2, p1

    if-lt v0, p2, :cond_7

    .line 76
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p0, v3, v8}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 80
    :cond_7
    new-instance p2, Lch/ethz/ssh2/crypto/SimpleDERReader;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-direct {p2, p1, v0, v2}, Lch/ethz/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 82
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: dr.available() != 0"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 90
    :cond_8
    invoke-virtual {p2, p1}, Lch/ethz/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 94
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 98
    array-length v0, p1

    if-lt v0, v6, :cond_10

    array-length v0, p1

    const/16 v2, 0x9

    if-le v0, v2, :cond_9

    goto :goto_4

    :cond_9
    new-array v0, v2, [B

    const/4 v2, 0x6

    aput-byte v2, v0, v4

    const/4 v6, 0x5

    aput-byte v6, v0, v7

    const/16 v8, 0x2b

    const/4 v9, 0x2

    aput-byte v8, v0, v9

    const/16 v8, 0xe

    const/4 v10, 0x3

    aput-byte v8, v0, v10

    const/4 v8, 0x4

    aput-byte v10, v0, v8

    aput-byte v9, v0, v6

    const/16 v8, 0x1a

    aput-byte v8, v0, v2

    aput-byte v6, v0, v5

    const/4 v2, 0x0

    .line 106
    :goto_2
    array-length v5, p1

    if-lt v2, v5, :cond_e

    .line 115
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object v5

    .line 117
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/SimpleDERReader;->available()I

    move-result p1

    if-eqz p1, :cond_a

    .line 119
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: dr.available() != 0 (II)"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 123
    :cond_a
    array-length p1, v5

    if-eq p1, p0, :cond_b

    .line 125
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: digest.length != sha_message.length"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_b
    const/4 p1, 0x0

    :goto_3
    if-lt p1, p0, :cond_c

    return v7

    .line 131
    :cond_c
    aget-byte p2, v1, p1

    aget-byte v0, v5, p1

    if-eq p2, v0, :cond_d

    .line 133
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: sha_message[i] != digest[i]"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 134
    :cond_e
    aget-byte v5, p1, v2

    aget-byte v6, v0, v2

    if-eq v5, v6, :cond_f

    .line 136
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: digestAlgorithm[i] != digestAlgorithm_sha1[i]"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :cond_10
    :goto_4
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: (digestAlgorithm.length < 8) || (digestAlgorithm.length > 9)"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_11
    const/4 v8, -0x1

    if-eq v2, v8, :cond_12

    .line 138
    sget-object p0, Lch/ethz/ssh2/signature/RSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: v[pos] != (byte) 0xff"

    invoke-virtual {p0, v3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method
