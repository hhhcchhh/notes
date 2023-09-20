.class public Lorg/apache/commons/net/ftp/FTPHTTPClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "SourceFile"


# static fields
.field private static final CRLF:[B


# instance fields
.field private final base64:Lv/a;

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPassword:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUsername:Ljava/lang/String;

.field private tunnelHost:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 2
    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lv/a;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    .line 8
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    .line 9
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    return-void
.end method

.method private tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    const-string p1, "UTF-8"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 6
    sget-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 10
    iget-object p2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy-Authorization: Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lv/a;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lv/a;->l([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    :cond_0
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 22
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 24
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "HTTP/"

    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0xc

    if-lt p3, p4, :cond_4

    const/16 p3, 0x9

    .line 37
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "200"

    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "HTTPTunnelConnector: connection failed\r\nResponse received from the proxy:\r\n"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    .line 51
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid response from proxy: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No response from proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getDataConnectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->epsv()I

    move-result v1

    const/16 v4, 0xe5

    if-ne v1, v4, :cond_2

    .line 11
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    return-object v3

    .line 18
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    move-result v0

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_4

    return-object v3

    .line 21
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_2
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-direct {v1, v2, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassivePort()I

    move-result v5

    invoke-direct {p0, v0, v5, v2, v4}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    return-object v3

    .line 34
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 35
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    return-object v3

    :cond_6
    return-object v1

    .line 36
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only passive connection mode supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_()V

    return-void

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using port "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v1
.end method
