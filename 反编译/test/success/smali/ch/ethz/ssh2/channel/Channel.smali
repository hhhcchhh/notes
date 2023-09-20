.class public Lch/ethz/ssh2/channel/Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CHANNEL_BUFFER_SIZE:I = 0x7530

.field static final STATE_CLOSED:I = 0x4

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1


# instance fields
.field EOF:Z

.field final channelSendLock:Ljava/lang/Object;

.field closeMessageRecv:Z

.field closeMessageSent:Z

.field final cm:Lch/ethz/ssh2/channel/ChannelManager;

.field exit_signal:Ljava/lang/String;

.field exit_status:Ljava/lang/Integer;

.field failedCounter:I

.field hexX11FakeCookie:Ljava/lang/String;

.field localID:I

.field localMaxPacketSize:I

.field localWindow:I

.field final msgWindowAdjust:[B

.field private reasonClosed:Ljava/lang/String;

.field private final reasonClosedLock:Ljava/lang/Object;

.field remoteID:I

.field remoteMaxPacketSize:I

.field remoteWindow:J

.field state:I

.field final stderrBuffer:[B

.field stderrReadpos:I

.field final stderrStream:Lch/ethz/ssh2/channel/ChannelInputStream;

.field stderrWritepos:I

.field final stdinStream:Lch/ethz/ssh2/channel/ChannelOutputStream;

.field final stdoutBuffer:[B

.field stdoutReadpos:I

.field final stdoutStream:Lch/ethz/ssh2/channel/ChannelInputStream;

.field stdoutWritepos:I

.field successCounter:I


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/ChannelManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 3
    iput v0, p0, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    const/16 v2, 0x9

    new-array v2, v2, [B

    .line 36
    iput-object v2, p0, Lch/ethz/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/4 v2, 0x1

    .line 41
    iput v2, p0, Lch/ethz/ssh2/channel/Channel;->state:I

    .line 43
    iput-boolean v1, p0, Lch/ethz/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 48
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 49
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, p0, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    .line 55
    iput v0, p0, Lch/ethz/ssh2/channel/Channel;->remoteMaxPacketSize:I

    const/16 v0, 0x7530

    new-array v3, v0, [B

    .line 57
    iput-object v3, p0, Lch/ethz/ssh2/channel/Channel;->stdoutBuffer:[B

    new-array v3, v0, [B

    .line 58
    iput-object v3, p0, Lch/ethz/ssh2/channel/Channel;->stderrBuffer:[B

    .line 60
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    .line 61
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    .line 62
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    .line 63
    iput v1, p0, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    .line 65
    iput-boolean v1, p0, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    .line 80
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 81
    iput-object v3, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    .line 87
    iput v0, p0, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    const p1, 0x84b8

    .line 88
    iput p1, p0, Lch/ethz/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 90
    new-instance p1, Lch/ethz/ssh2/channel/ChannelOutputStream;

    invoke-direct {p1, p0}, Lch/ethz/ssh2/channel/ChannelOutputStream;-><init>(Lch/ethz/ssh2/channel/Channel;)V

    iput-object p1, p0, Lch/ethz/ssh2/channel/Channel;->stdinStream:Lch/ethz/ssh2/channel/ChannelOutputStream;

    .line 91
    new-instance p1, Lch/ethz/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v1}, Lch/ethz/ssh2/channel/ChannelInputStream;-><init>(Lch/ethz/ssh2/channel/Channel;Z)V

    iput-object p1, p0, Lch/ethz/ssh2/channel/Channel;->stdoutStream:Lch/ethz/ssh2/channel/ChannelInputStream;

    .line 92
    new-instance p1, Lch/ethz/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v2}, Lch/ethz/ssh2/channel/ChannelInputStream;-><init>(Lch/ethz/ssh2/channel/Channel;Z)V

    iput-object p1, p0, Lch/ethz/ssh2/channel/Channel;->stderrStream:Lch/ethz/ssh2/channel/ChannelInputStream;

    return-void
.end method


# virtual methods
.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReasonClosed()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

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

.method public getStderrStream()Lch/ethz/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->stderrStream:Lch/ethz/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method public getStdinStream()Lch/ethz/ssh2/channel/ChannelOutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->stdinStream:Lch/ethz/ssh2/channel/ChannelOutputStream;

    return-object v0
.end method

.method public getStdoutStream()Lch/ethz/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->stdoutStream:Lch/ethz/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method public setReasonClosed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
