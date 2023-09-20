.class public abstract Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogCreateOplogBinding.java"


# instance fields
.field public final btnCancel:Landroid/widget/Button;

.field public final btnOk:Landroid/widget/Button;

.field public final edFileName:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 30
    iput-object p4, p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->btnCancel:Landroid/widget/Button;

    .line 31
    iput-object p5, p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->btnOk:Landroid/widget/Button;

    .line 32
    iput-object p6, p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->edFileName:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 1

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0038

    .line 87
    invoke-static {p1, p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 1

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 1

    .line 38
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0038

    .line 52
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c0038

    .line 71
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogCreateOplogBinding;

    return-object p0
.end method
