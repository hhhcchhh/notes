.class Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;
.super Ljava/lang/Thread;
.source "MultiCastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Util/MultiCastUtil;->sendData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Util/MultiCastUtil;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;->this$0:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "192.168.43.1"

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 54
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    iget-object v4, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;->this$0:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    invoke-static {v4}, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->-$$Nest$fgetserverAddress(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {}, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->-$$Nest$sfgetBROADCAST_PORT()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 58
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/MultiCastUtil$1;->this$0:Lcom/simdo/dw_db_s/Util/MultiCastUtil;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/MultiCastUtil;->-$$Nest$fgetmulticastSocket(Lcom/simdo/dw_db_s/Util/MultiCastUtil;)Ljava/net/MulticastSocket;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    const-wide/16 v3, 0x7d0

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
