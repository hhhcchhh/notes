.class public Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field md:Lch/ethz/ssh2/crypto/digest/Digest;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/crypto/digest/Digest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHA1"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {p1}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_0
    const-string v0, "MD5"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance p1, Lch/ethz/ssh2/crypto/digest/MD5;

    invoke-direct {p1}, Lch/ethz/ssh2/crypto/digest/MD5;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    :goto_0
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDigest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigest([BI)V

    return-void
.end method

.method public getDigest([BI)V
    .locals 1

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([BI)V

    return-void
.end method

.method public getDigest()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lch/ethz/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigest([B)V

    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lch/ethz/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lch/ethz/ssh2/crypto/digest/Digest;->reset()V

    return-void
.end method

.method public updateBigInt(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    return-void
.end method

.method public updateByte(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 3
    iget-object p1, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {p1, v0}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public updateByteString([B)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 2
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    return-void
.end method

.method public updateBytes([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public updateUINT32(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method
