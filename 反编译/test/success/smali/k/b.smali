.class public final Lk/b;
.super Lj/b;
.source "SourceFile"


# static fields
.field public static final j:I = 0x7


# instance fields
.field public final i:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj/b;-><init>()V

    .line 6
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lk/b;->i:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lk/b;->a([BI)I

    move-result p1

    return p1
.end method

.method public a([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lk/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 4
    iget-object p1, p0, Lk/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object p2, p0, Lk/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 6
    iget-object p1, p0, Lk/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    return p1
.end method

.method public a([BILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lj/b;->a([BILjava/net/InetAddress;I)V

    return-void
.end method

.method public a([BLjava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, p2, v1}, Lj/b;->a([BILjava/net/InetAddress;I)V

    return-void
.end method
