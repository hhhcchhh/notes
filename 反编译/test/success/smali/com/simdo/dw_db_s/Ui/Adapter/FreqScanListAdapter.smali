.class public Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FreqScanListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

.field private freqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    .line 39
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvTac:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getTac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvEci:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getEci()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvUlArfcn:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getUl_arfcn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvDlArfcn:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getDl_arfcn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPci:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getPci()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvRx:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getRsrp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPa:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getPa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;->tvPk:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getPk()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    .line 32
    new-instance p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->binding:Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;

    invoke-direct {p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter$ViewHolder;-><init>(Lcom/simdo/dw_db_s/databinding/ListScanArfcnItemBinding;)V

    return-object p1
.end method

.method public setFreqList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->freqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->notifyDataSetChanged()V

    return-void
.end method
