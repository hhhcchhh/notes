.class Lcom/dwdbsdk/Socket/ZTcpService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/ZTcpService;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->d:Lcom/dwdbsdk/Socket/ZTcpService;

    iput-object p2, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->b:I

    iput p4, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->d:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->f(Lcom/dwdbsdk/Socket/ZTcpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Interface/SocketStateListener;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service socket state change , id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->a:Ljava/lang/String;

    iget v3, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->b:I

    iget v4, p0, Lcom/dwdbsdk/Socket/ZTcpService$4;->c:I

    invoke-interface {v1, v2, v3, v4}, Lcom/dwdbsdk/Interface/SocketStateListener;->OnSocketStateChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    return-void
.end method
