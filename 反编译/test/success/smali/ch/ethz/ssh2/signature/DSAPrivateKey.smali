.class public Lch/ethz/ssh2/signature/DSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    .line 5
    iput-object p2, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    .line 6
    iput-object p3, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    .line 7
    iput-object p4, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    .line 8
    iput-object p5, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lch/ethz/ssh2/signature/DSAPublicKey;
    .locals 5

    .line 1
    new-instance v0, Lch/ethz/ssh2/signature/DSAPublicKey;

    iget-object v1, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    iget-object v4, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lch/ethz/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
