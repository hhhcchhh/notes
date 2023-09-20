.class public final Lch/ethz/ssh2/crypto/digest/MAC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mac:Lch/ethz/ssh2/crypto/digest/Digest;

.field size:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hmac-sha1"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p1, Lch/ethz/ssh2/crypto/digest/HMAC;

    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    const/16 v1, 0x14

    invoke-direct {p1, v0, p2, v1}, Lch/ethz/ssh2/crypto/digest/HMAC;-><init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_0
    const-string v0, "hmac-sha1-96"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 9
    new-instance p1, Lch/ethz/ssh2/crypto/digest/HMAC;

    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    invoke-direct {p1, v0, p2, v1}, Lch/ethz/ssh2/crypto/digest/HMAC;-><init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_1
    const-string v0, "hmac-md5"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance p1, Lch/ethz/ssh2/crypto/digest/HMAC;

    new-instance v0, Lch/ethz/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/MD5;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p1, v0, p2, v1}, Lch/ethz/ssh2/crypto/digest/HMAC;-><init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_2
    const-string v0, "hmac-md5-96"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance p1, Lch/ethz/ssh2/crypto/digest/HMAC;

    new-instance v0, Lch/ethz/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/MD5;-><init>()V

    invoke-direct {p1, v0, p2, v1}, Lch/ethz/ssh2/crypto/digest/HMAC;-><init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    .line 22
    :goto_0
    iget-object p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {p1}, Lch/ethz/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/crypto/digest/MAC;->size:I

    return-void

    .line 23
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unkown algorithm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final checkMacList([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v1, p0, v0

    invoke-static {v1}, Lch/ethz/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final getKeyLen(Ljava/lang/String;)I
    .locals 3

    const-string v0, "hmac-sha1"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "hmac-sha1-96"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "hmac-md5"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "hmac-md5-96"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unkown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getMacList()[Ljava/lang/String;
    .locals 4

    const-string v0, "hmac-md5-96"

    const-string v1, "hmac-md5"

    const-string v2, "hmac-sha1-96"

    const-string v3, "hmac-sha1"

    .line 1
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getMac([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([BI)V

    return-void
.end method

.method public final initMac(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lch/ethz/ssh2/crypto/digest/Digest;->reset()V

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->size:I

    return v0
.end method

.method public final update([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/MAC;->mac:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lch/ethz/ssh2/crypto/digest/Digest;->update([BII)V

    return-void
.end method
