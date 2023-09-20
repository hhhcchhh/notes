.class public Lch/ethz/ssh2/SCPClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/ethz/ssh2/SCPClient$LenNamePair;
    }
.end annotation


# instance fields
.field conn:Lch/ethz/ssh2/Connection;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/Connection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lch/ethz/ssh2/SCPClient;->conn:Lch/ethz/ssh2/Connection;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot accept null argument!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private get([Ljava/lang/String;[Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 3
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_5

    .line 6
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "scp -f"

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    const/4 p1, 0x0

    .line 26
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/SCPClient;->conn:Lch/ethz/ssh2/Connection;

    invoke-virtual {v1}, Lch/ethz/ssh2/Connection;->openSession()Lch/ethz/ssh2/Session;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lch/ethz/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/SCPClient;->receiveFiles(Lch/ethz/ssh2/Session;[Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 38
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error during SCP transfer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/io/IOException;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->close()V

    .line 44
    :cond_1
    throw p2

    .line 45
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of arguments does not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private parseCLine(Ljava/lang/String;)Lch/ethz/ssh2/SCPClient$LenNamePair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const-string v2, "Malformed C line sent by remote SCP binary."

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_4

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v3, p1, :cond_1

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 33
    new-instance p1, Lch/ethz/ssh2/SCPClient$LenNamePair;

    invoke-direct {p1, p0}, Lch/ethz/ssh2/SCPClient$LenNamePair;-><init>(Lch/ethz/ssh2/SCPClient;)V

    .line 34
    iput-wide v2, p1, Lch/ethz/ssh2/SCPClient$LenNamePair;->length:J

    .line 35
    iput-object v1, p1, Lch/ethz/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, illegal file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, cannot parse file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, line too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp sent illegal error code."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    .line 13
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated with error."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Remote scp terminated with error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveFiles(Lch/ethz/ssh2/Session;[Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, p2

    if-lt v4, v5, :cond_0

    return-void

    .line 15
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_7

    .line 19
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    const/16 v8, 0x43

    if-ne v5, v8, :cond_5

    .line 33
    invoke-direct {p0, v6}, Lch/ethz/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lch/ethz/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 40
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 43
    iget-wide v5, v5, Lch/ethz/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_2

    .line 65
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    int-to-long v7, v0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    const/16 v7, 0x2000

    goto :goto_3

    :cond_3
    long-to-int v7, v5

    .line 69
    :goto_3
    invoke-virtual {v3, v1, p1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_4

    .line 76
    aget-object v8, p2, v4

    invoke-virtual {v8, v1, p1, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_2

    .line 77
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    int-to-char v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private receiveFiles(Lch/ethz/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 83
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 84
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x0

    .line 89
    :goto_0
    array-length v5, p2

    if-lt v4, v5, :cond_0

    return-void

    .line 95
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_8

    .line 99
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_7

    const/16 v8, 0x43

    if-ne v5, v8, :cond_6

    .line 113
    invoke-direct {p0, v6}, Lch/ethz/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lch/ethz/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 120
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 121
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 123
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v5, Lch/ethz/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iget-wide v5, v5, Lch/ethz/ssh2/SCPClient$LenNamePair;->length:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-gtz v10, :cond_2

    .line 155
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 158
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 160
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 161
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    int-to-long v8, v0

    cmp-long v10, v5, v8

    if-lez v10, :cond_3

    const/16 v8, 0x2000

    goto :goto_3

    :cond_3
    long-to-int v8, v5

    .line 162
    :goto_3
    :try_start_2
    invoke-virtual {v3, v1, p1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_4

    .line 169
    invoke-virtual {v7, v1, p1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v8

    sub-long/2addr v5, v8

    goto :goto_2

    .line 170
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_5

    .line 181
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 182
    :cond_5
    throw p1

    .line 183
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    int-to-char p3, v5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private receiveLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-char v1, v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp sent a too long line"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private sendBytes(Lch/ethz/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-direct {p0, v1}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "C"

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    array-length v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 11
    invoke-direct {p0, v1}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 13
    array-length p1, p2

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 15
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 17
    invoke-direct {p0, v1}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const-string p1, "E\n"

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendFiles(Lch/ethz/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const v4, 0x9c40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const/16 v4, 0x200

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 6
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_0
    array-length v5, p2

    if-lt v4, v5, :cond_0

    const-string p1, "E\n"

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 63
    :cond_0
    new-instance v5, Ljava/io/File;

    aget-object v6, p2, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    if-eqz p3, :cond_1

    .line 68
    array-length v8, p3

    if-le v8, v4, :cond_1

    aget-object v8, p3, v4

    if-eqz v8, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 73
    :goto_1
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "C"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 76
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 84
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v5, v6, v9

    if-gtz v5, :cond_2

    .line 105
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 108
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 109
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 111
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    int-to-long v9, v0

    cmp-long v5, v6, v9

    if-lez v5, :cond_3

    const/16 v5, 0x2000

    goto :goto_3

    :cond_3
    long-to-int v5, v6

    .line 112
    :goto_3
    :try_start_1
    invoke-virtual {v8, v1, p1, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-ne v9, v5, :cond_4

    .line 115
    invoke-virtual {v2, v1, p1, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v9, v5

    sub-long/2addr v6, v9

    goto :goto_2

    .line 116
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Cannot read enough from local file "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_5

    .line 126
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 127
    :cond_5
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/io/OutputStream;

    aput-object p2, p1, v2

    .line 2
    invoke-direct {p0, v1, p1}, Lch/ethz/ssh2/SCPClient;->get([Ljava/lang/String;[Ljava/io/OutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, p2}, Lch/ethz/ssh2/SCPClient;->get([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 58
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "scp -f"

    const/4 v1, 0x0

    .line 63
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 78
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/SCPClient;->conn:Lch/ethz/ssh2/Connection;

    invoke-virtual {v2}, Lch/ethz/ssh2/Connection;->openSession()Lch/ethz/ssh2/Session;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lch/ethz/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v1, p1, p2}, Lch/ethz/ssh2/SCPClient;->receiveFiles(Lch/ethz/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Lch/ethz/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Error during SCP transfer."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Lch/ethz/ssh2/Session;->close()V

    .line 96
    :cond_1
    throw p1

    .line 97
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0600"

    .line 1
    invoke-virtual {p0, v0, p2, p1}, Lch/ethz/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lch/ethz/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 4
    invoke-virtual {p0, v1, p1, p3, p4}, Lch/ethz/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "0600"

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lch/ethz/ssh2/SCPClient;->put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 13
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "."

    .line 16
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "scp -t -d "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/SCPClient;->conn:Lch/ethz/ssh2/Connection;

    invoke-virtual {v1}, Lch/ethz/ssh2/Connection;->openSession()Lch/ethz/ssh2/Session;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p3}, Lch/ethz/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, v0, p1, p2, p4}, Lch/ethz/ssh2/SCPClient;->sendBytes(Lch/ethz/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v0}, Lch/ethz/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lch/ethz/ssh2/Session;->close()V

    .line 38
    :cond_1
    throw p1

    .line 39
    :cond_2
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "0600"

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lch/ethz/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0, p2, p3}, Lch/ethz/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    .line 44
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 51
    array-length v1, p1

    if-nez v1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, "."

    .line 57
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "scp -t -d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 59
    :goto_2
    array-length v1, p1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/SCPClient;->conn:Lch/ethz/ssh2/Connection;

    invoke-virtual {v1}, Lch/ethz/ssh2/Connection;->openSession()Lch/ethz/ssh2/Session;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p3}, Lch/ethz/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v0, p1, p2, p4}, Lch/ethz/ssh2/SCPClient;->sendFiles(Lch/ethz/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lch/ethz/ssh2/Session;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 79
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lch/ethz/ssh2/Session;->close()V

    .line 85
    :cond_2
    throw p1

    .line 86
    :cond_3
    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_5
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
