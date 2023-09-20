.class Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/MessageControl/MessageTransceiver;->pollQueue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    iput-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pollQueue  size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->b(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v0

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->send(Ljava/lang/String;[B)V

    :cond_0
    const-wide/16 v2, 0x14

    .line 8
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
