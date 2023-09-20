.class Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CipherEntry"
.end annotation


# instance fields
.field blocksize:I

.field cipherClass:Ljava/lang/String;

.field keysize:I

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    .line 4
    iput p2, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    .line 5
    iput p3, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    .line 6
    iput-object p4, p0, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    return-void
.end method
