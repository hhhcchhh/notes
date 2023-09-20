.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;
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

    .line 272
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

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

    .line 275
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 276
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart0:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart1:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10011c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart0:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart1:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
