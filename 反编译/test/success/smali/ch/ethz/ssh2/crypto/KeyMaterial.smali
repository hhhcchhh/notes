.class public Lch/ethz/ssh2/crypto/KeyMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enc_key_client_to_server:[B

.field public enc_key_server_to_client:[B

.field public initial_iv_client_to_server:[B

.field public initial_iv_server_to_client:[B

.field public integrity_key_client_to_server:[B

.field public integrity_key_server_to_client:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B
    .locals 7

    .line 1
    new-array v0, p5, [B

    .line 3
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigestLength()I

    move-result v1

    add-int v2, p5, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4
    div-int/2addr v2, v1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    .line 6
    const-class v6, [B

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 8
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->reset()V

    .line 9
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 10
    invoke-virtual {p0, p2}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 11
    invoke-virtual {p0, p3}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByte(B)V

    .line 12
    invoke-virtual {p0, p4}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 14
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p3

    aput-object p3, v4, v5

    .line 17
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 19
    aget-object p4, v4, v5

    invoke-static {p4, v5, v0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p5, p3

    add-int/2addr p3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 27
    invoke-virtual {p0, p2}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    const/4 p4, 0x0

    :goto_1
    if-lt p4, v3, :cond_1

    .line 32
    invoke-virtual {p0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p4

    aput-object p4, v4, v3

    .line 34
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 35
    aget-object v6, v4, v3

    invoke-static {v6, v5, v0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p5, p4

    add-int/2addr p3, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_1
    aget-object v6, v4, p4

    invoke-virtual {p0, v6}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lch/ethz/ssh2/crypto/KeyMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/KeyMaterial;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/KeyMaterial;-><init>()V

    .line 3
    new-instance v7, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;

    move-object v1, p0

    invoke-direct {v7, p0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x41

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    .line 5
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    const/16 v4, 0x42

    move-object v1, v7

    move/from16 v6, p8

    .line 7
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    const/16 v4, 0x43

    move-object v1, v7

    move v6, p4

    .line 9
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    const/16 v4, 0x44

    move-object v1, v7

    move v6, p7

    .line 11
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    const/16 v4, 0x45

    move-object v1, v7

    move v6, p6

    .line 13
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    const/16 v4, 0x46

    move-object v1, v7

    move/from16 v6, p9

    .line 15
    invoke-static/range {v1 .. v6}, Lch/ethz/ssh2/crypto/KeyMaterial;->calculateKey(Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lch/ethz/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    return-object v0
.end method
