.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

.field final synthetic val$cell_1:Landroid/widget/LinearLayout;

.field final synthetic val$cell_2:Landroid/widget/LinearLayout;

.field final synthetic val$rb_first:Landroid/widget/RadioButton;

.field final synthetic val$rb_second:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$rb_first:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_1:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_2:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$rb_second:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 445
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$rb_first:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 446
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisFirstCell(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    .line 447
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$rb_second:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisFirstCell(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    .line 451
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;->val$cell_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
