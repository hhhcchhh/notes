.class public Lj/b;
.super Lorg/apache/commons/net/a;
.source "SourceFile"


# static fields
.field public static final h:I = 0x9


# instance fields
.field public g:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    .line 2
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a([BILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lj/b;->a([BILjava/net/InetAddress;I)V

    return-void
.end method

.method public a([BILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 2
    iget-object p1, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 3
    iget-object p1, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 4
    iget-object p1, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object p2, p0, Lj/b;->g:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public a([BLjava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    array-length v0, p1

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v0, p2, v1}, Lj/b;->a([BILjava/net/InetAddress;I)V

    return-void
.end method
