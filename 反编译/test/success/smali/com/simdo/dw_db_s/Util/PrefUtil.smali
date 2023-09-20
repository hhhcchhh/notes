.class public Lcom/simdo/dw_db_s/Util/PrefUtil;
.super Ljava/lang/Object;
.source "PrefUtil.java"


# static fields
.field private static instance:Lcom/simdo/dw_db_s/Util/PrefUtil;


# instance fields
.field private APP_PREF:Landroid/content/SharedPreferences;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/simdo/dw_db_s/ZApplication;->getInstance()Lcom/simdo/dw_db_s/ZApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/ZApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Util/PrefUtil;->initPreferences()V

    return-void
.end method

.method public static build()Lcom/simdo/dw_db_s/Util/PrefUtil;
    .locals 2

    .line 21
    const-class v0, Lcom/simdo/dw_db_s/Util/PrefUtil;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/Util/PrefUtil;->instance:Lcom/simdo/dw_db_s/Util/PrefUtil;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/simdo/dw_db_s/Util/PrefUtil;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Util/PrefUtil;-><init>()V

    sput-object v1, Lcom/simdo/dw_db_s/Util/PrefUtil;->instance:Lcom/simdo/dw_db_s/Util/PrefUtil;

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/simdo/dw_db_s/Util/PrefUtil;->instance:Lcom/simdo/dw_db_s/Util/PrefUtil;

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
.method public configWifi(Ljava/lang/String;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifi_cfg"

    .line 110
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getBlackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, "black_list"

    const-string v2, "4600000000000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 149
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 150
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 151
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBtName()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, "bt_name"

    const-string v2, "G25"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTac()I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, "cfg_tac"

    const/16 v2, 0x4d2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x1

    .line 94
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Util/PrefUtil;->setTac(I)V

    return v0
.end method

.method public getUeidList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/MyUeidBean;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, "ueid_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 130
    new-instance v2, Lcom/simdo/dw_db_s/Util/PrefUtil$1;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Util/PrefUtil$1;-><init>(Lcom/simdo/dw_db_s/Util/PrefUtil;)V

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Util/PrefUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 65
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 71
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 75
    :cond_4
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/util/Set;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    const-string v1, "wifi_cfg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPreferences()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->mContext:Landroid/content/Context;

    const-string v1, "APP_PREF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    return-void
.end method

.method public putUeidList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/MyUeidBean;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ueid_list"

    .line 123
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 42
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 43
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 44
    :cond_1
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 45
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 46
    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 47
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 48
    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 49
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 50
    :cond_4
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 51
    check-cast p2, Ljava/util/Set;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_5
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 61
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 58
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SharedPreferences \u4e0d\u652f\u6301\u5b58\u50a8\u6b64\u7c7b\u578b\u7684\u503c"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 136
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 138
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "black_list"

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBtName(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_name"

    .line 99
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTac(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/PrefUtil;->APP_PREF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x2dc6c0

    if-le p1, v1, :cond_0

    const/16 p1, 0x4d2

    :cond_0
    const-string v1, "cfg_tac"

    .line 87
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
