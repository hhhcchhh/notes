.class public Lnet/lingala/zip4j/crypto/AESEncrpyter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private iv:[B

.field private keyStrength:I

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private password:[C

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->PASSWORD_VERIFIER_LENGTH:I

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    if-eqz p1, :cond_2

    .line 18
    array-length v2, p1

    if-eqz v2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid key strength in AES encrypter constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->password:[C

    .line 27
    iput p2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->keyStrength:I

    .line 28
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    const/16 p1, 0x10

    new-array p2, p1, [B

    .line 29
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    new-array p1, p1, [B

    .line 30
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    .line 31
    invoke-direct {p0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->init()V

    return-void

    .line 32
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null in AES encrypter constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deriveKey([B[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v1, "HmacSHA1"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 3
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    .line 4
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static generateSalt(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid salt size, cannot generate salt"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ne p0, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ne p0, v0, :cond_3

    const/4 v1, 0x4

    .line 11
    :cond_3
    new-array p0, p0, [B

    :goto_2
    if-lt v2, v1, :cond_4

    return-object p0

    .line 13
    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 14
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x0

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    .line 15
    aput-byte v5, p0, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p0, v4

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 17
    aput-byte v5, p0, v4

    add-int/lit8 v3, v3, 0x3

    int-to-byte v0, v0

    .line 18
    aput-byte v0, p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->keyStrength:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    .line 9
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    .line 10
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    .line 15
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    const/16 v0, 0x8

    .line 16
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    .line 27
    :goto_0
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    invoke-static {v0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->generateSalt(I)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    .line 28
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->password:[C

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->deriveKey([B[C)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    array-length v1, v0

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int v4, v2, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    if-ne v1, v4, :cond_2

    .line 34
    new-array v1, v2, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesKey:[B

    .line 35
    new-array v3, v3, [B

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    new-array v3, v5, [B

    .line 36
    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesKey:[B

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 43
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 44
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    return-void

    .line 45
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid key generated, cannot decrypt file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encryptData([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->encryptData([BII)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input bytes are null, cannot perform AES encrpytion"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptData([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    if-nez v0, :cond_4

    .line 10
    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    :cond_0
    move v0, p2

    :goto_0
    add-int v2, p2, p3

    if-lt v0, v2, :cond_1

    return p3

    :cond_1
    add-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-gt v3, v2, :cond_2

    const/16 v2, 0x10

    goto :goto_1

    :cond_2
    sub-int/2addr v2, v0

    .line 15
    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    .line 18
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    iget v5, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    invoke-static {v2, v5, v4}, Lnet/lingala/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    .line 19
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    const/4 v2, 0x0

    .line 21
    :goto_2
    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    if-lt v2, v4, :cond_3

    .line 25
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v2, p1, v0, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 26
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    move v0, v3

    goto :goto_0

    :cond_3
    add-int v4, v0, v2

    .line 27
    aget-byte v5, p1, v4

    iget-object v6, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 28
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    return-object v0
.end method

.method public getFinalMac()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getPasswordVeriifierLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSaltBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    return v0
.end method

.method public setDerivedPasswordVerifier([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    return-void
.end method

.method public setSaltBytes([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    return-void
.end method
