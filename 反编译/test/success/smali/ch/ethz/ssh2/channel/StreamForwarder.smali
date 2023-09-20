.class public Lch/ethz/ssh2/channel/StreamForwarder;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field buffer:[B

.field c:Lch/ethz/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field mode:Ljava/lang/String;

.field os:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;

.field sibling:Lch/ethz/ssh2/channel/StreamForwarder;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/channel/Channel;Lch/ethz/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x7530

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lch/ethz/ssh2/channel/StreamForwarder;->buffer:[B

    .line 11
    iput-object p4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 12
    iput-object p5, p0, Lch/ethz/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 13
    iput-object p6, p0, Lch/ethz/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lch/ethz/ssh2/channel/StreamForwarder;->c:Lch/ethz/ssh2/channel/Channel;

    .line 15
    iput-object p2, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    .line 16
    iput-object p3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ") is cleaning up the connection"

    const-string v1, "StreamForwarder ("

    :goto_0
    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    iget-object v5, p0, Lch/ethz/ssh2/channel/StreamForwarder;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 12
    :try_start_1
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v5, v4, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Closed due to exception in StreamForwarder ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lch/ethz/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 13
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v5, v4, v3, v2}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 25
    :goto_1
    :try_start_2
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    :catch_1
    :try_start_3
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 38
    :goto_2
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    if-eqz v4, :cond_2

    .line 40
    :goto_3
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    :try_start_4
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v5, v4, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/ethz/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0, v2}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    :catch_3
    :try_start_5
    iget-object v0, p0, Lch/ethz/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 63
    :cond_1
    :try_start_6
    iget-object v4, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    nop

    goto :goto_3

    .line 87
    :catch_5
    :cond_2
    :goto_4
    throw v3

    .line 88
    :catch_6
    :goto_5
    :try_start_7
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 95
    :catch_7
    :try_start_8
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    nop

    .line 101
    :goto_6
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    if-eqz v3, :cond_4

    .line 103
    :goto_7
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    :try_start_9
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->c:Lch/ethz/ssh2/channel/Channel;

    iget-object v4, v3, Lch/ethz/ssh2/channel/Channel;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/ethz/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v2}, Lch/ethz/ssh2/channel/ChannelManager;->closeChannel(Lch/ethz/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 124
    :catch_9
    :try_start_a
    iget-object v0, p0, Lch/ethz/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    .line 126
    :cond_3
    :try_start_b
    iget-object v3, p0, Lch/ethz/ssh2/channel/StreamForwarder;->sibling:Lch/ethz/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_7

    :catch_a
    nop

    goto :goto_7

    :catch_b
    :cond_4
    :goto_8
    return-void
.end method
