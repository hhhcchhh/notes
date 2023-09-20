.class public abstract Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListScanArfcnItemBinding.java"


# instance fields
.field public final tvDlArfcn:Landroid/widget/TextView;

.field public final tvEci:Landroid/widget/TextView;

.field public final tvPa:Landroid/widget/TextView;

.field public final tvPci:Landroid/widget/TextView;

.field public final tvPk:Landroid/widget/TextView;

.field public final tvRx:Landroid/widget/TextView;

.field public final tvTac:Landroid/widget/TextView;

.field public final tvUlArfcn:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvDlArfcn:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvEci:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPa:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPci:Landroid/widget/TextView;

    .line 49
    iput-object p8, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPk:Landroid/widget/TextView;

    .line 50
    iput-object p9, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvRx:Landroid/widget/TextView;

    .line 51
    iput-object p10, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvTac:Landroid/widget/TextView;

    .line 52
    iput-object p11, p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvUlArfcn:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0051

    .line 107
    invoke-static {p1, p0, v0}, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1

    .line 58
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0051

    .line 72
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c0051

    .line 91
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    return-object p0
.end method
