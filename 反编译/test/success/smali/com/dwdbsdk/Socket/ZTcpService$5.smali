.class Lcom/dwdbsdk/Socket/ZTcpService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/ZTcpService;->startHeartBeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->g(Lcom/dwdbsdk/Socket/ZTcpService;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    const-wide/16 v4, 0x7530

    const-string v6, "socket_"

    if-ge v1, v2, :cond_2

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->b(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v2}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v6}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    iget-object v6, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v6}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v6, v7, v4

    if-lez v6, :cond_0

    .line 10
    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v4}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v4, v2, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 17
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v3

    const-string v4, "G70"

    invoke-virtual {v3, v4, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->sendHeartBeat(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v1}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v1}, Lcom/dwdbsdk/Socket/ZTcpService;->e(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Socket/SocketClient;

    invoke-virtual {v1}, Lcom/dwdbsdk/Socket/SocketClient;->getBsId()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 27
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v2, v7, v4

    if-lez v2, :cond_3

    .line 31
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v2}, Lcom/dwdbsdk/Socket/ZTcpService;->c(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$5;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v2, v1, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 38
    :cond_3
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v2

    const-string v7, "G10"

    invoke-virtual {v2, v7, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->sendHeartBeat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service heart beat error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v0, 0x1388

    .line 48
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    return-void
.end method
