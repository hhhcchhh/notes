.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 177
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_1

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "\u5f00\u59cb\u626b\u9891"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanArfcnDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    .line 188
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisArfcnNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v1, 0x7f100145

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisStopScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    .line 195
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputFreqScanCount(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;I)V

    .line 196
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputStopFreqScanTime(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;J)V

    .line 197
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string v2, "\u8bf7\u7a0d\u540e"

    const-string v3, "\u6b63\u5728\u7ed3\u675f\u626b\u9891"

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputprogressDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/app/ProgressDialog;)V

    .line 198
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWFreqScan(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 182
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u5148\u7ed3\u675f\u5b9a\u4f4d"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
