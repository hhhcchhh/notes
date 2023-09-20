.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showRebootDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 504
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->refreshDWWorkStateByEventBus(I)V

    .line 505
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 506
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWReboot(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
