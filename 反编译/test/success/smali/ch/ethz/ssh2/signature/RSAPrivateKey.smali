.class public Lch/ethz/ssh2/signature/RSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    .line 4
    iput-object p2, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 5
    iput-object p3, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lch/ethz/ssh2/signature/RSAPublicKey;
    .locals 3

    .line 1
    new-instance v0, Lch/ethz/ssh2/signature/RSAPublicKey;

    iget-object v1, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lch/ethz/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lch/ethz/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method
