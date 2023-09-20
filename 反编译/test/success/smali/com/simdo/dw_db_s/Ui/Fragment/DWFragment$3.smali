.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->initView(Landroid/view/View;)V
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

    .line 229
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    .line 232
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->catchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->chartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->freqScanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-nez p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->catchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->chartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->freqScanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->catchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->chartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->freqScanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
