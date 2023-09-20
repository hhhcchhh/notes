.class public Lt/c;
.super Lt/a;
.source "SourceFile"


# static fields
.field public static final t:I = 0x5


# instance fields
.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt/a;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lt/c;->s:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 367
    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string v4, "Connection timed out."

    .line 1
    new-instance v5, Lt/b;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lt/b;-><init>(Ljava/net/InetAddress;II)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lt/a;->j()V

    if-nez v0, :cond_0

    .line 9
    new-instance v7, Ln/i;

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Ln/i;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    move-object v7, v8

    .line 12
    :goto_0
    new-instance v8, Lt/h;

    move-object/from16 v9, p1

    invoke-direct {v8, v2, v3, v9, v0}, Lt/h;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 18
    :goto_1
    invoke-virtual {v1, v8}, Lt/a;->a(Lt/f;)V

    .line 27
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lt/a;->k()Lt/f;

    move-result-object v13
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lt/g; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v11, :cond_2

    .line 59
    invoke-virtual {v13}, Lt/f;->b()I

    move-result v3

    .line 60
    invoke-virtual {v5, v3}, Lt/f;->a(I)V

    .line 61
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 63
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v2

    .line 64
    invoke-virtual {v5, v2}, Lt/f;->a(Ljava/net/InetAddress;)V

    .line 65
    invoke-virtual {v8, v2}, Lt/f;->a(Ljava/net/InetAddress;)V

    .line 71
    :cond_2
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x5

    if-eqz v14, :cond_8

    invoke-virtual {v13}, Lt/f;->b()I

    move-result v14

    if-ne v14, v3, :cond_8

    .line 75
    invoke-virtual {v13}, Lt/f;->c()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    if-eq v10, v15, :cond_3

    .line 126
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received unexpected packet type."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    check-cast v13, Lt/e;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 130
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lt/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lt/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    check-cast v13, Lt/d;

    .line 134
    invoke-virtual {v13}, Lt/d;->g()I

    move-result v10

    .line 136
    invoke-virtual {v13}, Lt/d;->e()I

    move-result v14

    const v15, 0xffff

    if-ne v14, v12, :cond_6

    .line 142
    :try_start_1
    invoke-virtual {v13}, Lt/d;->f()[B

    move-result-object v8

    invoke-virtual {v13}, Lt/d;->h()I

    move-result v13

    invoke-virtual {v7, v8, v13, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    if-le v12, v15, :cond_5

    const/4 v12, 0x0

    .line 195
    :cond_5
    invoke-virtual {v5, v14}, Lt/b;->b(I)V

    add-int/2addr v9, v10

    move-object v8, v5

    move v11, v14

    goto :goto_3

    :catch_0
    move-exception v0

    .line 196
    new-instance v4, Lt/e;

    const-string v5, "File write failed."

    invoke-direct {v4, v2, v3, v11, v5}, Lt/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 199
    invoke-virtual {v1, v4}, Lt/a;->a(Lt/f;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 201
    throw v0

    .line 214
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lt/a;->l()V

    if-nez v12, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v15, v12, -0x1

    :goto_2
    move v11, v14

    if-ne v14, v15, :cond_1

    goto :goto_3

    .line 231
    :cond_8
    new-instance v14, Lt/e;

    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v13}, Lt/f;->b()I

    move-result v13

    const-string v0, "Unexpected host or port."

    invoke-direct {v14, v6, v13, v15, v0}, Lt/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 235
    invoke-virtual {v1, v14}, Lt/a;->a(Lt/f;)V

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 236
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 237
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad packet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :catch_2
    iget v0, v1, Lt/c;->s:I

    const/4 v6, 0x1

    if-ge v6, v0, :cond_9

    goto :goto_4

    .line 240
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 241
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    const/4 v6, 0x1

    .line 242
    iget v0, v1, Lt/c;->s:I

    if-ge v6, v0, :cond_b

    :goto_4
    const/16 v0, 0x200

    if-eq v10, v0, :cond_a

    .line 362
    invoke-virtual {v1, v8}, Lt/a;->a(Lt/f;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    return v9

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 364
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 365
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 725
    invoke-virtual/range {v0 .. v5}, Lt/c;->a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string v2, "Connection timed out."

    .line 369
    new-instance v10, Lt/d;

    iget-object v7, v1, Lt/a;->j:[B

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v3 .. v9}, Lt/d;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lt/a;->j()V

    if-nez v0, :cond_0

    .line 382
    new-instance v3, Ln/l;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ln/l;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    move-object v3, v4

    .line 385
    :goto_0
    new-instance v4, Lt/j;

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct {v4, v6, v7, v5, v0}, Lt/j;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 393
    :cond_1
    invoke-virtual {v1, v4}, Lt/a;->a(Lt/f;)V

    .line 405
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lt/a;->k()Lt/f;

    move-result-object v13
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lt/g; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    .line 440
    invoke-virtual {v13}, Lt/f;->b()I

    move-result v8

    .line 441
    invoke-virtual {v10, v8}, Lt/f;->a(I)V

    .line 442
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 444
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v6

    .line 445
    invoke-virtual {v10, v6}, Lt/f;->a(Ljava/net/InetAddress;)V

    .line 446
    invoke-virtual {v4, v6}, Lt/f;->a(Ljava/net/InetAddress;)V

    :cond_2
    move v9, v8

    const/4 v8, 0x0

    .line 452
    :cond_3
    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x5

    if-eqz v14, :cond_b

    invoke-virtual {v13}, Lt/f;->b()I

    move-result v14

    if-ne v14, v9, :cond_b

    .line 456
    invoke-virtual {v13}, Lt/f;->c()I

    move-result v14

    const/4 v5, 0x4

    if-eq v14, v5, :cond_5

    if-eq v14, v15, :cond_4

    .line 493
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 494
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received unexpected packet type."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_4
    check-cast v13, Lt/e;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 497
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lt/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lt/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_5
    check-cast v13, Lt/b;

    .line 502
    invoke-virtual {v13}, Lt/b;->e()I

    move-result v13

    if-ne v13, v11, :cond_a

    add-int/lit8 v11, v11, 0x1

    const v4, 0xffff

    if-le v11, v4, :cond_6

    const/4 v11, 0x0

    :cond_6
    if-eqz v12, :cond_7

    goto/16 :goto_5

    :cond_7
    const/16 v4, 0x200

    const/4 v7, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x4

    :goto_2
    if-lez v13, :cond_8

    .line 554
    iget-object v15, v1, Lt/a;->j:[B

    invoke-virtual {v3, v15, v14, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-lez v15, :cond_8

    add-int/2addr v14, v15

    sub-int/2addr v13, v15

    add-int/2addr v7, v15

    goto :goto_2

    :cond_8
    if-ge v7, v4, :cond_9

    const/4 v12, 0x1

    .line 566
    :cond_9
    invoke-virtual {v10, v11}, Lt/d;->b(I)V

    .line 567
    iget-object v4, v1, Lt/a;->j:[B

    invoke-virtual {v10, v4, v5, v7}, Lt/d;->a([BII)V

    move-object v4, v10

    goto :goto_3

    .line 568
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lt/a;->l()V

    goto/16 :goto_1

    .line 581
    :cond_b
    new-instance v5, Lt/e;

    invoke-virtual {v13}, Lt/f;->a()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13}, Lt/f;->b()I

    move-result v13

    const-string v0, "Unexpected host or port."

    invoke-direct {v5, v14, v13, v15, v0}, Lt/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 585
    invoke-virtual {v1, v5}, Lt/a;->a(Lt/f;)V

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 586
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 587
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad packet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :catch_1
    iget v0, v1, Lt/c;->s:I

    const/4 v5, 0x1

    if-ge v5, v0, :cond_c

    goto :goto_4

    .line 590
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 591
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    const/4 v5, 0x1

    .line 592
    iget v0, v1, Lt/c;->s:I

    if-ge v5, v0, :cond_d

    :goto_4
    if-gtz v7, :cond_1

    if-nez v12, :cond_1

    .line 721
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    return-void

    .line 722
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lt/a;->m()V

    .line 723
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    iput v0, p0, Lt/c;->s:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lt/c;->s:I

    :goto_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lt/c;->s:I

    return v0
.end method
