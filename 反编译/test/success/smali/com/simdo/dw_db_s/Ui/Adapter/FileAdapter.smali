.class public Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mUpdateFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/File/FileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/File/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 48
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0048

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090114

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f090117

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090118

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/File/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/File/FileItem;->getFileIcon()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object p3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p3}, Lcom/simdo/dw_db_s/File/FileItem;->getFileSize()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double p3, v2, v4

    if-nez p3, :cond_0

    const/16 p1, 0x8

    .line 56
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 58
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/File/FileItem;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/File/FileItem;->getFileSize()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2
.end method
