.class public final Lt/e;
.super Lt/f;
.source "SourceFile"


# static fields
.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x7


# instance fields
.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt/g;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 10
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    .line 13
    invoke-virtual {p0}, Lt/f;->c()I

    move-result v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x2

    .line 17
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lt/e;->k:I

    if-lt p1, v2, :cond_1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    :goto_0
    if-ge v2, p1, :cond_0

    .line 26
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    int-to-char v3, v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt/e;->l:Ljava/lang/String;

    return-void

    .line 33
    :cond_1
    new-instance p1, Lt/g;

    const-string v0, "Bad error packet. No message."

    invoke-direct {p1, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    new-instance p1, Lt/g;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lt/g;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 3
    iput p3, p0, Lt/e;->k:I

    .line 4
    iput-object p4, p0, Lt/e;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5

    .line 1
    iget-object v0, p0, Lt/e;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    aput-byte v1, p2, v1

    .line 4
    iget v2, p0, Lt/f;->a:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p2, v3

    .line 5
    iget v2, p0, Lt/e;->k:I

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, p2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    .line 6
    aput-byte v2, p2, v3

    .line 8
    iget-object v2, p0, Lt/e;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    .line 10
    aput-byte v1, p2, v0

    .line 12
    iget-object v1, p0, Lt/f;->c:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 13
    iget v1, p0, Lt/f;->b:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 14
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 15
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public d()Ljava/net/DatagramPacket;
    .locals 7

    .line 1
    iget-object v0, p0, Lt/e;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    .line 3
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 4
    aput-byte v3, v2, v3

    .line 5
    iget v4, p0, Lt/f;->a:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 6
    iget v4, p0, Lt/e;->k:I

    const v5, 0xffff

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x3

    .line 7
    aput-byte v4, v2, v5

    .line 9
    iget-object v4, p0, Lt/e;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    .line 11
    aput-byte v3, v2, v0

    .line 13
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lt/f;->c:Ljava/net/InetAddress;

    iget v4, p0, Lt/f;->b:I

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lt/e;->k:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/e;->l:Ljava/lang/String;

    return-object v0
.end method
