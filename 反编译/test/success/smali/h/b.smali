.class public final Lh/b;
.super Lorg/apache/commons/net/a;
.source "SourceFile"


# static fields
.field public static final j:I = 0xb

.field public static final k:I = 0xf

.field public static final l:I = 0x11

.field public static final m:I = 0x13

.field public static final n:I = 0x13


# instance fields
.field public final g:[B

.field public final h:Ljava/net/DatagramPacket;

.field public final i:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lh/b;->g:[B

    .line 4
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v2, p0, Lh/b;->h:Ljava/net/DatagramPacket;

    .line 5
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lh/b;->i:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    .line 4
    invoke-virtual {p0, p1, v0}, Lh/b;->a(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public a(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 2
    iget-object p1, p0, Lh/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object p2, p0, Lh/b;->i:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public j()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lh/b;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 3
    iget-object v0, p0, Lh/b;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lh/b;->g:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
