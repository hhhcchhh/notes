.class public Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;
    }
.end annotation


# instance fields
.field private DB_device_id:Ljava/lang/String;

.field Db_version:Landroid/widget/TextView;

.field Dw_version:Landroid/widget/TextView;

.field binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

.field device_index:I

.field private dialogBean:Lcom/simdo/dw_db_s/Bean/DialogBean;

.field private dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

.field private gnbLogName:Ljava/lang/String;

.field private listener:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mInDialog:Landroid/app/Dialog;

.field private mPDialog:Landroid/app/Dialog;

.field private mUpdateFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/File/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private upgradeFileName:Ljava/lang/String;

.field private upgradeFilePath:Ljava/lang/String;

.field private version_db:Ljava/lang/String;

.field private version_dw:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$CeGa9rC5I8BLqFeHHNVozKd4yW4(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdialogBean(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DialogBean;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dialogBean:Lcom/simdo/dw_db_s/Bean/DialogBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdwDevice(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogressDialog(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupgradeFileName(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->closeCustomDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_dw:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_db:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->DB_device_id:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->device_index:I

    .line 348
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_dw:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_db:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->DB_device_id:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->device_index:I

    .line 348
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeCustomDialog()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 309
    iput-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 314
    iput-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mPDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mPDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mPDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 5

    .line 326
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->closeProgressDialog()V

    .line 327
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    const v2, 0x7f110400

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    .line 330
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 331
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 332
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void

    .line 335
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    .line 336
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 337
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 338
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private getOpLogDialog()V
    .locals 5

    .line 396
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 398
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c0038

    invoke-static {v1, v4, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    .line 399
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 401
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 402
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 403
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 404
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 405
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->btnOk:Landroid/widget/Button;

    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$6;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0900ed

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->Dw_version:Landroid/widget/TextView;

    const v0, 0x7f0900c9

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->Db_version:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDB_device_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDB_device_id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDB_device_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDB_device_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->getDBVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bbe\u5907\u5f00\u673a\u4e2d"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 282
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 285
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    const/16 p2, 0x50

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 289
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 290
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 291
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 292
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 293
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x11

    .line 295
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 296
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 298
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 299
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 302
    :goto_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mInDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method

.method private showGetBsLogDialog()V
    .locals 5

    .line 351
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 353
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c003b

    invoke-static {v1, v4, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/databinding/DialogGetbslogBinding;

    .line 354
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 356
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/databinding/DialogGetbslogBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 357
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 358
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 359
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 360
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogGetbslogBinding;->btnOk:Landroid/widget/Button;

    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$4;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Lcom/simdo/dw_db_s/databinding/DialogGetbslogBinding;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogGetbslogBinding;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$5;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showRebootDialog()V
    .locals 5

    .line 493
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 495
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c003d

    invoke-static {v1, v4, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/databinding/DialogRebootBinding;

    .line 496
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 498
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/databinding/DialogRebootBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 499
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 500
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 501
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogRebootBinding;->btnOk:Landroid/widget/Button;

    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;

    invoke-direct {v3, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$10;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogRebootBinding;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$11;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSetModeDialog()V
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/File/FileUtil;->getUpdateFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    .line 451
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 453
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c0046

    invoke-static {v1, v4, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    .line 454
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 456
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 457
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 458
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 459
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getRsp()Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDualCell()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 460
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbMode:Landroid/widget/RadioGroup;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbMode:Landroid/widget/RadioGroup;

    const v3, 0x7f0901dd

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 465
    :goto_0
    iget-object v2, v1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->btnOk:Landroid/widget/Button;

    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$8;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$9;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showUpgradeDialog()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100165

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->createCustomDialog()V

    .line 242
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/File/FileUtil;->getUpdateFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    .line 245
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090116

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v1, 0x7f090115

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 252
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 253
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$2;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f09007c

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 269
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$3;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$3;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 275
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog(I)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDB_device_id()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->DB_device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-object v0
.end method

.method public getGnbLogName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradeFileName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeFilePath()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_db()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_db:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_dw()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_dw:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 90
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick WorkState"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getVersion_dw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bbe\u5907\u5f00\u673a\u4e2d"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090247

    if-ne v0, v1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dwdevice workstate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900eb

    if-ne v0, v1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getVersion_dw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showVersionDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100147

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 143
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100165

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 145
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100129

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 147
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_7
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100128

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_8
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getDwDevice()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showSetModeDialog()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showUpgradeDialog()V

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showRebootDialog()V

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showGetBsLogDialog()V

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getOpLogDialog()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900e7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    .line 100
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->initView(Landroid/view/View;)V

    .line 103
    new-instance p1, Lcom/simdo/dw_db_s/Bean/DialogBean;

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mDialog:Landroid/app/Dialog;

    invoke-direct {p1, p2, p3}, Lcom/simdo/dw_db_s/Bean/DialogBean;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dialogBean:Lcom/simdo/dw_db_s/Bean/DialogBean;

    .line 104
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->test:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsVersion:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsUpgrade:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsReboot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsBlackbox:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsLog:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwSetMode:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dbBsVersion:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public refreshDWWorkStateByEventBus(I)V
    .locals 2

    .line 205
    new-instance v0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v1, "refreshDWWorkState"

    .line 206
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 208
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public refreshDeviceWorkState(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    return-void
.end method

.method public removeOnSettingFragmentListener()V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->listener:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;

    return-void
.end method

.method public setDB_device_id(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->DB_device_id:Ljava/lang/String;

    return-void
.end method

.method public setDwDevice(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dwDevice:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-void
.end method

.method public setGnbLogName(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->gnbLogName:Ljava/lang/String;

    return-void
.end method

.method public setOnSettingFragmentListener(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->listener:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;

    return-void
.end method

.method public setUpgradeFileName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFileName:Ljava/lang/String;

    return-void
.end method

.method public setUpgradeFilePath(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->upgradeFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVersion_db(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_db:Ljava/lang/String;

    return-void
.end method

.method public setVersion_dw(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->version_dw:Ljava/lang/String;

    return-void
.end method

.method public showVersionDialog(Ljava/lang/String;)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dialogBean:Lcom/simdo/dw_db_s/Bean/DialogBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DialogBean;->createCustomDialog()V

    .line 215
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 216
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f110111

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0030

    const/4 v3, 0x0

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f090074

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 220
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090084

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 222
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$1;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$1;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dialogBean:Lcom/simdo/dw_db_s/Bean/DialogBean;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/simdo/dw_db_s/Bean/DialogBean;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method
