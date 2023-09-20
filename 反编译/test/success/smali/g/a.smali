.class public Lg/a;
.super Lg/b;
.source "SourceFile"


# static fields
.field public static final e:I = 0x202

.field public static final f:I = 0x200

.field public static final g:I = 0x3ff


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/b;-><init>()V

    const/16 v0, 0x202

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3ff

    :goto_0
    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 17
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 19
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 22
    invoke-virtual {p0}, Lg/b;->isRemoteVerificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/j;->verifyRemote(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 25
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security violation: unexpected connection attempt by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    :goto_2
    new-instance v0, Ln/j;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln/j;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0

    .line 31
    :cond_3
    new-instance v0, Ljava/net/BindException;

    const-string v1, "All ports in use."

    invoke-direct {v0, v1}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public a(Ljava/lang/String;ILjava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lg/a;->a(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public a(Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/BindException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3ff

    :goto_0
    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 32
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v2, p1, p2, p3, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lt v0, v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->_connectAction_()V

    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/net/BindException;

    const-string p2, "All ports in use or insufficient permssion."

    invoke-direct {p1, p2}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lg/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg/a;->a(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-gt p4, v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/j;->connect(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid port number "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg/a;->a(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-gt p4, v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/j;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid port number "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
