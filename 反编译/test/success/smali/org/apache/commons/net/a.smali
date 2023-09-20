.class public abstract Lorg/apache/commons/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lorg/apache/commons/net/b;


# instance fields
.field public a:Ljava/nio/charset/Charset;

.field public b:I

.field public c:Ljava/net/DatagramSocket;

.field public d:Z

.field public e:Lorg/apache/commons/net/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/c;

    invoke-direct {v0}, Lorg/apache/commons/net/c;-><init>()V

    sput-object v0, Lorg/apache/commons/net/a;->f:Lorg/apache/commons/net/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/a;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/apache/commons/net/a;->b:I

    .line 26
    iput-boolean v0, p0, Lorg/apache/commons/net/a;->d:Z

    .line 27
    sget-object v0, Lorg/apache/commons/net/a;->f:Lorg/apache/commons/net/b;

    iput-object v0, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/apache/commons/net/a;->d:Z

    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/b;->a(I)Ljava/net/DatagramSocket;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    .line 2
    iget v0, p0, Lorg/apache/commons/net/a;->b:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/net/a;->d:Z

    return-void
.end method

.method public a(ILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/net/b;->a(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    .line 5
    iget p2, p0, Lorg/apache/commons/net/a;->b:I

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/net/a;->d:Z

    return-void
.end method

.method public a(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lorg/apache/commons/net/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public a(Lorg/apache/commons/net/b;)V
    .locals 0

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lorg/apache/commons/net/a;->f:Lorg/apache/commons/net/b;

    iput-object p1, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    :goto_0
    return-void
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/a;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/a;->b:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/a;->b:I

    return v0
.end method

.method public e()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/a;->d:Z

    return v0
.end method

.method public i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->e:Lorg/apache/commons/net/b;

    invoke-interface {v0}, Lorg/apache/commons/net/b;->a()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    .line 2
    iget v1, p0, Lorg/apache/commons/net/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/net/a;->d:Z

    return-void
.end method
