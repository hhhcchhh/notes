.class public Lcom/simdo/dw_db_s/Ui/ProcessImg;
.super Landroid/widget/LinearLayout;
.source "ProcessImg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private circleView1:Lcom/github/pavlospt/CircleView;

.field private circleView2:Lcom/github/pavlospt/CircleView;

.field private circleView3:Lcom/github/pavlospt/CircleView;

.field private circleView4:Lcom/github/pavlospt/CircleView;

.field private circleView5:Lcom/github/pavlospt/CircleView;

.field private circleView6:Lcom/github/pavlospt/CircleView;

.field private circleViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/pavlospt/CircleView;",
            ">;"
        }
    .end annotation
.end field

.field private color:I

.field private context:Landroid/content/Context;

.field private layouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private process:I

.field private process1:Landroid/widget/LinearLayout;

.field private process2:Landroid/widget/LinearLayout;

.field private process3:Landroid/widget/LinearLayout;

.field private process4:Landroid/widget/LinearLayout;

.field private process5:Landroid/widget/LinearLayout;

.field private process6:Landroid/widget/LinearLayout;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field private textView3:Landroid/widget/TextView;

.field private textView4:Landroid/widget/TextView;

.field private textView5:Landroid/widget/TextView;

.field private textView6:Landroid/widget/TextView;

.field private texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private total:I

.field private view1l:Landroid/view/View;

.field private view1r:Landroid/view/View;

.field private view2l:Landroid/view/View;

.field private view2r:Landroid/view/View;

.field private view3l:Landroid/view/View;

.field private view3r:Landroid/view/View;

.field private view4l:Landroid/view/View;

.field private view4r:Landroid/view/View;

.field private view5l:Landroid/view/View;

.field private view5r:Landroid/view/View;

.field private view6l:Landroid/view/View;

.field private view6r:Landroid/view/View;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ProcessImg"

    .line 21
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    const-string v0, "#E0E0E0"

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->total:I

    iput v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process:I

    .line 37
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "ProcessImg"

    .line 21
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->TAG:Ljava/lang/String;

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    const-string p2, "#E0E0E0"

    .line 32
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->total:I

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process:I

    .line 43
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0900a8

    .line 49
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView1:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0900a9

    .line 50
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView2:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0900aa

    .line 51
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView3:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0900ab

    .line 52
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView4:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0900ac

    .line 53
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView5:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0900ad

    .line 54
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/pavlospt/CircleView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView6:Lcom/github/pavlospt/CircleView;

    const v0, 0x7f0901d0

    .line 55
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process1:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d1

    .line 56
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process2:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d2

    .line 57
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process3:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d3

    .line 58
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process4:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d4

    .line 59
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process5:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d5

    .line 60
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process6:Landroid/widget/LinearLayout;

    const v0, 0x7f09024d

    .line 61
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView1:Landroid/widget/TextView;

    const v0, 0x7f09024e

    .line 62
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView2:Landroid/widget/TextView;

    const v0, 0x7f09024f

    .line 63
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView3:Landroid/widget/TextView;

    const v0, 0x7f090250

    .line 64
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView4:Landroid/widget/TextView;

    const v0, 0x7f090251

    .line 65
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView5:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 66
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView6:Landroid/widget/TextView;

    const v0, 0x7f0902aa

    .line 67
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view1l:Landroid/view/View;

    const v0, 0x7f0902ab

    .line 68
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view1r:Landroid/view/View;

    const v0, 0x7f0902ac

    .line 69
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view2l:Landroid/view/View;

    const v0, 0x7f0902ad

    .line 70
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view2r:Landroid/view/View;

    const v0, 0x7f0902ae

    .line 71
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view3l:Landroid/view/View;

    const v0, 0x7f0902af

    .line 72
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view3r:Landroid/view/View;

    const v0, 0x7f0902b0

    .line 73
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view4l:Landroid/view/View;

    const v0, 0x7f0902b1

    .line 74
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view4r:Landroid/view/View;

    const v0, 0x7f0902b2

    .line 75
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view5l:Landroid/view/View;

    const v0, 0x7f0902b3

    .line 76
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view5r:Landroid/view/View;

    const v0, 0x7f0902b4

    .line 77
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view6l:Landroid/view/View;

    const v0, 0x7f0902b5

    .line 78
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view6r:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView1:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView2:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView3:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView4:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView5:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleView6:Lcom/github/pavlospt/CircleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process1:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process3:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process4:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process5:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process6:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->textView6:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view1l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view1r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view2l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view2r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view3l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view3r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view4l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view4r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view5l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view5r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view6l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->view6r:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public setClick(ILcom/simdo/dw_db_s/Ui/ProcessImg$Click;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/simdo/dw_db_s/Ui/ProcessImg$1;

    invoke-direct {v0, p0, p2}, Lcom/simdo/dw_db_s/Ui/ProcessImg$1;-><init>(Lcom/simdo/dw_db_s/Ui/ProcessImg;Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 117
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    .line 118
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->total:I

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process:I

    invoke-virtual {p0, p1, v0}, Lcom/simdo/dw_db_s/Ui/ProcessImg;->setProcess(II)V

    return-void
.end method

.method public setProcess(II)V
    .locals 5

    .line 128
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->total:I

    .line 129
    iput p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->process:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->layouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "#CCCCCC"

    if-ge v1, v2, :cond_2

    if-ge v1, p2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v3}, Lcom/github/pavlospt/CircleView;->setFillColor(I)V

    .line 138
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v3}, Lcom/github/pavlospt/CircleView;->setBackgroundColor(I)V

    .line 139
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v3}, Lcom/github/pavlospt/CircleView;->setStrokeColor(I)V

    .line 140
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/pavlospt/CircleView;->setFillColor(I)V

    .line 145
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/pavlospt/CircleView;->setBackgroundColor(I)V

    .line 146
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    iget v4, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v4}, Lcom/github/pavlospt/CircleView;->setStrokeColor(I)V

    .line 148
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->circleViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/pavlospt/CircleView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/pavlospt/CircleView;->setStrokeColor(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 152
    :goto_3
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, p2, 0x2

    if-ge v1, v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->color:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    :cond_4
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_5

    .line 161
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->views:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void
.end method

.method public setTitle(ILjava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg;->texts:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
