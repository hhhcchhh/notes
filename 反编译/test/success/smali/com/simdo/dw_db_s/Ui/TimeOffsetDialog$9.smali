.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;
.super Ljava/lang/Object;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showAddOrModifiedArfcnDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

.field final synthetic val$ed_arfcn:Landroid/widget/EditText;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->val$ed_arfcn:Landroid/widget/EditText;

    iput p3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->val$ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    .line 275
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getArfcn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    :goto_1
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Util/GnbCity;->save()V

    .line 285
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmListAdapter(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    move-result-object p1

    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->getCityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->setList(Ljava/util/List;)V

    .line 286
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    return-void
.end method
