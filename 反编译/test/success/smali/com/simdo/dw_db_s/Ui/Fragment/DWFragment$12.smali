.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dialogTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

.field final synthetic val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

.field final synthetic val$tb_ue_maxpwr_second:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/ToggleButton;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->val$tb_ue_maxpwr_second:Landroid/widget/ToggleButton;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 494
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->val$tb_ue_maxpwr_second:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    const-string v1, "20"

    invoke-virtual {p1, v0, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setUeMaxTxpwr(ILjava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;->val$dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    const-string v1, "10"

    invoke-virtual {p1, v0, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setUeMaxTxpwr(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
