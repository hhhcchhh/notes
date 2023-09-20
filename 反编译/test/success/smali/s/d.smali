.class public Ls/d;
.super Ls/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Ls/l;-><init>(IZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 6

    const/4 v1, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Ls/l;-><init>(IZZZZ)V

    return-void
.end method


# virtual methods
.method public a([II)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public h()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
