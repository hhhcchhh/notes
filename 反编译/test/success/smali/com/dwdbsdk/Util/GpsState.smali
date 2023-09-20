.class public Lcom/dwdbsdk/Util/GpsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Util/GpsState$a;
    }
.end annotation


# static fields
.field public static b:Lcom/dwdbsdk/Util/GpsState;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Util/GpsState$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/GpsState;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/GpsState;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/GpsState;->b:Lcom/dwdbsdk/Util/GpsState;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/GpsState;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/GpsState;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/GpsState;->b:Lcom/dwdbsdk/Util/GpsState;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/GpsState;->b:Lcom/dwdbsdk/Util/GpsState;

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
.method public isGpsSync(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-virtual {v3}, Lcom/dwdbsdk/Util/GpsState$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-virtual {v2}, Lcom/dwdbsdk/Util/GpsState$a;->a()I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne v2, p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public setGpsSync(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/Util/GpsState$a;-><init>(Lcom/dwdbsdk/Util/GpsState;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-virtual {v2}, Lcom/dwdbsdk/Util/GpsState$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-virtual {v1, p2}, Lcom/dwdbsdk/Util/GpsState$a;->a(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/Util/GpsState;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/GpsState$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/Util/GpsState$a;-><init>(Lcom/dwdbsdk/Util/GpsState;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-void
.end method
