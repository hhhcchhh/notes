.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;
.super Ljava/lang/Object;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showAddCityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

.field final synthetic val$ed_arfcn:Landroid/widget/EditText;

.field final synthetic val$ed_city:Landroid/widget/EditText;

.field final synthetic val$ed_time_offset:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_city:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_arfcn:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_time_offset:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 98
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_city:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->val$ed_time_offset:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 110
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    const-string v2, "\r|\n"

    const-string v3, ""

    .line 118
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/simdo/dw_db_s/Util/GnbCity;->getArfcnList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v3, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v3, v0, v1}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 126
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 127
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getArfcn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v4, v1}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->setTimingOffset(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 134
    new-instance v3, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v3, v0, v1}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_6
    :goto_2
    new-instance v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-direct {v0, p1, v2}, Lcom/simdo/dw_db_s/Bean/CityBean;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 138
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->addCity(Lcom/simdo/dw_db_s/Bean/CityBean;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 139
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {v0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :cond_7
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmListAdapter(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    move-result-object p1

    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->getCityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->setList(Ljava/util/List;)V

    .line 142
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    return-void
.end method
