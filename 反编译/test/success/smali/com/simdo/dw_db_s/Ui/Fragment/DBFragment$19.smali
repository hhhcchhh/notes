.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1123
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1126
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v2, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio1:I

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v3, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v4, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio3:I

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v5, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio4:I

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v6, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio5:I

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v7, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio6:I

    invoke-virtual/range {v0 .. v7}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBGpio(Ljava/lang/String;IIIIII)V

    .line 1127
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void
.end method
