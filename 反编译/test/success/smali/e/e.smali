.class public Le/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/e; = null

.field public static final b:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/dwdbsdk/Logcat/SdkLog;->createFile()V

    return-void
.end method

.method public static a()Le/e;
    .locals 2

    .line 1
    const-class v0, Le/e;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/e;->a:Le/e;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le/e;

    invoke-direct {v1}, Le/e;-><init>()V

    sput-object v1, Le/e;->a:Le/e;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Le/e;->a:Le/e;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(I)J
    .locals 8

    .line 55
    invoke-static {p1}, Lcom/dwdbsdk/Bean/LteBand;->F_dl_low(I)D

    move-result-wide v0

    .line 56
    invoke-static {p1}, Lcom/dwdbsdk/Bean/LteBand;->N_offs_dl(I)D

    move-result-wide v2

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v6

    add-double/2addr v4, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    double-to-long v4, v4

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LteFreqCarrier "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-wide v4
.end method

.method public a(III)J
    .locals 8

    const v0, 0x927c0

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1388

    move-wide v4, v0

    goto :goto_0

    :cond_0
    const v1, 0x1ec59b

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    const-wide v0, 0xb2d05e00L

    const-wide/16 v2, 0x3a98

    const-wide/32 v4, 0x927c0

    goto :goto_0

    :cond_1
    if-lt p1, v1, :cond_2

    const v0, 0x32093e

    if-ge p1, v0, :cond_2

    const-wide v0, 0x5a56adb00L

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x1ec59b

    :goto_0
    int-to-long v6, p1

    sub-long/2addr v6, v4

    mul-long v2, v2, v6

    add-long/2addr v0, v2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OrxFreqCarrier\uff1assb_cent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    mul-int/lit16 v2, p3, 0xb4

    mul-int/lit8 v3, p2, 0xf

    add-int/2addr v2, v3

    .line 66
    div-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    long-to-double v0, v0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide v2, 0x41876e8900000000L    # 4.914E7

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OrxFreqCarrier\uff1aFreq_carrier = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-wide v0

    :cond_2
    const-string p1, "OrxFreqCarrier return -1"

    .line 74
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public a(Ljava/util/List;I)Lcom/dwdbsdk/Bean/DB/SsbBean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/dwdbsdk/Bean/DB/SsbBean;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x1869f

    if-ge v3, v4, :cond_0

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Le/e;->a(I)J

    move-result-wide v3

    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Le/e;->b(I)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LteSsb ssb_cent = -1,arfcn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 p1, 0x1

    .line 25
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_5

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_3

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 29
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    sub-long/2addr v2, v4

    const-wide/32 v6, 0xf4240

    .line 34
    div-long v6, v2, v6

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "LteSsb band_width(MHz) = "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 v8, 0x64

    cmp-long p1, v6, v8

    if-lez p1, :cond_6

    const-string p1, "LteSsb The band width between max ssb_freq and min ssb_freq is bigger than 100MHz"

    .line 37
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const-wide/16 v6, 0x2

    .line 40
    div-long/2addr v2, v6

    add-long v7, v4, v2

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "LteSsb LO_frequency = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", time_offset = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 42
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v7, v2

    long-to-double v2, v2

    const-wide v4, 0x40d3880000000000L    # 20000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_7

    const-wide/high16 v4, 0x40c8000000000000L    # 12288.0

    add-double/2addr v2, v4

    .line 50
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LteSsb dds_list "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    :cond_8
    new-instance p1, Lcom/dwdbsdk/Bean/DB/SsbBean;

    const/4 v10, 0x0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/dwdbsdk/Bean/DB/SsbBean;-><init>(JIILjava/util/List;)V

    return-object p1
.end method

.method public final b(I)J
    .locals 8

    const v0, 0x927c0

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1388

    move-wide v4, v0

    goto :goto_0

    :cond_0
    const v1, 0x1ec59b

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    const-wide v0, 0xb2d05e00L

    const-wide/16 v2, 0x3a98

    const-wide/32 v4, 0x927c0

    goto :goto_0

    :cond_1
    if-lt p1, v1, :cond_2

    const v0, 0x32093e

    if-ge p1, v0, :cond_2

    const-wide v0, 0x5a56adb00L

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x1ec59b

    :goto_0
    int-to-long v6, p1

    sub-long/2addr v6, v4

    mul-long v2, v2, v6

    add-long/2addr v0, v2

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NrCenterFreq "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-wide v0

    :cond_2
    const-string p1, "NrCenterFreq return -1"

    .line 62
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b(Ljava/util/List;I)Lcom/dwdbsdk/Bean/DB/SsbBean;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/dwdbsdk/Bean/DB/SsbBean;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Le/e;->b(I)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_0

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v10, 0x36ee80

    sub-long v12, v8, v10

    .line 8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v8, v10

    .line 9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "NrSsb ssb_cent = -1,arfcn = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p0

    .line 14
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x1

    const/4 v8, 0x1

    .line 15
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 16
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v5, v9

    if-gez v11, :cond_2

    .line 17
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 20
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 21
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sub-long/2addr v5, v8

    const-wide/32 v10, 0xf4240

    .line 27
    div-long v10, v5, v10

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NrSsb band_width(MHz) = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 v12, 0xc8

    const/4 v1, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_6

    const-string v0, "NrSsb The band width between max ssb_freq and min ssb_freq is bigger than 200MHz"

    .line 30
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-wide/16 v10, 0x7530

    .line 33
    rem-long v12, v5, v10

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_9

    .line 36
    div-long/2addr v5, v10

    long-to-double v5, v5

    long-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v10

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide v10, 0x40dd4c0000000000L    # 30000.0

    mul-double v5, v5, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v5

    double-to-long v13, v8

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NrSsb LO_frequency = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NrSsb time_offset = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 47
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v13, v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    const/16 v6, 0x1001

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v8

    double-to-long v8, v10

    long-to-int v6, v8

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "NrSsb RB_start_list "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide v10, 0x40dd4c0000000000L    # 30000.0

    goto :goto_4

    .line 56
    :cond_7
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    .line 57
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->setLock(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 59
    :cond_8
    new-instance v0, Lcom/dwdbsdk/Bean/DB/SsbBean;

    const/16 v16, 0x1

    move-object v12, v0

    move/from16 v15, p2

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lcom/dwdbsdk/Bean/DB/SsbBean;-><init>(JIILjava/util/List;)V

    return-object v0

    :cond_9
    const-string v0, "NrSsb The band width between max ssb_freq and min ssb_freq can not Divided by 30KHz !!!"

    .line 60
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getOrxList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->resetLock()V

    return-void
.end method
