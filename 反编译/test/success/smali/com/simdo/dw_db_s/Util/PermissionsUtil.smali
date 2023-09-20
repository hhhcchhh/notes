.class public Lcom/simdo/dw_db_s/Util/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;
    }
.end annotation


# static fields
.field private static permissionsUtil:Lcom/simdo/dw_db_s/Util/PermissionsUtil; = null

.field public static showSystemSetting:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field mPermissionDialog:Landroid/app/AlertDialog;

.field private mPermissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

.field private final mRequestCode:I

.field private rationaleDialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPermissionsResult(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelPermissionDialog(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->cancelPermissionDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 20
    iput v0, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mRequestCode:I

    return-void
.end method

.method private cancelPermissionDialog()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/simdo/dw_db_s/Util/PermissionsUtil;
    .locals 1

    .line 32
    sget-object v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->permissionsUtil:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;-><init>()V

    sput-object v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->permissionsUtil:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    .line 35
    :cond_0
    sget-object v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->permissionsUtil:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    return-object v0
.end method

.method private showSystemPermissionsSettingDialog(Landroid/app/Activity;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5df2\u7981\u7528\u8be5\u6743\u9650\uff0c\u8bf7\u624b\u52a8\u6253\u5f00\u8be5\u6743\u9650"

    .line 112
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;-><init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;Ljava/lang/String;Landroid/app/Activity;)V

    const-string p1, "\u8bbe\u7f6e"

    .line 113
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;-><init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V

    const-string v1, "\u53d6\u6d88"

    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionDialog:Landroid/app/AlertDialog;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;)V
    .locals 3

    .line 39
    iput-object p3, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    .line 40
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mContext:Landroid/content/Context;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 43
    invoke-interface {p3}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;->permitPermissions()V

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 50
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u53ea\u6709\u6388\u6743\u8be5\u6743\u9650\u624d\u53ef\u4ee5\u6b63\u5e38\u4f7f\u7528\u8be5\u529f\u80fd"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;-><init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;Landroid/app/Activity;[Ljava/lang/String;)V

    const-string p1, "\u8bbe\u7f6e"

    .line 53
    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/simdo/dw_db_s/Util/PermissionsUtil$1;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$1;-><init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V

    const-string p3, "\u53d6\u6d88"

    .line 58
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->rationaleDialog:Landroid/app/AlertDialog;

    return-void

    .line 66
    :cond_1
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/16 p3, 0x64

    .line 72
    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 75
    :cond_4
    invoke-interface {p3}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;->permitPermissions()V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 2

    const/16 p3, 0x64

    if-ne p3, p2, :cond_4

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 84
    :goto_0
    array-length v0, p4

    if-ge p2, v0, :cond_1

    .line 85
    aget v0, p4, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onRequestPermissionsResult(): i = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/simdo/dw_db_s/Util/AppLog;->E(Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 92
    sget-boolean p2, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->showSystemSetting:Z

    if-eqz p2, :cond_2

    .line 93
    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->showSystemPermissionsSettingDialog(Landroid/app/Activity;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    invoke-interface {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;->refusePermissions()V

    goto :goto_1

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->mPermissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    invoke-interface {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;->permitPermissions()V

    :cond_4
    :goto_1
    return-void
.end method
