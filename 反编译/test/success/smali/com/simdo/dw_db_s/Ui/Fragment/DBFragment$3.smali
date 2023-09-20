.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;
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

.field final synthetic val$ul_arfcn_switch:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/ToggleButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;->val$ul_arfcn_switch:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 654
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;->val$ul_arfcn_switch:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isUl_Arfcn_Switch:Z

    goto :goto_0

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isUl_Arfcn_Switch:Z

    :goto_0
    return-void
.end method
