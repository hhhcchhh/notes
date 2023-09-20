.class public final Lu/b;
.super Lorg/apache/commons/net/a;
.source "SourceFile"


# static fields
.field public static final i:I = 0x25

.field public static final j:J = 0x83aa7e80L


# instance fields
.field public final g:[B

.field public final h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lu/b;->g:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lu/b;->h:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x25

    invoke-virtual {p0, p1, v1}, Lu/b;->b(Ljava/net/InetAddress;I)J

    move-result-wide v1

    const-wide v3, 0x83aa7e80L

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public a(Ljava/net/InetAddress;I)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lu/b;->b(Ljava/net/InetAddress;I)J

    move-result-wide p1

    const-wide v1, 0x83aa7e80L

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public b(Ljava/net/InetAddress;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    .line 13
    invoke-virtual {p0, p1, v0}, Lu/b;->b(Ljava/net/InetAddress;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/net/InetAddress;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lu/b;->g:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 3
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p2, p0, Lu/b;->h:[B

    array-length v1, p2

    invoke-direct {p1, p2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 5
    iget-object p2, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {p2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 6
    iget-object p2, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 9
    iget-object p1, p0, Lu/b;->h:[B

    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    const/4 p2, 0x1

    .line 10
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    int-to-long v4, p2

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 p2, 0x2

    .line 11
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    int-to-long v4, p2

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 p2, 0x3

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method
