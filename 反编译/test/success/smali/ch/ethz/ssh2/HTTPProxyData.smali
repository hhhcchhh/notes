.class public Lch/ethz/ssh2/HTTPProxyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/ProxyData;


# instance fields
.field public final proxyHost:Ljava/lang/String;

.field public final proxyPass:Ljava/lang/String;

.field public final proxyPort:I

.field public final proxyUser:Ljava/lang/String;

.field public final requestHeaderLines:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lch/ethz/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lch/ethz/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 12
    iput-object p1, p0, Lch/ethz/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 13
    iput p2, p0, Lch/ethz/ssh2/HTTPProxyData;->proxyPort:I

    .line 14
    iput-object p3, p0, Lch/ethz/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lch/ethz/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lch/ethz/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyPort must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyHost must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
