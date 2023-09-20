.class public Lcom/dwdbsdk/Bean/DW/ArfcnConvert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FI)F
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    if-nez p1, :cond_0

    mul-float p0, p0, v0

    const/high16 p1, 0x43160000    # 150.0f

    sub-float/2addr p0, p1

    const/high16 p1, 0x44960000    # 1200.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p0, p0, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    mul-float p0, p0, v0

    if-ne p1, v1, :cond_1

    const p1, 0x4a371b00    # 3000000.0f

    sub-float/2addr p0, p1

    const/high16 p1, 0x44b40000    # 1440.0f

    div-float/2addr p0, p1

    const p1, 0x45ea5800    # 7499.0f

    goto :goto_0

    :cond_1
    const p1, 0x4bb90370    # 2.425008E7f

    sub-float/2addr p0, p1

    const/high16 p1, 0x46870000    # 17280.0f

    div-float/2addr p0, p1

    const p1, 0x46ade000    # 22256.0f

    :goto_0
    add-float/2addr p0, p1

    :goto_1
    return p0
.end method

.method public static a(I)F
    .locals 3

    const v0, 0x927bf

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x3ba3d70a    # 0.005f

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const v0, 0x1ec59a

    if-gt p0, v0, :cond_1

    const v1, 0x3c75c28f    # 0.015f

    const v0, 0x453b8000    # 3000.0f

    const v2, 0x49127c00    # 600000.0f

    goto :goto_0

    :cond_1
    const v1, 0x3d75c28f    # 0.06f

    const v0, 0x46bd7429

    const v2, 0x49f62cd8    # 2016667.0f

    :goto_0
    int-to-float p0, p0

    sub-float/2addr p0, v2

    mul-float v1, v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static getGSCN(I)I
    .locals 1

    const v0, 0x927bf

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const v0, 0x1ec59a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 1
    :goto_0
    invoke-static {p0}, Lcom/dwdbsdk/Bean/DW/ArfcnConvert;->a(I)F

    move-result p0

    invoke-static {p0, v0}, Lcom/dwdbsdk/Bean/DW/ArfcnConvert;->a(FI)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static parse5to4(Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ ARFCN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u0394FGloba: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x927bf

    if-lez p0, :cond_0

    if-gt p0, v1, :cond_0

    const/4 v1, 0x0

    const v2, 0x3ba3d70a    # 0.005f

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v1, :cond_1

    const v1, 0x1ec59a

    if-gt p0, v1, :cond_1

    const v2, 0x3c75c28f    # 0.015f

    const v1, 0x453b8000    # 3000.0f

    const v3, 0x49127c00    # 600000.0f

    goto :goto_0

    :cond_1
    const v2, 0x3d75c28f    # 0.06f

    const v1, 0x46bd7429

    const v3, 0x49f62cd8    # 2016667.0f

    .line 21
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",FREF_Offs: "

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",NREF_Offs: "

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",NR[C-FRE]: "

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p0, p0

    sub-float/2addr p0, v3

    mul-float v2, v2, p0

    add-float/2addr v1, v2

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",ifdl_low: "

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p0, 0x451c0000    # 2496.0f

    const v2, 0x4520a000    # 2570.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_2

    cmpg-float p0, v1, v2

    if-gez p0, :cond_2

    const/16 p0, 0x9c0

    const v2, 0x9ae2

    goto :goto_1

    :cond_2
    cmpl-float p0, v1, v2

    if-ltz p0, :cond_3

    const p0, 0x45273000    # 2675.0f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_3

    const/16 p0, 0xa0a

    const v2, 0x9376

    goto :goto_1

    :cond_3
    const p0, 0x45548000    # 3400.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_4

    const p0, 0x455de000    # 3550.0f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_4

    const/16 p0, 0xd48

    const v2, 0xa276

    goto :goto_1

    :cond_4
    const/16 p0, 0xdde

    const v2, 0xd7c8

    .line 44
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",inoffs_dl: "

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ARFCN-L: "

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float v1, v1, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",("

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    int-to-float v2, p0

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_5

    add-int/lit8 p0, p0, 0x1

    .line 56
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_5

    add-int/lit8 p0, p0, -0x1

    .line 61
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ArfcnConvert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return p0
.end method
