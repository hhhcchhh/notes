.class public Ls/f;
.super Ls/e;
.source "SourceFile"


# instance fields
.field public B:Ljava/io/InputStream;

.field public C:Ljava/io/OutputStream;

.field public D:Z

.field public E:Ls/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "VT100"

    .line 1
    invoke-direct {p0, v0}, Ls/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls/f;->D:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ls/f;->B:Ljava/io/InputStream;

    .line 14
    iput-object v0, p0, Ls/f;->C:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ls/e;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Ls/f;->D:Z

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Ls/f;->B:Ljava/io/InputStream;

    .line 41
    iput-object p1, p0, Ls/f;->C:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls/b;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ls/e;->G(I)V

    return-void
.end method

.method public H(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->C(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public _connectAction_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ls/e;->_connectAction_()V

    .line 2
    new-instance v0, Ls/i;

    iget-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    iget-boolean v2, p0, Ls/f;->D:Z

    invoke-direct {v0, v1, p0, v2}, Ls/i;-><init>(Ljava/io/InputStream;Ls/f;Z)V

    .line 3
    iget-boolean v1, p0, Ls/f;->D:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ls/i;->a()V

    .line 13
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Ls/f;->B:Ljava/io/InputStream;

    .line 14
    new-instance v0, Ls/m;

    invoke-direct {v0, p0}, Ls/m;-><init>(Ls/f;)V

    iput-object v0, p0, Ls/f;->C:Ljava/io/OutputStream;

    return-void
.end method

.method public declared-synchronized a(Ls/h;)V
    .locals 0

    monitor-enter p0

    .line 4
    :try_start_0
    iput-object p1, p0, Ls/f;->E:Ls/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ls/j;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ls/e;->a(Ls/j;)V

    return-void
.end method

.method public a(Ls/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls/b;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ls/e;->a(Ls/l;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Ls/f;->D:Z

    return-void
.end method

.method public b(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Ls/e;->a(B)V

    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Ls/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public b([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ls/e;->a([I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zero length message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls/e;->a(J)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Ls/e;->d()V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/f;->B:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    :cond_0
    iget-object v0, p0, Ls/f;->C:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 7
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/j;->disconnect()V

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/f;->B:Ljava/io/InputStream;

    return-object v0
.end method

.method public h()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/f;->C:Ljava/io/OutputStream;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/f;->D:Z

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls/f;->E:Ls/h;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ls/h;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-super {p0}, Ls/e;->c()V

    return-void
.end method

.method public declared-synchronized l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Ls/f;->E:Ls/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
