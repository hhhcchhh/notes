.class public La/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(IJII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    add-int/lit8 v0, v0, 0x1c

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, La/m;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, La/m;->b:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, La/m;->a:I

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, La/m;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, La/m;->c:I

    .line 11
    invoke-static {v2, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 12
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 13
    iget-object v2, p0, La/m;->b:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 14
    iget v2, p0, La/m;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/m;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, La/m;->a(I)V

    .line 18
    invoke-virtual {p0, p2, p3}, La/m;->a(J)V

    .line 19
    invoke-virtual {p0, p4}, La/m;->a(I)V

    .line 20
    invoke-virtual {p0, p5}, La/m;->a(I)V

    .line 22
    iget p1, p0, La/m;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/m;->c:I

    .line 23
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 24
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte p3, p1, v0

    .line 25
    iget-object p4, p0, La/m;->b:[B

    iget p5, p0, La/m;->c:I

    aput-byte p3, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 26
    iput p5, p0, La/m;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 3
    iget-object v3, p0, La/m;->b:[B

    iget v4, p0, La/m;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, La/m;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 5
    invoke-static {p1, p2}, Le/a;->a(J)[B

    move-result-object p1

    .line 6
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 7
    iget-object v2, p0, La/m;->b:[B

    iget v3, p0, La/m;->c:I

    aput-byte v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, La/m;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, La/m;->b:[B

    return-object v0
.end method
