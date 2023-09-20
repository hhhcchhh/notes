.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$7;
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


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$7;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$7;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    return-void
.end method
