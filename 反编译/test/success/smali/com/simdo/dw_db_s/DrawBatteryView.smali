.class public Lcom/simdo/dw_db_s/DrawBatteryView;
.super Landroid/view/View;
.source "DrawBatteryView.java"


# instance fields
.field private ElectricQuantity:I

.field private StrokeWidth:I

.field private batteryPaint:Landroid/graphics/Paint;

.field private bottom:I

.field private electricQuantityGreenPaint:Landroid/graphics/Paint;

.field private electricQuantityRedPaint:Landroid/graphics/Paint;

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 19
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    .line 23
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    .line 24
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    const/16 p1, 0x32

    .line 25
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    const/16 p1, 0x19

    .line 26
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 19
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    .line 23
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    .line 24
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    const/16 p1, 0x32

    .line 25
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    const/16 p1, 0x19

    .line 26
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const/16 p1, 0xa

    .line 19
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    .line 23
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    .line 24
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    const/16 p1, 0x32

    .line 25
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    const/16 p1, 0x19

    .line 26
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 66
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->StrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget v10, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    .line 80
    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    iget v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    sub-int v3, v2, v1

    div-int/lit8 v3, v3, 0x4

    add-int v11, v1, v3

    .line 81
    iget v3, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    sub-int v4, v10, v3

    div-int/lit8 v4, v4, 0xf

    add-int v12, v10, v4

    sub-int v4, v2, v1

    .line 82
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    add-int v13, v1, v4

    add-int/lit8 v14, v3, 0x2

    add-int/lit8 v15, v1, 0x2

    sub-int v4, v10, v3

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 87
    iget v6, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v7, v2, -0x2

    sub-int v4, v10, v3

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v4, v4, v6

    float-to-int v6, v4

    sub-int v4, v2, v1

    .line 92
    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v1

    move/from16 v16, v4

    sub-int v4, v10, v3

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v17, 0x41a00000    # 20.0f

    mul-float v4, v4, v17

    float-to-int v4, v4

    sub-int v17, v2, v1

    .line 94
    div-int/lit8 v17, v17, 0x4

    mul-int/lit8 v17, v17, 0x3

    move/from16 v18, v7

    add-int v7, v1, v17

    move/from16 v17, v4

    sub-int v4, v10, v3

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v19, 0x41f00000    # 30.0f

    mul-float v4, v4, v19

    float-to-int v4, v4

    sub-int v19, v2, v1

    .line 96
    div-int/lit8 v19, v19, 0x4

    add-int v5, v1, v19

    sub-int v3, v10, v3

    int-to-float v3, v3

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v3, v3, v19

    const/high16 v19, 0x42aa0000    # 85.0f

    mul-float v3, v3, v19

    float-to-int v3, v3

    sub-int/2addr v2, v1

    .line 98
    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 101
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v6

    const/16 v6, 0x15

    move/from16 v20, v7

    const/16 v7, 0x14

    if-lt v2, v6, :cond_3

    .line 102
    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    int-to-float v2, v1

    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    int-to-float v3, v1

    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    int-to-float v4, v1

    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v21, 0x0

    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v1

    move-object/from16 v1, p1

    move/from16 v23, v16

    move/from16 v24, v17

    move/from16 v9, v19

    move/from16 v25, v18

    move/from16 v26, v20

    move/from16 v7, v21

    move v9, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v2, v10

    int-to-float v3, v11

    int-to-float v4, v12

    int-to-float v5, v13

    const/4 v7, 0x0

    .line 103
    iget-object v8, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 106
    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    if-lez v1, :cond_1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    int-to-float v2, v14

    int-to-float v3, v15

    int-to-float v4, v9

    move/from16 v6, v25

    int-to-float v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    iget-object v8, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_0
    move/from16 v6, v25

    goto :goto_0

    :cond_1
    move/from16 v6, v25

    const/16 v2, 0x14

    :goto_0
    if-lt v1, v2, :cond_2

    int-to-float v2, v14

    int-to-float v3, v15

    int-to-float v4, v9

    int-to-float v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 109
    iget-object v8, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    if-nez v1, :cond_6

    move/from16 v7, v19

    int-to-float v9, v7

    move/from16 v8, v23

    int-to-float v10, v8

    move/from16 v1, v24

    int-to-float v11, v1

    move/from16 v1, v26

    int-to-float v12, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 111
    iget-object v8, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 112
    iget-object v8, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_3
    move v9, v8

    move/from16 v8, v16

    move/from16 v27, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v28, v20

    .line 116
    new-instance v2, Landroid/graphics/RectF;

    iget v7, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->left:I

    int-to-float v7, v7

    move/from16 v16, v1

    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->top:I

    int-to-float v1, v1

    move/from16 v17, v3

    iget v3, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    int-to-float v3, v3

    move/from16 v18, v5

    iget v5, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    int-to-float v5, v5

    invoke-direct {v2, v7, v1, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move/from16 v7, v19

    invoke-virtual {v5, v2, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v10

    int-to-float v10, v11

    int-to-float v11, v12

    int-to-float v12, v13

    invoke-direct {v1, v2, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    iget v1, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    const/16 v2, 0x14

    if-lez v1, :cond_4

    if-ge v1, v2, :cond_4

    .line 121
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v4, v15

    int-to-float v7, v9

    int-to-float v6, v6

    invoke-direct {v1, v2, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    if-lt v1, v2, :cond_5

    .line 123
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v4, v15

    int-to-float v7, v9

    int-to-float v6, v6

    invoke-direct {v1, v2, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    .line 125
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v7

    int-to-float v6, v8

    move/from16 v7, v27

    int-to-float v7, v7

    move/from16 v8, v28

    int-to-float v8, v8

    invoke-direct {v1, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v4

    move/from16 v4, v18

    int-to-float v4, v4

    move/from16 v6, v17

    int-to-float v6, v6

    move/from16 v7, v16

    int-to-float v7, v7

    invoke-direct {v1, v2, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/simdo/dw_db_s/DrawBatteryView;->electricQuantityRedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setBatterySize(I)V
    .locals 5

    .line 42
    iget v0, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int p1, v3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->right:I

    .line 43
    iget p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    const-wide/high16 v3, 0x3fe4000000000000L    # 0.625

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->bottom:I

    .line 46
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/DrawBatteryView;->invalidate()V

    return-void
.end method

.method public setElectricQuantity(I)V
    .locals 1

    const/16 v0, 0x64

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 52
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    .line 56
    iput v0, p0, Lcom/simdo/dw_db_s/DrawBatteryView;->ElectricQuantity:I

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/DrawBatteryView;->invalidate()V

    return-void
.end method
