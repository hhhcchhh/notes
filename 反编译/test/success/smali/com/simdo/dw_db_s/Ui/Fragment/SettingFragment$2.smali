.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showUpgradeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

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

    .line 258
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->refreshDWWorkStateByEventBus(I)V

    .line 259
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 260
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/File/FileItem;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/File/FileItem;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputupgradeFileName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/dwdbsdk/FTP/FTPUtil;->build()Lcom/dwdbsdk/FTP/FTPUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p2}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p3}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/dwdbsdk/FTP/FTPUtil;->startPutFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V

    .line 264
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const-string p3, "\u8bf7\u52ff\u65ad\u7535"

    const-string p4, "\u6b63\u5728\u5347\u7ea7\u56fa\u4ef6"

    invoke-static {p2, p3, p4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fputprogressDialog(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/ProgressDialog;)V

    return-void
.end method
