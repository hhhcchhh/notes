.class public final Ls/m;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ls/f;

.field public final b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ls/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls/m;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls/m;->c:Z

    .line 7
    iput-object p1, p0, Ls/m;->a:Ls/f;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/m;->a:Ls/f;

    invoke-virtual {v0}, Ls/f;->e()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/m;->a:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/m;->a:Ls/f;

    monitor-enter v0

    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 5
    :try_start_0
    iget-object v2, p0, Ls/m;->a:Ls/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ls/e;->m(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-boolean v2, p0, Ls/m;->c:Z

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, p0, Ls/m;->a:Ls/f;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ls/e;->n(I)V

    if-ne p1, v4, :cond_0

    .line 14
    iput-boolean v3, p0, Ls/m;->c:Z

    .line 15
    monitor-exit v0

    return-void

    .line 24
    :cond_0
    iput-boolean v3, p0, Ls/m;->c:Z

    const/16 v2, 0xd

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 37
    iget-object v1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {v1, p1}, Ls/e;->n(I)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {p1, v1}, Ls/e;->n(I)V

    .line 39
    iget-object p1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {p1, v1}, Ls/e;->n(I)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {p1, v2}, Ls/e;->n(I)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Ls/m;->c:Z

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 54
    iget-object v2, p0, Ls/m;->a:Ls/f;

    invoke-virtual {v2, p1}, Ls/e;->n(I)V

    .line 55
    iget-object p1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {p1, v1}, Ls/e;->n(I)V

    goto :goto_0

    .line 57
    :cond_4
    iget-object v1, p0, Ls/m;->a:Ls/f;

    invoke-virtual {v1, p1}, Ls/e;->n(I)V

    .line 59
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ls/m;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Ls/m;->a:Ls/f;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 64
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Ls/m;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
