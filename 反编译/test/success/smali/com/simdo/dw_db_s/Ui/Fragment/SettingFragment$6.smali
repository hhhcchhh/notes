.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getOpLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

.field final synthetic val$bindings:Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->val$bindings:Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "yyyyMMdd_HHmm"

    .line 410
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/DateUtil;->getFormatCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->val$bindings:Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->edFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\s\\\\/:\\*\\?\\\"<>\\|](\\x20|[^\\s\\\\/:\\*\\?\\\"<>\\|])*[^\\s\\\\/:\\*\\?\\\"<>\\|\\.]$"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u6587\u4ef6\u540d\uff01"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->refreshDWWorkStateByEventBus(I)V

    .line 420
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 421
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->getDWOpLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v0, "onGetOpLog"

    .line 424
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setString(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 428
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
