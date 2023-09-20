.class public Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ArfcnListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 34
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getItemCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;I)V
    .locals 3

    .line 46
    new-instance v0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;-><init>(I)V

    .line 47
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->afrcn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->freqCarrier:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->freqCarrier:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->getULArfcn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_1
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->time_offset:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getTimeOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->pa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->pk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {p2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPk()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c004d

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
