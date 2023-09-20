.class public final Ln/f;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# static fields
.field public static final d:C = '\n'

.field public static final e:C = '\r'

.field public static final f:I = 0x2e


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ln/f;->a:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Ln/f;->b:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Ln/f;->b:Z

    if-nez v1, :cond_0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ln/f;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Ln/f;->b:Z

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Ln/f;->a:Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln/f;->b:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 7
    iput-boolean v3, p0, Ln/f;->b:Z

    .line 8
    monitor-exit v0

    return v2

    .line 10
    :cond_1
    iget-boolean v4, p0, Ln/f;->a:Z

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 11
    iput-boolean v7, p0, Ln/f;->a:Z

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_6

    const/4 v1, 0x2

    .line 13
    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    .line 14
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 17
    iput-boolean v3, p0, Ln/f;->b:Z

    .line 18
    monitor-exit v0

    return v4

    :cond_2
    if-ne v1, v4, :cond_3

    .line 22
    monitor-exit v0

    return v1

    :cond_3
    if-ne v1, v6, :cond_5

    .line 25
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 28
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 29
    monitor-exit v0

    return v4

    :cond_4
    if-ne v1, v5, :cond_5

    .line 32
    iput-boolean v3, p0, Ln/f;->a:Z

    .line 33
    iput-boolean v3, p0, Ln/f;->b:Z

    .line 35
    monitor-exit v0

    return v2

    .line 40
    :cond_5
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 41
    monitor-exit v0

    return v4

    .line 46
    :cond_6
    iget-boolean v2, p0, Ln/f;->c:Z

    if-eqz v2, :cond_7

    .line 47
    iput-boolean v7, p0, Ln/f;->c:Z

    if-ne v1, v5, :cond_7

    .line 49
    iput-boolean v3, p0, Ln/f;->a:Z

    :cond_7
    if-ne v1, v6, :cond_8

    .line 53
    iput-boolean v3, p0, Ln/f;->c:Z

    .line 55
    :cond_8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln/f;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ln/f;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 62
    monitor-exit v0

    return v2

    :cond_1
    move v3, p2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    int-to-char v1, v1

    .line 69
    aput-char v1, p1, v3

    add-int/2addr p3, v2

    if-lez p3, :cond_3

    .line 71
    invoke-virtual {p0}, Ln/f;->read()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    sub-int/2addr v4, p2

    .line 73
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ln/f;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 6
    iget-boolean v3, p0, Ln/f;->a:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    int-to-char v2, v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
