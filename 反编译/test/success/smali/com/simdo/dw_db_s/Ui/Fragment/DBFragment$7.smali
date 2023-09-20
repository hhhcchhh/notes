.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showStartPwrDetectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field final synthetic val$ed_arfcn:Landroid/widget/EditText;

.field final synthetic val$ed_pci:Landroid/widget/EditText;

.field final synthetic val$ed_period:Landroid/widget/EditText;

.field final synthetic val$ed_prb_num:Landroid/widget/EditText;

.field final synthetic val$ed_smooth_win_len:Landroid/widget/EditText;

.field final synthetic val$ed_ul_rb_offset:Landroid/widget/EditText;

.field final synthetic val$ed_ul_slot_index:Landroid/widget/EditText;

.field final synthetic val$ed_ul_slot_index2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_arfcn:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_pci:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_rb_offset:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index2:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_smooth_win_len:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_prb_num:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 728
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 730
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v3, 0x7f10007f

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 733
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 744
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_pci:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x7f100091

    if-nez v4, :cond_1

    .line 746
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 749
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_10

    const/16 v3, 0x3ef

    if-le v12, v3, :cond_2

    goto/16 :goto_4

    .line 766
    :cond_2
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_rb_offset:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_rb_offset:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 768
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v3, 0x7f10009e

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 771
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 818
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f10009f

    if-eqz v3, :cond_4

    .line 819
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 822
    :cond_4
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 824
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, -0x1

    if-nez v3, :cond_7

    if-gez v14, :cond_6

    const/16 v3, 0x13

    if-gt v14, v3, :cond_5

    goto :goto_0

    .line 828
    :cond_5
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 826
    :cond_6
    :goto_0
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_ul_slot_index2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v15, v3

    goto :goto_1

    :cond_7
    const/4 v15, -0x1

    .line 832
    :goto_1
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_smooth_win_len:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f100097

    if-nez v3, :cond_f

    .line 833
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_smooth_win_len:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_e

    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_smooth_win_len:Landroid/widget/EditText;

    .line 834
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0x3ff

    if-gt v3, v6, :cond_e

    .line 835
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_smooth_win_len:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_win_len:I

    .line 844
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_prb_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 845
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v3, 0x7f100092

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 851
    :cond_8
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Util/GnbCity;->getTimingOffset()I

    move-result v3

    .line 852
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getTimeOffset(I)I

    move-result v4

    if-eq v3, v5, :cond_9

    if-eq v3, v4, :cond_9

    .line 855
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_time_offset = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sdk_time_offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    move v9, v3

    goto :goto_2

    :cond_9
    move v9, v4

    :goto_2
    const/16 v17, 0x13

    .line 860
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 861
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v4, 0x7f10015e

    invoke-virtual {v3, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 862
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v3, v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v3, v3, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnPwrDetect:Landroid/widget/Button;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v5, 0x7f10016e

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v3, v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v3, v3, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->arfcn:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f10009d

    if-eqz v1, :cond_a

    .line 873
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 876
    :cond_a
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x200

    if-gt v1, v4, :cond_d

    const-string v1, "[0-9]*"

    .line 877
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 878
    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 879
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_period:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 893
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputarfcnInsert(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    if-ltz v2, :cond_b

    const v1, 0x113ff

    if-gt v2, v1, :cond_b

    const/16 v1, 0x14a

    const/16 v11, 0x14a

    goto :goto_3

    :cond_b
    const/16 v1, 0x190

    const/16 v11, 0x190

    .line 901
    :goto_3
    new-instance v1, Lcom/simdo/dw_db_s/Bean/ArfcnBean;

    invoke-direct {v1, v2}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;-><init>(I)V

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startPwrDetect  dl_arfcn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->getDLArfcn()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ul_arfcn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->getULArfcn()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getPk(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getPa(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", time_offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ipar_cfg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ipci = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ue_position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slot_index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", unlock_check_point = 19, bandwidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v4, v4, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->bandwidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",slot_index2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",smooth_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v4, v4, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",smooth_win_len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v4, v4, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_win_len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",prb_num= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_prb_num:Landroid/widget/EditText;

    .line 907
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-static {v3}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v3

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->getDLArfcn()I

    move-result v5

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->getULArfcn()I

    move-result v6

    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getPk(I)I

    move-result v7

    .line 909
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getPa(I)I

    move-result v8

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->bandwidth:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_win_len:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->val$ed_prb_num:Landroid/widget/EditText;

    .line 910
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move v1, v15

    move/from16 v15, v17

    move/from16 v17, v1

    .line 908
    invoke-virtual/range {v3 .. v20}, Lcom/dwdbsdk/MessageControl/MessageController;->startDBPwrDetect(Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 912
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    return-void

    .line 881
    :cond_c
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_d
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 837
    :cond_e
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 841
    :cond_f
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 751
    :cond_10
    :goto_4
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
