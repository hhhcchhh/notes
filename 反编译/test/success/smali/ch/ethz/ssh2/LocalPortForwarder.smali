.class public Lch/ethz/ssh2/LocalPortForwarder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lch/ethz/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field lat:Lch/ethz/ssh2/channel/LocalAcceptThread;

.field local_port:I

.field port_to_connect:I


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/LocalPortForwarder;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    .line 5
    iput p2, p0, Lch/ethz/ssh2/LocalPortForwarder;->local_port:I

    .line 6
    iput-object p3, p0, Lch/ethz/ssh2/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 7
    iput p4, p0, Lch/ethz/ssh2/LocalPortForwarder;->port_to_connect:I

    .line 9
    new-instance v0, Lch/ethz/ssh2/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lch/ethz/ssh2/channel/LocalAcceptThread;-><init>(Lch/ethz/ssh2/channel/ChannelManager;ILjava/lang/String;I)V

    iput-object v0, p0, Lch/ethz/ssh2/LocalPortForwarder;->lat:Lch/ethz/ssh2/channel/LocalAcceptThread;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/LocalPortForwarder;->lat:Lch/ethz/ssh2/channel/LocalAcceptThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/LocalPortForwarder;->lat:Lch/ethz/ssh2/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lch/ethz/ssh2/channel/LocalAcceptThread;->stopWorking()V

    return-void
.end method
