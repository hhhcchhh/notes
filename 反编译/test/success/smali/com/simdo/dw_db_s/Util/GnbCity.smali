.class public Lcom/simdo/dw_db_s/Util/GnbCity;
.super Ljava/lang/Object;
.source "GnbCity.java"


# static fields
.field private static instance:Lcom/simdo/dw_db_s/Util/GnbCity;


# instance fields
.field cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/CityBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    return-void
.end method

.method public static build()Lcom/simdo/dw_db_s/Util/GnbCity;
    .locals 2

    .line 21
    const-class v0, Lcom/simdo/dw_db_s/Util/GnbCity;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/Util/GnbCity;->instance:Lcom/simdo/dw_db_s/Util/GnbCity;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/simdo/dw_db_s/Util/GnbCity;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Util/GnbCity;-><init>()V

    sput-object v1, Lcom/simdo/dw_db_s/Util/GnbCity;->instance:Lcom/simdo/dw_db_s/Util/GnbCity;

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/simdo/dw_db_s/Util/GnbCity;->instance:Lcom/simdo/dw_db_s/Util/GnbCity;

    return-object v0

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCity(Lcom/simdo/dw_db_s/Bean/CityBean;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Util/GnbCity;->save()V

    return v0
.end method

.method public deleteCity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Util/GnbCity;->save()V

    return-void
.end method

.method public getArfcnList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/CityBean;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    return-object v0
.end method

.method public getCurCity()Lcom/simdo/dw_db_s/Bean/CityBean;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimingOffset()I
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getTimingOffset()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTimingOffset(Ljava/lang/String;)I
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v0

    .line 163
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getArfcn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getTimingOffset()I

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public init()V
    .locals 10

    .line 37
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    const-string v1, "city_list"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v1, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v1, v3}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    new-instance v2, Lcom/simdo/dw_db_s/Bean/CityBean;

    const-string v3, "\u6df1\u5733"

    invoke-direct {v2, v3, v0}, Lcom/simdo/dw_db_s/Bean/CityBean;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 45
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "city"

    .line 50
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arfcn_list"

    .line 51
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 53
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 54
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "arfcn"

    .line 55
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timingOffset"

    .line 56
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 57
    new-instance v9, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-direct {v9, v8, v7}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    new-instance v6, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-direct {v6, v4, v5}, Lcom/simdo/dw_db_s/Bean/CityBean;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public save()V
    .locals 12

    const-string v0, "city_list"

    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    :goto_0
    iget-object v5, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 114
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "city"

    .line 115
    iget-object v7, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v7}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 118
    iget-object v7, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v7}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 119
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 120
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "timingOffset"

    .line 121
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v11}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getTimingOffset()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const-string v7, "arfcn_list"

    .line 124
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/simdo/dw_db_s/Util/PrefUtil;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setCurCity(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/CityBean;

    .line 143
    iget-object v2, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/GnbCity;->cityList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Util/GnbCity;->save()V

    return-void
.end method
