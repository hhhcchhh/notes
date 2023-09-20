.class Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->c:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    iput-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->c:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->a:Ljava/lang/String;

    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dwdbsdk/MessageControl/MessageHelper;->startPwrDetect(Ljava/lang/String;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->onDBStartPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V

    return-void
.end method
