.class Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$0()Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 5
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$0()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lch/ethz/ssh2/util/TimeoutService;->access$1(Ljava/lang/Thread;)V

    .line 8
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 13
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$0()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;

    .line 15
    invoke-static {v3}, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->access$0(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    .line 21
    :try_start_1
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$0()Ljava/util/LinkedList;

    move-result-object v4

    invoke-static {v3}, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->access$0(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :cond_1
    :try_start_2
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$0()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    invoke-static {v3}, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->access$1(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 43
    :try_start_4
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 44
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    invoke-static {}, Lch/ethz/ssh2/util/TimeoutService;->access$2()Lch/ethz/ssh2/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Exeception in Timeout handler:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v3, v2, v1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
