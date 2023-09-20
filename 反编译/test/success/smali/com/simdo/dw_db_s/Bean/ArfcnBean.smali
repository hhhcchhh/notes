.class public Lcom/simdo/dw_db_s/Bean/ArfcnBean;
.super Ljava/lang/Object;
.source "ArfcnBean.java"


# instance fields
.field private DL_ARFCN:I

.field private Kssb:I

.field private Rb_Offset:I

.field private UL_ARFCN:I

.field private solt_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->DL_ARFCN:I

    .line 11
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    const v0, 0x113ff

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    const/16 v0, 0x26bf

    if-gt p1, v0, :cond_0

    add-int/lit16 p1, p1, 0x4650

    .line 14
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    :cond_0
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    .line 17
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 18
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    goto/16 :goto_2

    .line 20
    :cond_1
    invoke-static {p1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result p1

    const v0, 0x67412

    const v1, 0x673ea

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 22
    iget v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->DL_ARFCN:I

    if-eq v4, v1, :cond_3

    if-ne v4, v0, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    iget v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    const v5, 0x9470

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    iget v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    const v5, 0x978e

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    const v4, 0x225b0

    .line 33
    iput v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    :cond_5
    :goto_1
    const/16 v4, 0xc

    const/16 v5, 0x9

    const/16 v6, 0x17

    const/4 v7, 0x6

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    const/16 v0, 0x29

    const/16 v1, 0x13

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_7

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0xe

    .line 70
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    const/16 p1, 0xfe

    .line 71
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 72
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    goto :goto_2

    .line 64
    :cond_7
    iput v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    const/16 p1, 0x18

    .line 65
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 66
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    goto :goto_2

    .line 58
    :cond_8
    iput v7, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    const/16 p1, 0x1e

    .line 59
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 60
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    goto :goto_2

    .line 48
    :cond_9
    iput v7, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    .line 49
    iput v6, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 50
    iput v5, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    .line 51
    iget p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->DL_ARFCN:I

    const v0, 0x2553a

    if-ne p1, v0, :cond_c

    const/16 p1, 0x16

    .line 52
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    goto :goto_2

    .line 38
    :cond_a
    iput v7, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    .line 39
    iput v6, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    .line 40
    iput v5, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    .line 41
    iget p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->DL_ARFCN:I

    if-eq p1, v1, :cond_b

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    .line 43
    iput v4, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public getDLArfcn()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->DL_ARFCN:I

    return v0
.end method

.method public getKssb()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Kssb:I

    return v0
.end method

.method public getRbOffset()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->Rb_Offset:I

    return v0
.end method

.method public getSoltIndex()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->solt_index:I

    return v0
.end method

.method public getULArfcn()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ArfcnBean;->UL_ARFCN:I

    return v0
.end method
