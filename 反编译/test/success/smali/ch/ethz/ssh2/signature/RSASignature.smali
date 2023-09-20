.class public Lch/ethz/ssh2/signature/RSASignature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/signature/RSASignature;->s:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/signature/RSASignature;->s:Ljava/math/BigInteger;

    return-object v0
.end method
