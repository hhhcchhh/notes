.class final Lch/ethz/ssh2/Connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lch/ethz/ssh2/Connection;

.field private final synthetic val$state:Lch/ethz/ssh2/Connection$1$TimeoutState;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/Connection;Lch/ethz/ssh2/Connection$1$TimeoutState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lch/ethz/ssh2/Connection$1;->this$0:Lch/ethz/ssh2/Connection;

    iput-object p2, p0, Lch/ethz/ssh2/Connection$1;->val$state:Lch/ethz/ssh2/Connection$1$TimeoutState;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Connection$1;->val$state:Lch/ethz/ssh2/Connection$1$TimeoutState;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/Connection$1;->val$state:Lch/ethz/ssh2/Connection$1$TimeoutState;

    iget-boolean v2, v1, Lch/ethz/ssh2/Connection$1$TimeoutState;->isCancelled:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Lch/ethz/ssh2/Connection$1$TimeoutState;->timeoutSocketClosed:Z

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/Connection$1;->this$0:Lch/ethz/ssh2/Connection;

    invoke-static {v1}, Lch/ethz/ssh2/Connection;->access$0(Lch/ethz/ssh2/Connection;)Lch/ethz/ssh2/transport/TransportManager;

    move-result-object v1

    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "The connect timeout expired"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
