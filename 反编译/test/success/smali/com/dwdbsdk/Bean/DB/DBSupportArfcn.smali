.class public Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->c:Ljava/util/List;

    .line 235
    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->d:Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->d:Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->d:Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

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
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Util/SdkPref;->getSsbList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ssb_list"

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "arfcn"

    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "timingOffset"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "k1"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v3, "k2"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "freqCarrier"

    .line 49
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 50
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v3, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 55
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x7b49e

    const v3, 0x2dc6c0

    const/4 v4, 0x6

    const/16 v5, 0x1e

    const-wide v6, 0x98e2cb40L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x7d38e

    const/16 v5, 0xfa

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x7e37e

    const/4 v4, 0x4

    const/16 v5, 0x8c

    const-wide v6, 0x9b48a7b0L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x7bd0e

    const/4 v4, 0x6

    const/16 v5, 0x5a

    const-wide v6, 0x98e2cb40L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x8053e

    const/4 v4, 0x4

    const/16 v5, 0x30

    const-wide v6, 0x9ed88530L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x9ac80

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/16 v5, 0x18

    const-wide v6, 0xd3a4e880L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x99240

    const-wide v6, 0xcda2d280L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0xb09a0

    const/16 v4, 0xe

    const/16 v5, 0xe6

    const-wide v6, 0x121154790L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x684f2

    const/4 v4, 0x6

    const/16 v5, 0x17

    const-wide v6, 0x81caedc0L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x673ea

    const/4 v4, 0x2

    const/16 v5, 0xc

    const-wide v6, 0x809d6a40L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x67412

    const-wide v6, 0x80a07780L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x66b66

    const/4 v4, 0x6

    const/16 v5, 0xf

    const-wide v6, 0x809d6a40L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x68b6e

    const/16 v4, 0xa

    const/16 v5, 0x44

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x25cba

    const/4 v4, 0x6

    const/16 v5, 0x17

    const-wide v6, 0x121154790L

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x2553a

    const/16 v5, 0x16

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x2652a

    const/16 v4, 0xa

    const/16 v5, 0x87

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x2544a

    const/4 v4, 0x6

    const/16 v5, 0xc

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x25bca

    const/4 v4, 0x2

    const/16 v5, 0x45

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v8, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const v2, 0x2634a

    const/4 v4, 0x6

    const/16 v5, 0x46

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b()V

    :cond_2
    :goto_2
    return-void
.end method

.method public add(IIII)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, v0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v3

    if-ne v3, v8, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_4

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const v1, 0x2dc6c0

    sub-int v1, v1, p4

    move v12, v1

    .line 13
    :goto_3
    invoke-static {}, Le/e;->a()Le/e;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10}, Le/e;->a(III)J

    move-result-wide v13

    .line 14
    iget-object v15, v0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    new-instance v6, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    move-object v1, v6

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v0, v6

    move-wide v6, v13

    invoke-direct/range {v1 .. v7}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;-><init>(IIIIJ)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b()V

    :cond_4
    return v11
.end method

.method public final b()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "arfcn"

    .line 5
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "timingOffset"

    .line 6
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getTimeOffset()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "k1"

    .line 7
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPk()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "k2"

    .line 8
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPa()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "freqCarrier"

    .line 9
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getFreqCarrier()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "ssb_list"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dwdbsdk/Util/SdkPref;->setSsbList(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public delete(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getArfcnList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->c:Ljava/util/List;

    new-instance v2, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;

    iget-object v3, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v3

    iget-object v4, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v4}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getTimeOffset()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/dwdbsdk/Bean/DB/ArfcnTimeOffset;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->c:Ljava/util/List;

    return-object v0
.end method

.method public getFreqCarrier(I)J
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getFreqCarrier()J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    return-object v0
.end method

.method public getOrxList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->isLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrxList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->b:Ljava/util/List;

    return-object v0
.end method

.method public getPa(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPa()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    return p1

    :cond_3
    const/16 p1, 0x4f

    if-ne v0, p1, :cond_4

    const/16 p1, 0xfe

    return p1

    :cond_4
    const/16 p1, 0x29

    if-ne v0, p1, :cond_5

    const/16 p1, 0x1e

    return p1

    :cond_5
    const/4 p1, -0x1

    :cond_6
    :goto_1
    return p1
.end method

.method public getPk(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getPk()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-eq v0, p1, :cond_5

    const/16 p1, 0x1c

    if-eq v0, p1, :cond_5

    const/16 p1, 0x29

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x4e

    if-ne v0, p1, :cond_3

    const/16 p1, 0xc

    return p1

    :cond_3
    const/16 p1, 0x4f

    if-ne v0, p1, :cond_4

    const/16 p1, 0xe

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x6

    return p1
.end method

.method public getTimeOffset(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getTimeOffset()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isSupport(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public resetLock()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v2, v0}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->setLock(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLock(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result p1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->getArfcn()I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->setLock(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
