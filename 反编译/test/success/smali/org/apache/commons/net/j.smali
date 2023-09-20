.class public abstract Lorg/apache/commons/net/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x0

.field public static final NETASCII_EOL:Ljava/lang/String; = "\r\n"

.field private static final __DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

.field private static final __DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;


# instance fields
.field private __commandSupport:Lorg/apache/commons/net/i;

.field protected _defaultPort_:I

.field protected _input_:Ljava/io/InputStream;

.field protected _output_:Ljava/io/OutputStream;

.field protected _serverSocketFactory_:Ljavax/net/ServerSocketFactory;

.field protected _socketFactory_:Ljavax/net/SocketFactory;

.field protected _socket_:Ljava/net/Socket;

.field protected _timeout_:I

.field private charset:Ljava/nio/charset/Charset;

.field private connProxy:Ljava/net/Proxy;

.field protected connectTimeout:I

.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/j;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    .line 5
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/j;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lorg/apache/commons/net/j;->receiveBufferSize:I

    .line 8
    iput v1, p0, Lorg/apache/commons/net/j;->sendBufferSize:I

    .line 16
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/j;->charset:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 28
    iput-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 29
    iput-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    .line 30
    iput v0, p0, Lorg/apache/commons/net/j;->_timeout_:I

    .line 31
    iput v0, p0, Lorg/apache/commons/net/j;->_defaultPort_:I

    .line 32
    sget-object v0, Lorg/apache/commons/net/j;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 33
    sget-object v0, Lorg/apache/commons/net/j;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/j;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method public final a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/h;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/i;->a(Lorg/apache/commons/net/h;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget v0, p0, Lorg/apache/commons/net/j;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/j;->connect(Ljava/lang/String;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/j;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/j;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lorg/apache/commons/net/j;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/j;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 2
    iget v1, p0, Lorg/apache/commons/net/j;->receiveBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/j;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget p1, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->_connectAction_()V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 12
    iget v1, p0, Lorg/apache/commons/net/j;->receiveBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 15
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/j;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 16
    iget-object v1, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 18
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 19
    iget-object p3, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    new-instance p4, Ljava/net/InetSocketAddress;

    invoke-direct {p4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget p1, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    invoke-virtual {p3, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->_connectAction_()V

    return-void
.end method

.method public createCommandSupport()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/i;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/j;->__commandSupport:Lorg/apache/commons/net/i;

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->a(Ljava/net/Socket;)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->a(Ljava/io/Closeable;)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 6
    iput-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method public fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/i;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/i;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/i;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandSupport()Lorg/apache/commons/net/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->__commandSupport:Lorg/apache/commons/net/i;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    return v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/j;->_defaultPort_:I

    return v0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/j;->_timeout_:I

    return v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->connProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/j;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/j;->sendBufferSize:I

    return v0
.end method

.method public getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 13
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 19
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 22
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 26
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 27
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_6
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/h;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCommandSupport()Lorg/apache/commons/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/i;->b(Lorg/apache/commons/net/h;)V

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/j;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    return-void
.end method

.method public setDefaultPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/j;->_defaultPort_:I

    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/j;->_timeout_:I

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/d;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/d;-><init>(Ljava/net/Proxy;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/net/j;->connProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/apache/commons/net/j;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/apache/commons/net/j;->sendBufferSize:I

    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/apache/commons/net/j;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/j;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    :goto_0
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/apache/commons/net/j;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/j;->_socketFactory_:Ljavax/net/SocketFactory;

    :goto_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/net/j;->connProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public verifyRemote(Ljava/net/Socket;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
