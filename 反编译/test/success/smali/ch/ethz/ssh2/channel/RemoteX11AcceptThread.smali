.class public Lch/ethz/ssh2/channel/RemoteX11AcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field c:Lch/ethz/ssh2/channel/Channel;

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    .line 4
    iput-object p2, p0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 5
    iput p3, p0, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorPort:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v3, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v3, v0}, Lch/ethz/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lch/ethz/ssh2/channel/Channel;)V

    .line 5
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getStdinStream()Lch/ethz/ssh2/channel/ChannelOutputStream;

    move-result-object v8

    .line 6
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getStdoutStream()Lch/ethz/ssh2/channel/ChannelInputStream;

    move-result-object v13

    const/4 v0, 0x6

    new-array v3, v0, [B

    .line 44
    invoke-virtual {v13, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v0, :cond_11

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    const/16 v6, 0x42

    if-eq v5, v6, :cond_1

    const/16 v7, 0x6c

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unknown endian format in X11 message!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    new-array v6, v0, [B

    .line 58
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v0, :cond_10

    .line 61
    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    rsub-int/lit8 v9, v5, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    add-int/lit8 v9, v5, 0x2

    .line 62
    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    rsub-int/lit8 v5, v5, 0x3

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v9

    const/16 v9, 0x100

    if-gt v7, v9, :cond_f

    if-gt v5, v9, :cond_f

    .line 67
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/2addr v9, v10

    .line 68
    rem-int/lit8 v11, v5, 0x4

    rsub-int/lit8 v11, v11, 0x4

    rem-int/2addr v11, v10

    .line 70
    new-array v12, v7, [B

    .line 71
    new-array v14, v5, [B

    new-array v10, v10, [B

    .line 75
    invoke-virtual {v13, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-ne v15, v7, :cond_e

    .line 78
    invoke-virtual {v13, v10, v4, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v9, :cond_d

    .line 81
    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_c

    .line 84
    invoke-virtual {v13, v10, v4, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v11, :cond_b

    const-string v7, "MIT-MAGIC-COOKIE-1"

    .line 87
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x10

    if-ne v5, v7, :cond_9

    .line 93
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_7

    .line 99
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v5, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :try_start_1
    iget-object v14, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iput-object v2, v14, Lch/ethz/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 109
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    iget-object v5, v14, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v5, v2}, Lch/ethz/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lch/ethz/ssh2/channel/X11ServerData;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 127
    new-instance v5, Ljava/net/Socket;

    iget-object v14, v2, Lch/ethz/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    iget v15, v2, Lch/ethz/ssh2/channel/X11ServerData;->port:I

    invoke-direct {v5, v14, v15}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 129
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 130
    iget-object v5, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 134
    invoke-virtual {v14, v3}, Ljava/io/OutputStream;->write([B)V

    .line 136
    iget-object v3, v2, Lch/ethz/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    if-nez v3, :cond_3

    new-array v0, v0, [B

    .line 140
    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 144
    :cond_3
    array-length v0, v3

    if-ne v0, v7, :cond_5

    .line 148
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 150
    invoke-virtual {v14, v10, v4, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 151
    iget-object v0, v2, Lch/ethz/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 152
    invoke-virtual {v14, v10, v4, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    :goto_3
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 159
    new-instance v0, Lch/ethz/ssh2/channel/StreamForwarder;

    iget-object v10, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v15, "RemoteToX11"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 160
    new-instance v2, Lch/ethz/ssh2/channel/StreamForwarder;

    iget-object v4, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "X11ToRemote"

    move-object v3, v2

    move-object/from16 v7, v16

    invoke-direct/range {v3 .. v9}, Lch/ethz/ssh2/channel/StreamForwarder;-><init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    invoke-virtual {v2}, Lch/ethz/ssh2/channel/StreamForwarder;->run()V

    .line 168
    :catch_0
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 181
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v2, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    const-string v3, "EOF on both X11 streams reached."

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 182
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 183
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 184
    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The real X11 cookie has an invalid length!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid X11 cookie received."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catchall_0
    move-exception v0

    .line 186
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 187
    :cond_7
    aget-byte v0, v14, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    goto :goto_5

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "0"

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x6

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto/16 :goto_2

    .line 189
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong data length for X11 authorization data!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown X11 authorization protocol!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolDataPadding)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolData)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolNamePadding)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup! (authProtocolName)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Buggy X11 authorization data"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected EOF on X11 startup!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 334
    sget-object v2, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->log:Lch/ethz/ssh2/log/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "IOException in X11 proxy code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 338
    :try_start_7
    iget-object v2, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v3, v2, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "IOException in X11 proxy code ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 345
    :catch_2
    :try_start_8
    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_12

    .line 346
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_12
    :goto_6
    return-void
.end method
