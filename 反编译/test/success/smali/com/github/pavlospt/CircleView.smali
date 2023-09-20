.class public Lcom/github/pavlospt/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static DEFAULT_FILL_COLOR:I = -0xbbbbbc

.field private static DEFAULT_FILL_RADIUS:F = 0.9f

.field private static DEFAULT_SHOW_SUBTITLE:Z = true

.field private static DEFAULT_SHOW_TITLE:Z = true

.field private static DEFAULT_STROKE_COLOR:I = -0xff0001

.field private static DEFAULT_STROKE_WIDTH:F = 5.0f

.field private static DEFAULT_SUBTITLE:Ljava/lang/String; = "Subtitle"

.field private static DEFAULT_SUBTITLE_COLOR:I = -0x1

.field private static DEFAULT_SUBTITLE_SIZE:F = 20.0f

.field private static DEFAULT_TITLE:Ljava/lang/String; = "Title"

.field private static DEFAULT_TITLE_COLOR:I = -0xff0001

.field private static DEFAULT_TITLE_SIZE:F = 25.0f

.field private static DEFAULT_TITLE_SUBTITLE_SPACE:F = 0.0f

.field private static final DEFAULT_VIEW_SIZE:I = 0x60


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mFillColor:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFillRadius:F

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mShowSubtitle:Z

.field private mShowTitle:Z

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F

.field private mSubTextPaint:Landroid/text/TextPaint;

.field private mSubtitleColor:I

.field private mSubtitleSize:F

.field private mSubtitleText:Ljava/lang/String;

.field private mTitleColor:I

.field private mTitleSize:F

.field private mTitleSubtitleSpace:F

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextPaint:Landroid/text/TextPaint;

.field private mViewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    .line 39
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    .line 40
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    .line 41
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_BACKGROUND_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    .line 42
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    .line 44
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    .line 47
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    .line 48
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    .line 49
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_WIDTH:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    .line 50
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_RADIUS:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    .line 51
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SUBTITLE_SPACE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    .line 53
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_TITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowTitle:Z

    .line 54
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_SUBTITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowSubtitle:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/github/pavlospt/CircleView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    .line 39
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    .line 40
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    .line 41
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_BACKGROUND_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    .line 42
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    .line 44
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    .line 47
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    .line 48
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    .line 49
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_WIDTH:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    .line 50
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_RADIUS:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    .line 51
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SUBTITLE_SPACE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    .line 53
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_TITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowTitle:Z

    .line 54
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_SUBTITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowSubtitle:Z

    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/github/pavlospt/CircleView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    .line 39
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    .line 40
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    .line 41
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_BACKGROUND_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    .line 42
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_COLOR:I

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    .line 44
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    .line 47
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    .line 48
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_SIZE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    .line 49
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_WIDTH:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    .line 50
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_RADIUS:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    .line 51
    sget p1, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SUBTITLE_SPACE:F

    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    .line 53
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_TITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowTitle:Z

    .line 54
    sget-boolean p1, Lcom/github/pavlospt/CircleView;->DEFAULT_SHOW_SUBTITLE:Z

    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowSubtitle:Z

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/github/pavlospt/CircleView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/github/pavlospt/R$styleable;->CircleView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 87
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    .line 90
    :cond_0
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_subtitleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_subtitleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    .line 94
    :cond_1
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_titleColor:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    .line 95
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_subtitleColor:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    .line 96
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_backgroundColorValue:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    .line 97
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_strokeColorValue:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    .line 98
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_fillColor:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    .line 100
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_titleSize:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SIZE:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    .line 101
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_subtitleSize:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_SUBTITLE_SIZE:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    .line 103
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_strokeWidthSize:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_STROKE_WIDTH:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    .line 104
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_fillRadius:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_FILL_RADIUS:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    .line 106
    sget p2, Lcom/github/pavlospt/R$styleable;->CircleView_cv_titleSubtitleSpace:I

    sget v0, Lcom/github/pavlospt/CircleView;->DEFAULT_TITLE_SUBTITLE_SPACE:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 112
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 113
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 116
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 117
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 120
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    .line 121
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 122
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 125
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 131
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 138
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mFillPaint:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 144
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mFillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object p1, p0, Lcom/github/pavlospt/CircleView;->mFillPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private invalidatePaints()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method private invalidateTextPaints()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 155
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    return v0
.end method

.method public getFillRadius()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 325
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    return v0
.end method

.method public getSubtitleColor()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    return v0
.end method

.method public getSubtitleSize()F
    .locals 1

    .line 376
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    return v0
.end method

.method public getSubtitleText()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    return v0
.end method

.method public getTitleSize()F
    .locals 1

    .line 359
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    return v0
.end method

.method public getTitleSubtitleSpace()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 180
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/pavlospt/CircleView;->mViewSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/github/pavlospt/CircleView;->mViewSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/github/pavlospt/CircleView;->mViewSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 183
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 185
    iget-object v3, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 187
    iget-object v0, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 188
    iget-object v3, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 190
    iget-object v5, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/github/pavlospt/CircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 192
    iget v4, p0, Lcom/github/pavlospt/CircleView;->mViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    mul-float v4, v4, v5

    add-float/2addr v4, v2

    .line 194
    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float/2addr v4, v2

    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    float-to-int v0, v0

    .line 197
    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    float-to-int v1, v3

    .line 199
    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mInnerRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/github/pavlospt/CircleView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 201
    iget-boolean v2, p0, Lcom/github/pavlospt/CircleView;->mShowTitle:Z

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/github/pavlospt/CircleView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    :cond_0
    iget-boolean v2, p0, Lcom/github/pavlospt/CircleView;->mShowSubtitle:Z

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    int-to-float v0, v0

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget v3, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/github/pavlospt/CircleView;->mSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 v0, 0x60

    .line 170
    invoke-static {v0, p1}, Lcom/github/pavlospt/CircleView;->resolveSize(II)I

    move-result p1

    .line 171
    invoke-static {v0, p2}, Lcom/github/pavlospt/CircleView;->resolveSize(II)I

    move-result p2

    .line 172
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/github/pavlospt/CircleView;->mViewSize:I

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/github/pavlospt/CircleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(F)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeWidth:F

    .line 334
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mBackgroundColor:I

    .line 308
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidatePaints()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillColor:I

    .line 317
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidatePaints()V

    return-void
.end method

.method public setFillRadius(F)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mFillRadius:F

    .line 351
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method public setShowSubtitle(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowSubtitle:Z

    .line 232
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/github/pavlospt/CircleView;->mShowTitle:Z

    .line 223
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mStrokeColor:I

    .line 299
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidatePaints()V

    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleColor:I

    .line 419
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidateTextPaints()V

    return-void
.end method

.method public setSubtitleSize(F)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleSize:F

    .line 385
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidateTextPaints()V

    return-void
.end method

.method public setSubtitleText(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mSubtitleText:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleColor:I

    .line 402
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidateTextPaints()V

    return-void
.end method

.method public setTitleSize(F)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSize:F

    .line 368
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidateTextPaints()V

    return-void
.end method

.method public setTitleSubtitleSpace(F)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/github/pavlospt/CircleView;->mTitleSubtitleSpace:F

    .line 436
    invoke-direct {p0}, Lcom/github/pavlospt/CircleView;->invalidateTextPaints()V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/github/pavlospt/CircleView;->mTitleText:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/github/pavlospt/CircleView;->invalidate()V

    return-void
.end method
