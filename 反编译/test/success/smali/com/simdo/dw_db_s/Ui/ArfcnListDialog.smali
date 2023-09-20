.class public Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;
.super Landroid/app/Dialog;
.source "ArfcnListDialog.java"


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

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

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110400

    .line 25
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->list:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->list:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "++++++++++++++"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const p2, 0x7f0c002f

    const/4 p3, 0x0

    .line 31
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->contentView:Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 40
    iget-object p3, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/4 p3, -0x1

    .line 43
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 44
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09015d

    .line 50
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/ArfcnListAdapter;

    .line 54
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
