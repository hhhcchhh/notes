.class public Lcom/simdo/dw_db_s/Util/Mode3;
.super Ljava/lang/Object;
.source "Mode3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoParsePci(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;)I"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 21
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_6

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/simdo/dw_db_s/Util/DataUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v2, p0, v2

    if-eq v2, v4, :cond_4

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_3

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    :cond_3
    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    add-int/2addr p0, v4

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    add-int/2addr p0, v3

    goto :goto_4

    :cond_8
    add-int/lit8 p0, p0, 0x3

    :goto_4
    const/16 p1, 0x3ef

    if-le p0, p1, :cond_9

    add-int/lit8 p0, p0, -0x2

    :cond_9
    if-gtz p0, :cond_a

    add-int/lit8 p0, p0, 0x1

    :cond_a
    return p0
.end method

.method public static autoParsePci(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "199"

    goto/16 :goto_4

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 65
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 66
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/Mode3;->have2mode(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    const/4 p0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 69
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge p0, v6, :cond_9

    .line 70
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, p1, :cond_6

    if-eq v6, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    const/4 p0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_9
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_a

    .line 89
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/Mode3;->getLowestRx(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    if-eqz v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    if-ne v3, p1, :cond_d

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 105
    :cond_d
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/Mode3;->have2mode(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 109
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3ef

    if-le p0, p1, :cond_e

    add-int/lit8 p0, p0, -0x2

    .line 113
    :cond_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLowestRx(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/LocBean;->getRx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    .line 119
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 120
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getRx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_0

    move v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static have2mode(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :goto_2
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v2}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 161
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 162
    invoke-static {p0, v2}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v0

    if-nez v0, :cond_6

    add-int/2addr p0, v3

    goto :goto_4

    :cond_6
    add-int/2addr p0, v4

    .line 167
    :goto_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    .line 169
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 170
    invoke-static {p0, v2}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v0

    if-nez v0, :cond_8

    add-int/2addr p0, v4

    goto :goto_5

    :cond_8
    add-int/lit8 p0, p0, -0x1

    .line 175
    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 177
    :cond_9
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 178
    invoke-static {p0, v2}, Lcom/simdo/dw_db_s/Util/Mode3;->mode(II)I

    move-result v0

    if-ne v0, v4, :cond_a

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 p0, p0, -0x2

    .line 183
    :goto_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method private static mode(II)I
    .locals 0

    .line 189
    rem-int/2addr p0, p1

    return p0
.end method
