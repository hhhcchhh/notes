.class public final Lp/a;
.super Lorg/apache/commons/net/a;
.source "SourceFile"


# static fields
.field public static final h:I = 0x7b


# instance fields
.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lp/a;->g:I

    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;)Lp/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 34
    invoke-virtual {p0, p1, v0}, Lp/a;->a(Ljava/net/InetAddress;I)Lp/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/net/InetAddress;I)Lp/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/a;->i()V

    .line 6
    :cond_0
    new-instance v0, Lp/c;

    invoke-direct {v0}, Lp/c;-><init>()V

    const/4 v1, 0x3

    .line 7
    invoke-interface {v0, v1}, Lp/d;->d(I)V

    .line 8
    iget v1, p0, Lp/a;->g:I

    invoke-interface {v0, v1}, Lp/d;->a(I)V

    .line 9
    invoke-interface {v0}, Lp/d;->e()Ljava/net/DatagramPacket;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 13
    new-instance p1, Lp/c;

    invoke-direct {p1}, Lp/c;-><init>()V

    .line 14
    invoke-interface {p1}, Lp/d;->e()Ljava/net/DatagramPacket;

    move-result-object p2

    .line 22
    invoke-static {}, Lp/f;->a()Lp/f;

    move-result-object v2

    .line 26
    invoke-interface {v0, v2}, Lp/d;->c(Lp/f;)V

    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 29
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    new-instance p2, Lp/e;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Lp/e;-><init>(Lp/d;JZ)V

    return-object p2
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp/a;->g:I

    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lp/a;->g:I

    return v0
.end method
