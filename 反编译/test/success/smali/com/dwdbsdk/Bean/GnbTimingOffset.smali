.class public Lcom/dwdbsdk/Bean/GnbTimingOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;
    }
.end annotation


# static fields
.field public static b:Lcom/dwdbsdk/Bean/GnbTimingOffset;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Bean/GnbTimingOffset;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/GnbTimingOffset;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/GnbTimingOffset;->b:Lcom/dwdbsdk/Bean/GnbTimingOffset;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/GnbTimingOffset;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/GnbTimingOffset;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/GnbTimingOffset;->b:Lcom/dwdbsdk/Bean/GnbTimingOffset;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->b:Lcom/dwdbsdk/Bean/GnbTimingOffset;

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
    .locals 6

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
    iget-object v3, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "arfcn"

    .line 5
    iget-object v5, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getArfcn()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "timingOffset"

    .line 6
    iget-object v5, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "k1"

    .line 7
    iget-object v5, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getK1()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "k2"

    .line 8
    iget-object v5, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getK2()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "timing_list"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dwdbsdk/Util/SdkPref;->setTimingOffset(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getArfcnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    return-object v0
.end method

.method public getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getArfcn()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x7b49e

    const v4, 0x2dc6c0

    const/4 v5, 0x6

    const/16 v6, 0x1e

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x7d38e

    const/16 v6, 0xfa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x7e37e

    const/4 v5, 0x4

    const/16 v6, 0x8c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x7bd0e

    const/4 v5, 0x6

    const/16 v6, 0x5a

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x8053e

    const/4 v5, 0x4

    const/16 v6, 0x30

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x9ac80

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0x1c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x99240

    const/16 v5, 0xc

    const/16 v6, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0xb09a0

    const v4, 0x2dc6c0

    const/16 v5, 0xe

    const/16 v6, 0xfe

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x684f2

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/16 v6, 0x17

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x673ea

    const/4 v5, 0x2

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a:Ljava/util/List;

    new-instance v7, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    const v3, 0x25cba

    const v4, 0x2dc6c0

    const/4 v5, 0x6

    const/16 v6, 0x17

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;-><init>(Lcom/dwdbsdk/Bean/GnbTimingOffset;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->a()V

    return-void
.end method
