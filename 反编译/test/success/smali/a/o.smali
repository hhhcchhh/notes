.class public La/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, La/o;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, La/o;->b:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, La/o;->a:I

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, La/o;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, La/o;->c:I

    .line 11
    invoke-static {v2, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 12
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 13
    iget-object v4, p0, La/o;->b:[B

    iget v5, p0, La/o;->c:I

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 14
    iput v5, p0, La/o;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, La/o;->a(I)V

    .line 18
    invoke-virtual {p0, p2}, La/o;->a(Ljava/lang/String;)V

    const/16 p1, 0x34

    .line 19
    iput p1, p0, La/o;->c:I

    .line 20
    invoke-virtual {p0, p3}, La/o;->a(Ljava/lang/String;)V

    .line 22
    iget p1, p0, La/o;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/o;->c:I

    .line 23
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 24
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte p3, p1, v0

    .line 25
    iget-object v1, p0, La/o;->b:[B

    iget v2, p0, La/o;->c:I

    aput-byte p3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 26
    iput v2, p0, La/o;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 5
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 7
    iget-object v3, p0, La/o;->b:[B

    iget v4, p0, La/o;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    iput v4, p0, La/o;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 3
    iget-object v3, p0, La/o;->b:[B

    iget v4, p0, La/o;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, La/o;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, La/o;->b:[B

    return-object v0
.end method
