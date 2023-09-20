.class Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/dwdbsdk/MessageControl/MessageTransceiver;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->c:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    iput-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageHelper;->gnbReboot(Ljava/lang/String;)Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v1

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->b:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/dwdbsdk/Socket/ZTcpService;->socketStateChange(Ljava/lang/String;I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->c:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->onDWRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    return-void
.end method
