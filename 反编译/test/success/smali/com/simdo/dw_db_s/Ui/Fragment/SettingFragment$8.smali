.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showSetModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

.field final synthetic val$bindings:Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->val$bindings:Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 469
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->refreshDWWorkStateByEventBus(I)V

    .line 470
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 471
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->val$bindings:Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbMode:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0901dd

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901e5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWDualCell(Ljava/lang/String;I)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWDualCell(Ljava/lang/String;I)V

    .line 479
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 480
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u7a0d\u540e"

    const-string v2, "\u6b63\u5728\u5207\u6362\u5de5\u4f5c\u6a21\u5f0f"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputprogressDialog(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/ProgressDialog;)V

    return-void
.end method
