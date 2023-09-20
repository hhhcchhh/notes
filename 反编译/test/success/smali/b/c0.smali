.class public Lb/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x60

    iput v0, p0, Lb/c0;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/c0;->b:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/c0;->c:I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lb/c0;->a:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lb/c0;->b:[B

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
    iget-object v3, p0, Lb/c0;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 15
    iget v3, p0, Lb/c0;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/c0;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lb/c0;->a(I)V

    .line 19
    invoke-virtual {p0, p3}, Lb/c0;->a(I)V

    .line 20
    invoke-virtual {p0, p3, p4}, Lb/c0;->a(ILjava/lang/String;)V

    .line 22
    iget p2, p0, Lb/c0;->a:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p0, Lb/c0;->c:I

    .line 23
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 24
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte p3, p1, v0

    .line 25
    iget-object p4, p0, Lb/c0;->b:[B

    iget v1, p0, Lb/c0;->c:I

    aput-byte p3, p4, v1

    add-int/lit8 v1, v1, 0x1

    .line 26
    iput v1, p0, Lb/c0;->c:I

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
    iget-object v3, p0, Lb/c0;->b:[B

    iget v4, p0, Lb/c0;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/c0;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 9

    const-string v0, ";"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 10
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 11
    aget-object v2, p2, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 13
    :goto_1
    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-gt v3, v5, :cond_1

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "3"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p2, v1

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    iget-object v7, p0, Lb/c0;->b:[B

    iget v8, p0, Lb/c0;->c:I

    invoke-static {v5, v6}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v7, v8

    .line 16
    iget v5, p0, Lb/c0;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lb/c0;->c:I

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_1
    iget-object v3, p0, Lb/c0;->b:[B

    iget v4, p0, Lb/c0;->c:I

    aput-byte v0, v3, v4

    add-int/2addr v4, v2

    .line 21
    iput v4, p0, Lb/c0;->c:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    .line 24
    iget-object v4, p0, Lb/c0;->b:[B

    iget v5, p0, Lb/c0;->c:I

    aput-byte v0, v4, v5

    add-int/2addr v5, v2

    .line 25
    iput v5, p0, Lb/c0;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lb/c0;->b:[B

    return-object v0
.end method
