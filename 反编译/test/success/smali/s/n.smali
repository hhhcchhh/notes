.class public Ls/n;
.super Ls/l;
.source "SourceFile"


# static fields
.field public static final i:I = 0x18

.field public static final j:I = 0x1

.field public static final k:I


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v5}, Ls/l;-><init>(IZZZZ)V

    .line 5
    iput-object p1, p0, Ls/n;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 6

    const/16 v1, 0x18

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Ls/l;-><init>(IZZZZ)V

    .line 3
    iput-object p1, p0, Ls/n;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([II)[I
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Ls/n;->h:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 4
    aget v2, p1, v1

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    .line 9
    aput v3, p1, v1

    .line 10
    aput v1, p1, v0

    .line 12
    :goto_0
    iget-object p2, p0, Ls/n;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_0

    add-int/lit8 p2, v1, 0x2

    .line 14
    iget-object v0, p0, Ls/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput v0, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
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
