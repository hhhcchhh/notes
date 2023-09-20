.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$1;
.super Ljava/lang/Object;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->initView()V
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

    .line 61
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$1;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1, p3}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mshowCitySelectDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V

    return-void
.end method
