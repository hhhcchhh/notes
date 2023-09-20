.class public Lg/b;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final c:C = '\u0000'

.field public static final d:I = 0x200


# instance fields
.field public a:Z

.field public b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/b;->b:Ljava/io/InputStream;

    const/16 v0, 0x200

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 7
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 10
    iget-boolean v0, p0, Lg/b;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/j;->verifyRemote(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 13
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

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Ln/j;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln/j;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 19
    invoke-virtual {p0}, Lg/b;->a()Ljava/io/InputStream;

    move-result-object p4

    iput-object p4, p0, Lg/b;->b:Ljava/io/InputStream;

    goto :goto_0

    .line 23
    :cond_0
    iget-object p4, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 26
    :goto_0
    iget-object p4, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 27
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 28
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 30
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 31
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 32
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 34
    iget-object p1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-lez p1, :cond_2

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa

    if-eq p2, p3, :cond_1

    int-to-char p2, p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 42
    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-ltz p1, :cond_3

    return-void

    .line 44
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Server closed connection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/b;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lg/b;->b:Ljava/io/InputStream;

    .line 5
    invoke-super {p0}, Lorg/apache/commons/net/j;->disconnect()V

    return-void
.end method

.method public final isRemoteVerificationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/b;->a:Z

    return v0
.end method

.method public final setRemoteVerificationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/b;->a:Z

    return-void
.end method
