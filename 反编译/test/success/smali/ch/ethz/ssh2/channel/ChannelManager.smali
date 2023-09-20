.class public Lch/ethz/ssh2/channel/ChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/transport/MessageHandler;


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field private channels:Ljava/util/Vector;

.field private globalFailedCounter:I

.field private globalSuccessCounter:I

.field private listenerThreads:Ljava/util/Vector;

.field private listenerThreadsAllowed:Z

.field private nextLocalChannel:I

.field private remoteForwardings:Ljava/util/HashMap;

.field private shutdown:Z

.field private tm:Lch/ethz/ssh2/transport/TransportManager;

.field private x11_magic_cookies:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/channel/ChannelManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/channel/ChannelManager;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lch/ethz/ssh2/transport/TransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->nextLocalChannel:I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->shutdown:Z

    .line 9
    iput v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 10
    iput v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 14
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 20
    iput-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/16 v1, 0x50

    .line 21
    invoke-virtual {p1, p0, v1, v0}, Lch/ethz/ssh2/transport/TransportManager;->registerMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V

    return-void
.end method

.method private addChannel(Lch/ethz/ssh2/channel/Channel;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    iget p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->nextLocalChannel:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->nextLocalChannel:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getChannel(I)Lch/ethz/ssh2/channel/Channel;
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 4
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/channel/Channel;

    .line 9
    iget v3, v2, Lch/ethz/ssh2/channel/Channel;->localID:I

    if-ne v3, p1, :cond_1

    .line 10
    monitor-exit v0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private removeChannel(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/channel/Channel;

    .line 6
    iget v2, v2, Lch/ethz/ssh2/channel/Channel;->localID:I

    if-ne v2, p1, :cond_1

    .line 8
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

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

.method private final waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    if-nez v0, :cond_3

    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "This SSH2 channel is not open ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :cond_3
    :goto_1
    :try_start_2
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    if-nez v0, :cond_4

    .line 25
    monitor-exit p1

    return-void

    .line 50
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The server denied the request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final waitForGlobalSuccessOrFailure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    iget v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_2

    iget v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 12
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is being shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    :goto_1
    iget v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    .line 26
    monitor-exit v0

    return-void

    .line 51
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Illegal state."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request (did you enable port forwarding?)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private waitUntilChannelOpen(Lch/ethz/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 16
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v0}, Lch/ethz/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 18
    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not open channel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 30
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lch/ethz/ssh2/channel/X11ServerData;
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/ethz/ssh2/channel/X11ServerData;

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public closeAllChannels()V
    .locals 5

    .line 1
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    const-string v2, "Closing all channels"

    .line 2
    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/channel/Channel;

    :try_start_1
    const-string v3, "Closing all channels"

    const/4 v4, 0x1

    .line 19
    invoke-virtual {p0, v2, v3, v4}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 3
    monitor-enter p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 7
    :try_start_0
    iput v1, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    .line 8
    iput-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lch/ethz/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 p3, 0x61

    aput-byte p3, v0, p2

    .line 14
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 p3, p2, 0x18

    int-to-byte p3, p3

    aput-byte p3, v0, v2

    shr-int/lit8 p3, p2, 0x10

    int-to-byte p3, p3

    const/4 v3, 0x2

    aput-byte p3, v0, v3

    shr-int/lit8 p3, p2, 0x8

    int-to-byte p3, p3

    const/4 v3, 0x3

    aput-byte p3, v0, v3

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    iget-object p2, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 41
    :try_start_1
    iget-boolean p3, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz p3, :cond_1

    .line 42
    monitor-exit p2

    return-void

    .line 43
    :cond_1
    iget-object p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p3, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 44
    iput-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    .line 45
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 54
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Sent SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x32

    invoke-virtual {p2, p3, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 55
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 56
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public getAvailable(Lch/ethz/ssh2/channel/Channel;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    goto :goto_0

    .line 8
    :cond_0
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    :goto_0
    sub-int/2addr p2, v0

    if-lez p2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-boolean p2, p1, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getChannelData(Lch/ethz/ssh2/channel/Channel;Z[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 13
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v0, v1

    .line 14
    iget v2, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    iget v3, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_b

    if-eqz v2, :cond_b

    :goto_1
    const/4 v5, 0x0

    if-nez p2, :cond_3

    if-le v0, p5, :cond_1

    goto :goto_2

    :cond_1
    move p5, v0

    .line 41
    :goto_2
    iget-object p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutBuffer:[B

    invoke-static {p2, v1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    add-int/2addr p2, p5

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    .line 44
    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    if-eq p2, p3, :cond_2

    .line 46
    iget-object p4, p1, Lch/ethz/ssh2/channel/Channel;->stdoutBuffer:[B

    sub-int/2addr p3, p2

    invoke-static {p4, p2, p4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_2
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr p2, p3

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    .line 50
    iput v5, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    goto :goto_4

    :cond_3
    if-le v2, p5, :cond_4

    goto :goto_3

    :cond_4
    move p5, v2

    .line 55
    :goto_3
    iget-object p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrBuffer:[B

    invoke-static {p2, v3, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    add-int/2addr p2, p5

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    .line 58
    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    if-eq p2, p3, :cond_5

    .line 60
    iget-object p4, p1, Lch/ethz/ssh2/channel/Channel;->stderrBuffer:[B

    sub-int/2addr p3, p2

    invoke-static {p4, p2, p4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    :cond_5
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr p2, p3

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    .line 64
    iput v5, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    .line 67
    :goto_4
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    if-eq p2, v4, :cond_6

    .line 68
    monitor-exit p1

    return p5

    .line 70
    :cond_6
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    const/16 p3, 0x3a98

    if-ge p2, p3, :cond_7

    .line 72
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    rsub-int p2, p2, 0x7530

    .line 73
    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    rsub-int p3, p3, 0x7530

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 77
    iget p3, p1, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    sub-int p3, p2, p3

    .line 78
    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    goto :goto_5

    :cond_7
    const/4 p3, 0x0

    .line 81
    :goto_5
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    .line 82
    iget p4, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 83
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p3, :cond_a

    .line 173
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 174
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v1, ", "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p4}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 176
    :cond_8
    iget-object p4, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p4

    .line 178
    :try_start_1
    iget-object v0, p1, Lch/ethz/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/16 v1, 0x5d

    .line 180
    aput-byte v1, v0, v5

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 181
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 182
    aput-byte v1, v0, v4

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 183
    aput-byte v1, v0, v2

    int-to-byte p2, p2

    const/4 v1, 0x4

    .line 184
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x18

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 185
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x10

    int-to-byte p2, p2

    const/4 v1, 0x6

    .line 186
    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x7

    .line 187
    aput-byte p2, v0, v1

    int-to-byte p2, p3

    const/16 p3, 0x8

    .line 188
    aput-byte p2, v0, p3

    .line 190
    iget-boolean p1, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p1, :cond_9

    .line 191
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 192
    :cond_9
    monitor-exit p4

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    :goto_6
    return p5

    .line 193
    :cond_b
    :try_start_2
    iget-boolean v0, p1, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    if-nez v0, :cond_d

    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v4, :cond_c

    goto :goto_7

    .line 198
    :cond_c
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 199
    :cond_d
    :goto_7
    :try_start_4
    monitor-exit p1

    const/4 p1, -0x1

    return p1

    :catchall_1
    move-exception p2

    .line 200
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :goto_8
    throw p2

    :goto_9
    goto :goto_8
.end method

.method public handleMessage([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1
    sget-object p1, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x32

    const-string v1, "HandleMessage: got shutdown"

    .line 2
    invoke-virtual {p1, p2, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v1

    const/4 p1, 0x0

    .line 6
    :goto_0
    :try_start_0
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 11
    iput-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter p1

    const/4 p2, 0x1

    .line 24
    :try_start_1
    iput-boolean p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->shutdown:Z

    const/4 v1, 0x0

    .line 26
    :goto_1
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 44
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->setSize(I)V

    .line 45
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->trimToSize()V

    .line 46
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit p1

    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/ssh2/channel/Channel;

    .line 49
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    iput-boolean p2, v2, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    const/4 v3, 0x4

    .line 52
    iput v3, v2, Lch/ethz/ssh2/channel/Channel;->state:I

    const-string v3, "The connection is being shutdown"

    .line 53
    invoke-virtual {v2, v3}, Lch/ethz/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 54
    iput-boolean p2, v2, Lch/ethz/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    :catchall_1
    move-exception p2

    .line 62
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    .line 63
    :cond_2
    :try_start_4
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/ethz/ssh2/channel/IChannelWorkerThread;

    .line 64
    invoke-interface {p2}, Lch/ethz/ssh2/channel/IChannelWorkerThread;->stopWorking()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 65
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 104
    :cond_3
    aget-byte v1, p1, v0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 149
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot handle unknown channel message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lch/ethz/ssh2/channel/ChannelManager;->msgGlobalFailure()V

    goto :goto_2

    .line 233
    :pswitch_1
    invoke-virtual {p0}, Lch/ethz/ssh2/channel/ChannelManager;->msgGlobalSuccess()V

    goto :goto_2

    .line 234
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgGlobalRequest([BI)V

    goto :goto_2

    .line 150
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelFailure([BI)V

    goto :goto_2

    .line 151
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelSuccess([BI)V

    goto :goto_2

    .line 152
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelRequest([BI)V

    goto :goto_2

    .line 161
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelClose([BI)V

    goto :goto_2

    .line 162
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelEOF([BI)V

    goto :goto_2

    .line 163
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelExtendedData([BI)V

    goto :goto_2

    .line 164
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelData([BI)V

    goto :goto_2

    .line 165
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    goto :goto_2

    .line 192
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    goto :goto_2

    .line 193
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    goto :goto_2

    .line 211
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lch/ethz/ssh2/channel/ChannelManager;->msgChannelOpen([BI)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public msgChannelClose([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iput-boolean p2, v0, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    .line 11
    iput v1, v0, Lch/ethz/ssh2/channel/Channel;->state:I

    const-string v1, "Close requested by remote"

    .line 12
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 13
    iput-boolean p2, v0, Lch/ethz/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 15
    iget p2, v0, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, p2}, Lch/ethz/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 33
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_CLOSE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_CLOSE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelData([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-le p2, v0, :cond_6

    const/4 v1, 0x1

    .line 1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x4

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    const/4 v5, 0x5

    .line 2
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    .line 4
    invoke-direct {p0, v1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v5

    if-eqz v5, :cond_5

    sub-int/2addr p2, v0

    if-ne v4, p2, :cond_4

    .line 13
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Got SSH_MSG_CHANNEL_DATA (channel "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x50

    invoke-virtual {p2, v6, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 16
    :cond_0
    monitor-enter v5

    .line 18
    :try_start_0
    iget p2, v5, Lch/ethz/ssh2/channel/Channel;->state:I

    if-ne p2, v3, :cond_1

    .line 19
    monitor-exit v5

    return-void

    :cond_1
    if-ne p2, v2, :cond_3

    .line 24
    iget p2, v5, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    if-lt p2, v4, :cond_2

    sub-int/2addr p2, v4

    .line 27
    iput p2, v5, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    .line 29
    iget-object p2, v5, Lch/ethz/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v1, v5, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    invoke-static {p1, v0, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget p1, v5, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    add-int/2addr p1, v4

    iput p1, v5, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit v5

    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent too much data, does not fit into window."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Got SSH_MSG_CHANNEL_DATA, but channel is not in correct state ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lch/ethz/ssh2/channel/Channel;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 45
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_DATA message has wrong len (calculated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ", got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unexpected SSH_MSG_CHANNEL_DATA message for non-existent channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_DATA message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelEOF([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iput-boolean p2, v0, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_EOF (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 21
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_EOF message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_EOF message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelExtendedData([BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-le p2, v0, :cond_7

    const/4 v1, 0x1

    .line 1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    const/4 v4, 0x4

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    const/4 v6, 0x5

    .line 2
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    const/16 v7, 0x9

    .line 3
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/16 v8, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    const/16 v8, 0xb

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v5, v8, 0x8

    or-int/2addr v5, v7

    const/16 v7, 0xc

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 5
    invoke-direct {p0, v2}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v7

    if-eqz v7, :cond_6

    if-ne v6, v1, :cond_5

    sub-int/2addr p2, v0

    if-ne v5, p2, :cond_4

    .line 17
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "Got SSH_MSG_CHANNEL_EXTENDED_DATA (channel "

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {p2, v2, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 20
    :cond_0
    monitor-enter v7

    .line 22
    :try_start_0
    iget p2, v7, Lch/ethz/ssh2/channel/Channel;->state:I

    if-ne p2, v4, :cond_1

    .line 23
    monitor-exit v7

    return-void

    :cond_1
    if-ne p2, v3, :cond_3

    .line 29
    iget p2, v7, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    if-lt p2, v5, :cond_2

    sub-int/2addr p2, v5

    .line 32
    iput p2, v7, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    .line 34
    iget-object p2, v7, Lch/ethz/ssh2/channel/Channel;->stderrBuffer:[B

    iget v1, v7, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    invoke-static {p1, v0, p2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget p1, v7, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    add-int/2addr p1, v5

    iput p1, v7, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit v7

    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent too much data, does not fit into window."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    iget v0, v7, Lch/ethz/ssh2/channel/Channel;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 53
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ", got "

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unexpected SSH_MSG_CHANNEL_EXTENDED_DATA message for non-existent channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelFailure([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, v0, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    add-int/2addr v1, p2

    iput v1, v0, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_FAILURE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 21
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_FAILURE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_FAILURE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelOpen([BI)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v2, v4}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v5

    const-string v6, "x11"

    .line 9
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide v7, 0xffffffffL

    const/16 v9, 0x14

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 11
    iget-object v6, v1, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v6

    .line 15
    :try_start_0
    iget-object v2, v1, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 17
    new-instance v0, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;

    const-string v2, "X11 forwarding not activated"

    const-string v4, ""

    .line 19
    invoke-direct {v0, v3, v10, v2, v4}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v2, v1, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 24
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unexpected X11 request, denying it!"

    .line 25
    invoke-virtual {v0, v9, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 27
    :cond_0
    monitor-exit v6

    return-void

    .line 28
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 49
    new-instance v9, Lch/ethz/ssh2/channel/Channel;

    invoke-direct {v9, v1}, Lch/ethz/ssh2/channel/Channel;-><init>(Lch/ethz/ssh2/channel/ChannelManager;)V

    .line 51
    monitor-enter v9

    .line 53
    :try_start_1
    iput v3, v9, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    int-to-long v3, v4

    and-long/2addr v3, v7

    .line 54
    iput-wide v3, v9, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    .line 55
    iput v5, v9, Lch/ethz/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 56
    invoke-direct {v1, v9}, Lch/ethz/ssh2/channel/ChannelManager;->addChannel(Lch/ethz/ssh2/channel/Channel;)I

    move-result v3

    iput v3, v9, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 57
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    new-instance v3, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;

    invoke-direct {v3, v9, v2, v0}, Lch/ethz/ssh2/channel/RemoteX11AcceptThread;-><init>(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v3, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 72
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 73
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    const-string v6, "forwarded-tcpip"

    .line 115
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v13

    .line 118
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v14

    .line 119
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v15

    .line 120
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v16

    .line 124
    iget-object v6, v1, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v6

    .line 126
    :try_start_4
    iget-object v0, v1, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/ssh2/channel/RemoteForwardingData;

    .line 127
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_4

    .line 134
    new-instance v0, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;

    const-string v2, "No thanks, unknown port in forwarded-tcpip request"

    const-string v4, ""

    invoke-direct {v0, v3, v10, v2, v4}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, v1, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 142
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Unexpected forwarded-tcpip request, denying it!"

    .line 143
    invoke-virtual {v0, v9, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 148
    :cond_4
    new-instance v12, Lch/ethz/ssh2/channel/Channel;

    invoke-direct {v12, v1}, Lch/ethz/ssh2/channel/Channel;-><init>(Lch/ethz/ssh2/channel/ChannelManager;)V

    .line 150
    monitor-enter v12

    .line 152
    :try_start_5
    iput v3, v12, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    int-to-long v2, v4

    and-long/2addr v2, v7

    .line 153
    iput-wide v2, v12, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    .line 154
    iput v5, v12, Lch/ethz/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 155
    invoke-direct {v1, v12}, Lch/ethz/ssh2/channel/ChannelManager;->addChannel(Lch/ethz/ssh2/channel/Channel;)I

    move-result v2

    iput v2, v12, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 156
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    new-instance v2, Lch/ethz/ssh2/channel/RemoteAcceptThread;

    .line 169
    iget-object v3, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    iget v0, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->targetPort:I

    move-object v11, v2

    move-object/from16 v17, v3

    move/from16 v18, v0

    .line 170
    invoke-direct/range {v11 .. v18}, Lch/ethz/ssh2/channel/RemoteAcceptThread;-><init>(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 173
    invoke-virtual {v2, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 174
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_2
    move-exception v0

    .line 175
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 176
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 222
    :cond_5
    new-instance v0, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;

    const-string v4, "Unknown channel type"

    const-string v5, ""

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v4, v5}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, v1, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 227
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "The peer tried to open an unsupported channel type ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public msgChannelOpenConfirmation([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 3
    iget p1, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    monitor-enter p1

    .line 11
    :try_start_0
    iget p2, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 15
    iget p2, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    .line 16
    iget p2, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    int-to-long v1, p2

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    .line 17
    iget p2, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->remoteMaxPacketSize:I

    const/4 p2, 0x2

    .line 18
    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-object p1, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_OPEN_CONFIRMATION (channel "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, " / remote: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 35
    iget v0, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x32

    .line 36
    invoke-virtual {p1, v0, p2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 37
    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    iget v0, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 40
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 41
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 42
    iget v0, v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelOpenFailure([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p2, v0, :cond_8

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    const-string v3, "UTF-8"

    .line 12
    invoke-virtual {v0, v3}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_0

    .line 31
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "UNKNOWN REASON CODE ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "SSH_OPEN_RESOURCE_SHORTAGE"

    goto :goto_0

    :cond_1
    const-string v2, "SSH_OPEN_UNKNOWN_CHANNEL_TYPE"

    goto :goto_0

    :cond_2
    const-string v2, "SSH_OPEN_CONNECT_FAILED"

    goto :goto_0

    :cond_3
    const-string v2, "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED"

    .line 50
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 62
    monitor-enter p2

    .line 64
    :try_start_0
    iput-boolean v4, p2, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    .line 65
    iput v3, p2, Lch/ethz/ssh2/channel/Channel;->state:I

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The server refused to open the channel ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p2, v0}, Lch/ethz/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_OPEN_FAILURE (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 83
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-lt v0, v6, :cond_6

    const/16 v6, 0x7e

    if-gt v0, v6, :cond_6

    goto :goto_2

    :cond_6
    const v0, 0xfffd

    .line 87
    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_OPEN_FAILURE message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 89
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_OPEN_FAILURE message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public msgChannelRequest([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v2, "US-ASCII"

    .line 11
    invoke-virtual {v0, v2}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v3

    .line 14
    sget-object v4, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Got SSH_MSG_CHANNEL_REQUEST (channel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v4, v6, v5}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    const-string v5, "exit-status"

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x32

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    .line 22
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 24
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_2

    .line 27
    monitor-enter p2

    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p2, Lch/ethz/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 31
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 38
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Got EXIT STATUS (channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ", status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v5, "exit-signal"

    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_7

    const-string v1, "US-ASCII"

    .line 65
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readBoolean()Z

    .line 67
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_6

    .line 73
    monitor-enter p2

    .line 75
    :try_start_2
    iput-object v1, p2, Lch/ethz/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    invoke-virtual {v4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 84
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Got EXIT SIGNAL (channel "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ", signal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 85
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 86
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v3, :cond_9

    const/4 p1, 0x5

    new-array p1, p1, [B

    const/16 v0, 0x64

    aput-byte v0, p1, v1

    .line 118
    iget p2, p2, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    int-to-byte p2, p2

    const/4 v0, 0x4

    aput-byte p2, p1, v0

    .line 123
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 126
    :cond_9
    invoke-virtual {v4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 127
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Channel request \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\' is not known, ignoring it"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_a
    return-void

    .line 128
    :cond_b
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_REQUEST message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public msgChannelSuccess([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, v0, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    add-int/2addr v1, p2

    iput v1, v0, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_CHANNEL_SUCCESS (channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 21
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_SUCCESS message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_SUCCESS message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    .line 1
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    const/4 v0, 0x5

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 4
    invoke-direct {p0, p2}, Lch/ethz/ssh2/channel/ChannelManager;->getChannel(I)Lch/ethz/ssh2/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    monitor-enter v0

    .line 13
    :try_start_0
    iget-wide v1, v0, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 18
    iput-wide v5, v0, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Got SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {v0, p2, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 38
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH_MSG_CHANNEL_WINDOW_ADJUST message for non-existent channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public msgGlobalFailure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_FAILURE"

    .line 12
    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public msgGlobalRequest([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [B

    const/16 v0, 0x52

    aput-byte v0, p2, v1

    .line 12
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 17
    :cond_0
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Got SSH_MSG_GLOBAL_REQUEST ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p2, v0, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public msgGlobalSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_SUCCESS"

    .line 12
    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lch/ethz/ssh2/channel/Channel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/channel/Channel;-><init>(Lch/ethz/ssh2/channel/ChannelManager;)V

    .line 3
    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, v0}, Lch/ethz/ssh2/channel/ChannelManager;->addChannel(Lch/ethz/ssh2/channel/Channel;)I

    move-result v2

    iput v2, v0, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance v9, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;

    iget v3, v0, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    .line 13
    iget v4, v0, Lch/ethz/ssh2/channel/Channel;->localMaxPacketSize:I

    move-object v1, v9

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .line 14
    invoke-direct/range {v1 .. v8}, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v9}, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 19
    invoke-direct {p0, v0}, Lch/ethz/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lch/ethz/ssh2/channel/Channel;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public openSessionChannel()Lch/ethz/ssh2/channel/Channel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/channel/Channel;-><init>(Lch/ethz/ssh2/channel/ChannelManager;)V

    .line 3
    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, v0}, Lch/ethz/ssh2/channel/ChannelManager;->addChannel(Lch/ethz/ssh2/channel/Channel;)I

    move-result v1

    iput v1, v0, Lch/ethz/ssh2/channel/Channel;->localID:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object v1, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Sending SSH_MSG_CHANNEL_OPEN (Channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 15
    :cond_0
    new-instance v1, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;

    iget v2, v0, Lch/ethz/ssh2/channel/Channel;->localID:I

    iget v3, v0, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    iget v4, v0, Lch/ethz/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4}, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 16
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->getPayload()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 18
    invoke-direct {p0, v0}, Lch/ethz/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lch/ethz/ssh2/channel/Channel;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerThread(Lch/ethz/ssh2/channel/IChannelWorkerThread;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 6
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Too late, this connection is closed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerX11Cookie(Ljava/lang/String;Lch/ethz/ssh2/channel/X11ServerData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestCancelGlobalForward(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/ssh2/channel/RemoteForwardingData;

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter p1

    const/4 v0, 0x0

    .line 14
    :try_start_1
    iput v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 15
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    new-instance p1, Lch/ethz/ssh2/packets/PacketGlobalCancelForwardRequest;

    iget-object v0, v1, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 21
    iget v2, v1, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindPort:I

    const/4 v3, 0x1

    .line 22
    invoke-direct {p1, v3, v0, v2}, Lch/ethz/ssh2/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 26
    sget-object p1, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Requesting cancelation of remote forward (\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, v1, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {p1, v2, v0}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 29
    :cond_0
    invoke-direct {p0}, Lch/ethz/ssh2/channel/ChannelManager;->waitForGlobalSuccessOrFailure()V

    .line 33
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v0

    .line 35
    :try_start_2
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 37
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 38
    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Sorry, there is no known remote forwarding for remote port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public requestExecCommand(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/PacketSessionExecCommand;

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lch/ethz/ssh2/packets/PacketSessionExecCommand;-><init>(IZLjava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    iput v1, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object v1, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_1
    iget-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v2, :cond_1

    .line 23
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketSessionExecCommand;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Executing command (channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, "\')"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 36
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The execute request failed."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 41
    :cond_1
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Cannot execute command on this channel ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 43
    :cond_2
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot execute command on this channel ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 44
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/channel/RemoteForwardingData;

    invoke-direct {v0}, Lch/ethz/ssh2/channel/RemoteForwardingData;-><init>()V

    .line 3
    iput-object p1, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 4
    iput p2, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 5
    iput-object p3, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 6
    iput p4, v0, Lch/ethz/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 8
    iget-object p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter p3

    .line 10
    :try_start_0
    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 17
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    iget-object p4, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter p4

    const/4 p3, 0x0

    .line 32
    :try_start_1
    iput p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 33
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    new-instance p3, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p1, p2}, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 39
    iget-object p4, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p3}, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->getPayload()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 41
    sget-object p3, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p3}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 42
    new-instance p4, Ljava/lang/StringBuffer;

    const-string v1, "Requesting a remote forwarding (\'"

    invoke-direct {p4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p4, "\', "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x32

    invoke-virtual {p3, p4, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 46
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lch/ethz/ssh2/channel/ChannelManager;->waitForGlobalSuccessOrFailure()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 50
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter p2

    .line 52
    :try_start_3
    iget-object p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    throw p1

    :catchall_0
    move-exception p1

    .line 58
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 59
    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 60
    :cond_1
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuffer;

    const-string v0, "There is already a forwarding for remote port "

    invoke-direct {p4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 61
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public requestPTY(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, v1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;

    iget v4, v1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    const/4 v5, 0x1

    move-object v3, v0

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;-><init>(IZLjava/lang/String;IIII[B)V

    const/4 v2, 0x0

    .line 9
    iput v2, v1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    iput v2, v1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    iget-object v2, v1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 23
    :try_start_1
    iget-boolean v3, v1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    move-object v3, p0

    .line 25
    :try_start_2
    iget-object v4, v3, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->getPayload()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 26
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :try_start_3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 39
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PTY request failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    move-object v3, p0

    .line 40
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Cannot request PTY on this channel ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v3, p0

    .line 41
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 42
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Cannot request PTY on this channel ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, p0

    .line 43
    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public requestShell(Lch/ethz/ssh2/channel/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/PacketSessionStartShell;

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lch/ethz/ssh2/packets/PacketSessionStartShell;-><init>(IZ)V

    const/4 v1, 0x0

    .line 8
    iput v1, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object v1, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_1
    iget-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v2, :cond_0

    .line 23
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketSessionStartShell;->getPayload()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The shell request failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 38
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot start shell on this channel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 40
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot start shell on this channel ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 41
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestSubSystem(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;-><init>(IZLjava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object p2, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 21
    :try_start_1
    iget-boolean v1, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 24
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The subsystem request failed."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 38
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot request subsystem on this channel ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 40
    :cond_1
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot request subsystem on this channel ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 41
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public requestX11(Lch/ethz/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/PacketSessionX11Request;

    iget v3, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    const/4 v4, 0x1

    move-object v2, v0

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lch/ethz/ssh2/packets/PacketSessionX11Request;-><init>(IZZLjava/lang/String;Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 9
    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->failedCounter:I

    iput p2, p1, Lch/ethz/ssh2/channel/Channel;->successCounter:I

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object p2, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p2

    .line 23
    :try_start_1
    iget-boolean p3, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p3, :cond_1

    .line 25
    iget-object p3, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketSessionX11Request;->getPayload()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 26
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 34
    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Requesting X11 forwarding (Channel "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p4, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget p4, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x32

    invoke-virtual {p2, p4, p3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 38
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->waitForChannelSuccessOrFailure(Lch/ethz/ssh2/channel/Channel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/io/IOException;

    const-string p3, "The X11 request failed."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 43
    :cond_1
    :try_start_3
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuffer;

    const-string p5, "Cannot request X11 on this channel ("

    invoke-direct {p4, p5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 45
    :cond_2
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Cannot request X11 on this channel ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 46
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public sendData(Lch/ethz/ssh2/channel/Channel;[BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-gtz p4, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p1

    .line 5
    :catch_0
    :goto_1
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 11
    iget-wide v3, p1, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    int-to-long v5, p4

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    move v0, p4

    goto :goto_2

    :cond_1
    long-to-int v0, v3

    .line 27
    :goto_2
    iget v3, p1, Lch/ethz/ssh2/channel/Channel;->remoteMaxPacketSize:I

    iget-object v4, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lch/ethz/ssh2/transport/TransportManager;->getPacketOverheadEstimate()I

    move-result v4

    const/16 v5, 0x9

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-le v0, v3, :cond_3

    move v0, v3

    .line 39
    :cond_3
    iget-wide v6, p1, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lch/ethz/ssh2/channel/Channel;->remoteWindow:J

    add-int/lit8 v3, v0, 0x9

    .line 41
    new-array v3, v3, [B

    const/4 v6, 0x0

    const/16 v7, 0x5e

    .line 43
    aput-byte v7, v3, v6

    .line 44
    iget v6, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    .line 45
    aput-byte v4, v3, v2

    shr-int/lit8 v2, v6, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x3

    .line 46
    aput-byte v2, v3, v4

    int-to-byte v2, v6

    .line 47
    aput-byte v2, v3, v1

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x5

    .line 48
    aput-byte v1, v3, v2

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x6

    .line 49
    aput-byte v1, v3, v2

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    .line 50
    aput-byte v1, v3, v2

    int-to-byte v1, v0

    const/16 v2, 0x8

    .line 51
    aput-byte v1, v3, v2

    .line 53
    invoke-static {p2, p3, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    iget-object v1, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_1
    iget-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v2, v3}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 115
    monitor-exit v1

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    goto :goto_0

    .line 118
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "SSH channel is closed. ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 119
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 120
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 121
    :cond_6
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "SSH channel in strange state. ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p4, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 122
    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "SSH channel is closed. ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    .line 123
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public sendEOF(Lch/ethz/ssh2/channel/Channel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 3
    monitor-enter p1

    .line 5
    :try_start_0
    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 6
    monitor-exit p1

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x60

    aput-byte v3, v0, v1

    .line 9
    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    iget-object v1, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_1
    iget-boolean v2, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 28
    monitor-exit v1

    return-void

    .line 29
    :cond_1
    iget-object v2, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v2, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    sget-object v0, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v0}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Sent EOF (Channel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget p1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 40
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public sendOpenConfirmation(Lch/ethz/ssh2/channel/Channel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 3
    :try_start_0
    iget v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 6
    iput v0, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    .line 8
    new-instance v0, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;

    iget v1, p1, Lch/ethz/ssh2/channel/Channel;->remoteID:I

    iget v2, p1, Lch/ethz/ssh2/channel/Channel;->localID:I

    iget v3, p1, Lch/ethz/ssh2/channel/Channel;->localWindow:I

    iget v4, p1, Lch/ethz/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;-><init>(IIII)V

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object v1, p1, Lch/ethz/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_1
    iget-boolean p1, p1, Lch/ethz/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz p1, :cond_1

    .line 22
    monitor-exit v1

    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lch/ethz/ssh2/channel/ChannelManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketChannelOpenConfirmation;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 24
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 25
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p2, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object p2, Lch/ethz/ssh2/channel/ChannelManager;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    const-string v1, "Closing all X11 channels for the given fake cookie"

    .line 13
    invoke-virtual {p2, v0, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 17
    :cond_1
    iget-object p2, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter p2

    .line 19
    :try_start_1
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 20
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    return-void

    .line 27
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/ssh2/channel/Channel;

    .line 29
    monitor-enter v1

    .line 31
    :try_start_2
    iget-object v2, v1, Lch/ethz/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 32
    monitor-exit v1

    goto :goto_1

    .line 33
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "Closing X11 channel since the corresponding session is closing"

    const/4 v3, 0x1

    .line 41
    invoke-virtual {p0, v1, v2, v3}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 42
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 43
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 44
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 45
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "hexFakeCookie may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public waitForCondition(Lch/ethz/ssh2/channel/Channel;JI)I
    .locals 9

    .line 1
    monitor-enter p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    .line 7
    :catch_0
    :goto_0
    :try_start_0
    iget v6, p1, Lch/ethz/ssh2/channel/Channel;->stdoutWritepos:I

    iget v7, p1, Lch/ethz/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v6, v7

    .line 8
    iget v7, p1, Lch/ethz/ssh2/channel/Channel;->stderrWritepos:I

    iget v8, p1, Lch/ethz/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v7, v8

    const/4 v8, 0x4

    if-lez v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-lez v7, :cond_1

    or-int/lit8 v6, v6, 0x8

    .line 16
    :cond_1
    iget-boolean v7, p1, Lch/ethz/ssh2/channel/Channel;->EOF:Z

    if-eqz v7, :cond_2

    or-int/lit8 v6, v6, 0x10

    .line 19
    :cond_2
    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x20

    .line 22
    :cond_3
    invoke-virtual {p1}, Lch/ethz/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    or-int/lit8 v6, v6, 0x40

    .line 25
    :cond_4
    iget v7, p1, Lch/ethz/ssh2/channel/Channel;->state:I

    if-ne v7, v8, :cond_5

    or-int/lit8 p2, v6, 0x2

    or-int/lit8 p2, p2, 0x10

    .line 26
    monitor-exit p1

    return p2

    :cond_5
    and-int v7, v6, p4

    if-eqz v7, :cond_6

    .line 29
    monitor-exit p1

    return v6

    :cond_6
    cmp-long v7, p2, v0

    if-lez v7, :cond_8

    const/4 v7, 0x1

    if-nez v3, :cond_7

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    move-wide v4, v3

    const/4 v3, 0x1

    goto :goto_2

    .line 40
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long p2, v4, p2

    cmp-long v8, p2, v0

    if-gtz v8, :cond_8

    or-int/lit8 p2, v6, 0x1

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_8
    :goto_2
    cmp-long v6, p2, v0

    if-lez v6, :cond_9

    .line 50
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 52
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 53
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
