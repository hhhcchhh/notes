.class Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Util/PermissionsUtil;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Util/PermissionsUtil;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;->this$0:Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;->val$context:Landroid/app/Activity;

    iget-object p2, p0, Lcom/simdo/dw_db_s/Util/PermissionsUtil$2;->val$permissions:[Ljava/lang/String;

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
