.class public final Ln/g;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field public a:I

.field public b:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Ln/g;->b:Ljava/io/Writer;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ln/g;->a:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget v2, p0, Ln/g;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "\r\n"

    .line 10
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    :cond_2
    :goto_0
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget v3, p0, Ln/g;->a:I

    if-ne v3, v1, :cond_1

    .line 19
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Ln/g;->a:I

    .line 24
    iget-object v1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 25
    monitor-exit v0

    return-void

    .line 26
    :cond_2
    iput v2, p0, Ln/g;->a:I

    .line 27
    iget-object p1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 28
    monitor-exit v0

    return-void

    .line 30
    :cond_3
    iget p1, p0, Ln/g;->a:I

    if-eq p1, v2, :cond_4

    .line 31
    iget-object p1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 33
    :cond_4
    iget-object p1, p0, Ln/g;->b:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 34
    iput v1, p0, Ln/g;->a:I

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Ln/g;->write([C)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Ln/g;->write([CII)V

    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln/g;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 51
    :try_start_0
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ln/g;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    .line 53
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
