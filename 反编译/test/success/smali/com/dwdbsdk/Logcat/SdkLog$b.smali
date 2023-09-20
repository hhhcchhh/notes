.class public Lcom/dwdbsdk/Logcat/SdkLog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Logcat/SdkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dwdbsdk/Logcat/SdkLog$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dwdbsdk/Logcat/SdkLog$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a;Lc/a;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lc/a;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lc/a;->d()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/a;

    check-cast p2, Lc/a;

    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/Logcat/SdkLog$b;->a(Lc/a;Lc/a;)I

    move-result p1

    return p1
.end method
