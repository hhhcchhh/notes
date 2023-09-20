.class public abstract Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogImsiListItemBinding.java"


# instance fields
.field public final tvArfcn:Landroid/widget/TextView;

.field public final tvCellId:Landroid/widget/TextView;

.field public final tvFtime:Landroid/widget/TextView;

.field public final tvImsi:Landroid/widget/TextView;

.field public final tvLtime:Landroid/widget/TextView;

.field public final tvPci:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    iput-object p4, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvArfcn:Landroid/widget/TextView;

    .line 40
    iput-object p5, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvCellId:Landroid/widget/TextView;

    .line 41
    iput-object p6, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvFtime:Landroid/widget/TextView;

    .line 42
    iput-object p7, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvImsi:Landroid/widget/TextView;

    .line 43
    iput-object p8, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvLtime:Landroid/widget/TextView;

    .line 44
    iput-object p9, p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvPci:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c003c

    .line 99
    invoke-static {p1, p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1

    .line 69
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1

    .line 50
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c003c

    .line 64
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c003c

    .line 83
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    return-object p0
.end method
