.class public Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;[I[I[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lb/k;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/k;->b:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/k;->c:I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lb/k;->a:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lb/k;->b:[B

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
    iget-object v3, p0, Lb/k;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 15
    iget v3, p0, Lb/k;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/k;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lb/k;->a([I)[I

    move-result-object p2

    .line 19
    invoke-virtual {p0, p3}, Lb/k;->a([I)[I

    move-result-object p3

    .line 20
    invoke-virtual {p0, p4}, Lb/k;->a([I)[I

    move-result-object p4

    .line 22
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget v3, p2, v2

    invoke-virtual {p0, v3}, Lb/k;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_2
    array-length p2, p3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_3

    aget v2, p3, v1

    invoke-virtual {p0, v2}, Lb/k;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 24
    :cond_3
    array-length p2, p4

    const/4 p3, 0x0

    :goto_4
    if-ge p3, p2, :cond_4

    aget v1, p4, p3

    invoke-virtual {p0, v1}, Lb/k;->a(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 27
    array-length p2, p1

    :goto_5
    if-ge v0, p2, :cond_5

    aget-byte p3, p1, v0

    .line 28
    iget-object p4, p0, Lb/k;->b:[B

    iget v1, p0, Lb/k;->c:I

    aput-byte p3, p4, v1

    add-int/lit8 v1, v1, 0x1

    .line 29
    iput v1, p0, Lb/k;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 6
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 8
    iget-object v3, p0, Lb/k;->b:[B

    iget v4, p0, Lb/k;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 9
    iput v4, p0, Lb/k;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lb/k;->b:[B

    return-object v0
.end method

.method public final a([I)[I
    .locals 4

    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    if-lt v2, v0, :cond_0

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4
    :cond_0
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p1, p1

    :goto_0
    if-ge p1, v0, :cond_1

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method
