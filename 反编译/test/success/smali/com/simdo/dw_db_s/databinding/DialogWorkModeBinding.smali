.class public abstract Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogWorkModeBinding.java"


# instance fields
.field public final btnCancel:Landroid/widget/Button;

.field public final btnOk:Landroid/widget/Button;

.field public final rbDual:Landroid/widget/RadioButton;

.field public final rbMode:Landroid/widget/RadioGroup;

.field public final rbSingle:Landroid/widget/RadioButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 37
    iput-object p4, p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->btnCancel:Landroid/widget/Button;

    .line 38
    iput-object p5, p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->btnOk:Landroid/widget/Button;

    .line 39
    iput-object p6, p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbDual:Landroid/widget/RadioButton;

    .line 40
    iput-object p7, p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbMode:Landroid/widget/RadioGroup;

    .line 41
    iput-object p8, p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->rbSingle:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0046

    .line 96
    invoke-static {p1, p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 1

    .line 47
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0046

    .line 61
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c0046

    .line 80
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/simdo/dw_db_s/databinding/DialogWorkModeBinding;

    return-object p0
.end method
