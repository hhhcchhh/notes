.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dwdbsdk/Bean/DW/DWHeader;",
            "II",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, p3, 0x10

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5
    new-array v1, v0, [B

    iput-object v1, p0, Lb/a;->a:[B

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lb/a;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    iget-object v3, p0, Lb/a;->a:[B

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 13
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 14
    iget-object v4, p0, Lb/a;->a:[B

    aget-byte v5, v2, v3

    aput-byte v5, v4, v3

    .line 15
    iget v4, p0, Lb/a;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lb/a;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0, p2}, Lb/a;->a(I)V

    .line 20
    invoke-virtual {p0, p3}, Lb/a;->a(I)V

    .line 21
    invoke-virtual {p0, p3, p4}, Lb/a;->a(ILjava/util/List;)V

    add-int/lit8 v0, v0, -0x4

    .line 23
    iput v0, p0, Lb/a;->b:I

    .line 24
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 25
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_2

    aget-byte p3, p1, v1

    .line 26
    iget-object p4, p0, Lb/a;->a:[B

    iget v0, p0, Lb/a;->b:I

    aput-byte p3, p4, v0

    add-int/lit8 v0, v0, 0x1

    .line 27
    iput v0, p0, Lb/a;->b:I

    add-int/lit8 v1, v1, 0x1

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
    iget-object v3, p0, Lb/a;->a:[B

    iget v4, p0, Lb/a;->b:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/a;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/UeidBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/UeidBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-gt v4, v6, :cond_0

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "3"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v8, p0, Lb/a;->a:[B

    iget v9, p0, Lb/a;->b:I

    invoke-static {v6, v7}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v8, v9

    .line 11
    iget v6, p0, Lb/a;->b:I

    add-int/2addr v6, v3

    iput v6, p0, Lb/a;->b:I

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_0
    iget-object v2, p0, Lb/a;->a:[B

    iget v4, p0, Lb/a;->b:I

    aput-byte v0, v2, v4

    add-int/2addr v4, v3

    .line 16
    iput v4, p0, Lb/a;->b:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_1

    .line 19
    iget-object v4, p0, Lb/a;->a:[B

    iget v5, p0, Lb/a;->b:I

    aput-byte v0, v4, v5

    add-int/2addr v5, v3

    .line 20
    iput v5, p0, Lb/a;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lb/a;->a:[B

    return-object v0
.end method
