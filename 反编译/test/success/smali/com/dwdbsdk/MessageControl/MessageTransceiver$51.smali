.class Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;
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
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    iput-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageHelper;->gnbGetUserDataRsp(Ljava/lang/String;)Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;->getRW()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    move-result-object v0

    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/MessageControl/MessageHelper;->gnbGetUserDataRsp(Ljava/lang/String;)Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->onDWSetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->b:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    move-result-object v0

    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageHelper;->build()Lcom/dwdbsdk/MessageControl/MessageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/MessageControl/MessageHelper;->gnbGetUserDataRsp(Ljava/lang/String;)Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->onDWGetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V

    :goto_0
    return-void
.end method
