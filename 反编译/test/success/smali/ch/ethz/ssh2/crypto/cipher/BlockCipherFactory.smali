.class public Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    }
.end annotation


# static fields
.field static ciphers:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 7
    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-ctr"

    const/16 v3, 0x10

    const/16 v4, 0x20

    const-string v5, "ch.ethz.ssh2.crypto.cipher.AES"

    invoke-direct {v1, v2, v3, v4, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes192-ctr"

    const/16 v6, 0x18

    invoke-direct {v1, v2, v3, v6, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-ctr"

    invoke-direct {v1, v2, v3, v3, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "blowfish-ctr"

    const/16 v7, 0x8

    const-string v8, "ch.ethz.ssh2.crypto.cipher.BlowFish"

    invoke-direct {v1, v2, v7, v3, v8}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 12
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-cbc"

    invoke-direct {v1, v2, v3, v4, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes192-cbc"

    invoke-direct {v1, v2, v3, v6, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-cbc"

    invoke-direct {v1, v2, v3, v3, v5}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "blowfish-cbc"

    invoke-direct {v1, v2, v7, v3, v8}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "3des-ctr"

    const-string v3, "ch.ethz.ssh2.crypto.cipher.DESede"

    invoke-direct {v1, v2, v7, v6, v3}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "3des-cbc"

    invoke-direct {v1, v2, v7, v6, v3}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCipherList([Ljava/lang/String;)V
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

    invoke-static {v1}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createCipher(Ljava/lang/String;Z[B[B)Lch/ethz/ssh2/crypto/cipher/BlockCipher;
    .locals 3

    const-string v0, "Cannot instantiate "

    .line 1
    :try_start_0
    invoke-static {p0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    const-string v2, "-cbc"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1, p1, p2}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 8
    new-instance p2, Lch/ethz/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p2, v1, p3, p1}, Lch/ethz/ssh2/crypto/cipher/CBCMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    return-object p2

    :cond_0
    const-string v2, "-ctr"

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 12
    invoke-interface {v1, v2, p2}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 13
    new-instance p2, Lch/ethz/ssh2/crypto/cipher/CTRMode;

    invoke-direct {p2, v1, p3, p1}, Lch/ethz/ssh2/crypto/cipher/CTRMode;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;[BZ)V

    return-object p2

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getBlockSize(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object p0

    .line 2
    iget p0, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    return p0
.end method

.method public static getDefaultCipherList()[Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object v2, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 5
    new-instance v3, Ljava/lang/String;

    iget-object v2, v2, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getEntry(Ljava/lang/String;)Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    sget-object v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 4
    iget-object v2, v1, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unkown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object p0

    .line 2
    iget p0, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    return p0
.end method
