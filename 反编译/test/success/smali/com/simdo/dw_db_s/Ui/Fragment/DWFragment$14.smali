.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dialogStopTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

.field final synthetic val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;


# direct methods
.method public static synthetic $r8$lambda$t11cGsmjAHrJvG_tBa-M2VM-GeQ(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->lambda$onClick$0(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    return-void
.end method

.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 662
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mrefreshTraceValue(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;ILjava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 670
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 671
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 672
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetisFirstNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWNrTrace(Ljava/lang/String;I)V

    goto :goto_0

    .line 675
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWLteTrace(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 666
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->isTracing(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 667
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14$$ExternalSyntheticLambda0;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->isTracing(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 681
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const-string v0, "0"

    invoke-static {p1, v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mrefreshTraceValue(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;ILjava/lang/String;)V

    .line 682
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v0, 0x7f100164

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 683
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 684
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 685
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetisSecondNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 686
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWNrTrace(Ljava/lang/String;I)V

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWLteTrace(Ljava/lang/String;I)V

    .line 691
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 692
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 693
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    return-void
.end method
