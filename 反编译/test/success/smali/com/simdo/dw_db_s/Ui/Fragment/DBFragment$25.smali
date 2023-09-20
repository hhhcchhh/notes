.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showGetLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field final synthetic val$ed_file_name:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1231
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->val$ed_file_name:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1234
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V

    const-string p1, "yyyyMMdd_HHmm"

    .line 1235
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/DateUtil;->getFormatCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1236
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->val$ed_file_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1238
    array-length v2, v2

    const/16 v3, 0x23

    if-le v2, v3, :cond_0

    .line 1239
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V

    .line 1243
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1245
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v0, 0x7f100149

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->getDBLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1247
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void
.end method
