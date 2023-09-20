.class Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;
.super Landroid/widget/Filter;
.source "AutoSearchAdpter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;


# direct methods
.method private constructor <init>(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 83
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fgetmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-static {v3}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fgetmList(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fputmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Ljava/util/ArrayList;)V

    :cond_0
    if-eqz p1, :cond_4

    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fgetmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 101
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_3
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fgetmUnfilteredData(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 91
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->-$$Nest$fputmList(Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;Ljava/util/List;)V

    .line 120
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->notifyDataSetChanged()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter$ArrayFilter;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
