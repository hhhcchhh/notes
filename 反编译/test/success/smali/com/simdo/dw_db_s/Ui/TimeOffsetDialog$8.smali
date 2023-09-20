.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;
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

.field final synthetic val$ed_time_offset:Landroid/widget/EditText;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$ed_arfcn:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$ed_time_offset:Landroid/widget/EditText;

    iput p4, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 223
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$ed_time_offset:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_2

    .line 236
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/CityBean;

    .line 243
    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    new-instance v2, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v2, p1, v0}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 249
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 250
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getArfcn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v3, v0}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->setTimingOffset(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 257
    new-instance v2, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v2, p1, v0}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_6
    :goto_2
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Util/GnbCity;->save()V

    .line 261
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmListAdapter(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    move-result-object p1

    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->getCityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->setList(Ljava/util/List;)V

    .line 262
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    return-void
.end method
