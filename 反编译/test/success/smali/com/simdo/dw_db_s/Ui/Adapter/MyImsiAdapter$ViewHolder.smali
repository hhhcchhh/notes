.class Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MyImsiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;


# direct methods
.method public constructor <init>(Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    return-object v0
.end method
