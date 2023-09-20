.class public Lcom/github/mikephil/charting/utils/ColorTemplate;
.super Ljava/lang/Object;
.source "ColorTemplate.java"


# static fields
.field public static final COLORFUL_COLORS:[I

.field public static final COLOR_NONE:I = 0x112233

.field public static final COLOR_SKIP:I = 0x112234

.field public static final JOYFUL_COLORS:[I

.field public static final LIBERTY_COLORS:[I

.field public static final MATERIAL_COLORS:[I

.field public static final PASTEL_COLORS:[I

.field public static final VORDIPLOM_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xf8

    const/16 v3, 0xf6

    const/16 v4, 0xcf

    .line 35
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x94

    const/16 v4, 0xd4

    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const/16 v2, 0xb4

    const/16 v5, 0xbb

    const/16 v6, 0x88

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    const/16 v2, 0xae

    const/16 v6, 0xaf

    const/16 v7, 0x76

    .line 36
    invoke-static {v7, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v6, 0x3

    aput v2, v1, v6

    const/16 v2, 0x6d

    const/16 v7, 0x82

    const/16 v8, 0x2a

    invoke-static {v8, v2, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/github/mikephil/charting/utils/ColorTemplate;->LIBERTY_COLORS:[I

    new-array v1, v0, [I

    const/16 v2, 0x8a

    const/16 v8, 0xd9

    const/16 v9, 0x50

    .line 39
    invoke-static {v8, v9, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x7

    const/16 v10, 0xfe

    const/16 v11, 0x95

    invoke-static {v10, v11, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0x78

    const/16 v12, 0xf7

    invoke-static {v10, v12, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v5

    const/16 v2, 0x6a

    const/16 v10, 0xa7

    const/16 v13, 0x86

    .line 40
    invoke-static {v2, v10, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v1, v6

    const/16 v10, 0xc2

    const/16 v14, 0xd1

    const/16 v15, 0x35

    invoke-static {v15, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v1, v7

    sput-object v1, Lcom/github/mikephil/charting/utils/ColorTemplate;->JOYFUL_COLORS:[I

    new-array v1, v0, [I

    const/16 v10, 0x59

    const/16 v14, 0x80

    const/16 v12, 0x40

    .line 43
    invoke-static {v12, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v1, v3

    const/16 v10, 0xa5

    const/16 v12, 0x7c

    invoke-static {v11, v10, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v1, v4

    const/16 v10, 0xb8

    const/16 v11, 0xa2

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v5

    const/16 v8, 0xbf

    .line 44
    invoke-static {v8, v13, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v6

    const/16 v8, 0x30

    const/16 v10, 0xb3

    invoke-static {v10, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v7

    sput-object v1, Lcom/github/mikephil/charting/utils/ColorTemplate;->PASTEL_COLORS:[I

    new-array v1, v0, [I

    const/16 v8, 0x25

    const/16 v9, 0x52

    const/16 v11, 0xc1

    .line 47
    invoke-static {v11, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v3

    const/16 v8, 0x66

    const/16 v9, 0xff

    invoke-static {v9, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v4

    const/16 v8, 0xf5

    const/16 v11, 0xc7

    invoke-static {v8, v11, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v1, v5

    const/16 v8, 0x96

    const/16 v11, 0x1f

    .line 48
    invoke-static {v2, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x64

    invoke-static {v10, v2, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v7

    sput-object v1, Lcom/github/mikephil/charting/utils/ColorTemplate;->COLORFUL_COLORS:[I

    new-array v0, v0, [I

    const/16 v1, 0xc0

    const/16 v2, 0x8c

    .line 51
    invoke-static {v1, v9, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0xf7

    invoke-static {v9, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xd0

    invoke-static {v9, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xea

    .line 52
    invoke-static {v2, v1, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x9d

    invoke-static {v9, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->VORDIPLOM_COLORS:[I

    new-array v0, v7, [I

    const-string v1, "#2ecc71"

    .line 55
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#f1c40f"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string v1, "#e74c3c"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const-string v1, "#3498db"

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->rgb(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->MATERIAL_COLORS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorWithAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static createColors(Landroid/content/res/Resources;[I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 105
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createColors([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getHoloBlue()I
    .locals 3

    const/16 v0, 0xb5

    const/16 v1, 0xe5

    const/16 v2, 0x33

    .line 78
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static rgb(Ljava/lang/String;)I
    .locals 2

    const-string v0, "#"

    const-string v1, ""

    .line 65
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    .line 69
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method
