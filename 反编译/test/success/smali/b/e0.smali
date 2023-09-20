.class public Lb/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lb/e0;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/e0;->b:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/e0;->c:I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lb/e0;->a:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lb/e0;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 14
    iget-object v3, p0, Lb/e0;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 15
    iget v3, p0, Lb/e0;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/e0;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lb/e0;->b(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p3}, Lb/e0;->a(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lb/e0;->a:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p0, Lb/e0;->c:I

    .line 22
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 23
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte p3, p1, v0

    .line 24
    iget-object v1, p0, Lb/e0;->b:[B

    iget v2, p0, Lb/e0;->c:I

    aput-byte p3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 25
    iput v2, p0, Lb/e0;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
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
    iget-object v3, p0, Lb/e0;->b:[B

    iget v4, p0, Lb/e0;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/e0;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 7
    array-length p1, p1

    sub-int/2addr v1, p1

    .line 8
    iget p1, p0, Lb/e0;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/e0;->c:I

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lb/e0;->b:[B

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
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
    iget-object v3, p0, Lb/e0;->b:[B

    iget v4, p0, Lb/e0;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/e0;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 7
    array-length p1, p1

    sub-int/2addr v1, p1

    .line 8
    iget p1, p0, Lb/e0;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/e0;->c:I

    :cond_1
    return-void
.end method
