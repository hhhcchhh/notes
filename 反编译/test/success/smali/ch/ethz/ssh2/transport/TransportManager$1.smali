.class final Lch/ethz/ssh2/transport/TransportManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lch/ethz/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/transport/TransportManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/transport/TransportManager;->receiveLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v2, v1, v0}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 7
    invoke-static {}, Lch/ethz/ssh2/transport/TransportManager;->access$2()Lch/ethz/ssh2/log/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lch/ethz/ssh2/transport/TransportManager;->access$2()Lch/ethz/ssh2/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Receive thread: error in receiveLoop: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 11
    :cond_0
    :goto_0
    invoke-static {}, Lch/ethz/ssh2/transport/TransportManager;->access$2()Lch/ethz/ssh2/log/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lch/ethz/ssh2/transport/TransportManager;->access$2()Lch/ethz/ssh2/log/Logger;

    move-result-object v1

    const/16 v2, 0x32

    const-string v3, "Receive thread: back from receiveLoop"

    invoke-virtual {v1, v2, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 16
    :cond_1
    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    iget-object v1, v1, Lch/ethz/ssh2/transport/TransportManager;->km:Lch/ethz/ssh2/transport/KexManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 20
    :try_start_1
    invoke-virtual {v1, v2, v0}, Lch/ethz/ssh2/transport/KexManager;->handleMessage([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 27
    :goto_2
    iget-object v3, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    iget-object v3, v3, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    return-void

    .line 29
    :cond_3
    iget-object v3, p0, Lch/ethz/ssh2/transport/TransportManager$1;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    iget-object v3, v3, Lch/ethz/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;

    .line 32
    :try_start_2
    iget-object v3, v3, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->mh:Lch/ethz/ssh2/transport/MessageHandler;

    invoke-interface {v3, v2, v0}, Lch/ethz/ssh2/transport/MessageHandler;->handleMessage([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
