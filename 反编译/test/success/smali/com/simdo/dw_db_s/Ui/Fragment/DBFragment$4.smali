.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showStartPwrDetectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field final synthetic val$tb_enable_vehicle:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/ToggleButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->val$tb_enable_vehicle:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 670
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->val$tb_enable_vehicle:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 671
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputenable_vehicle(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Z)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputenable_vehicle(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Z)V

    .line 675
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "enable_vehicle = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetenable_vehicle(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    return-void
.end method
