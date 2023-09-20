.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->onDWHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

.field final synthetic val$rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1361
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->val$rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1364
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->val$rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mgetDeviceById(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 1365
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1366
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;->val$rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWNrTrace(Ljava/lang/String;I)V

    return-void
.end method
