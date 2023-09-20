.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickRxGainBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field final synthetic val$rg_rxgain:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/RadioGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 980
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->val$rg_rxgain:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 983
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->val$rg_rxgain:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0901de

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901e1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    goto :goto_0

    .line 988
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 994
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rxGain = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBRxGain(Ljava/lang/String;I)V

    .line 996
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void
.end method
