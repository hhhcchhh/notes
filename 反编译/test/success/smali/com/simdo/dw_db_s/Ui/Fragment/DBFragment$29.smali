.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->dialigDataTransmission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field final synthetic val$send:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1311
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->val$send:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1314
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->val$send:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x100

    if-le p1, v0, :cond_0

    .line 1315
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v1, 0x7f10005d

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;->val$send:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDataFwd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
