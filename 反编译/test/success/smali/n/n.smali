.class public final Ln/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    const/16 v0, 0x400

    .line 42
    invoke-static {p0, p1, v0}, Ln/n;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 41
    invoke-static/range {v0 .. v5}, Ln/n;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLn/e;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLn/e;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 40
    invoke-static/range {v0 .. v6}, Ln/n;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLn/e;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLn/e;Z)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    move-object v0, p1

    if-ltz p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    .line 1
    :goto_0
    new-array v7, v1, [B

    const-wide/16 v1, 0x0

    move-object v8, p0

    .line 5
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_6

    if-nez v4, :cond_3

    .line 12
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_3

    .line 16
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p6, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const-wide/16 v3, 0x1

    add-long v9, v1, v3

    if-eqz p5, :cond_5

    const/4 v4, 0x1

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    .line 22
    :try_start_1
    invoke-interface/range {v1 .. v6}, Ln/e;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 27
    :try_start_2
    invoke-virtual {p1, v7, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p6, :cond_4

    .line 29
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    int-to-long v5, v4

    add-long v9, v1, v5

    if-eqz p5, :cond_5

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    .line 33
    :try_start_3
    invoke-interface/range {v1 .. v6}, Ln/e;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide v1, v9

    goto :goto_4

    :cond_5
    :goto_2
    move-wide v1, v9

    goto :goto_1

    :cond_6
    :goto_3
    return-wide v1

    :catch_1
    move-exception v0

    .line 39
    :goto_4
    new-instance v3, Ln/d;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Ln/d;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method public static final a(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    const/16 v0, 0x400

    .line 78
    invoke-static {p0, p1, v0}, Ln/n;->a(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 77
    invoke-static/range {v0 .. v5}, Ln/n;->a(Ljava/io/Reader;Ljava/io/Writer;IJLn/e;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Ljava/io/Reader;Ljava/io/Writer;IJLn/e;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/d;
        }
    .end annotation

    move-object v0, p1

    if-ltz p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    .line 43
    :goto_0
    new-array v7, v1, [C

    const-wide/16 v1, 0x0

    move-object v8, p0

    .line 47
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_4

    if-nez v4, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 58
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x1

    add-long v9, v1, v5

    if-eqz p5, :cond_3

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    .line 61
    :try_start_1
    invoke-interface/range {v1 .. v6}, Ln/e;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 66
    :try_start_2
    invoke-virtual {p1, v7, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 67
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    int-to-long v5, v4

    add-long v9, v1, v5

    if-eqz p5, :cond_3

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    .line 70
    :try_start_3
    invoke-interface/range {v1 .. v6}, Ln/e;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide v1, v9

    goto :goto_4

    :cond_3
    :goto_2
    move-wide v1, v9

    goto :goto_1

    :cond_4
    :goto_3
    return-wide v1

    :catch_1
    move-exception v0

    .line 76
    :goto_4
    new-instance v3, Ln/d;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Ln/d;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
