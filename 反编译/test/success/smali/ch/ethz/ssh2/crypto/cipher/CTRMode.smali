.class public Lch/ethz/ssh2/crypto/cipher/CTRMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field X:[B

.field Xenc:[B

.field bc:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

.field blockSize:I

.field count:I

.field doEncrypt:Z


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->count:I

    .line 10
    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->bc:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    .line 11
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 12
    iput-boolean p3, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->doEncrypt:Z

    .line 14
    array-length p3, p2

    if-ne p1, p3, :cond_0

    .line 17
    new-array p3, p1, [B

    iput-object p3, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->X:[B

    .line 18
    new-array v1, p1, [B

    iput-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    .line 20
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "IV must be "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->blockSize:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " bytes long! (currently "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->blockSize:I

    return v0
.end method

.method public init(Z[B)V
    .locals 0

    return-void
.end method

.method public final transformBlock([BI[BI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->bc:Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->X:[B

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 3
    :goto_0
    iget v0, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->blockSize:I

    if-lt v3, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object p1, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->X:[B

    aget-byte p2, p1, v0

    add-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-eqz p2, :cond_1

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int v0, p4, v3

    add-int v1, p2, v3

    .line 11
    aget-byte v1, p1, v1

    iget-object v2, p0, Lch/ethz/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
