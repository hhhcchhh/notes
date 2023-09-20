.class public Lcom/dwdbsdk/Util/Battery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Util/Battery$a;
    }
.end annotation


# static fields
.field public static c:Lcom/dwdbsdk/Util/Battery;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Util/Battery$a;",
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

    iput-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    .line 19
    invoke-virtual {p0}, Lcom/dwdbsdk/Util/Battery;->a()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/Battery;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/Battery;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/Battery;->c:Lcom/dwdbsdk/Util/Battery;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/Battery;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/Battery;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/Battery;->c:Lcom/dwdbsdk/Util/Battery;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/Battery;->c:Lcom/dwdbsdk/Util/Battery;

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
    iput-object v0, p0, Lcom/dwdbsdk/Util/Battery;->percent:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5dd2

    const-string v3, "100"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5d74

    const-string v3, "99"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5d3c

    const-string v3, "98"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5d0a

    const-string v3, "97"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5cd6

    const-string v3, "96"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5cac

    const-string v3, "95"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5c83

    const-string v3, "94"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5c65

    const-string v3, "93"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5c47

    const-string v3, "92"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5c2a

    const-string v3, "91"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5c10

    const-string v3, "90"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5bee

    const-string v3, "89"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5bcf

    const-string v3, "88"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5bae

    const-string v3, "87"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5b69

    const-string v3, "86"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5b4b

    const-string v3, "85"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5b27

    const-string v3, "84"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5b01

    const-string v3, "83"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5a76

    const-string v3, "82"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5a4e

    const-string v3, "81"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5a22

    const-string v3, "80"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x59d2

    const-string v3, "79"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x598f

    const-string v3, "78"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x595a

    const-string v3, "77"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5930

    const-string v3, "76"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5907

    const-string v3, "75"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x58ce

    const-string v3, "74"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x589c

    const-string v3, "73"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x584f

    const-string v3, "72"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5820

    const-string v3, "71"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x57c0

    const-string v3, "70"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x573e

    const-string v3, "69"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x56d6

    const-string v3, "68"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x56b1

    const-string v3, "67"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5658

    const-string v3, "66"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5627

    const-string v3, "65"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x55d6

    const-string v3, "64"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x558a

    const-string v3, "63"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5522

    const-string v3, "62"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x54b8

    const-string v3, "61"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5421

    const-string v3, "60"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x53e7

    const-string v3, "50"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x53c5

    const-string v3, "49"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5393

    const-string v3, "48"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5357

    const-string v3, "47"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x532f

    const-string v3, "46"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x52fd

    const-string v3, "45"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x52cb

    const-string v3, "43"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5299

    const-string v3, "42"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5267

    const-string v3, "41"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5235

    const-string v3, "40"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x51f4

    const-string v3, "39"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x51b8

    const-string v3, "38"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x517c

    const-string v3, "37"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x5140

    const-string v3, "36"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x510e

    const-string v3, "35"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x50c8

    const-string v3, "34"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x508c

    const-string v3, "33"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x505a

    const-string v3, "32"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x501e

    const-string v3, "31"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4fe4

    const-string v3, "30"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4fb0

    const-string v3, "29"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4f7e

    const-string v3, "28"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4f4c

    const-string v3, "27"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4f1a

    const-string v3, "26"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4ee8

    const-string v3, "25"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4eb6

    const-string v3, "23"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4e84

    const-string v3, "22"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4e55

    const-string v3, "21"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4e1f

    const-string v3, "20"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4d88

    const-string v3, "19"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4d2e

    const-string v3, "18"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4ce8

    const-string v3, "17"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4ca2

    const-string v3, "16"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4c7a

    const-string v3, "15"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4c52

    const-string v3, "14"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4c2a

    const-string v3, "13"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4c02

    const-string v3, "12"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4bda

    const-string v3, "11"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4bb1

    const-string v3, "10"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4b4d

    const-string v3, "9"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4ae9

    const-string v3, "8"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4a58

    const-string v3, "7"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x49c8

    const-string v3, "5"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x48e1

    const-string v3, "4"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4650

    const-string v3, "3"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4596

    const-string v3, "2"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4510

    const-string v3, "1"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4411

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4342

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x4286

    const-string v3, "0"

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    const/16 v2, 0x418b

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Util/Battery$a;

    invoke-direct {v1, p0, v2, v3}, Lcom/dwdbsdk/Util/Battery$a;-><init>(Lcom/dwdbsdk/Util/Battery;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public handleVol(I)V
    .locals 5

    const/16 v0, 0x4342

    if-ge p1, v0, :cond_0

    const/16 p1, 0x4342

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 10
    iget-object v4, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 11
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_3

    .line 14
    iget-object v1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    div-int/2addr v3, p1

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/Battery$a;

    iget p1, p1, Lcom/dwdbsdk/Util/Battery$a;->a:I

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/Battery$a;

    iget p1, p1, Lcom/dwdbsdk/Util/Battery$a;->a:I

    if-lt v3, p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Util/Battery$a;

    invoke-virtual {p1}, Lcom/dwdbsdk/Util/Battery$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dwdbsdk/Util/Battery;->percent:Ljava/lang/String;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/dwdbsdk/Util/Battery;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_3
    return-void
.end method
