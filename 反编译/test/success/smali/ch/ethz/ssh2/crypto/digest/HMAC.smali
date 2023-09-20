.class public final Lch/ethz/ssh2/crypto/digest/HMAC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/crypto/digest/Digest;


# instance fields
.field k_xor_ipad:[B

.field k_xor_opad:[B

.field md:Lch/ethz/ssh2/crypto/digest/Digest;

.field size:I

.field tmp:[B


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    .line 4
    iput p3, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->size:I

    .line 6
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    const/16 p3, 0x40

    new-array v0, p3, [B

    .line 10
    iput-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    new-array v0, p3, [B

    .line 11
    iput-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    .line 13
    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 15
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/digest/Digest;->reset()V

    .line 16
    invoke-interface {p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    .line 17
    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([B)V

    .line 18
    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    .line 21
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v2, p3, :cond_1

    .line 29
    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void

    .line 30
    :cond_1
    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    aget-byte v0, p2, v2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 31
    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    aget-byte v0, p2, v2

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/crypto/digest/HMAC;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 3

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([B)V

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_opad:[B

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    .line 7
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([B)V

    .line 9
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->tmp:[B

    iget v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object p2, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {p1, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->size:I

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lch/ethz/ssh2/crypto/digest/Digest;->reset()V

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {v0, v1}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public final update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method

.method public final update([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public final update([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/crypto/digest/HMAC;->md:Lch/ethz/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lch/ethz/ssh2/crypto/digest/Digest;->update([BII)V

    return-void
.end method
