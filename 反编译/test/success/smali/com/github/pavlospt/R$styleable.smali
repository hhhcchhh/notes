.class public final Lcom/github/pavlospt/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/pavlospt/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleView:[I

.field public static final CircleView_cv_backgroundColorValue:I = 0x0

.field public static final CircleView_cv_fillColor:I = 0x1

.field public static final CircleView_cv_fillRadius:I = 0x2

.field public static final CircleView_cv_strokeColorValue:I = 0x3

.field public static final CircleView_cv_strokeWidthSize:I = 0x4

.field public static final CircleView_cv_subtitleColor:I = 0x5

.field public static final CircleView_cv_subtitleSize:I = 0x6

.field public static final CircleView_cv_subtitleText:I = 0x7

.field public static final CircleView_cv_titleColor:I = 0x8

.field public static final CircleView_cv_titleSize:I = 0x9

.field public static final CircleView_cv_titleSubtitleSpace:I = 0xa

.field public static final CircleView_cv_titleText:I = 0xb


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/pavlospt/R$styleable;->CircleView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040138
        0x7f040139
        0x7f04013a
        0x7f04013b
        0x7f04013c
        0x7f04013d
        0x7f04013e
        0x7f04013f
        0x7f040140
        0x7f040141
        0x7f040142
        0x7f040143
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
