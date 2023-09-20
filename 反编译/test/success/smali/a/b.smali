.class public La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    add-int/lit16 v0, v0, 0x104

    iput v0, p0, La/b;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, La/b;->b:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, La/b;->a:I

    if-ge v1, v2, :cond_0

    .line 7
    iget-object v2, p0, La/b;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v2, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 11
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v4, p1, v2

    .line 12
    iget-object v5, p0, La/b;->b:[B

    aput-byte v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget p1, p0, La/b;->a:I

    add-int/lit8 p1, p1, -0x4

    .line 17
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object v1

    .line 18
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-byte v3, v1, v0

    .line 19
    iget-object v4, p0, La/b;->b:[B

    aput-byte v3, v4, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, La/b;->b:[B

    return-object v0
.end method
