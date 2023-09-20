.class public abstract Lt/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x4

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x200


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lt/f;->a:I

    .line 3
    iput-object p2, p0, Lt/f;->c:Ljava/net/InetAddress;

    .line 4
    iput p3, p0, Lt/f;->b:I

    return-void
.end method

.method public static final a(Ljava/net/DatagramPacket;)Lt/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 6
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v2, 0x1

    .line 8
    aget-byte v0, v0, v2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lt/e;

    invoke-direct {v0, p0}, Lt/e;-><init>(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lt/g;

    const-string v0, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {p0, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1
    new-instance v0, Lt/b;

    invoke-direct {v0, p0}, Lt/b;-><init>(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lt/d;

    invoke-direct {v0, p0}, Lt/d;-><init>(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 30
    :cond_3
    new-instance v0, Lt/j;

    invoke-direct {v0, p0}, Lt/j;-><init>(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 31
    :cond_4
    new-instance v0, Lt/h;

    invoke-direct {v0, p0}, Lt/h;-><init>(Ljava/net/DatagramPacket;)V

    :goto_0
    return-object v0

    .line 32
    :cond_5
    new-instance p0, Lt/g;

    const-string v0, "Bad packet. Datagram data length is too short."

    invoke-direct {p0, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final a()Ljava/net/InetAddress;
    .locals 1

    .line 33
    iget-object v0, p0, Lt/f;->c:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 34
    iput p1, p0, Lt/f;->b:I

    return-void
.end method

.method public final a(Ljava/net/InetAddress;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lt/f;->c:Ljava/net/InetAddress;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lt/f;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lt/f;->a:I

    return v0
.end method

.method public abstract d()Ljava/net/DatagramPacket;
.end method
