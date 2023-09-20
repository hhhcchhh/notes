.class public final Lch/ethz/ssh2/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field c:Lch/ethz/ssh2/channel/Channel;

.field isClosed:Z


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/Channel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 6
    iput-object p1, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->c:Lch/ethz/ssh2/channel/Channel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v1, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v1, v0}, Lch/ethz/ssh2/channel/ChannelManager;->sendEOF(Lch/ethz/ssh2/channel/Channel;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lch/ethz/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/ethz/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 12
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/channel/ChannelOutputStream;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v1, v0, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v1, v0, p1, p2, p3}, Lch/ethz/ssh2/channel/ChannelManager;->sendData(Lch/ethz/ssh2/channel/Channel;[BII)V

    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This OutputStream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
