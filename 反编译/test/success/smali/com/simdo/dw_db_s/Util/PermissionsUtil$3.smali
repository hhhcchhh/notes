.class Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Util/PermissionsUtil;->showSystemPermissionsSettingDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->-$$Nest$mcancelPermissionDialog(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V

    .line 128
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$3;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->-$$Nest$fgetmPermissionsResult(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;->refusePermissions()V

    return-void
.end method
