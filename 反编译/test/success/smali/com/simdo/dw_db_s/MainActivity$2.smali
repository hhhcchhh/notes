.class Lcom/simdo/dw_db_s/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/MainActivity;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/MainActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/simdo/dw_db_s/MainActivity$2;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permitPermissions()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity$2;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-static {v0}, Lcom/simdo/dw_db_s/MainActivity;->-$$Nest$mstartActivity(Lcom/simdo/dw_db_s/MainActivity;)V

    return-void
.end method

.method public refusePermissions()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity$2;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    const-string v1, "\u62d2\u7edd\u6743\u9650\uff0c\u65e0\u6cd5\u63d0\u4f9b\u670d\u52a1!"

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/MainActivity;->showToast(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity$2;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/MainActivity;->finish()V

    return-void
.end method
