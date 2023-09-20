.class public Lcom/simdo/dw_db_s/Ui/MyListview;
.super Landroid/widget/ListView;
.source "MyListview.java"


# instance fields
.field private lasty:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getFirstVisiblePosition()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getLastVisiblePosition()I

    move-result v3

    .line 42
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getCount()I

    move-result v4

    .line 44
    iget v5, p0, Lcom/simdo/dw_db_s/Ui/MyListview;->lasty:F

    const/4 v6, 0x0

    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    cmpg-float v0, v1, v5

    if-gez v0, :cond_2

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/MyListview;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 64
    :goto_0
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/MyListview;->lasty:F

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
