.class public Lcom/dwdbsdk/Util/Temperature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Util/Temperature$a;
    }
.end annotation


# static fields
.field public static b:Lcom/dwdbsdk/Util/Temperature;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Util/Temperature$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/Temperature;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/Temperature;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/Temperature;->b:Lcom/dwdbsdk/Util/Temperature;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/Temperature;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/Temperature;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/Temperature;->b:Lcom/dwdbsdk/Util/Temperature;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/Temperature;->b:Lcom/dwdbsdk/Util/Temperature;

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
.method public addTemp(Ljava/lang/String;D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dwdbsdk/Util/Temperature$a;-><init>(Lcom/dwdbsdk/Util/Temperature;Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-virtual {v2}, Lcom/dwdbsdk/Util/Temperature$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-virtual {v1, p2, p3}, Lcom/dwdbsdk/Util/Temperature$a;->a(D)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dwdbsdk/Util/Temperature$a;-><init>(Lcom/dwdbsdk/Util/Temperature;Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public getTemp(Ljava/lang/String;)D
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-virtual {v1}, Lcom/dwdbsdk/Util/Temperature$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Util/Temperature;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/Temperature$a;

    invoke-virtual {p1}, Lcom/dwdbsdk/Util/Temperature$a;->b()D

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method
