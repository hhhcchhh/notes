.class public Lch/ethz/ssh2/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lch/ethz/ssh2/channel/ChannelManager;

.field cn:Lch/ethz/ssh2/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_pty_requested:Z

    .line 3
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_x11_requested:Z

    .line 4
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    .line 5
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lch/ethz/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    .line 14
    invoke-virtual {p1}, Lch/ethz/ssh2/channel/ChannelManager;->openSessionChannel()Lch/ethz/ssh2/channel/Channel;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    .line 15
    iput-object p2, p0, Lch/ethz/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    .line 8
    iget-object v1, p0, Lch/ethz/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v2, v1, v0}, Lch/ethz/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_1
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    const-string v3, "Closed due to user request"

    invoke-virtual {v1, v2, v3, v0}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lch/ethz/ssh2/channel/ChannelManager;->requestExecCommand(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cmd argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getStderrStream()Lch/ethz/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getStdinStream()Lch/ethz/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/Channel;->getStdoutStream()Lch/ethz/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public requestDumbPTY()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "dumb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lch/ethz/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Lch/ethz/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    .line 2
    array-length v1, p6

    if-lez v1, :cond_1

    .line 4
    array-length v1, p6

    sub-int/2addr v1, v0

    aget-byte v1, p6, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Illegal terminal modes description, does not end in zero byte"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array p6, v0, [B

    :goto_0
    move-object v8, p6

    .line 10
    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean p6, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez p6, :cond_4

    .line 16
    iget-boolean p6, p0, Lch/ethz/ssh2/Session;->flag_pty_requested:Z

    if-nez p6, :cond_3

    .line 19
    iget-boolean p6, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    if-nez p6, :cond_2

    .line 23
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_pty_requested:Z

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v1, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Lch/ethz/ssh2/channel/ChannelManager;->requestPTY(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V

    return-void

    .line 41
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot request PTY at this stage anymore, a remote execution has already started."

    .line 43
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "A PTY was already requested."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TERM cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_6

    .line 7
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_x11_requested:Z

    if-nez v0, :cond_5

    .line 10
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_x11_requested:Z

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    new-instance v0, Lch/ethz/ssh2/channel/X11ServerData;

    invoke-direct {v0}, Lch/ethz/ssh2/channel/X11ServerData;-><init>()V

    .line 35
    iput-object p1, v0, Lch/ethz/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 36
    iput p2, v0, Lch/ethz/ssh2/channel/X11ServerData;->port:I

    .line 37
    iput-object p3, v0, Lch/ethz/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    const/16 p1, 0x10

    new-array p2, p1, [B

    .line 48
    :cond_0
    iget-object p3, p0, Lch/ethz/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 52
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {p3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_2

    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 62
    iget-object v1, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v1, p3}, Lch/ethz/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lch/ethz/ssh2/channel/X11ServerData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    iget-object v2, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    const-string v5, "MIT-MAGIC-COOKIE-1"

    const/4 v7, 0x0

    move v4, p4

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lch/ethz/ssh2/channel/ChannelManager;->requestX11(Lch/ethz/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 73
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean p1, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez p1, :cond_1

    .line 77
    iput-object p3, p0, Lch/ethz/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {p1, p3, v0}, Lch/ethz/ssh2/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lch/ethz/ssh2/channel/X11ServerData;)V

    .line 79
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 80
    :cond_2
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot request X11 forwarding at this stage anymore, a remote execution has already started."

    .line 84
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "X11 forwarding was already requested."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 87
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostname argument may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public startShell()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;->requestShell(Lch/ethz/ssh2/channel/Channel;)V

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/Session;->flag_execution_started:Z

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lch/ethz/ssh2/channel/ChannelManager;->requestSubSystem(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForCondition(IJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForCondition(Lch/ethz/ssh2/channel/Channel;JI)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitUntilDataAvailable(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Session;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Session;->cn:Lch/ethz/ssh2/channel/Channel;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, p1, p2, v2}, Lch/ethz/ssh2/channel/ChannelManager;->waitForCondition(Lch/ethz/ssh2/channel/Channel;JI)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    and-int/lit8 p2, p1, 0xc

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected condition result ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must not be negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
