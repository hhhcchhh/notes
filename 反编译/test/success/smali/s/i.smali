.class public final Ls/i;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final o:I = -0x1

.field public static final p:I = -0x2

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0x4

.field public static final v:I = 0x5

.field public static final w:I = 0x6

.field public static final x:I = 0x7

.field public static final y:I = 0x8

.field public static final z:I = 0x9


# instance fields
.field public a:Z

.field public volatile b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:[I

.field public final i:Ls/f;

.field public final j:Ljava/lang/Thread;

.field public k:Ljava/io/IOException;

.field public final l:[I

.field public m:I

.field public volatile n:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ls/f;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, p2, v0}, Ls/i;-><init>(Ljava/io/InputStream;Ls/f;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ls/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x200

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Ls/i;->l:[I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ls/i;->m:I

    .line 12
    iput-object p2, p0, Ls/i;->i:Ls/f;

    .line 13
    iput p1, p0, Ls/i;->d:I

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Ls/i;->b:Z

    .line 15
    iput-boolean p1, p0, Ls/i;->a:Z

    const/16 p2, 0x801

    new-array p2, p2, [I

    .line 18
    iput-object p2, p0, Ls/i;->h:[I

    .line 19
    iput p1, p0, Ls/i;->e:I

    .line 20
    iput p1, p0, Ls/i;->f:I

    .line 21
    iput p1, p0, Ls/i;->g:I

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Ls/i;->k:Ljava/io/IOException;

    .line 23
    iput-boolean p1, p0, Ls/i;->c:Z

    .line 24
    iput-boolean p1, p0, Ls/i;->n:Z

    if-eqz p3, :cond_0

    .line 26
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ls/i;->j:Ljava/lang/Thread;

    goto :goto_0

    .line 28
    :cond_0
    iput-object p2, p0, Ls/i;->j:Ljava/lang/Thread;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_0

    .line 19
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 24
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 31
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2}, Ls/e;->a()V

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 38
    iget-object v1, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v1, v0}, Ls/e;->A(I)V

    .line 41
    iget v1, p0, Ls/i;->d:I

    const/16 v2, 0xf0

    const/4 v3, 0x6

    const/16 v4, 0xff

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    iget v1, p0, Ls/i;->m:I

    iget-object v2, p0, Ls/i;->l:[I

    array-length v4, v2

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 173
    iput v4, p0, Ls/i;->m:I

    aput v0, v2, v1

    .line 179
    :cond_3
    :goto_1
    iput v3, p0, Ls/i;->d:I

    goto :goto_0

    .line 180
    :cond_4
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 182
    :try_start_1
    iget-object v0, p0, Ls/i;->i:Ls/f;

    iget-object v2, p0, Ls/i;->l:[I

    iget v3, p0, Ls/i;->m:I

    invoke-virtual {v0, v2, v3}, Ls/e;->a([II)V

    .line 183
    iget-object v0, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    .line 184
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    iput v5, p0, Ls/i;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 186
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :pswitch_2
    if-nez v0, :cond_8

    goto :goto_0

    :pswitch_3
    if-eq v0, v4, :cond_6

    .line 187
    iget v1, p0, Ls/i;->m:I

    iget-object v2, p0, Ls/i;->l:[I

    array-length v4, v2

    if-ge v1, v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 188
    iput v4, p0, Ls/i;->m:I

    aput v0, v2, v1

    .line 192
    :cond_5
    iput v3, p0, Ls/i;->d:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    .line 193
    iput v0, p0, Ls/i;->d:I

    goto :goto_0

    .line 194
    :pswitch_4
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 196
    :try_start_3
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2, v0}, Ls/e;->c(I)V

    .line 197
    iget-object v0, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    .line 198
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    iput v5, p0, Ls/i;->d:I

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 200
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 201
    :pswitch_5
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 203
    :try_start_5
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2, v0}, Ls/e;->b(I)V

    .line 204
    iget-object v0, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    .line 205
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 206
    iput v5, p0, Ls/i;->d:I

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    .line 207
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 208
    :pswitch_6
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 210
    :try_start_7
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2, v0}, Ls/e;->e(I)V

    .line 211
    iget-object v0, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    .line 212
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 213
    iput v5, p0, Ls/i;->d:I

    goto/16 :goto_0

    :catchall_3
    move-exception p1

    .line 214
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    .line 215
    :pswitch_7
    iget-object v1, p0, Ls/i;->i:Ls/f;

    monitor-enter v1

    .line 217
    :try_start_9
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2, v0}, Ls/e;->d(I)V

    .line 218
    iget-object v0, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v0}, Ls/f;->f()V

    .line 219
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 220
    iput v5, p0, Ls/i;->d:I

    goto/16 :goto_0

    :catchall_4
    move-exception p1

    .line 221
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p1

    :pswitch_8
    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_1

    .line 222
    iput v5, p0, Ls/i;->d:I

    .line 223
    iget-object v1, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v1, v0}, Ls/e;->a(I)V

    goto/16 :goto_0

    .line 224
    :pswitch_9
    iput v5, p0, Ls/i;->d:I

    goto :goto_3

    :pswitch_a
    const/4 v0, 0x5

    .line 225
    iput v0, p0, Ls/i;->d:I

    goto/16 :goto_0

    :pswitch_b
    const/4 v0, 0x4

    .line 226
    iput v0, p0, Ls/i;->d:I

    goto/16 :goto_0

    :pswitch_c
    const/4 v0, 0x3

    .line 227
    iput v0, p0, Ls/i;->d:I

    goto/16 :goto_0

    :pswitch_d
    const/4 v0, 0x2

    .line 228
    iput v0, p0, Ls/i;->d:I

    goto/16 :goto_0

    .line 241
    :pswitch_e
    iput v5, p0, Ls/i;->m:I

    .line 242
    iput v3, p0, Ls/i;->d:I

    goto/16 :goto_0

    .line 249
    :cond_7
    iput v5, p0, Ls/i;->d:I

    goto/16 :goto_0

    :cond_8
    :pswitch_f
    if-ne v0, v4, :cond_9

    const/4 v0, 0x1

    .line 250
    iput v0, p0, Ls/i;->d:I

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0xd

    if-ne v0, p1, :cond_b

    .line 257
    iget-object p1, p0, Ls/i;->i:Ls/f;

    monitor-enter p1

    .line 259
    :try_start_b
    iget-object v1, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v1, v5}, Ls/e;->k(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    .line 260
    iput v1, p0, Ls/i;->d:I

    goto :goto_2

    .line 262
    :cond_a
    iput v5, p0, Ls/i;->d:I

    .line 264
    :goto_2
    monitor-exit p1

    goto :goto_3

    :catchall_5
    move-exception v0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 266
    :cond_b
    iput v5, p0, Ls/i;->d:I

    :goto_3
    return v0

    :catchall_6
    move-exception p1

    .line 267
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls/i;->j:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ls/i;->b:Z

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    const/16 v0, 0xa

    .line 15
    :cond_1
    iget-object v2, p0, Ls/i;->j:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 16
    iget-object v0, p0, Ls/i;->j:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 17
    iget-object v0, p0, Ls/i;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    iput-boolean v1, p0, Ls/i;->n:Z

    return-void
.end method

.method public final a(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ls/i;->h:[I

    monitor-enter v0

    .line 270
    :try_start_0
    iget v1, p0, Ls/i;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 271
    :goto_0
    iget v4, p0, Ls/i;->g:I

    iget-object v5, p0, Ls/i;->h:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_2

    .line 275
    iget-boolean v4, p0, Ls/i;->n:Z

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Ls/i;->h:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    iget-object v4, p0, Ls/i;->h:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    :try_start_2
    throw p1

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue is full! Cannot process another character."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_2
    iget-boolean v4, p0, Ls/i;->c:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Ls/i;->n:Z

    if-eqz v4, :cond_3

    .line 298
    iget-object v4, p0, Ls/i;->h:[I

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 301
    :cond_3
    iget-object v4, p0, Ls/i;->h:[I

    iget v5, p0, Ls/i;->f:I

    aput p1, v4, v5

    .line 302
    iget p1, p0, Ls/i;->g:I

    add-int/2addr p1, v3

    iput p1, p0, Ls/i;->g:I

    add-int/2addr v5, v3

    .line 304
    iput v5, p0, Ls/i;->f:I

    array-length p1, v4

    if-lt v5, p1, :cond_4

    .line 305
    iput v2, p0, Ls/i;->f:I

    .line 307
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/i;->h:[I

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Ls/i;->n:Z

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Ls/i;->g:I

    monitor-exit v0

    return v1

    .line 6
    :cond_0
    iget v1, p0, Ls/i;->g:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 3
    iget-object v0, p0, Ls/i;->h:[I

    monitor-enter v0

    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Ls/i;->a:Z

    .line 6
    iput-boolean v1, p0, Ls/i;->b:Z

    .line 8
    iget-object v1, p0, Ls/i;->j:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Ls/i;->j:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    :cond_0
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/i;->h:[I

    monitor-enter v0

    .line 6
    :goto_0
    :try_start_0
    iget-object v1, p0, Ls/i;->k:Ljava/io/IOException;

    if-nez v1, :cond_9

    .line 14
    iget v1, p0, Ls/i;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 17
    iget-boolean v1, p0, Ls/i;->a:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 18
    monitor-exit v0

    return v4

    .line 22
    :cond_0
    iget-boolean v1, p0, Ls/i;->n:Z

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iput-boolean v3, p0, Ls/i;->c:Z

    .line 28
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 29
    iput-boolean v2, p0, Ls/i;->c:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 33
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "Fatal thread interruption during read."

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_1
    iput-boolean v3, p0, Ls/i;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    .line 47
    :goto_1
    :try_start_3
    invoke-virtual {p0, v1}, Ls/i;->a(Z)I

    move-result v1
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, -0x2

    if-gez v1, :cond_2

    if-eq v1, v5, :cond_2

    .line 49
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    :cond_2
    if-eq v1, v5, :cond_3

    .line 75
    :try_start_5
    invoke-virtual {p0, v1}, Ls/i;->a(I)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 80
    :catch_1
    :try_start_6
    iget-boolean v1, p0, Ls/i;->b:Z

    if-eqz v1, :cond_3

    .line 81
    monitor-exit v0

    return v4

    .line 91
    :cond_3
    :goto_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Ls/i;->g:I

    iget-object v5, p0, Ls/i;->h:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v1, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 93
    :cond_5
    :goto_3
    iput-boolean v2, p0, Ls/i;->c:Z

    goto :goto_0

    :catch_2
    move-exception v1

    .line 94
    iget-object v2, p0, Ls/i;->h:[I

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 96
    :try_start_7
    iput-object v1, p0, Ls/i;->k:Ljava/io/IOException;

    .line 97
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 100
    :try_start_8
    iget-object v1, p0, Ls/i;->h:[I

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 105
    :catch_3
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 106
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v4

    :catchall_0
    move-exception v1

    .line 107
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1

    .line 142
    :cond_6
    iget-object v4, p0, Ls/i;->h:[I

    iget v5, p0, Ls/i;->e:I

    aget v6, v4, v5

    add-int/2addr v5, v3

    .line 144
    iput v5, p0, Ls/i;->e:I

    array-length v4, v4

    if-lt v5, v4, :cond_7

    .line 145
    iput v2, p0, Ls/i;->e:I

    :cond_7
    sub-int/2addr v1, v3

    .line 148
    iput v1, p0, Ls/i;->g:I

    if-nez v1, :cond_8

    .line 151
    iget-boolean v1, p0, Ls/i;->n:Z

    if-eqz v1, :cond_8

    .line 152
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 155
    :cond_8
    monitor-exit v0

    return v6

    :cond_9
    const/4 v2, 0x0

    .line 156
    iput-object v2, p0, Ls/i;->k:Ljava/io/IOException;

    .line 157
    throw v1

    :catchall_1
    move-exception v1

    .line 263
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ls/i;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_0
    iget-object v0, p0, Ls/i;->h:[I

    monitor-enter v0

    .line 267
    :try_start_0
    iget v1, p0, Ls/i;->g:I

    if-le p3, v1, :cond_1

    move p3, v1

    .line 270
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p0}, Ls/i;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 280
    aput-byte v0, p1, v2

    add-int/2addr p3, v1

    if-lez p3, :cond_4

    .line 282
    invoke-virtual {p0}, Ls/i;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    sub-int/2addr v3, p2

    return v3

    :catchall_0
    move-exception p1

    .line 283
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public run()V
    .locals 6

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-boolean v2, p0, Ls/i;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v2, :cond_4

    .line 5
    :try_start_1
    invoke-virtual {p0, v1}, Ls/i;->a(Z)I

    move-result v2
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-gez v2, :cond_1

    goto :goto_3

    .line 41
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ls/i;->a(I)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 45
    :catch_0
    :try_start_3
    iget-boolean v2, p0, Ls/i;->b:Z

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2}, Ls/f;->j()V

    goto :goto_0

    .line 53
    :catch_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v2

    .line 54
    iget-object v3, p0, Ls/i;->h:[I

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 56
    :try_start_4
    iput-object v2, p0, Ls/i;->k:Ljava/io/IOException;

    .line 57
    iget-object v2, p0, Ls/i;->h:[I

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    :try_start_5
    iget-object v2, p0, Ls/i;->h:[I

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 64
    :catch_3
    :try_start_6
    iget-boolean v2, p0, Ls/i;->b:Z

    if-eqz v2, :cond_3

    .line 65
    monitor-exit v3

    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 69
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v2

    .line 101
    iget-object v3, p0, Ls/i;->h:[I

    monitor-enter v3

    .line 103
    :try_start_8
    iput-object v2, p0, Ls/i;->k:Ljava/io/IOException;

    .line 104
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 105
    iget-object v2, p0, Ls/i;->i:Ls/f;

    invoke-virtual {v2}, Ls/f;->j()V

    .line 108
    :cond_4
    :goto_3
    iget-object v2, p0, Ls/i;->h:[I

    monitor-enter v2

    .line 110
    :try_start_9
    iput-boolean v1, p0, Ls/i;->b:Z

    .line 111
    iput-boolean v1, p0, Ls/i;->a:Z

    .line 112
    iget-object v1, p0, Ls/i;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 113
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 115
    iput-boolean v0, p0, Ls/i;->n:Z

    return-void

    :catchall_1
    move-exception v0

    .line 116
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 117
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
