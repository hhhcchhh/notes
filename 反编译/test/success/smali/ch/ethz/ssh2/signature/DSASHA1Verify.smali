.class public Lch/ethz/ssh2/signature/DSASHA1Verify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/signature/DSASHA1Verify;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/signature/DSASHA1Verify;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/signature/DSASHA1Verify;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/signature/DSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHDSAPublicKey([B)Lch/ethz/ssh2/signature/DSAPublicKey;
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

    const-string v1, "ssh-dss"

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

    .line 10
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lch/ethz/ssh2/signature/DSAPublicKey;

    invoke-direct {v0, p0, v1, v2, v3}, Lch/ethz/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 17
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in DSA public key!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This is not a ssh-dss public key!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeSSHDSASignature([B)Lch/ethz/ssh2/signature/DSASignature;
    .locals 7
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

    const-string v1, "ssh-dss"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p0

    .line 10
    array-length v1, p0

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x14

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 20
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 23
    invoke-static {p0, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 26
    sget-object v1, Lch/ethz/ssh2/signature/DSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "decoded ssh-dss signature: first bytes r("

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "), s("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 29
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1e

    .line 30
    invoke-virtual {v1, v0, p0}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 34
    :cond_0
    new-instance p0, Lch/ethz/ssh2/signature/DSASignature;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in DSA signature!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Peer sent corrupt signature"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeSSHDSAPublicKey(Lch/ethz/ssh2/signature/DSAPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-dss"

    .line 3
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 6
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 7
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 9
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeSSHDSASignature(Lch/ethz/ssh2/signature/DSASignature;)[B
    .locals 8

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-dss"

    .line 3
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lch/ethz/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v2, 0x28

    new-array v3, v2, [B

    .line 12
    array-length v4, v1

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    array-length v4, v1

    goto :goto_0

    :cond_0
    const/16 v4, 0x14

    .line 13
    :goto_0
    array-length v6, p0

    if-ge v6, v5, :cond_1

    array-length v5, p0

    .line 15
    :cond_1
    array-length v6, v1

    sub-int/2addr v6, v4

    rsub-int/lit8 v7, v4, 0x14

    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    array-length v1, p0

    sub-int/2addr v1, v5

    rsub-int/lit8 v4, v5, 0x28

    invoke-static {p0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, v3, p0, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 20
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature([BLch/ethz/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lch/ethz/ssh2/signature/DSASignature;
    .locals 3

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->update([B)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    new-array p0, p0, [B

    .line 4
    invoke-virtual {v0, p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 6
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    .line 12
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 14
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 16
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 20
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 22
    new-instance p2, Lch/ethz/ssh2/signature/DSASignature;

    invoke-direct {p2, p0, p1}, Lch/ethz/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public static verifySignature([BLch/ethz/ssh2/signature/DSASignature;Lch/ethz/ssh2/signature/DSAPublicKey;)Z
    .locals 10
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

    new-array p0, p0, [B

    .line 4
    invoke-virtual {v0, p0}, Lch/ethz/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 6
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 12
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 13
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 14
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    .line 16
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 18
    sget-object v5, Lch/ethz/ssh2/signature/DSASHA1Verify;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v5}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 20
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "ssh-dss signature: m: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x3c

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 21
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: r: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 22
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: s: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 23
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: g: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 24
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: p: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 25
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: q: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 26
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v9, "ssh-dss signature: y: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    if-gez v6, :cond_4

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 46
    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 47
    invoke-virtual {p2, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "ssh-dss signature: zero.compareTo(s) >= 0 || q.compareTo(s) <= 0"

    .line 52
    invoke-virtual {v5, v8, p0}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v7

    :cond_4
    :goto_1
    const-string p0, "ssh-dss signature: zero.compareTo(r) >= 0 || q.compareTo(r) <= 0"

    .line 53
    invoke-virtual {v5, v8, p0}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v7
.end method
