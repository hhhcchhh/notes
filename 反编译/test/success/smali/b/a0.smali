.class public Lb/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dwdbsdk/Bean/DW/DWHeader;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit16 v0, v0, 0x80

    add-int/lit16 v0, v0, 0x80

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Lb/a0;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/a0;->b:[B

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lb/a0;->c:I

    const/4 v1, 0x0

    .line 10
    :goto_0
    iget v2, p0, Lb/a0;->a:I

    if-ge v1, v2, :cond_0

    .line 11
    iget-object v2, p0, Lb/a0;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 15
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 16
    iget-object v3, p0, Lb/a0;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 17
    iget v3, p0, Lb/a0;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/a0;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0, p2}, Lb/a0;->a(I)V

    .line 22
    invoke-virtual {p0, p3}, Lb/a0;->a(I)V

    .line 23
    invoke-virtual {p0, p4}, Lb/a0;->a(I)V

    .line 24
    invoke-virtual {p0, p4, p5}, Lb/a0;->b(ILjava/util/List;)V

    .line 25
    invoke-virtual {p0, p4, p6}, Lb/a0;->a(ILjava/util/List;)V

    .line 26
    invoke-virtual {p0, p4, p7}, Lb/a0;->c(ILjava/util/List;)V

    .line 27
    iget p2, p0, Lb/a0;->a:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p0, Lb/a0;->c:I

    .line 28
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 29
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte p3, p1, v0

    .line 30
    iget-object p4, p0, Lb/a0;->b:[B

    iget p5, p0, Lb/a0;->c:I

    aput-byte p3, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 31
    iput p5, p0, Lb/a0;->c:I

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
    iget-object v3, p0, Lb/a0;->b:[B

    iget v4, p0, Lb/a0;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/a0;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    if-lt v1, p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lb/a0;->a(I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/a0;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 1

    .line 8
    iget-object v0, p0, Lb/a0;->b:[B

    return-object v0
.end method

.method public final b(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    if-lt v1, p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lb/a0;->a(I)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/a0;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    if-lt v1, p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lb/a0;->a(I)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/a0;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
