.class public final Lt/d;
.super Lt/f;
.source "SourceFile"


# static fields
.field public static final o:I = 0x200

.field public static final p:I


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:[B


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt/g;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 14
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lt/d;->n:[B

    const/4 v0, 0x4

    .line 15
    iput v0, p0, Lt/d;->m:I

    .line 17
    invoke-virtual {p0}, Lt/f;->c()I

    move-result v1

    iget-object v3, p0, Lt/d;->n:[B

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x2

    .line 21
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lt/d;->k:I

    .line 23
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lt/d;->l:I

    const/16 v0, 0x200

    if-le p1, v0, :cond_0

    .line 26
    iput v0, p0, Lt/d;->l:I

    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p1, Lt/g;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .locals 7

    .line 11
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lt/d;-><init>(Ljava/net/InetAddress;II[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 3
    iput p3, p0, Lt/d;->k:I

    .line 4
    iput-object p4, p0, Lt/d;->n:[B

    .line 5
    iput p5, p0, Lt/d;->m:I

    const/16 p1, 0x200

    if-le p6, p1, :cond_0

    .line 8
    iput p1, p0, Lt/d;->l:I

    goto :goto_0

    .line 10
    :cond_0
    iput p6, p0, Lt/d;->l:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    const/4 v0, 0x0

    .line 1
    aput-byte v0, p2, v0

    .line 2
    iget v0, p0, Lt/f;->a:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 3
    iget v0, p0, Lt/d;->k:I

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

    .line 7
    iget-object v0, p0, Lt/d;->n:[B

    const/4 v1, 0x4

    if-eq p2, v0, :cond_0

    .line 8
    iget v2, p0, Lt/d;->m:I

    iget v3, p0, Lt/d;->l:I

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_0
    iget-object v0, p0, Lt/f;->c:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 12
    iget v0, p0, Lt/f;->b:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 13
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 14
    iget p2, p0, Lt/d;->l:I

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public a([BII)V
    .locals 0

    .line 15
    iput-object p1, p0, Lt/d;->n:[B

    .line 16
    iput p2, p0, Lt/d;->m:I

    .line 17
    iput p3, p0, Lt/d;->l:I

    const/16 p1, 0x200

    if-le p3, p1, :cond_0

    .line 20
    iput p1, p0, Lt/d;->l:I

    goto :goto_0

    .line 22
    :cond_0
    iput p3, p0, Lt/d;->l:I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt/d;->k:I

    return-void
.end method

.method public d()Ljava/net/DatagramPacket;
    .locals 5

    .line 1
    iget v0, p0, Lt/d;->l:I

    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 2
    aput-byte v2, v1, v2

    .line 3
    iget v2, p0, Lt/f;->a:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 4
    iget v2, p0, Lt/d;->k:I

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    .line 5
    aput-byte v2, v1, v3

    .line 7
    iget-object v2, p0, Lt/d;->n:[B

    iget v3, p0, Lt/d;->m:I

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance v0, Ljava/net/DatagramPacket;

    iget v2, p0, Lt/d;->l:I

    add-int/2addr v2, v4

    iget-object v3, p0, Lt/f;->c:Ljava/net/InetAddress;

    iget v4, p0, Lt/f;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lt/d;->k:I

    return v0
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lt/d;->n:[B

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lt/d;->l:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lt/d;->m:I

    return v0
.end method
