.class public Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;
.super Landroid/widget/BaseAdapter;
.source "AutoSearchAdpter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;,
        Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mFilter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmList(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmList(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mUnfilteredData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mFilter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter-IA;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mFilter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mFilter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->context:Landroid/content/Context;

    const p3, 0x7f0c0047

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance p3, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;

    invoke-direct {p3}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;-><init>()V

    const v0, 0x7f0900e5

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;

    .line 61
    :goto_0
    iget-object p3, p3, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->mUnfilteredData:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->notifyDataSetChanged()V

    return-void
.end method
