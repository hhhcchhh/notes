.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;
.super Ljava/lang/Object;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCitySelectDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;->val$position:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mshowCityConfirmDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;IZ)V

    return-void
.end method
