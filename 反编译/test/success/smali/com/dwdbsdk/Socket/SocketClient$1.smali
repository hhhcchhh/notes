.class Lcom/dwdbsdk/Socket/SocketClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/SocketClient;->send(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/dwdbsdk/Socket/SocketClient;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/SocketClient;[BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->c:Lcom/dwdbsdk/Socket/SocketClient;

    iput-object p2, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->a:[B

    iput-object p3, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->c:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/SocketClient;->a(Lcom/dwdbsdk/Socket/SocketClient;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v1, v3

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send data, id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->c:Lcom/dwdbsdk/Socket/SocketClient;

    invoke-static {v0}, Lcom/dwdbsdk/Socket/SocketClient;->a(Lcom/dwdbsdk/Socket/SocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send data error, id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient$1;->b:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    const-wide/16 v0, 0x32

    .line 25
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
