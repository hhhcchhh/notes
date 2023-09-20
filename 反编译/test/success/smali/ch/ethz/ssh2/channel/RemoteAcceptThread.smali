.class public Lch/ethz/ssh2/channel/RemoteAcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field c:Lch/ethz/ssh2/channel/Channel;

.field remoteConnectedAddress:Ljava/lang/String;

.field remoteConnectedPort:I

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;

.field targetAddress:Ljava/lang/String;

.field targetPort:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/channel/RemoteAcceptThread;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    .line 5
    iput-object p2, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->remoteConnectedAddress:Ljava/lang/String;

    .line 6
    iput p3, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->remoteConnectedPort:I

    .line 7
    iput-object p4, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 8
    iput p5, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->remoteOriginatorPort:I

    .line 9
    iput-object p6, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 10
    iput p7, p0, Lch/ethz/ssh2/channel/RemoteAcceptThread;->targetPort:I

    .line 12
    sget-object p1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p6

    if-eqz p6, :cond_0

    .line 13
    new-instance p6, Ljava/lang/StringBuffer;

    const-string p7, "RemoteAcceptThread: "

    invoke-direct {p6, p7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p6, "/"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ", R: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x14

    .line 15
    invoke-virtual {p1, p3, p2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v3, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v3, v0}, Lch/ethz/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lch/ethz/ssh2/channel/Channel;)V

    .line 3
    new-instance v0, Ljava/net/Socket;

    iget-object v3, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    iget v4, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->targetPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 5
    new-instance v0, Lch/ethz/ssh2/channel/StreamForwarder;

    iget-object v6, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Lch/ethz/ssh2/channel/Channel;->getStdoutStream()Lch/ethz/ssh2/channel/ChannelInputStream;

    move-result-object v9

    iget-object v3, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "RemoteToLocal"

    move-object v5, v0

    .line 7
    invoke-direct/range {v5 .. v11}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 9
    new-instance v3, Lch/ethz/ssh2/channel/StreamForwarder;

    iget-object v13, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v4, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    iget-object v4, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v4}, Lch/ethz/ssh2/channel/Channel;->getStdinStream()Lch/ethz/ssh2/channel/ChannelOutputStream;

    move-result-object v17

    const-string v18, "LocalToRemote"

    move-object v12, v3

    .line 11
    invoke-direct/range {v12 .. v18}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    invoke-virtual {v3}, Lch/ethz/ssh2/channel/StreamForwarder;->run()V

    .line 20
    :catch_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v3, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    const-string v4, "EOF on both streams reached."

    invoke-virtual {v3, v0, v4, v2}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 34
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 49
    sget-object v3, Lch/ethz/ssh2/channel/RemoteAcceptThread;->log:Lch/ethz/ssh2/log/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "IOException in proxy code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {v3, v5, v4}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 53
    :try_start_2
    iget-object v3, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v4, v3, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "IOException in proxy code ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v2}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    :catch_2
    :try_start_3
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_1
    :goto_1
    return-void
.end method
