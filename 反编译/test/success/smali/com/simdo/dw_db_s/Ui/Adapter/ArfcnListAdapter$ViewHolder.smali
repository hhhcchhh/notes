.class Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ArfcnListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field afrcn:Landroid/widget/TextView;

.field freqCarrier:Landroid/widget/TextView;

.field pa:Landroid/widget/TextView;

.field pk:Landroid/widget/TextView;

.field time_offset:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090051

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->afrcn:Landroid/widget/TextView;

    const v0, 0x7f090123

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->freqCarrier:Landroid/widget/TextView;

    const v0, 0x7f090265

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->time_offset:Landroid/widget/TextView;

    const v0, 0x7f0901bd

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->pa:Landroid/widget/TextView;

    const v0, 0x7f0901cd

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter$ViewHolder;->pk:Landroid/widget/TextView;

    return-void
.end method
