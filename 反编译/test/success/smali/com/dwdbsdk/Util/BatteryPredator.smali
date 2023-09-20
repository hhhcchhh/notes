.class public Lcom/dwdbsdk/Util/BatteryPredator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Util/BatteryPredator$a;
    }
.end annotation


# static fields
.field public static c:Lcom/dwdbsdk/Util/BatteryPredator;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Util/BatteryPredator$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public percent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    .line 19
    invoke-virtual {p0}, Lcom/dwdbsdk/Util/BatteryPredator;->a()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/BatteryPredator;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/BatteryPredator;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/BatteryPredator;->c:Lcom/dwdbsdk/Util/BatteryPredator;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/BatteryPredator;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/BatteryPredator;->c:Lcom/dwdbsdk/Util/BatteryPredator;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/BatteryPredator;->c:Lcom/dwdbsdk/Util/BatteryPredator;

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
    .locals 4

    const-string v0, "\u68c0\u6d4b\u4e2d"

    .line 1
    iput-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->percent:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ef4

    const-string v3, "100"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2eea

    const-string v3, "99"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ee0

    const-string v3, "98"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ed6

    const-string v3, "97"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ecc

    const-string v3, "96"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ec2

    const-string v3, "95"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2eb8

    const-string v3, "94"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2eae

    const-string v3, "93"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ea4

    const-string v3, "92"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e9a

    const-string v3, "91"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e90

    const-string v3, "90"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e82

    const-string v3, "89"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e6b

    const-string v3, "88"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e57

    const-string v3, "87"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e43

    const-string v3, "86"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e2f

    const-string v3, "85"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e1b

    const-string v3, "84"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2e07

    const-string v3, "83"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2df3

    const-string v3, "82"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ddf

    const-string v3, "81"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2dcb

    const-string v3, "80"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2dbb

    const-string v3, "79"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2da1

    const-string v3, "78"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d97

    const-string v3, "77"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d8d

    const-string v3, "76"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d83

    const-string v3, "75"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d6f

    const-string v3, "74"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d5b

    const-string v3, "73"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d51

    const-string v3, "72"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d3d

    const-string v3, "71"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d29

    const-string v3, "70"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2d0f

    const-string v3, "69"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2cfa

    const-string v3, "68"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ce6

    const-string v3, "67"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2cd2

    const-string v3, "66"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2cbe

    const-string v3, "65"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2caa

    const-string v3, "64"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c8c

    const-string v3, "63"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c78

    const-string v3, "62"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c64

    const-string v3, "61"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c50

    const-string v3, "60"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c40

    const-string v3, "59"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c36

    const-string v3, "58"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c2c

    const-string v3, "57"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c22

    const-string v3, "56"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c0e

    const-string v3, "55"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2c04

    const-string v3, "54"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bfa

    const-string v3, "53"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bf0

    const-string v3, "52"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2be6

    const-string v3, "51"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bda

    const-string v3, "50"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bc9

    const-string v3, "49"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bbf

    const-string v3, "48"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bb5

    const-string v3, "47"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2bab

    const-string v3, "46"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ba1

    const-string v3, "45"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b97

    const-string v3, "43"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b8d

    const-string v3, "42"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b83

    const-string v3, "41"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b7a

    const-string v3, "40"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b70

    const-string v3, "39"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b66

    const-string v3, "38"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b5c

    const-string v3, "37"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b52

    const-string v3, "36"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b48

    const-string v3, "35"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b3e

    const-string v3, "34"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b34

    const-string v3, "33"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b2a

    const-string v3, "32"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b20

    const-string v3, "31"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2b0c

    const-string v3, "30"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2af8

    const-string v3, "29"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2aef

    const-string v3, "28"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ae5

    const-string v3, "27"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2adb

    const-string v3, "26"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ac7

    const-string v3, "25"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2abd

    const-string v3, "23"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2ab3

    const-string v3, "22"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2aa9

    const-string v3, "21"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a95

    const-string v3, "20"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a80

    const-string v3, "19"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a76

    const-string v3, "18"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a62

    const-string v3, "17"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a58

    const-string v3, "16"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a44

    const-string v3, "15"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a30

    const-string v3, "14"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a26

    const-string v3, "13"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2a12

    const-string v3, "12"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x29fe

    const-string v3, "11"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x29ea

    const-string v3, "10"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x29da

    const-string v3, "9"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2912

    const-string v3, "8"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x284a

    const-string v3, "7"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2782

    const-string v3, "5"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x26ac

    const-string v3, "4"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x25e4

    const-string v3, "3"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x251c

    const-string v3, "2"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2454

    const-string v3, "1"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x2328

    const-string v3, "0"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    const/16 v2, 0x21d3

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/BatteryPredator$a;-><init>(Lcom/dwdbsdk/Util/BatteryPredator;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public handleVol(I)V
    .locals 5

    const/16 v0, 0x2328

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2328

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 10
    iget-object v4, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 11
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_3

    .line 14
    iget-object v1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v3, p1

    sub-int/2addr v3, v1

    .line 20
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    div-int/2addr v3, p1

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    iget p1, p1, Lcom/dwdbsdk/Util/BatteryPredator$a;->a:I

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    iget p1, p1, Lcom/dwdbsdk/Util/BatteryPredator$a;->a:I

    if-lt v3, p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/BatteryPredator$a;

    invoke-virtual {p1}, Lcom/dwdbsdk/Util/BatteryPredator$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->percent:Ljava/lang/String;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/dwdbsdk/Util/BatteryPredator;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_3
    return-void
.end method
