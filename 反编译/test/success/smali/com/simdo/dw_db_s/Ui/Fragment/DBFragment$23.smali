.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showUpgradeConfirmDialog()V
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

    .line 1197
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1200
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1201
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v0, 0x7f100166

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Lcom/dwdbsdk/SCP/ScpUtil;->build()Lcom/dwdbsdk/SCP/ScpUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgethostIP(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dwdbsdk/SCP/ScpUtil;->startPutFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void
.end method
