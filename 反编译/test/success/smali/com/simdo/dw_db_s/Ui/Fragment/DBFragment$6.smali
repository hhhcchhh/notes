.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 710
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 p2, 0x0

    iput p2, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 712
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput p1, p2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    goto :goto_0

    .line 714
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 p2, 0x2

    iput p2, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 720
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    return-void
.end method
