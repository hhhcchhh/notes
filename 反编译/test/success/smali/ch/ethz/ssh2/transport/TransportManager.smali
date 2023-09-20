.class public Lch/ethz/ssh2/transport/TransportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;,
        Lch/ethz/ssh2/transport/TransportManager$AsynchronousWorker;
    }
.end annotation


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field private final asynchronousQueue:Ljava/util/Vector;

.field private asynchronousThread:Ljava/lang/Thread;

.field connectionClosed:Z

.field connectionMonitors:Ljava/util/Vector;

.field connectionSemaphore:Ljava/lang/Object;

.field flagKexOngoing:Z

.field hostname:Ljava/lang/String;

.field km:Lch/ethz/ssh2/transport/KexManager;

.field messageHandlers:Ljava/util/Vector;

.field monitorsWereInformed:Z

.field port:I

.field reasonClosedCause:Ljava/lang/Throwable;

.field receiveThread:Ljava/lang/Thread;

.field final sock:Ljava/net/Socket;

.field tc:Lch/ethz/ssh2/transport/TransportConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/transport/TransportManager;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/transport/TransportManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/transport/TransportManager;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-static {v0}, Lch/ethz/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lch/ethz/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lch/ethz/ssh2/transport/TransportManager;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 64
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 69
    iput-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 71
    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 81
    iput-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 146
    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 147
    iput p2, p0, Lch/ethz/ssh2/transport/TransportManager;->port:I

    return-void
.end method

.method public static synthetic access$0(Lch/ethz/ssh2/transport/TransportManager;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object p0
.end method

.method public static synthetic access$1(Lch/ethz/ssh2/transport/TransportManager;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic access$2()Lch/ethz/ssh2/log/Logger;
    .locals 1

    .line 1
    sget-object v0, Lch/ethz/ssh2/transport/TransportManager;->log:Lch/ethz/ssh2/log/Logger;

    return-object v0
.end method

.method private createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/transport/TransportManager;->parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method private establishConnection(Lch/ethz/ssh2/ProxyData;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/ethz/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lch/ethz/ssh2/transport/TransportManager;->port:I

    invoke-direct {v2, p1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 3
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void

    .line 7
    :cond_0
    instance-of v1, p1, Lch/ethz/ssh2/HTTPProxyData;

    if-eqz v1, :cond_a

    .line 9
    check-cast p1, Lch/ethz/ssh2/HTTPProxyData;

    .line 13
    iget-object v1, p1, Lch/ethz/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/ethz/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, p1, Lch/ethz/ssh2/HTTPProxyData;->proxyPort:I

    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 15
    iget-object p2, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 19
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "CONNECT "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    iget v1, p0, Lch/ethz/ssh2/transport/TransportManager;->port:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " HTTP/1.0\r\n"

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object v1, p1, Lch/ethz/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    const-string v2, "\r\n"

    if-eqz v1, :cond_1

    iget-object v3, p1, Lch/ethz/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 29
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p1, Lch/ethz/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lch/ethz/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v1

    const-string v3, "Proxy-Authorization: Basic "

    .line 31
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_1
    iget-object v1, p1, Lch/ethz/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v3, p1, Lch/ethz/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    array-length v4, v3

    if-lt v1, v4, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_4
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 53
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 58
    iget-object p2, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 60
    invoke-static {p2, p1}, Lch/ethz/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v1

    .line 62
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "HTTP/"

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "The proxy did not send back a valid HTTP response."

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_8

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_8

    const/16 v3, 0x9

    .line 76
    :try_start_0
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_7

    const/16 v3, 0x3e7

    if-gt v0, v3, :cond_7

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 95
    :cond_5
    invoke-static {p2, p1}, Lch/ethz/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 96
    :cond_6
    new-instance p1, Lch/ethz/ssh2/HTTPProxyException;

    const/16 p2, 0xd

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lch/ethz/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 97
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :catch_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported ProxyData"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 1
    invoke-static {p1, v1}, Lch/ethz/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    new-array v2, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_2

    .line 32
    invoke-static {p1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 33
    :cond_2
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 36
    :goto_1
    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v6, v8, :cond_5

    const/16 v6, 0xff

    if-le v7, v6, :cond_4

    return-object v0

    :cond_4
    int-to-byte v6, v7

    .line 50
    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    :cond_5
    aget-object v8, v1, v5

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_7

    const/16 v9, 0x39

    if-le v8, v9, :cond_6

    goto :goto_2

    :cond_6
    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0
.end method


# virtual methods
.method public changeRecvCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/transport/TransportConnection;->changeRecvCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V

    return-void
.end method

.method public changeSendCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/transport/TransportConnection;->changeSendCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_1
    iget-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 21
    :try_start_2
    new-instance p2, Lch/ethz/ssh2/packets/PacketDisconnect;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const/16 v4, 0xb

    invoke-direct {p2, v4, v1, v3}, Lch/ethz/ssh2/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketDisconnect;->getPayload()[B

    move-result-object p2

    .line 23
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1, p2}, Lch/ethz/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :catch_1
    :cond_1
    :try_start_3
    iget-object p2, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :catch_2
    :cond_2
    :try_start_4
    iput-boolean v2, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 40
    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 42
    :cond_3
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    monitor-enter p0

    .line 86
    :try_start_5
    iget-boolean p1, p0, Lch/ethz/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    if-nez p1, :cond_4

    .line 88
    iput-boolean v2, p0, Lch/ethz/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 89
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 90
    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p2, v0, :cond_5

    goto :goto_2

    .line 110
    :cond_5
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/ssh2/ConnectionMonitor;

    .line 111
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lch/ethz/ssh2/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 112
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 113
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public forceKeyExchange(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/DHGexParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/transport/KexManager;->initiateKEX(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/DHGexParameters;)V

    return-void
.end method

.method public getConnectionInfo(I)Lch/ethz/ssh2/ConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/transport/KexManager;->getOrWaitForConnectionInfo(I)Lch/ethz/ssh2/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    invoke-virtual {v0}, Lch/ethz/ssh2/transport/TransportConnection;->getPacketOverheadEstimate()I

    move-result v0

    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexManager;->sessionId:[B

    return-object v0
.end method

.method public initialize(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/ServerHostKeyVerifier;Lch/ethz/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lch/ethz/ssh2/ProxyData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6, p4}, Lch/ethz/ssh2/transport/TransportManager;->establishConnection(Lch/ethz/ssh2/ProxyData;I)V

    .line 8
    new-instance v2, Lch/ethz/ssh2/transport/ClientServerHello;

    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    iget-object p6, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p6

    invoke-direct {v2, p4, p6}, Lch/ethz/ssh2/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 10
    new-instance p4, Lch/ethz/ssh2/transport/TransportConnection;

    iget-object p6, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p6

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p4, p6, v0, p5}, Lch/ethz/ssh2/transport/TransportConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    .line 12
    new-instance p4, Lch/ethz/ssh2/transport/KexManager;

    iget-object v4, p0, Lch/ethz/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lch/ethz/ssh2/transport/TransportManager;->port:I

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lch/ethz/ssh2/transport/KexManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;Lch/ethz/ssh2/transport/ClientServerHello;Lch/ethz/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILch/ethz/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    .line 13
    invoke-virtual {p4, p1, p3}, Lch/ethz/ssh2/transport/KexManager;->initiateKEX(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/DHGexParameters;)V

    .line 15
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lch/ethz/ssh2/transport/TransportManager$1;

    invoke-direct {p2, p0}, Lch/ethz/ssh2/transport/TransportManager$1;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 62
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public kexFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveLoop()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x88b8

    new-array v1, v0, [B

    .line 5
    :cond_0
    :goto_0
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lch/ethz/ssh2/transport/TransportConnection;->receiveMessage([BII)I

    move-result v2

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    const/16 v7, 0x7e

    const v8, 0xfffd

    const/16 v9, 0x20

    const-string v10, "UTF-8"

    if-ne v4, v6, :cond_4

    .line 14
    sget-object v4, Lch/ethz/ssh2/transport/TransportManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    new-instance v4, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v4, v1, v3, v2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 17
    invoke-virtual {v4}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 18
    invoke-virtual {v4}, Lch/ethz/ssh2/packets/TypesReader;->readBoolean()Z

    .line 19
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    invoke-virtual {v4, v10}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 31
    sget-object v3, Lch/ethz/ssh2/transport/TransportManager;->log:Lch/ethz/ssh2/log/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "DEBUG Message from remote: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_3

    if-gt v4, v7, :cond_3

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v2, v3, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    if-eq v4, v6, :cond_e

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 51
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, v1, v3, v2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 52
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 53
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 54
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    invoke-virtual {v0, v10}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 64
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const/16 v0, 0xfe

    const/16 v4, 0x2e

    .line 65
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/16 v0, 0xfd

    .line 66
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/16 v0, 0xfc

    .line 67
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 77
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-lt v0, v9, :cond_6

    if-gt v0, v7, :cond_6

    goto :goto_4

    .line 83
    :cond_6
    invoke-virtual {v2, v3, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 86
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Peer sent DISCONNECT message (reason code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v5, 0x14

    if-eq v4, v5, :cond_d

    const/16 v5, 0x15

    if-eq v4, v5, :cond_d

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_9

    const/16 v5, 0x31

    if-gt v4, v5, :cond_9

    goto :goto_7

    .line 105
    :cond_9
    :goto_5
    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_a

    const/4 v3, 0x0

    goto :goto_6

    .line 107
    :cond_a
    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;

    .line 108
    iget v6, v5, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-gt v6, v4, :cond_c

    iget v6, v5, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-gt v4, v6, :cond_c

    .line 110
    iget-object v3, v5, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->mh:Lch/ethz/ssh2/transport/MessageHandler;

    :goto_6
    if-eqz v3, :cond_b

    .line 118
    invoke-interface {v3, v1, v2}, Lch/ethz/ssh2/transport/MessageHandler;->handleMessage([BI)V

    goto/16 :goto_0

    .line 119
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 120
    :cond_d
    :goto_7
    iget-object v3, p0, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    invoke-virtual {v3, v1, v2}, Lch/ethz/ssh2/transport/KexManager;->handleMessage([BI)V

    goto/16 :goto_0

    .line 121
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Peer sent UNIMPLEMENTED message, that should not happen."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public registerMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V
    .locals 1

    .line 1
    new-instance v0, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    .line 2
    iput-object p1, v0, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->mh:Lch/ethz/ssh2/transport/MessageHandler;

    .line 3
    iput p2, v0, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 4
    iput p3, v0, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 6
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public removeMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;

    .line 6
    iget-object v3, v2, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->mh:Lch/ethz/ssh2/transport/MessageHandler;

    if-ne v3, p1, :cond_1

    iget v3, v2, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-ne v3, p2, :cond_1

    iget v2, v2, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-ne v2, p3, :cond_1

    .line 8
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 9
    :goto_1
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public sendAsynchronousMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    .line 16
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lch/ethz/ssh2/transport/TransportManager$AsynchronousWorker;

    invoke-direct {p1, p0}, Lch/ethz/ssh2/transport/TransportManager$AsynchronousWorker;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 20
    iget-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 21
    :cond_0
    monitor-exit v0

    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Error: the peer is not consuming our asynchronous replies."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendKexMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionClosed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, p1, v1}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 29
    throw p1

    .line 30
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Sorry, this connection is closed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionClosed:Z

    if-nez v1, :cond_1

    .line 14
    iget-boolean v1, p0, Lch/ethz/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 28
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->tc:Lch/ethz/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    monitor-exit v0

    return-void

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, v1}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 58
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_0
    :try_start_3
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 60
    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Sorry, this connection is closed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 62
    check-cast p1, Ljava/io/IOException;

    throw p1

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Assertion error: sendMessage may never be invoked by the receiver thread!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method
