.class public Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutToken"
.end annotation


# instance fields
.field private handler:Ljava/lang/Runnable;

.field private runTime:J


# direct methods
.method private constructor <init>(JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    .line 4
    iput-object p3, p0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Runnable;Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$0(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    return-wide v0
.end method

.method public static synthetic access$1(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;

    .line 2
    iget-wide v0, p0, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    iget-wide v2, p1, Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
