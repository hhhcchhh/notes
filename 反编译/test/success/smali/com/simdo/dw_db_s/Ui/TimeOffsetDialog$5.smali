.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;
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

    .line 188
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;->val$position:I

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mshowAddOrModifiedArfcnDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V

    return-void
.end method
