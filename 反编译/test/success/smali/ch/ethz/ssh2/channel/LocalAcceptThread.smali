.class public Lch/ethz/ssh2/channel/LocalAcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/channel/IChannelWorkerThread;


# instance fields
.field cm:Lch/ethz/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field local_port:I

.field port_to_connect:I

.field final ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    .line 5
    iput p2, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->local_port:I

    .line 6
    iput-object p3, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 7
    iput p4, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 9
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p0}, Lch/ethz/ssh2/channel/ChannelManager;->registerThread(Lch/ethz/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 15
    :catch_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 31
    :try_start_2
    iget-object v0, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    iget v2, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v5

    .line 33
    invoke-virtual {v0, v1, v2, v3, v5}, Lch/ethz/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v13, 0x1

    .line 54
    :try_start_3
    new-instance v14, Lch/ethz/ssh2/channel/StreamForwarder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lch/ethz/ssh2/channel/Channel;->stdoutStream:Lch/ethz/ssh2/channel/ChannelInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "RemoteToLocal"

    move-object v6, v14

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 55
    new-instance v8, Lch/ethz/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, v0, Lch/ethz/ssh2/channel/Channel;->stdinStream:Lch/ethz/ssh2/channel/ChannelOutputStream;

    const-string v7, "LocalToRemote"

    move-object v1, v8

    move-object v2, v0

    move-object v3, v14

    invoke-direct/range {v1 .. v7}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    invoke-virtual {v8, v13}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 74
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 75
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 76
    :try_start_4
    iget-object v2, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Weird error during creation of StreamForwarder ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v13}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V

    goto :goto_0

    .line 77
    :catch_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 78
    :catch_3
    invoke-virtual {p0}, Lch/ethz/ssh2/channel/LocalAcceptThread;->stopWorking()V

    return-void

    .line 79
    :catch_4
    invoke-virtual {p0}, Lch/ethz/ssh2/channel/LocalAcceptThread;->stopWorking()V

    return-void
.end method

.method public stopWorking()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
