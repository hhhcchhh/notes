.class public final Lt/b;
.super Lt/f;
.source "SourceFile"


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt/g;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 7
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lt/f;->c()I

    move-result v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 13
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lt/b;->k:I

    return-void

    .line 14
    :cond_0
    new-instance p1, Lt/g;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 2
    iput p3, p0, Lt/b;->k:I

    return-void
.end method


# virtual methods
.method public a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 3

    const/4 v0, 0x0

    .line 1
    aput-byte v0, p2, v0

    .line 2
    iget v0, p0, Lt/f;->a:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 3
    iget v0, p0, Lt/b;->k:I

    const v1, 0xffff

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, p2, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 4
    aput-byte v0, p2, v1

    .line 6
    iget-object v0, p0, Lt/f;->c:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 7
    iget v0, p0, Lt/f;->b:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt/b;->k:I

    return-void
.end method

.method public d()Ljava/net/DatagramPacket;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 3
    iget v2, p0, Lt/f;->a:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 4
    iget v2, p0, Lt/b;->k:I

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 7
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lt/f;->c:Ljava/net/InetAddress;

    iget v4, p0, Lt/f;->b:I

    invoke-direct {v2, v1, v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lt/b;->k:I

    return v0
.end method
