.class Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;
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

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$mPackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->val$mPackName:Ljava/lang/String;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->-$$Nest$mcancelPermissionDialog(Lcom/simdo/dw_db_s/Util/PermissionsUtil;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "package:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->val$mPackName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 119
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$4;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
