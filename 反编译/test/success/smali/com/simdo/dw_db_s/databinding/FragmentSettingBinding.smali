.class public abstract Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentSettingBinding.java"


# instance fields
.field public final dbBsVersion:Landroid/widget/LinearLayout;

.field public final dbVersion:Landroid/widget/TextView;

.field public final dwBsBlackbox:Landroid/widget/LinearLayout;

.field public final dwBsLog:Landroid/widget/LinearLayout;

.field public final dwBsReboot:Landroid/widget/LinearLayout;

.field public final dwBsUpgrade:Landroid/widget/LinearLayout;

.field public final dwBsVersion:Landroid/widget/LinearLayout;

.field public final dwSetMode:Landroid/widget/LinearLayout;

.field public final dwVersion:Landroid/widget/TextView;

.field public final test:Landroid/widget/Button;

.field public final title:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dbBsVersion:Landroid/widget/LinearLayout;

    .line 58
    iput-object p5, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dbVersion:Landroid/widget/TextView;

    .line 59
    iput-object p6, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsBlackbox:Landroid/widget/LinearLayout;

    .line 60
    iput-object p7, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsLog:Landroid/widget/LinearLayout;

    .line 61
    iput-object p8, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsReboot:Landroid/widget/LinearLayout;

    .line 62
    iput-object p9, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsUpgrade:Landroid/widget/LinearLayout;

    .line 63
    iput-object p10, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwBsVersion:Landroid/widget/LinearLayout;

    .line 64
    iput-object p11, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwSetMode:Landroid/widget/LinearLayout;

    .line 65
    iput-object p12, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->dwVersion:Landroid/widget/TextView;

    .line 66
    iput-object p13, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->test:Landroid/widget/Button;

    .line 67
    iput-object p14, p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004b

    .line 122
    invoke-static {p1, p0, v0}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 1

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004b

    .line 87
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c004b

    .line 106
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/FragmentSettingBinding;

    return-object p0
.end method
