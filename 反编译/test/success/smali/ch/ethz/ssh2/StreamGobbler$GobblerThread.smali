.class Lch/ethz/ssh2/StreamGobbler$GobblerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GobblerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lch/ethz/ssh2/StreamGobbler;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/StreamGobbler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v2}, Lch/ethz/ssh2/StreamGobbler;->access$0(Lch/ethz/ssh2/StreamGobbler;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 9
    iget-object v3, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v3}, Lch/ethz/ssh2/StreamGobbler;->access$1(Lch/ethz/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v2, :cond_0

    .line 13
    :try_start_1
    iget-object v0, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/ethz/ssh2/StreamGobbler;->access$2(Lch/ethz/ssh2/StreamGobbler;Z)V

    .line 14
    iget-object v0, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v0}, Lch/ethz/ssh2/StreamGobbler;->access$1(Lch/ethz/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v3

    goto/16 :goto_1

    .line 18
    :cond_0
    iget-object v4, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v4}, Lch/ethz/ssh2/StreamGobbler;->access$3(Lch/ethz/ssh2/StreamGobbler;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v5}, Lch/ethz/ssh2/StreamGobbler;->access$4(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    .line 24
    iget-object v4, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v4}, Lch/ethz/ssh2/StreamGobbler;->access$4(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v4

    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6}, Lch/ethz/ssh2/StreamGobbler;->access$5(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v6

    sub-int/2addr v4, v6

    add-int v6, v4, v2

    .line 27
    iget-object v7, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v7}, Lch/ethz/ssh2/StreamGobbler;->access$3(Lch/ethz/ssh2/StreamGobbler;)[B

    move-result-object v7

    .line 29
    iget-object v8, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v8}, Lch/ethz/ssh2/StreamGobbler;->access$3(Lch/ethz/ssh2/StreamGobbler;)[B

    move-result-object v8

    array-length v8, v8

    if-le v6, v8, :cond_3

    .line 31
    div-int/lit8 v7, v6, 0x3

    const/16 v8, 0x100

    if-ge v7, v8, :cond_1

    const/16 v7, 0x100

    :cond_1
    if-le v7, v0, :cond_2

    const/16 v7, 0x2000

    :cond_2
    add-int/2addr v6, v7

    .line 34
    new-array v7, v6, [B

    :cond_3
    if-lez v4, :cond_4

    .line 38
    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6}, Lch/ethz/ssh2/StreamGobbler;->access$3(Lch/ethz/ssh2/StreamGobbler;)[B

    move-result-object v6

    iget-object v8, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v8}, Lch/ethz/ssh2/StreamGobbler;->access$5(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v8

    invoke-static {v6, v8, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    :cond_4
    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6, v7}, Lch/ethz/ssh2/StreamGobbler;->access$6(Lch/ethz/ssh2/StreamGobbler;[B)V

    .line 42
    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6, v5}, Lch/ethz/ssh2/StreamGobbler;->access$7(Lch/ethz/ssh2/StreamGobbler;I)V

    .line 43
    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6, v4}, Lch/ethz/ssh2/StreamGobbler;->access$8(Lch/ethz/ssh2/StreamGobbler;I)V

    .line 46
    :cond_5
    iget-object v4, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v4}, Lch/ethz/ssh2/StreamGobbler;->access$3(Lch/ethz/ssh2/StreamGobbler;)[B

    move-result-object v4

    iget-object v6, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v6}, Lch/ethz/ssh2/StreamGobbler;->access$4(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v6

    invoke-static {v1, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v4, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v4}, Lch/ethz/ssh2/StreamGobbler;->access$4(Lch/ethz/ssh2/StreamGobbler;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Lch/ethz/ssh2/StreamGobbler;->access$8(Lch/ethz/ssh2/StreamGobbler;I)V

    .line 49
    iget-object v2, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v2}, Lch/ethz/ssh2/StreamGobbler;->access$1(Lch/ethz/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v1}, Lch/ethz/ssh2/StreamGobbler;->access$1(Lch/ethz/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v2, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v2, v0}, Lch/ethz/ssh2/StreamGobbler;->access$9(Lch/ethz/ssh2/StreamGobbler;Ljava/io/IOException;)V

    .line 98
    iget-object v0, p0, Lch/ethz/ssh2/StreamGobbler$GobblerThread;->this$0:Lch/ethz/ssh2/StreamGobbler;

    invoke-static {v0}, Lch/ethz/ssh2/StreamGobbler;->access$1(Lch/ethz/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit v1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 100
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
