.class public Lch/ethz/ssh2/ConnectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public clientToServerCryptoAlgorithm:Ljava/lang/String;

.field public clientToServerMACAlgorithm:Ljava/lang/String;

.field public keyExchangeAlgorithm:Ljava/lang/String;

.field public keyExchangeCounter:I

.field public serverHostKey:[B

.field public serverHostKeyAlgorithm:Ljava/lang/String;

.field public serverToClientCryptoAlgorithm:Ljava/lang/String;

.field public serverToClientMACAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lch/ethz/ssh2/ConnectionInfo;->keyExchangeCounter:I

    return-void
.end method
