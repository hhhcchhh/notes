.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const p1, 0x7f0901e0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;I)V

    .line 322
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisGpsScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0901dc

    if-ne p2, p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;I)V

    .line 325
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisGpsScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
