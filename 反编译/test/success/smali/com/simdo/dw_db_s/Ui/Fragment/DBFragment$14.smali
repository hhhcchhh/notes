.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickSetGpioBtn()V
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

    .line 1047
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

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

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 1051
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput p1, p2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 p2, 0x2

    iput p2, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    :cond_1
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

    .line 1059
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x1

    iput v0, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    return-void
.end method
