.class public Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyImsiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

.field mContext:Landroid/content/Context;

.field private mImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ImsiBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ImsiBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;I)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    .line 40
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getCellId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getCellId()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvCellId:Landroid/widget/TextView;

    const v3, 0x7f0e0016

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvCellId:Landroid/widget/TextView;

    const v3, 0x7f0e0017

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    :goto_1
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvImsi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvArfcn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getArfcn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvPci:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getPci()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvFtime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getFirstTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/simdo/dw_db_s/Util/DateUtil;->formateTimeHMS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvLtime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getLatestTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/simdo/dw_db_s/Util/DateUtil;->formateTimeHMS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getState()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 54
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvImsi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvArfcn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvPci:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvLtime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 59
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvImsi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvArfcn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvPci:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvLtime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 64
    :cond_3
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvImsi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvArfcn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvPci:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvFtime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object p2, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iget-object p2, p2, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;->tvLtime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :goto_2
    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$1;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$1;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003c

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    .line 33
    new-instance p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->binding:Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;

    invoke-direct {p1, p2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter$ViewHolder;-><init>(Lcom/simdo/dw_db_s/databinding/DialogImsiListItemBinding;)V

    return-object p1
.end method

.method public setTempData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ImsiBean;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->mImsiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->notifyDataSetChanged()V

    return-void
.end method
