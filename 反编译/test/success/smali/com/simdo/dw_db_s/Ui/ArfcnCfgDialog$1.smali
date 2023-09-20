.class Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;
.super Ljava/lang/Object;
.source "ArfcnCfgDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->showDeleteConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

.field final synthetic val$arfcn:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->val$arfcn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object p1

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->val$arfcn:I

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->delete(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->-$$Nest$fgetcontext(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100033

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->val$arfcn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->-$$Nest$fgetcontext(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->-$$Nest$fgetcontext(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100032

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->val$arfcn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->-$$Nest$fgetcontext(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)V

    .line 130
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->dismiss()V

    return-void
.end method
