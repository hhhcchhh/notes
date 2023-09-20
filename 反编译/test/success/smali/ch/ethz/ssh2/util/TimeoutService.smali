.class public Lch/ethz/ssh2/util/TimeoutService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;,
        Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;
    }
.end annotation


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;

.field private static timeoutThread:Ljava/lang/Thread;

.field private static final todolist:Ljava/util/LinkedList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/util/TimeoutService;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/util/TimeoutService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/util/TimeoutService;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/util/TimeoutService;->log:Lch/ethz/ssh2/log/Logger;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lch/ethz/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0()Ljava/util/LinkedList;
    .locals 1

    .line 1
    sget-object v0, Lch/ethz/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static synthetic access$1(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    sput-object p0, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic access$2()Lch/ethz/ssh2/log/Logger;
    .locals 1

    .line 1
    sget-object v0, Lch/ethz/ssh2/util/TimeoutService;->log:Lch/ethz/ssh2/log/Logger;

    return-object v0
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;
    .locals 2

    .line 1
    new-instance v0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 3
    sget-object p0, Lch/ethz/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    sget-object p1, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;

    invoke-direct {p1, v1}, Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;-><init>(Lch/ethz/ssh2/util/TimeoutService$TimeoutThread;)V

    sput-object p1, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 14
    sget-object p1, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static final cancelTimeoutHandler(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 1

    .line 1
    sget-object v0, Lch/ethz/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object p0, Lch/ethz/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
