.class public Lch/ethz/ssh2/transport/ClientServerHello;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field client_line:Ljava/lang/String;

.field server_line:Ljava/lang/String;

.field server_versioncomment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-Ganymed Build_210"

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    const-string v0, "SSH-2.0-Ganymed Build_210\r\n"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    const/16 p2, 0x200

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x32

    const-string v3, "SSH-"

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lch/ethz/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v2

    .line 14
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v0, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    :goto_1
    iget-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string p2, "SSH-1.99-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    goto :goto_2

    .line 26
    :cond_1
    iget-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string p2, "SSH-2.0-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    :goto_2
    return-void

    .line 29
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Server uses incompatible protocol, it is not SSH-2 compatible."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Malformed server identification string. There was no line starting with \'SSH-\' amongst the first 50 lines."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final readLineRN(Ljava/io/InputStream;[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    .line 5
    aput-byte v5, p1, v0

    const/16 v0, 0xd

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v3, v0, :cond_1

    return v2

    :cond_1
    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 20
    array-length v0, p1

    if-ge v4, v0, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The server sent a too long line."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed line sent by the server, the line does not end correctly."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Premature connection close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public getClientString()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/ClientServerHello;->client_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getServerString()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
