.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$b1:Landroid/widget/CheckBox;

.field final synthetic val$b3:Landroid/widget/CheckBox;

.field final synthetic val$b34:Landroid/widget/CheckBox;

.field final synthetic val$b39:Landroid/widget/CheckBox;

.field final synthetic val$b40:Landroid/widget/CheckBox;

.field final synthetic val$b41:Landroid/widget/CheckBox;

.field final synthetic val$b5:Landroid/widget/CheckBox;

.field final synthetic val$b8:Landroid/widget/CheckBox;

.field final synthetic val$n1:Landroid/widget/CheckBox;

.field final synthetic val$n28:Landroid/widget/CheckBox;

.field final synthetic val$n41:Landroid/widget/CheckBox;

.field final synthetic val$n78:Landroid/widget/CheckBox;

.field final synthetic val$n79:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n28:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n41:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n78:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n79:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b1:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b3:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b5:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b8:Landroid/widget/CheckBox;

    iput-object p11, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b34:Landroid/widget/CheckBox;

    iput-object p12, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b39:Landroid/widget/CheckBox;

    iput-object p13, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b40:Landroid/widget/CheckBox;

    iput-object p14, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b41:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 333
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "N1"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n28:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v1, "N28"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n41:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v2, "N41"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n78:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v3, "N78"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$n79:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v4, "N79"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_4
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v5, "B1"

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_5
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b3:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v6, "B3"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_6
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b5:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v7, "B5"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_7
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b8:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v8, "B8"

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_8
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b34:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v9, "B34"

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_9
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b39:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v10, "B39"

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_a
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b40:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v11, "B40"

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_b
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->val$b41:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v12, "B41"

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_c
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 347
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u9009\u62e9\u8981\u626b\u7684\u9891\u6bb5"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_d
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v13, "\u5f00\u59cb\u626b\u9891"

    invoke-virtual {p1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 351
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const/16 v13, 0xd

    invoke-virtual {p1, v13}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 352
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanN1(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 353
    :cond_e
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanN28(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 354
    :cond_f
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanN41(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 355
    :cond_10
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanN78(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 356
    :cond_11
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanN79(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 357
    :cond_12
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB1(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 358
    :cond_13
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB3(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 359
    :cond_14
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB5(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 360
    :cond_15
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB8(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto/16 :goto_0

    .line 361
    :cond_16
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB34(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto :goto_0

    .line 362
    :cond_17
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB39(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto :goto_0

    .line 363
    :cond_18
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB40(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    goto :goto_0

    .line 364
    :cond_19
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mscanB41(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    .line 365
    :cond_1a
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetscanArfcnBeanList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 366
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1, v13}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fputisStopScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V

    .line 367
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    const-string v0, "\u505c\u6b62\u626b\u9891"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_1b
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    return-void
.end method
