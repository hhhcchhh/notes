.class public La/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 4
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    array-length v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, La/g;->a:I

    .line 5
    new-array v1, v0, [B

    iput-object v1, p0, La/g;->b:[B

    const/4 v1, 0x0

    .line 6
    iput v1, p0, La/g;->c:I

    .line 7
    invoke-static {v0, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 8
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    .line 9
    iget-object v4, p0, La/g;->b:[B

    iget v5, p0, La/g;->c:I

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 10
    iput v5, p0, La/g;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, La/g;->a(I)V

    .line 15
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-byte v2, p2, v0

    .line 16
    iget-object v3, p0, La/g;->b:[B

    iget v4, p0, La/g;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 17
    iput v4, p0, La/g;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_1
    iget p1, p0, La/g;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/g;->c:I

    .line 21
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 22
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_2

    aget-byte v0, p1, v1

    .line 23
    iget-object v2, p0, La/g;->b:[B

    iget v3, p0, La/g;->c:I

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 24
    iput v3, p0, La/g;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    array-length v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, La/g;->a:I

    .line 28
    new-array v1, v0, [B

    iput-object v1, p0, La/g;->b:[B

    const/4 v1, 0x0

    .line 29
    iput v1, p0, La/g;->c:I

    .line 30
    invoke-static {v0, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 31
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    .line 32
    iget-object v4, p0, La/g;->b:[B

    iget v5, p0, La/g;->c:I

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 33
    iput v5, p0, La/g;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, La/g;->a(I)V

    .line 38
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-byte v2, p2, v0

    .line 39
    iget-object v3, p0, La/g;->b:[B

    iget v4, p0, La/g;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 40
    iput v4, p0, La/g;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    iget p1, p0, La/g;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/g;->c:I

    .line 44
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 45
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_2

    aget-byte v0, p1, v1

    .line 46
    iget-object v2, p0, La/g;->b:[B

    iget v3, p0, La/g;->c:I

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 47
    iput v3, p0, La/g;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(I[C)V
    .locals 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, La/g;->a:I

    .line 50
    new-array v1, v0, [B

    iput-object v1, p0, La/g;->b:[B

    const/4 v1, 0x0

    .line 51
    iput v1, p0, La/g;->c:I

    .line 52
    invoke-static {v0, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 53
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    .line 54
    iget-object v4, p0, La/g;->b:[B

    iget v5, p0, La/g;->c:I

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 55
    iput v5, p0, La/g;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, La/g;->a(I)V

    .line 59
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-char v2, p2, v0

    invoke-virtual {p0, v2}, La/g;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    iget p1, p0, La/g;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/g;->c:I

    .line 61
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 62
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_2

    aget-byte v0, p1, v1

    .line 63
    iget-object v2, p0, La/g;->b:[B

    iget v3, p0, La/g;->c:I

    aput-byte v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 64
    iput v3, p0, La/g;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 5

    .line 5
    invoke-static {p1}, Le/a;->a(C)[B

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 7
    iget-object v3, p0, La/g;->b:[B

    iget v4, p0, La/g;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    iput v4, p0, La/g;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

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
    iget-object v3, p0, La/g;->b:[B

    iget v4, p0, La/g;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, La/g;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, La/g;->b:[B

    return-object v0
.end method
