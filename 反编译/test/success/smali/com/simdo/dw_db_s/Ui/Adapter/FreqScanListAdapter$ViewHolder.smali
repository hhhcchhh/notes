.class Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FreqScanListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;


# direct methods
.method public constructor <init>(Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    return-object v0
.end method
