.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showUpgradeDialog()V
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

    .line 1167
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1170
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    .line 1171
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/File/FileItem;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V

    .line 1172
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/File/FileItem;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputupgradeFileName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V

    .line 1173
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mshowUpgradeConfirmDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void
.end method
