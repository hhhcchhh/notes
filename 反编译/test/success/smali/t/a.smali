.class public Lt/a;
.super Lorg/apache/commons/net/a;
.source "SourceFile"


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x1

.field public static final o:I = 0x1

.field public static final p:I = 0x1388

.field public static final q:I = 0x45

.field public static final r:I = 0x204


# instance fields
.field public g:[B

.field public h:Ljava/net/DatagramPacket;

.field public i:Ljava/net/DatagramPacket;

.field public j:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    const/16 v0, 0x1388

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/a;->b(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lt/a;->g:[B

    .line 4
    iput-object v0, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    return-void
.end method

.method public static final d(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lt/i;->m:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final a(Lt/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lt/a;->i:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lt/a;->j:[B

    invoke-virtual {p1, v1, v2}, Lt/f;->a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public final b(Lt/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lt/f;->d()Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public final j()V
    .locals 4

    const/16 v0, 0x204

    new-array v1, v0, [B

    .line 1
    iput-object v1, p0, Lt/a;->g:[B

    .line 2
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lt/a;->g:[B

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lt/a;->j:[B

    .line 5
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lt/a;->j:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lt/a;->i:Ljava/net/DatagramPacket;

    return-void
.end method

.method public final k()Lt/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lt/g;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lt/a;->g:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 2
    iget-object v0, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lt/a;->g:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 5
    iget-object v0, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    invoke-static {v0}, Lt/f;->a(Ljava/net/DatagramPacket;)Lt/f;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x204

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/a;->g()I

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/a;->c(I)V

    .line 9
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/a;->c(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lt/a;->g:[B

    .line 2
    iput-object v0, p0, Lt/a;->h:Ljava/net/DatagramPacket;

    .line 3
    iput-object v0, p0, Lt/a;->j:[B

    .line 4
    iput-object v0, p0, Lt/a;->i:Ljava/net/DatagramPacket;

    return-void
.end method

.method public final n()Lt/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lt/g;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x204

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 5
    invoke-static {v0}, Lt/f;->a(Ljava/net/DatagramPacket;)Lt/f;

    move-result-object v0

    return-object v0
.end method
